package ${packageName};

import android.app.Application;
import ${applicationPackage}.core.BaseViewModel;

public class ${viewModelName} extends BaseViewModel{
    public ${viewModelName}(Application app) {
        super(app);
        
        //((App) app).component.inject(this);
    }
}
