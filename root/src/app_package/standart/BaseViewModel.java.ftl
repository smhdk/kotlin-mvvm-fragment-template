package ${packageName};

import android.app.Application;
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.arch</#if>.lifecycle.AndroidViewModel;
import  <#if isAndroidX>androidx</#if><#if !isAndroidX>android.support</#if>.annotation.NonNull;

public class ${viewModelName} extends AndroidViewModel {
    public ${viewModelName}(@NonNull Application application) {
        super(application);
    }
}