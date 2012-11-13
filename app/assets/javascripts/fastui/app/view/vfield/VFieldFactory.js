Ext.define('FastUI.view.vfield.VFieldFactory', {
    name:'vfieldFactory',
//        singleton: true,
        constructor:function () {
         this.VType =  {
        VText:"VText",
        VDate:"VDate",
        VHtmlEditor:"VHtmlEditor",
        VComboBox:"VComboBox",
        VLongComboBox:"VLongComboBox",
        VTextArea:"VTextArea",
        VNumber:"VNumber",
        VCheckBox:"VCheckBox",
        VCheckboxGroup:"VCheckboxGroup",
        VSexSelect:"VSexSelect",
        VFile:"VFile",
        VYesOrNo:"VYesOrNo",
//            VFieldCombobox:"VFieldCombobox",
//            VIncludedTabsCombo:"VIncludedTabsCombo",
        VGridColumnXtypeCombo:"VGridColumnXtypeCombo"   }
    },
    buildField:function (field) {
        var opt = {fieldLabel:field.title, name:field.name,allowBlank:true};
        switch(field.m_property.refable_type){
            case 'Fastui::MDataType':
                return this.dataTypeMatch(field,opt);
                break;
            case 'Fastui::MGlossary':
               opt['glossary_id'] = field.m_property.refable_id;
                return Ext.create('FastUI.view.vfield.VComboBox',opt);
                break;
            case 'Fastui::MEntity':
                opt['entity_name'] = field.m_property.refable.name;
                return Ext.create('FastUI.view.vfield.VLookUpWindow',opt);
                break;
        }
    },
    dataTypeMatch:function(field,opt){
        switch (field.m_property.refable.name) {
            case this.VType.VText:
                return Ext.create('FastUI.view.vfield.VText', opt);
                break;
            case this.VType.VDate:
                return Ext.create('FastUI.view.vfield.VDate', opt);
                break;
            case this.VType.VHtmlEditor:
                return Ext.create('FastUI.view.vfield.VHtmlEditor', opt);
                break;
            case this.VType.VComboBox:
                return Ext.create('FastUI.view.vfield.VComboBox', opt);
                break;
            case this.VType.VLongComboBox:
                return Ext.create('FastUI.view.vfield.VLongComboBox', opt);
                break;
            case this.VType.VTextArea:
                return Ext.create('FastUI.view.vfield.VTextArea', opt);
                break;
            case this.VType.VNumber:
                return Ext.create('FastUI.view.vfield.VNumber', opt);
                break;
            case this.VType.VCheckBox:
                return Ext.create('FastUI.view.vfield.VCheckBox', opt);
                break;
            case this.VType.VCheckboxGroup:
                return Ext.create('FastUI.view.vfield.VCheckboxGroup', opt);
                break;
            case this.VType.VSexSelect:
                return Ext.create('FastUI.view.vfield.VSexSelect', opt);
                break;
            case this.VType.VFile:
                return Ext.create('FastUI.view.vfield.VFile', opt);
                break;
            case this.VType.VYesOrNo:
                return Ext.create('FastUI.view.vfield.VYesOrNo', opt);
                break;
        }
    }
});
