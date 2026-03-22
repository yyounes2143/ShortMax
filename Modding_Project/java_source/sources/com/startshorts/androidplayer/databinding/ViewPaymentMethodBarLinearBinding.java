package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewPaymentMethodBarLinearBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41282a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f41283b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f41284c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewPaymentMethodBarLinearBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, RecyclerView recyclerView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f41282a = constraintLayout;
        this.f41283b = recyclerView;
        this.f41284c = baseTextView;
    }

    @NonNull
    public static ViewPaymentMethodBarLinearBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewPaymentMethodBarLinearBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewPaymentMethodBarLinearBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_payment_method_bar_linear, viewGroup, z10, obj);
    }
}
