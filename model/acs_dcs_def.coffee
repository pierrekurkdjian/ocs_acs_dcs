
module.exports =
    elements:
        acs_ctrl_pkg:
            elements:
                acs_main_ctrl:  {language: ['cpp'], build: 'obj', deploy: 'dist', codegen: true, active: true}
                acs_hw_adapter: {language: ['cpp'], build: 'obj', deploy: 'dist', codegen: true, active: true}
                acs_ctrl_app:   {language: ['cpp'], build: 'app', deploy: 'dist', codegen: true, active: true}
