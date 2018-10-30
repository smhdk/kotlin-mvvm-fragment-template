package ${packageName};

import <#if isAndroidX>androidx</#if><#if !isAndroidX>android.arch</#if>.lifecycle.ViewModelProviders;
import <#if isAndroidX>androidx</#if><#if !isAndroidX>android</#if>.databinding.DataBindingUtil;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ${applicationPackage}.R;
import <#if isAndroidX>androidx.fragment</#if><#if !isAndroidX>android.support.v4</#if>.app.Fragment;
import ${applicationPackage}.databinding.Fragment${fragmentClass?replace("Fragment", "")}Binding;
import  <#if isAndroidX>androidx</#if><#if !isAndroidX>android.support</#if>.annotation.NonNull;
import  <#if isAndroidX>androidx</#if><#if !isAndroidX>android.support</#if>.annotation.Nullable;

public class ${fragmentClass} extends Fragment {

     Fragment${fragmentClass?replace("Fragment", "")}Binding mBinding;
     ${viewModelName} viewModel;

     @Override
     public void onCreate(@Nullable Bundle savedInstanceState) {
         super.onCreate(savedInstanceState);
     }

     @Nullable
     @Override
     public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
         init(inflater, container);

         super.onCreateView(inflater, container, savedInstanceState);
         return mBinding.getRoot();
     }

     private void init(LayoutInflater inflater, ViewGroup container) {
         mBinding = DataBindingUtil.inflate(inflater, getLayoutRes(), container, false);
         viewModel = ViewModelProviders.of(this).get(${viewModelName}.class);
         mBinding.setViewModel(viewModel);
     }


     private int getLayoutRes() {
         return R.layout.${layoutName};
     }
}
