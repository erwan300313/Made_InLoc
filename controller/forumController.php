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
        $lastTopics = $this->forumManager->getLastTopics();        
        $datas = $titles->fetchAll();
        if(!$titles){
            throw new Exception('Un problème est survenue lors de l\'accès à notre forum, nous mettons tout en oeuvre pour régler cela au plus vite.');
        }
        $this->genererVue(array('datas' => $datas, 'lastTopics' =>$lastTopics)); 
    }
    
    public function forumTopic(){
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
            header('Location: forum/forumTopic/' . $_GET['title'] . '/'. $_GET['catTopic']);
        }
    }

    public function editTopic(){
        $topic = $this->forumManager->getTopic($_GET['catTopic']);
        if($topic['author'] != $_SESSION['pseudo']){
            throw new Exception('Vous ne pouver pas modifier un post dont vous n\'etes pas l\'auteur.');
        }else{
            $this->genererVue(array('topic' => $topic, 'title' => $_GET['title']));
        }
        
    }
    
    public function updateTopic(){
        $this->forumManager->updateTopic($_GET['topic_id'], $_POST['content']);
        header('Location: forum/forumTopic/'. $_GET['title'] . '/' . $_GET['catTopic']);
    }

    public function viewDeleteTopic(){
        $topic = $this->forumManager->getTopic($_GET['catTopic']);
        if($topic['author'] != $_SESSION['pseudo']){
            throw new Exception('Vous ne pouvez pas supprimer un post dont vous n\'êtes pas l\'auteur.');
        }else{
            $this->genererVue(array('topic' => $topic, 'title' => $_GET['title']));
        }
        
    }

    public function deleteTopic(){
        if(isset($_GET['topic_id'])){
            $this->forumManager->deleteTopic($_GET['topic_id']);
            $lastTopic = $this->forumManager->getLastTopic($_GET['catTopic']);
            $this->forumManager->addLastTopic($lastTopic['title'], $_GET['catTopic']);
            header('Location: forum/forumTopic/'. $_GET['title'] . '/' . $_GET['catTopic']);
        }else{
            throw new Exception('Un problème est survenue pendant la suppression du post.');
        }
        
    }

    public function forumComment(){
        $topic = $this->forumManager->getTopic($_GET['catTopic']);
        if(!$topic){
            throw new Exception('Ce topic n\'est pas disponible.');
        }else{
            $comments = $this->forumManager->getComments($_GET['catTopic']);
            $this->genererVue(array('topic' => $topic, 'comments' => $comments, 'title' => $_GET['title'])); 
        }  
    }

    public function addComment(){
        if(empty($_POST['content'])){
            throw new Exception('Vous devez saisir un commentaire avant de l\'envoyer.');
        }else{
            $this->forumManager->addComment($_GET['catTopic'], $_GET['author'], $_GET['author_team'], $_GET['author_inscription'], $_POST['content']);
            header('Location: forum/forumComment/'. $_GET['title'] . '/' . $_GET['catTopic']);
        }
    }

    public function reportComment(){
        $Comment = $this->forumManager->getComment($_GET['comment_id']);
        $newReport = $Comment['report']+1;
        $this->forumManager->reportComment($_GET['comment_id'], $newReport);
        header('Location: forum/forumComment/'. $_GET['title'] . '/' . $_GET['catTopic']);
    }

    public function editComment(){
        $comment = $this->forumManager->getComment($_GET['catTopic']);
        if($comment['author'] != $_SESSION['pseudo']){
            throw new Exception('Vous ne pouver pas modifier un commentaire dont vous n\'etes pas l\'auteur.');
        }else{
            $this->genererVue(array('comment' => $comment, 'title' => $_GET['title']));
        }
    }

    public function updateComment(){
        $this->forumManager->updateComment($_GET['comment_id'], $_POST['content']);
        header('Location: forum/forumComment/'. $_GET['title'] . '/' . $_GET['catTopic']);
    }

    public function viewDeleteComment(){
        $comment = $this->forumManager->getComment($_GET['catTopic']);
        if($comment['author'] != $_SESSION['pseudo']){
            throw new Exception('Vous ne pouver pas supprimer un commentaire dont vous n\'etes pas l\'auteur.');
        }else{
            $this->genererVue(array('comment' => $comment)); 
        }        
    }

    public function deleteComment(){
        $this->forumManager->deleteComment($_GET['comment_id']);
        header('Location: forum/forumComment/'. $_GET['title'] . '/' . $_GET['topic_id']);
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