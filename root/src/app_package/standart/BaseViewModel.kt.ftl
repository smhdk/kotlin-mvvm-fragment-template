package ${packageName}

import android.app.Application
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.arch</#if>.lifecycle.AndroidViewModel

class ${viewModelName}(app: Application) : AndroidViewModel(app) {

    init {
        //(app as? App)?.component?.inject(this)
    }

}
