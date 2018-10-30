package ${packageName}

import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.arch</#if>.lifecycle.ViewModelProviders
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android</#if>.databinding.DataBindingUtil
import android.os.Bundle
import ${applicationPackage}.R
import <#if isAndroidX>androidx.fragment</#if><#if !isAndroidX>android.support.v4</#if>.app.Fragment
import ${applicationPackage}.databinding.Fragment${fragmentClass?replace("Fragment", "")}Binding

class ${fragmentClass} : Fragment() {

    val mBinding by lazy {
        DataBindingUtil.setContentView(this, R.layout.${layoutName}) as Fragment${fragmentClass?replace("Fragment", "")}Binding
    }

    val viewModel by lazy {
        ViewModelProviders.of(this).get(${viewModelName}::class.java)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        mBinding.viewModel = viewModel

    }
}
