<div class="bjui-pageHeader " style="background-color:#fefefe; border-bottom:none;padding: 0;">
    <form data-toggle="ajaxsearch" data-options="{searchDatagrid:$.CurrentNavtab.find('#travelplanlist-table')}">
        <fieldset>
            <legend style="font-weight:normal;">高级搜索</legend>
            <div class="bjui-row col-4">
                <label class="row-label">旅游地</label>
                <div class="row-input">
                    <input type="text" name="placename" value="{{$placename or ''}}" placeholder="旅游地">
                </div>

                <label class="row-label">账号状态</label>
                <div class="row-input">
                    <select data-toggle="selectpicker" data-width="100%" name="bar_status">
                        <option value="" selected="">不限</option>
                        <option value="1" >启用</option>
                        <option value="2">停用</option>
                    </select>
                </div>
                <div class="row-input">
                    <div class="btn-group">
                        <button type="submit" class="btn-green" data-icon="search">开始搜索</button>
                    </div>
                </div>

            </div>

        </fieldset>
    </form>
</div>
<div class="bjui-pageContent clearfix">
    <table class="table table-bordered" id="travelplanlist-table" data-toggle="datagrid" data-options="{
        tableWidth:'99%',
        height: '100%',
        gridTitle : '',
        showToolbar: true,
        toolbarItem: 'add,|,edit,|,del',
        dataUrl: 'invest/investlistJson/type/{{$type}}',
        dataType: 'json',
        jsonPrefix: 'obj',
        editMode: {dialog:{width:'600',height:'500',title:'投资管理',mask:true}},
        editUrl: '/invest/investedit/id/{sysno}',
        delUrl:'/invest/investdeljson',
        delPK:'sysno',
        paging: {pageSize:20},
        showCheckboxcol: false,
        linenumberAll: true,
        filterThead:false,
        showLinenumber:true
    }">
        <thead>
            <tr data-options="{name:'sysno'}">
                <th data-options="{name:'projectname',align:'center'}">项目名称</th>
                <th data-options="{name:'firstamount',align:'center'}">初始投资额</th>
                <th  data-options="{name:'firsttime',align:'center'}">投资时间</th>
                <th data-options="{name:'lastamount',align:'center'}">本息和</th>
                <th  data-options="{name:'lasttime',align:'center'}">回报时间</th>
                <th  data-options="{name:'',align:'center',render:function(value,data){return parseFloat(data.lastamount)-parseFloat(data.firstamount)}}">纯利润</th>
                <th  data-options="{name:'',align:'center',render:function(value,data){return (parseFloat(data.lastamount)-parseFloat(data.firstamount))/parseFloat(data.firstamount)}}">投资回报率</th>
                <th  data-options="{name:'memo',align:'center'}">备注</th>
                <th data-options="{name:'created_at',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm'}">创建时间</th>
                <th data-options="{name:'updated_at',align:'center',type:'date',pattern:'yyyy-MM-dd HH:mm'}">修改时间</th>
                <th data-options="{name:'status',align:'center',render:function(value){return value =='1' ? '启用' : '停用'}}">状态</th>
            </tr>
        </thead>
    </table>
</div>