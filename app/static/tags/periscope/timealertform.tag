<div class="form-group" ng-class="{'has-error': timeBasedAlertForm.alertName.$dirty && timeBasedAlertForm.alertName.$invalid }">
  <label class="col-sm-3 control-label" for="alertName">alert name</label>
  <div class="col-sm-9">
    <input type="text" class="form-control" id="alertName" name="alertName" placeholder="min 5 max 100 char" ng-minlength="5" ng-maxlength="100" ng-model="alert.alertName" ng-pattern="/^[a-zA-Z][-a-zA-Z0-9]*$/" required>
    <div class="help-block" ng-show="timeBasedAlertForm.alertName.$dirty && timeBasedAlertForm.alertName.$invalid">
      <i class="fa fa-warning"></i> {{error_msg.alert_name_invalid}}
    </div>
  </div>
  <!-- .col-sm-9 -->
</div>
<!-- .form-group -->
<div class="form-group" ng-class="{'has-error': timeBasedAlertForm.alertDesc.$dirty && timeBasedAlertForm.alertDesc.$invalid }">
  <label class="col-sm-3 control-label" for="alertDesc">description</label>
  <div class="col-sm-9">
    <textarea class="form-control" id="alertDesc" name="alertDesc" placeholder="" rows="2" ng-model="alert.description" ng-maxlength="1000"></textarea>
    <div class="help-block" ng-show="timeBasedAlertForm.alertDesc.$dirty && timeBasedAlertForm.alertDesc.$invalid">
      <i class="fa fa-warning"></i> {{error_msg.alert_description_invalid}}
    </div>
  </div>
  <!-- .col-sm-9 -->
</div>
<!-- .form-group -->
<div class="form-group" ng-class="{'has-error': timeBasedAlertForm.timeZone.$dirty && timeBasedAlertForm.timeZone.$invalid }">
  <label class="col-sm-3 control-label" for="alertDesc">time zone</label>
  <div class="col-sm-9">
    <select class="form-control" id="timeZone" name="timeZone" ng-model="alert.timeZone" required>
      <option ng-repeat="mapEntry in config.TIME_ZONES | orderBy:timeZoneOrderGetter:true" value="{{mapEntry.key}}">{{mapEntry.value}}</option>
    </select>
    <div class="help-block" ng-show="timeBasedAlertForm.timeZone.$dirty && timeBasedAlertForm.timeZone.$invalid">
      <i class="fa fa-warning"></i> {{error_msg.alert_timezone_invalid}}
    </div>
  </div>
  <!-- .col-sm-9 -->
</div>
<!-- .form-group -->
<div class="form-group" ng-class="{'has-error': timeBasedAlertForm.cronexpression.$dirty && timeBasedAlertForm.cronexpression.$invalid }">
  <label class="col-sm-3 control-label" for="cronexpression">cron expression</label>
  <div class="col-sm-9">
    <input type="text" class="form-control" id="cronexpression" name="cronexpression" placeholder="" ng-model="alert.cron" required>
    <div class="help-block" ng-show="timeBasedAlertForm.cronexpression.$dirty && timeBasedAlertForm.cronexpression.$invalid">
      <i class="fa fa-warning"></i> {{error_msg.alert_cron_invalid}}
    </div>
  </div>
  <!-- .col-sm-5 -->
</div>
<!-- .form-group -->
<div class="row btn-row">
  <div class="col-sm-9 col-sm-offset-3">
    <a id="createAlert" class="btn btn-success btn-block" role="button" ng-disabled="timeBasedAlertForm.$invalid" ng-click="createAlert()"><i class="fa fa-plus fa-fw"></i> create alert</a>
  </div>
</div>
