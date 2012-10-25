Ext.define('FastUI.view.VWindow', {
    extend:'Ext.TabPanel',
    alias:'widget.vwindow',
    title:'The VWindow',
    mwindow:null,
    //scope:this,
    listeners:{
        beforerender:function (vwindow, opts) {
            this.loadTabs(vwindow, opts)
        }
    },
    loadTabs:function (vwindow, opts) {
        vwindow.mwindow.mtabs().each(function(mtab){
            var vTab =  Ext.create('FastUI.view.VTab', {mtab:mtab,title:mtab.get('title')});
            vwindow.add(vTab);
        });
    }
});

