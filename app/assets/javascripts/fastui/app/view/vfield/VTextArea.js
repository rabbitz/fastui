Ext.define('FastUI.view.vfield.VTextArea',{
    extend: 'Ext.form.field.TextArea',

    valueObject: {},
    winCtx:{},
    winId:0,
    rest:{},

    initComponent:function(){
        this.fieldLabel = this.getFValue('title');
        this.name =  this.rest.getTableName() + '[' + this.getFValue('name') + ']';
        this.disabled = this.getFValue('readonly');
        this.allowBlank = true;
        this.callParent();
    },
    getFValue:function (key) {
        return this.valueObject[key];
    }
});