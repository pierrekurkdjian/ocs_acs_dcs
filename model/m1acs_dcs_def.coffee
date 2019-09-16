
module.exports =
    elements:
        m1acs_ctrl_pkg:
            elements:
                m1acs_main_ctrl:  {language: ['cpp'], build: 'obj', deploy: 'dist', codegen: true, active: true}
                m1acs_hw_adapter: {language: ['cpp'], build: 'obj', deploy: 'dist', codegen: true, active: true}
                m1acs_ctrl_app:   {language: ['cpp'], build: 'app', deploy: 'dist', codegen: true, active: true}
