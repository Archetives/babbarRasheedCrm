<div class="messenger-sendCard">
    <form id="message-form" method="POST" action="<?php echo e(route('send.message')); ?>" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <label><span class="$setting  = Utility::settings(\Auth::user()->creatorId());-paperclip"></span><input disabled='disabled' type="file" class="upload-attachment" name="file" accept="image/*, .txt, .rar, .zip" /></label>
        <textarea readonly='readonly' name="message" class="m-send app-scroll" placeholder="Type a message.."></textarea>
        <button disabled='disabled'><span class="ti ti-paper-plane"></span></button>
    </form>
</div>
<?php /**PATH /home2/babarras/public_html/resources/views/vendor/Chatify/layouts/sendForm.blade.php ENDPATH**/ ?>