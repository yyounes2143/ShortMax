package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemPaymentMethodLinearBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f40547a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppCompatImageView f40548b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40549c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40550d;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemPaymentMethodLinearBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, AppCompatImageView appCompatImageView, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40547a = customFrescoView;
        this.f40548b = appCompatImageView;
        this.f40549c = baseTextView;
        this.f40550d = baseTextView2;
    }

    public static ItemPaymentMethodLinearBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemPaymentMethodLinearBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemPaymentMethodLinearBinding) ViewDataBinding.bind(obj, view, R$layout.item_payment_method_linear);
    }
}
