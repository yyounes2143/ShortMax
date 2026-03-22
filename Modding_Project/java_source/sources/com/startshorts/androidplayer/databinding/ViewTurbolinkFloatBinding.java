package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ViewTurbolinkFloatBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41437a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f41438b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewTurbolinkFloatBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, CustomFrescoView customFrescoView) {
        super(obj, view, i10);
        this.f41437a = constraintLayout;
        this.f41438b = customFrescoView;
    }

    @NonNull
    public static ViewTurbolinkFloatBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewTurbolinkFloatBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewTurbolinkFloatBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_turbolink_float, viewGroup, z10, obj);
    }
}
