package ${packageName}

import ${applicationPackage}.R
import ${applicationPackage}.core.BaseFragment
import ${applicationPackage}.databinding.Fragment${fragmentClass?replace("Fragment", "")}Binding
import android.view.LayoutInflater
import android.view.ViewGroup
import android.view.View
import android.os.Bundle

public class ${fragmentClass} : BaseFragment<${viewModelName}, Fragment${fragmentClass?replace("Fragment", "")}Binding>(${viewModelName}::class.java) {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
	init(inflater, container!!)
        mBinding.viewModel = viewModel

	return mBinding.root
    }

    override fun getLayoutRes() = R.layout.${layoutName}
}
