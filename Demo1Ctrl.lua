require "Common/define"
Demo1Ctrl = {}
local this = Demo1Ctrl;

local panel;
local demo1;
local transform;
local gameObject;

function Demo1Ctrl.New()
	-- body
	warn("Demo1Ctrl.New--->>")
	return this
end

function Demo1Ctrl.Awake( )
	-- body
	warn("Demo1Ctrl.Awake--->>")
	panelManger:CreatePanel('Demo1',this.OnCreat)
end

function Demo1Ctrl.OnCreate(obj)
          gameObject = obj;
          transform = obj.transform;
          panel = transform:GetComponent('UIPanel');
          demo1 = transform:GetComponent('LuaBehaviour');
          warn("Start lua--->>"..gameObject.name);
          demo1:AddClick(Demo1Panel.demoClose, this.OnClick);
        end
        function Demo1Ctrl.OnClick(go)
          destroy(gameObject);
end
        function Demo1Ctrl.Close()
          PanelManager:ClosePanel(CtrlName.Demo);
end
