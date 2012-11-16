Ext.define('FastUI.view.vfield.VLookUpWindow', {
    extend:'Ext.form.field.ComboBox',
    alias:'widget.vlookupwindow',
    editable:false,
    displayField: 'title',
    valueField: 'id',
    initComponent:function () {
        this.store = this.getStore();
        this.callParent();
    },
    onTriggerClick:function () {
        this.loadWindow();

    },
    loadWindow:function () {
        this.grid = Ext.create('Ext.grid.Panel', {
            vlookup:this,
            border:false,
            store:this.getStore(),
            columns:[
                {header:'ID', dataIndex:'id'},
                {header:'Title', dataIndex:'title'}
            ],
            listeners:{
                itemclick:function (grid, record, item, index, e, eOpts) {
                    this.vlookup.setValue(record.get('id'));
                }
            }
        });

        this.window = Ext.create('Ext.window.Window', {
            title:this.entity.title,
            height:200,
            width:400,
            layout:'fit',
            items:this.grid
        }).show();
    },
    getStore:function () {
        return new Ext.data.JsonStore({
            autoLoad:true,
            fields:['id', 'title'],
            proxy:{
                type:'ajax',
                url:'/fastui/' + Ext.util.Inflector.pluralize(this.entity.name) + '.json',
                reader:{
                    type:'json',
                    root:''
                }
            }

        });
    }

});