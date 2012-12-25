/**
 * Created with JetBrains RubyMine.
 * User: Administrator
 * Date: 12-10-12
 * Time: 下午4:16
 * To change this template use File | Settings | File Templates.
 */

Ext.define('FastUI.view.Viewport', {
    extend:'Ext.container.Viewport',
    id:'port',
    layout:'border',
    items:[
        {
            region:'north',
            html:'<h1 class="x-panel-header">祺腾教育评价系统</h1>',
            border:false,
            margins:'0 0 5 0'
        },
        Ext.create('FastUI.view.VMenu'),
        {
            region:'south',
            title:'South Panel',
            collapsible:true,
            html:'Information goes here',
            split:true,
            height:100,
            minHeight:100
        },
        {
            region:'east',
            title:'East Panel',
            collapsible:true,
            split:true,
            width:150
        },
        {
            id:'mycenter',
               region: 'center',
               xtype: 'tabpanel', // TabPanel itself has no title
               activeTab: 0,      // First tab active by default
               items: {
                   title: '首页',
                   html: 'The first tab\'s content. Others may be added dynamically'
               }
        }
    ]
});

