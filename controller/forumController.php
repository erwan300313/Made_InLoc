<?php
require_once('controller/controller.php');

Class ForumController extends Controller{

    private $forumManager;

    public function __construct(){
        $this->forumManager = new ForumManager();
        $this->userManager = new UserManager();
        $this->userManager = new UserManager();
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    public function forumIndex(){
        $this->genererVue(array()); 
    }

    public function forumTopic(){  /* Voir pour gérer exeption en verfiaint retour de BDD */
        $topics = $this->forumManager->getTopics($_GET['category_id']);
        $data = $topics -> fetch();
        if(!$data){
            throw new Exception('Probleme lors du chargement du forum ');
        }else{
            $this->genererVue(array('topics' => $topics));
        }
    }

    public function forumComment(){
        $topic = $this->forumManager->getTopic($_GET['topic_id']);

        if(!$topic){
            throw new Exception('Ce topic n\'est pas disponible.');
        }else{
            $comments = $this->forumManager->getComments($_GET['topic_id']);
            $this->genererVue(array('topic' => $topic, 'comments' => $comments)); 
        }
        
    }

    public function addTopic(){
        if(empty($_POST['title']) OR empty($_POST['content'])){
            throw new Exception('Un des champs du formulaire d\'ajout de sujet est vide.');
        }else{
            $this->forumManager->addTopic($_GET['author'], $_GET['date_inscription'], $_GET['author_team'], $_GET['category_id'], $_POST['title'], $_POST['content']);
            header('Location: index.php?controller=forum&action=forumTopic&category_id='. $_GET['category_id']);
        }
    }

    public function addComment(){
        if(empty($_POST['content'])){
            throw new Exception('Un des champs du formulaire d\'ajout de commentaire est vide.');
        }else{
            $this->forumManager->addComment($_GET['topic_id'], $_GET['author'], $_GET['author_team'], $_GET['author_inscription'], $_POST['content']);
            header('Location: index.php?controller=forum&action=forumComment&topic_id='. $_GET['topic_id']);
        }
    }

    public function reportComment(){
        $Comment = $this->forumManager->getComment($_GET['comment_id']);
        $newReport = $Comment['report']+1;
        $this->forumManager->reportComment($_GET['comment_id'], $newReport);
        header('Location: index.php?controller=forum&action=forumComment&topic_id='. $_GET['topic_id']);
    }

    public function editComment(){
        $topic = $this->forumManager->getTopic($_GET['topic_id']);
        $comment = $this->forumManager->getComment($_GET['comment_id']);
        $this->genererVue(array('topic' => $topic, 'comment' => $comment));
    }

    public function updateComment(){
        $this->forumManager->updateComment($_GET['comment_id'], $_POST['content']);
        header('Location: index.php?controller=forum&action=forumComment&topic_id='. $_GET['topic_id']);
    }

    public function viewDeleteComment(){
        $topic = $this->forumManager->getTopic($_GET['topic_id']);
        $comment = $this->forumManager->getComment($_GET['comment_id']);
        $this->genererVue(array('topic' => $topic, 'comment' => $comment));
    }

    public function deleteComment(){
        $this->forumManager->deleteComment($_GET['comment_id']);
        header('Location: index.php?controller=forum&action=forumComment&topic_id='. $_GET['topic_id']);
    }
}