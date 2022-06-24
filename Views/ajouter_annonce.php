<pre>
<?php
if(isset($_POST['addAnnonce']))
{
    $annonceController=new \Controllers\Annonce_Controller();
    $annonceController->addAnnonce();
}?>
</pre>

