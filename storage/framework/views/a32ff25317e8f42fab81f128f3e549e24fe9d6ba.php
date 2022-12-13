<?php echo e(Form::model($lead, array('route' => array('leads.update', $lead->id), 'method' => 'PUT'))); ?>

<div class="modal-body">
    <div class="row">
        <div class="col-6 form-group">
            <?php echo e(Form::label('subject', __('Subject'),['class'=>'form-label'])); ?><span class="text-danger">*</span>
            <?php echo e(Form::text('subject', null, array('class' => 'form-control','required'=>'required'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('user_id', __('User'),['class'=>'form-label'])); ?><span class="text-danger">*</span>
            <?php echo e(Form::select('user_id', $users,null, array('class' => 'form-control select','required'=>'required'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('name', __('Name'),['class'=>'form-label'])); ?><span class="text-danger">*</span>
            <?php echo e(Form::text('name', null, array('class' => 'form-control','required'=>'required'))); ?>

        </div>
        <!--<div class="col-6 form-group">-->
        <!--    <?php echo e(Form::label('email', __('Email'),['class'=>'form-label'])); ?><span class="text-danger">*</span>-->
        <!--    <?php echo e(Form::email('email', null, array('class' => 'form-control','required'=>'required'))); ?>-->
        <!--</div>-->
        <div class="col-6 form-group">
            <?php echo e(Form::label('phone', __('Phone'),['class'=>'form-label'])); ?><span class="text-danger">*</span>
            <?php echo e(Form::text('phone', null, array('class' => 'form-control','required'=>'required'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('houseno', __('House#'),['class'=>'form-label'])); ?>

            <?php echo e(Form::number('houseno', null, array('class' => 'form-control'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('streetno', __('street#'),['class'=>'form-label'])); ?>

            <?php echo e(Form::text('streetno', null, array('class' => 'form-control'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('sector', __('Sector'),['class'=>'form-label'])); ?>

            <?php echo e(Form::text('sector', null, array('class' => 'form-control'))); ?>

        </div>
         <div class="col-6 form-group">
            <?php echo e(Form::label('whoishe', __('Whoishe'),['class'=>'form-label'])); ?>

            <?php echo e(Form::text('whoishe', null, array('class' => 'form-control'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('housesize', __('HouseSize'),['class'=>'form-label'])); ?>

            <?php echo e(Form::text('housesize', null, array('class' => 'form-control'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('area', __('Area'),['class'=>'form-label'])); ?>

            <?php echo e(Form::text('area', null, array('class' => 'form-control'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('pipeline_id', __('Pipeline'),['class'=>'form-label'])); ?><span class="text-danger">*</span>
            <?php echo e(Form::select('pipeline_id', $pipelines,null, array('class' => 'form-control select2','required'=>'required'))); ?>

        </div>
        <div class="col-6 form-group">
            <?php echo e(Form::label('stage_id', __('Stage'),['class'=>'form-label'])); ?><span class="text-danger">*</span>
            <?php echo e(Form::select('stage_id',  [''=>__('Select Stage')] ,null, array('class' => 'form-control ','required'=>'required'))); ?>

        </div>
        <div class="col-12 form-group">
            <?php echo e(Form::label('sources', __('Sources'),['class'=>'form-label'])); ?>

            <?php echo e(Form::select('sources[]', $sources,null, array('class' => 'form-control select2','id'=>'choices-multiple1','multiple'=>''))); ?>

        </div>
        <div class="col-12 form-group">
            <?php echo e(Form::label('products', __('Products'),['class'=>'form-label'])); ?>

            <?php echo e(Form::select('products[]', $products,null, array('class' => 'form-control select2','id'=>'choices-multiple2','multiple'=>''))); ?>

        </div>
        <div class="col-12 form-group">
            <?php echo e(Form::label('notes', __('Notes'),['class'=>'form-label'])); ?>

            <?php echo e(Form::textarea('notes',null, array('class' => 'summernote-simple'))); ?>

        </div>
    </div>
</div>

<div class="modal-footer">
    <input type="button" value="<?php echo e(__('Cancel')); ?>" class="btn  btn-light" data-bs-dismiss="modal">
    <input type="submit" value="<?php echo e(__('Update')); ?>" class="btn  btn-primary">
</div>

<?php echo e(Form::close()); ?>




<!--<script src="https://rawgit.com/select2/select2/master/dist/js/select2.js"></script>-->
<script>
    var stage_id = '<?php echo e($lead->stage_id); ?>';

    $(document).ready(function () {
        var pipeline_id = $('[name=pipeline_id]').val();
        getStages(pipeline_id);
    });

    $(document).on("change", "#commonModal select[name=pipeline_id]", function () {
        var currVal = $(this).val();
        console.log('current val ', currVal);
        getStages(currVal);
    });

    function getStages(id) {
        $.ajax({
            url: '<?php echo e(route('leads.json')); ?>',
            data: {pipeline_id: id, _token: $('meta[name="csrf-token"]').attr('content')},
            type: 'POST',
            success: function (data) {
                var stage_cnt = Object.keys(data).length;
                $("#stage_id").empty();
                if (stage_cnt > 0) {
                    $.each(data, function (key, data1) {
                        var select = '';
                        if (key == '<?php echo e($lead->stage_id); ?>') {
                            select = 'selected';
                        }
                        $("#stage_id").append('<option value="' + key + '" ' + select + '>' + data1 + '</option>');
                    });
                }
                $("#stage_id").val(stage_id);
                // $('#stage_id').select2({
                //     placeholder: "<?php echo e(__('Select Stage')); ?>"
                // });
            }
        })
    }
</script>
<?php /**PATH /home2/babarras/public_html/resources/views/leads/edit.blade.php ENDPATH**/ ?>