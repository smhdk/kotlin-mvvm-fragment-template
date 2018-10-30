package ${packageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.support</#if>.annotation.LayoutRes
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android</#if>.databinding.DataBindingUtil
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android</#if>.databinding.ViewDataBinding
import <#if isAndroidX>androidx.fragment</#if><#if !isAndroidX>android.support.v4</#if>.app.Fragment
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.arch</#if>.lifecycle.ViewModelProviders

abstract class BaseFragment<VM : BaseViewModel, DB : ViewDataBinding>(private val mViewModelClass: Class<VM>) : Fragment(){

    lateinit var viewModel: VM
    open lateinit var mBinding: DB

    fun init(inflater: LayoutInflater, container: ViewGroup) {
        mBinding = DataBindingUtil.inflate(inflater, getLayoutRes(), container, false)
    }

    open fun init() {}
    @LayoutRes
    abstract fun getLayoutRes(): Int

    private fun getViewM(): VM = ViewModelProviders.of(this).get(mViewModelClass)
    open fun onInject() {}
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        viewModel = getViewM()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View {
        init(inflater, container!!)
        init()
        super.onCreateView(inflater, container, savedInstanceState)
        return mBinding.root
    }

    open fun refresh() {}
}
