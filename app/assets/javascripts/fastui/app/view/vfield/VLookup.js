Ext.define('FastUI.view.vfield.VLookup', {
    extend:'Ext.form.field.ComboBox',
    alias:'widget.vlookupwindow',
    valueObject: {},
    winCtx:{},
    winId:0,
    rest:{},

    editable:false,
    displayField:'title',
    valueField:'id',
    initComponent:function () {
        this.fieldLabel = this.getFValue('title');
        this.name =  this.rest.getTableName() + '[' + this.getFValue('name') + ']';
        this.disabled = this.getFValue('readonly');
        this.allowBlank = true;
        this.store = Ext.create('Ext.data.ArrayStore', {
            fields:['id', 'title'],
            data:[]
        });
        this.callParent();
    },
    getDefaultValue: function(){
        return this.getFValue('default_logic');
    },
    getFValue:function (key) {
        return this.valueObject[key];
    },
    setValue:function(value){
        if(value && value.id && value.title){
            this.store.add(value);
            this.setValue(value.id);
        }else{
            this.callParent(arguments);
        }
    },

    onTriggerClick:function () {
        this.loadWindow();
    },
    loadWindow:function () {
        this.window = Ext.create('FastUI.view.VSearchWindow',{vlookup:this});
        this.window.show();
    }
});