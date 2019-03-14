<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-uplexa" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1>uPlexa Payment Gateway</h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-uplexa" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-status">Status</label>
                        <div class="col-sm-10">
                            <select name="uplexa_status" id="input-status" class="form-control">
                                <?php if ($uplexa_status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>




                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-uplexa-address"><span data-toggle="tooltip" title="uPlexa Address"><?php echo $uplexa_address_text; ?></span></label>
                        <div class="col-sm-10">
                            <input type="text" name="uplexa_address" value="<?php echo $uplexa_address; ?>" placeholder="<?php echo $uplexa_address; ?>" id="input-total" class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-uplexa-wallet-rpc-host"><span data-toggle="tooltip" title="uPlexa Wallet RPC">uPlexa Wallet RPC Host</span></label>
                        <div class="col-sm-10">
                            <input type="text" name="uplexa_wallet_rpc_host" value="<?php echo $uplexa_wallet_rpc_host ?>" placeholder="<?php echo $uplexa_wallet_rpc_host ?>" id="input-total" class="form-control" />
                        </div>
                    </div>

<div class="form-group">
                        <label class="col-sm-2 control-label" for="input-uplexa-wallet-port"><span data-toggle="tooltip" title="uPlexa Wallet RPC port">uPlexa Wallet RPC Port</span></label>
                        <div class="col-sm-10">
                            <input type="text" name="uplexa_wallet_rpc_port" value="<?php echo $uplexa_wallet_rpc_port ?>" placeholder="21065" id="input-total" class="form-control" />
                        </div>
                    </div>









                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>
