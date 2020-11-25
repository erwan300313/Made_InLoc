<?php
require_once('controller/controller.php');

Class ForumController extends Controller{

    private $forumManager;

    public function __construct(){
        $this->forumManager = new ForumManager();
        $this->userManager = new UserManager();
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    public function forumIndex(){
        $titles = $this->forumManager->getIndexTitles();
        $lastTopics = $this->forumManager->getLastTopic();        
        $datas = $titles->fetchAll();
        $this->genererVue(array('datas' => $datas, 'lastTopics' =>$lastTopics)); 
    }

    public function forumTopic(){ /* Voir pour fetchAll pour verifier retour de BDD */
        $datas = $this->forumManager->getTopics($_GET['catTopic']);
        $topics = $datas->fetchAll();
        if(!$topics){
            throw new Exception('Aucun topic n\'est disponible.');
        }else{
            $this->genererVue(array('topics' => $topics));
        }
    }

    public function addTopic(){
        if(empty($_POST['title']) OR empty($_POST['content'])){
            throw new Exception('Un des champs du formulaire d\'ajout de sujet est vide.');
        }else{
            $this->forumManager->addTopic($_GET['author'], $_GET['date_inscription'], $_GET['author_team'], $_GET['catTopic'], $_POST['title'], $_POST['content']);
            $this->forumManager->addLastTopic($_POST['title'], $_GET['catTopic']);
            header('Location: index.php?controller=forum&action=forumTopic&catTopic='. $_GET['catTopic'] . '&title=' . $_GET['title']);
        }
    }

    public function editTopic(){
        $topic = $this->forumManager->getTopic($_GET['topic_id']);
        $this->genererVue(array('topic' => $topic, 'title' => $_GET['title']));
    }
    
    
    public function updateTopic(){
        $this->forumManager->updateTopic($_GET['topic_id'], $_POST['content']);
        header('Location: index.php?controller=forum&action=forumTopic&catTopic='. $_GET['category_id'] . '&title=' . $_GET['title']);
    }

    public function viewDeleteTopic(){
        $topic = $this->forumManager->getTopic($_GET['topic_id']);
        $this->genererVue(array('topic' => $topic, 'title' => $_GET['title']));
    }

    public function deleteTopic(){
        $this->forumManager->deleteTopic($_GET['topic_id']);
        header('Location: index.php?controller=forum&action=forumTopic&catTopic='. $_GET['catTopic'] . '&title=' . $_GET['title']);
    }

    public function forumComment(){
        $topic = $this->forumManager->getTopic($_GET['topic_id']);
        
        if(!$topic){
            throw new Exception('Ce topic n\'est pas disponible.');
        }else{
            $comments = $this->forumManager->getComments($_GET['topic_id']);
            $this->genererVue(array('topic' => $topic, 'comments' => $comments, 'title' => $_GET['title'])); 
        }
        
    }

    public function addComment(){
        if(empty($_POST['content'])){
            throw new Exception('Un des champs du formulaire d\'ajout de commentaire est vide.');
        }else{
            $this->forumManager->addComment($_GET['topic_id'], $_GET['author'], $_GET['author_team'], $_GET['author_inscription'], $_POST['content']);
            header('Location: index.php?controller=forum&action=forumComment&topic_id='. $_GET['topic_id'] . '&title=' . $_GET['title']);
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
        $this->genererVue(array('topic' => $topic, 'comment' => $comment, 'title' => $_GET['title']));
    }

    public function updateComment(){
        $this->forumManager->updateComment($_GET['comment_id'], $_POST['content']);
        header('Location: index.php?controller=forum&action=forumComment&topic_id='. $_GET['topic_id'] . '&title=' . $_GET['title']);
    }

    public function viewDeleteComment(){
        $topic = $this->forumManager->getTopic($_GET['topic_id']);
        $comment = $this->forumManager->getComment($_GET['comment_id']);
        $this->genererVue(array('topic' => $topic, 'comment' => $comment));
    }

    public function deleteComment(){
        $this->forumManager->deleteComment($_GET['comment_id']);
        header('Location: index.php?controller=forum&action=forumComment&topic_id='. $_GET['topic_id'] . '&title=' . $_GET['title']);
    }

    public function forumUsers(){
        $user_imgs = $this->userManager->getImgs();
        $this->genererVue(array('user_imgs' => $user_imgs));
    }

    public function forumUser(){
        $user_img = $this->userManager->getImg($_GET['pseudo']);
        $this->genererVue(array('user_img' => $user_img));
    }

}