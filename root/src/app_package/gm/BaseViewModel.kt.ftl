package ${packageName}

import android.app.Application
import ${applicationPackage}.core.BaseViewModel

class ${viewModelName}(app: Application) : BaseViewModel(app) {

    init {
        //(app as? App)?.component?.inject(this)
    }

}
