Ext.define('FastUI.controller.MMenus', {
    extend:'Ext.app.Controller',
    requires:['FastUI.store.MWindowMgr'],
    stores:['MMenus'],
    //models: [ 'MWindow'],
    views:['VMenu'],
    init:function () {
        this.control({
            'vMenu':{
                itemclick:this.loadVWindow
            }

        });
    },
    loadVWindow:function (self, record, item, index, e, eOpts) {
        var id = record.get('m_window_id');
        if (record.get('leaf')) {
            FastUI.store.MWindowMgr.load(id, function (obj) {
                var c = Ext.getCmp('mycenter');
                var win_id = 'win_' + id;
                var win = Ext.getCmp(win_id);
                if (!win) {
                    win = Ext.create('FastUI.view.VVWindow', {id:win_id,
                        vfactory:Ext.create('FastUI.view.VFactory', obj)
                    });
                    c.add(win);
                }
                c.setActiveTab(win);
            });
        }
    }

});