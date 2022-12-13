

<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Manage Windows')); ?> 
<?php $__env->stopSection(); ?>

<?php $__env->startPush('css-page'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('css/summernote/summernote-bs4.css')); ?>">
<?php $__env->stopPush(); ?>
<?php $__env->startPush('script-page'); ?>
    <script src="<?php echo e(asset('css/summernote/summernote-bs4.js')); ?>"></script>
    <script>
        $(document).on("change", ".change-pipeline select[name=default_pipeline_id]", function () {
            $('#change-pipeline').submit();
        });
    </script>
<script>
$(document).ready(function(){
    $('#select_id').on('change', function() {
        var val = $(this).val();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(val) > -1)
    });
  });
});
</script>
<script>
    $(document).ready(function(){
    <!-- $('.btnprn').printPage(); -->
    <!-- $('.btnprn').window.print();
    }); -->

</script>
<script>
    function printme(){
        window.print();
    }
</script>



<?php $__env->stopPush(); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <li class="breadcrumb-item"><a href="<?php echo e(route('dashboard')); ?>"><?php echo e(__('Dashboard')); ?></a></li>
    <li class="breadcrumb-item"><?php echo e(__('Windows')); ?></li>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('action-btn'); ?>
    <div class="float-end">
        <a href="#" onclick="printme();" data-size="lg" data-url="" data-ajax-popup="true" data-bs-toggle="tooltip" title="<?php echo e(__('Print Data')); ?>" class="btn btn-sm btn-primary btnprn">
            <i class="fa fa-print"></i>
        </a>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="row" >
        <div class="col-xxl-12">
            <div class="row">
            
                <div class="col-md-3">
               
                    <div class="card text-center">
                        <div class="card-header border-0 pb-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">
                                    <div class=" badge bg-primary p-2 px-3 rounded">
                                        <?php echo e(ucfirst($image->name)); ?>

                                        <input type="hidden" value="<?php echo e($image->name); ?>" id="imagname" >
                                    </div>
                                </h6>

                            </div>

                          
                        </div>
                        <div class="card-body full-card">
                           <div class="img-fluid rounded-circle card-avatar">
                                <img src="<?php echo e((!empty($image->image))? asset(Storage::url("uploads/windows/".$image->image)): asset(Storage::url("uploads/avatar/avatar.png"))); ?>" alt="kal" class="img-user wid-140 ">
                           </div>
                          
                        </div>
                      
                    </div>

                </div>

                <div class="col-md-9">
                     <div class="card">
                    <div class="card-body table-border-style">
                        <div class="table-responsive">
      
                            <table class="table" id="myTable" >
                                <thead>
                                <tr>
                                    <th><?php echo e(__('OuterWidth')); ?></th>
                                    <th><?php echo e(__('OuterHeight')); ?></th>
                                    <th><?php echo e(__('InnerWidth')); ?></th>
                                    <th><?php echo e(__('InnerHeight')); ?></th>
                                    <th><?php echo e(__('FixWidth')); ?></th>
                                    <th><?php echo e(__('FixHeight')); ?></th>
                                </tr>
                              
                                </thead>
                                <tbody >
                                 
                                        <tr>
                                        <?php if($recent): ?>
                                            <td><?php echo e($recent->outerwidth); ?></td>
                                            <td><?php echo e($recent->outerheight); ?></td> 
                                            <td><?php echo e($recent->innerwidth); ?></td> 
                                            <td><?php echo e($recent->innerheight); ?></td> 
                                            <td><?php echo e($recent->fixwidth); ?></td> 
                                            <td><?php echo e($recent->fixheight); ?></td> 
                                                       <?php else: ?>
                                    <tr class="font-style">
                                        <td colspan="6" class="text-center"><?php echo e(__('No data available in table')); ?></td>
                                    </tr>
                                <?php endif; ?>
                                        </tr>
                                 
                                      
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                </div>
        
            </div>
        </div>
</div>


        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body table-border-style">
                        <div class="table-responsive">
      
                            <table class="table datatable" >
                                <thead>
                                <tr>
                                   
                                   
                                    <th><?php echo e(__('Date')); ?></th>
                                    <th><?php echo e(__('Image')); ?></th>
                                    <th><?php echo e(__('Formulas')); ?></th>
                                    <th><?php echo e(__('OuterWidth')); ?></th>
                                    <th><?php echo e(__('OuterHeight')); ?></th>
                                    <th><?php echo e(__('InnerWidth')); ?></th>
                                    <th><?php echo e(__('InnerHeight')); ?></th>
                                    <th><?php echo e(__('FixWidth')); ?></th>
                                    <th><?php echo e(__('FixHeight')); ?></th>
                                      <th><?php echo e(__('Created By')); ?></th>
                                    <th><?php echo e(__('Assign To')); ?></th>
                                     <th><?php echo e(__('Status')); ?></th>
                                    <th><?php echo e(__('Action')); ?></th>
                                </tr>
                              
                                </thead>
                                <tbody >
                                    
                                 <?php $__empty_1 = true; $__currentLoopData = $assign; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $assig): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>  
                                    <?php $__currentLoopData = $datas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                      <?php $__currentLoopData = $createid; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $create): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($data->created_at); ?></td>
                                            <td>
                                                     <img src="<?php echo e((!empty($image->image))? asset(Storage::url("uploads/windows/".$image->image)): asset(Storage::url("uploads/avatar/avatar.png"))); ?>" alt="kal" class="img-user wid-80 ">
                                            </td>
                                            <td><?php echo e($data->formula_type); ?></td>
                                            <td><?php echo e($data->outerwidth); ?></td>
                                            <td><?php echo e($data->outerheight); ?></td> 
                                            <td><?php echo e($data->innerwidth); ?></td> 
                                            <td><?php echo e($data->innerheight); ?></td> 
                                            <td><?php echo e($data->fixwidth); ?></td> 
                                            <td><?php echo e($data->fixheight); ?></td>
                                             <?php if($create->id == $data->created_by): ?>
                                              <td><?php echo e($create->name); ?></td>
                                              <?php endif; ?>
                                              
                                             <?php if(Auth::user()->type != 'Admin'): ?>
                                                <?php if($assig->id == $data->assignto): ?>
                                              <td><?php echo e($assig->name); ?></td> 
                                              <?php else: ?>
                                              <td>No Assignee</td> 
                                              <?php endif; ?>
                                            <?php else: ?>
                                            <?php if(!empty($data->assignto)): ?>
                                              <td><?php echo e($assig->name); ?></td>
                                            <?php else: ?>
                                            <td>
                                                <div class="action-btn bg-success ms-2">
                                                  
                                                    <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" data-url="<?php echo e(route('usrimg.assigncreate',$data)); ?>" data-ajax-popup="true" data-size="sl" data-bs-toggle="tooltip" title="<?php echo e(__('Assign')); ?>" data-title="<?php echo e(__('Assign To')); ?>">
                                                        <i class="ti ti-user text-white"></i>
                                                    </a> 
                                                </div>
                                            </td>
                                            <?php endif; ?>
                                            <?php endif; ?>
                                              <?php if(Auth::user()->type != 'cutter'): ?>
                                            <td><?php echo e($data->status); ?></td> 
                                            <?php else: ?>
                                            <td>
                                                <div class="action-btn bg-success ms-2">
                                                    
                                                    <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" data-url="<?php echo e(route('usrimg.statuscreate',$data)); ?>" data-ajax-popup="true" data-size="sl" data-bs-toggle="tooltip" title="<?php echo e(__('status')); ?>" data-title="<?php echo e(__('Status')); ?>">
                                                        <i class="ti ti-list text-white"></i>
                                                    </a>
                                                </div>
                                            </td>
                                            <?php endif; ?>
                                        <?php if(Auth::user()->type != 'Client'): ?>
                                                <td class="Action">
                                                    <span>
                                                  
                                                          
                                                                <div class="action-btn bg-warning ms-2">
                                                                <a href="<?php echo e(route('usrimg.show',$data->id)); ?>" class="mx-3 btn btn-sm d-inline-flex align-items-center"  data-size="xl" data-bs-toggle="tooltip" title="<?php echo e(__('View')); ?>" data-title="<?php echo e(__('window Detail')); ?>">
                                                                    <i class="ti ti-eye text-white"></i>
                                                                </a>
                                                            </div>
                                                           
                                                           
                                                  
                                                            <div class="action-btn bg-danger ms-2">
                                                                <?php echo Form::open(['method' => 'DELETE', 'route' => ['usrimg.destroy', $data->id],'id'=>'delete-form-'.$data->id]); ?>

                                                                <a href="#" class="mx-3 btn btn-sm  align-items-center bs-pass-para" data-bs-toggle="tooltip" title="<?php echo e(__('Delete')); ?>" ><i class="ti ti-trash text-white"></i></a>
    
                                                                <?php echo Form::close(); ?>

                                                             </div>
    
                                                        
                                                    </span>
                                                </td>
                                        <?php endif; ?>
                                        </tr>
                                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                            
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                           
                                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>  
                                   <?php $__currentLoopData = $datas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php $__currentLoopData = $createid; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $create): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                      <tr>
                                           <td><?php echo e($data->created_at); ?></td>
                                            <td>
                                               <img src="<?php echo e((!empty($image->image))? asset(Storage::url("uploads/windows/".$image->image)): asset(Storage::url("uploads/avatar/avatar.png"))); ?>" alt="kal" class="img-user wid-80 ">
                                            </td>
                                          <td><?php echo e($data->formula_type); ?>           </td>
                                          <td><?php echo e($data->outerwidth); ?> MM          </td>
                                          <td><?php echo e($data->outerheight); ?> MM         </td> 
                                          <td><?php echo e($data->innerwidth); ?> </td> 
                                          <td><?php echo e($data->innerheight); ?></td> 
                                  
                                          <td><?php echo e($data->fixwidth); ?></td> 
                                          <td><?php echo e($data->fixheight); ?></td> 
                                          <?php if($create->id == $data         ->created_by): ?>
                                          <td><?php echo e($create->name); ?></td>
                                          <?php endif; ?>
                                          <?php if(Auth::user()->type == 'Admin'): ?>
                                         
                                          <td>
                                              <div class="action-btn bg-success ms-2">
                                             <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" data-url="<?php echo e(route('usrimg.assigncreate',$data)); ?>" data-ajax-popup="true" data-size="sl" data-bs-toggle="tooltip" title="<?php echo e(__('Assign')); ?>" data-title="<?php echo e(__('Assign To')); ?>">
                                                                <i class="ti ti-user text-white"></i>
                                                            </a> 
                                                  <!-- <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" data-url="<?php echo e(route('usrimg.assigncreate',$data)); ?>" data-ajax-popup="true" data-size="sl" data-bs-toggle="tooltip" title="<?php echo e(__('Assign')); ?>" data-title="<?php echo e(__('Assign To')); ?>">
                                                      <i class="ti ti-pencil text-white"></i>
                                                  </a> -->
                                              </div>
                                          </td>
                                          
                                          <?php endif; ?>
                                
                                          <?php if(Auth::user()->type != 'Cutter'): ?>
                                           <td><?php echo e($data->status); ?></td> 
                                          <?php else: ?>
                                          <td>
                                              <div class="action-btn bg-success ms-2">
                                                
                                                  <a href="#" class="mx-3 btn btn-sm d-inline-flex align-items-center" data-url="<?php echo e(route('usrimg.statuscreate',$data)); ?>" data-ajax-popup="true" data-size="sl" data-bs-toggle="tooltip" title="<?php echo e(__('status')); ?>" data-title="<?php echo e(__('Assign To')); ?>">
                                                      <i class="ti ti-pencil text-white"></i>
                                                  </a>
                                              </div>
                                          </td>
                                          <?php endif; ?>
                                          <?php if(Auth::user()->type != 'Client'): ?>
                                              <td class="Action">
                                                  <span>
                                              
                                                      
                                                              <div class="action-btn bg-warning ms-2">
                                                              <a href="<?php echo e(route('usrimg.show',$data->id)); ?>" class="mx-3 btn btn-sm d-inline-flex align-items-center"  data-size="xl" data-bs-toggle="tooltip" title="<?php echo e(__('View')); ?>" data-title="<?php echo e(__('Lead Detail')); ?>">
                                                                  <i class="ti ti-eye text-white"></i>
                                                              </a>
                                                          </div>
                                                      
                                                          
                                              
                                                          <div class="action-btn bg-danger ms-2">
                                                              <?php echo Form::open(['method' => 'DELETE', 'route' => ['usrimg.destroy', $data->id],'id'=>'delete-form-'.$data->id]); ?>

                                                              <a href="#" class="mx-3 btn btn-sm  align-items-center bs-pass-para" data-bs-toggle="tooltip" title="<?php echo e(__('Delete')); ?>" ><i class="ti ti-trash text-white"></i></a>
                                
                                                              <?php echo Form::close(); ?>

                                                          </div>
                                
                                                      
                                                  </span>
                                              </td>
                                          <?php endif; ?>
                                      </tr>

                                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                 <?php endif; ?> 
                               
                             

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/babarras/public_html/resources/views/image/imagelist.blade.php ENDPATH**/ ?>