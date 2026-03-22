package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewPaymentMethodBtn1Binding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41288a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f41289b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f41290c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41291d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41292e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41293f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f41294g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f41295h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final BaseTextView f41296i;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewPaymentMethodBtn1Binding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ImageView imageView, LinearLayout linearLayout, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5, BaseTextView baseTextView6) {
        super(obj, view, i10);
        this.f41288a = constraintLayout;
        this.f41289b = imageView;
        this.f41290c = linearLayout;
        this.f41291d = baseTextView;
        this.f41292e = baseTextView2;
        this.f41293f = baseTextView3;
        this.f41294g = baseTextView4;
        this.f41295h = baseTextView5;
        this.f41296i = baseTextView6;
    }

    @NonNull
    public static ViewPaymentMethodBtn1Binding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewPaymentMethodBtn1Binding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewPaymentMethodBtn1Binding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_payment_method_btn1, viewGroup, z10, obj);
    }
}
