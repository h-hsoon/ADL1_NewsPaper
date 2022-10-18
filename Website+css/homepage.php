<?php require_once "header.php"; ?>
<?php require_once "functions.php"; ?>
<?php
$db = db_connection();
$newsTable = "news";
$newsColumns = ['news_id', 'title', 'category', 'content', 'image', 'toNewsLink'];
$fetchData = fetch_data($db, $newsTable, $newsColumns);

function fetch_data($db, $newsTable, $newsColumns)
{
  if (empty($db)) {
    $msg = "Database connection error";
  } elseif (empty($newsColumns) || !is_array($newsColumns)) {
    $msg = "columns name for news table must be defined in an indexed array";
  } elseif (empty($newsTable)) {
    $msg = "news table is empty";
  } else {

    array_walk($newsColumns, function (&$val, $key) {
      $val = 'news.' . $val;
    }); //add news. at the beginning of each data in array
    $columnName = implode(", ", $newsColumns); // add each data but with (,) in between

    $query = "SELECT $columnName from $newsTable ORDER BY news_id  ASC";
    $result = $db->query($query);
    if ($result == true) {
      if ($result->num_rows > 0) {
        $row = mysqli_fetch_all($result, MYSQLI_ASSOC);
        $msg = $row;
      } else {
        $msg = "No Data Found";
      }
    } else {
      $msg = mysqli_error($db);
    }
  }
  return $msg;
}
?>



<div id="page-container">
  <div id="content-wrap">
    <div class="container">
      <div class="newsContainer">
        <?php
        if (is_array($fetchData)) {
          $sn = 1;
          foreach ($fetchData as $data) {
        ?>
            <div class="card">
              <?php if ((!empty($data['image']))) {
              ?>
                <div class="image">
                  <img src="<?php echo $data['image'] ?? ''; ?>" />
                </div>
              <?php } ?>
              <div class="card-inner">
                <div class="header">
                  <h class="h2 font-weight-light PostTitle"><?php echo $data['title'] ?? ''; ?></h>
                  <p class="text-secondary"><?php echo $data['category'] ?? ''; ?></p>
                </div>
                <div class="content">
                  <div class="navigationButtons">
                    <p id="PostDescription"><?php echo $data['content'] ?? ''; ?></p>
                    <div id="ReadMore">
                      <ul class="newsCardButton">
                        <?php if ((!empty($data['toNewsLink']))) {
                        ?>
                          <li>
                            <a href="<?php echo $data['toNewsLink'] ?? ''; ?>">
                              <button class="btn toNewsButton">Story</button>
                            </a>

                          </li>
                        <?php } ?>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        <?php
            $sn++;
          }
        } ?>
      </div>
    </div>
  </div>