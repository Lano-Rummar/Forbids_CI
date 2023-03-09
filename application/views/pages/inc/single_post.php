<?php $co = 0;
if (!empty($posts)) : foreach ($posts as $p) : $co++; ?>

    <div class="singl-post-row d-flex justify-content-between">

      <div class="image-cover d-none d-sm-block align-self-center">
        <a href="<?php echo base_url() ?>user/<?php echo $p['user_url'] ?>">
          <img src="<?php echo base_url() ?>upload/users/<?php echo $p['user_image'] ?>" alt=""></a>
      </div>
      <div class="post-detail w-100 align-self-center">
        <a href="<?php echo base_url() ?>post/<?php echo $p['url'] ?>">
          <h2><?php echo $p['title']; ?></h2>
          <p><?php echo $p['desic']; ?> </p>
        </a>
      </div>
      <div class="post-count bd-highlight">
        <ul>
          <li class="d-flex align-items-center carfg"><span><?php echo $p['replay_count'] ?>
              <i class="fas fa-caret-down"></i>
            </span></li>
          <li class="scgv d-flex"><i class="far fa-eye"></i> <?php echo $p['count'] ?></li>
          <li class="scgv no-bb d-flex"><i class="far fa-clock"></i> <a class="ageo" datetime="<?php echo $p['created_on'] ?>"></a></li>
        </ul>
      </div>
    </div>

    <!------- Forum Post Banner Slot - 1 ------->
    <?php if ($co == 3) : ?>
      <?php if ($ads[0]->status == 'enable') : ?>
        <?php if ($ads[0]->type == 'image') { ?>
          <div class="ad-cover">
            <a target="_blank" href="<?php echo $ads[0]->link ?>">
              <img src="<?php echo base_url() ?>upload/ad/<?php echo $ads[0]->image; ?>" alt="">
            </a>
          </div>
        <?php } else { ?>
          <?php echo $ads[0]->script; ?>
        <?php } ?>

      <?php endif; ?>
    <?php endif; ?>

    <!------- Forum Post Banner Slot - 2 ------->
    <?php if ($co == 6) : ?>
      <?php if ($ads[2]->status == 'enable') : ?>
        <?php if ($ads[2]->type == 'image') { ?>
          <div class="ad-cover">
            <a target="_blank" href="<?php echo $ads[2]->link ?>">
              <img src="<?php echo base_url() ?>upload/ad/<?php echo $ads[2]->image; ?>" alt="">
            </a>
          </div>
        <?php } else { ?>
          <?php echo $ads[2]->script; ?>
        <?php } ?>

      <?php endif; ?>
    <?php endif; ?>

    <!------- Forum Post Banner Slot - 3 ------->
    <?php if ($co == 10) : ?>
      <?php if ($ads[4]->status == 'enable') : ?>
        <?php if ($ads[4]->type == 'image') { ?>
          <div class="ad-cover">
            <a target="_blank" href="<?php echo $ads[4]->link ?>">
              <img src="<?php echo base_url() ?>upload/ad/<?php echo $ads[4]->image; ?>" alt="">
            </a>
          </div>
        <?php } else { ?>
          <?php echo $ads[4]->script; ?>
        <?php } ?>

      <?php endif; ?>


    <?php endif; ?>


<?php endforeach;
endif; ?>