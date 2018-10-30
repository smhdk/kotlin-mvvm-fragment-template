package ${packageName};

import ${applicationPackage}.R;
import ${applicationPackage}.core.BaseFragment;
import ${applicationPackage}.databinding.Fragment${fragmentClass?replace("Fragment", "")}Binding;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.View;
import android.os.Bundle;
import  <#if isAndroidX>androidx</#if><#if !isAndroidX>android.support</#if>.annotation.NonNull;
import  <#if isAndroidX>androidx</#if><#if !isAndroidX>android.support</#if>.annotation.Nullable;

public class ${fragmentClass} extends BaseFragment {

    public ${fragmentClass}() {
       super(${viewModelName}.class);
    }

    @NonNull
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        init(inflater, container);
        ((Fragment${fragmentClass?replace("Fragment", "")}Binding) this.getMBinding()).setViewModel((${viewModelName}) this.getViewModel());


        return getMBinding().getRoot();
    }

    @Override
    public int getLayoutRes(){
        return R.layout.${layoutName};
    }
}
