package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ViewPaymentMethodBtnBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41338a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f41339b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f41340c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f41341d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f41342e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f41343f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f41344g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f41345h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final BaseTextView f41346i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final BaseTextView f41347j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final BaseTextView f41348k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final BaseTextView f41349l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final BaseTextView f41350m;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewPaymentMethodBtnBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, BaseTextView baseTextView, ConstraintLayout constraintLayout3, ImageView imageView, ConstraintLayout constraintLayout4, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5, BaseTextView baseTextView6, BaseTextView baseTextView7, BaseTextView baseTextView8) {
        super(obj, view, i10);
        this.f41338a = constraintLayout;
        this.f41339b = constraintLayout2;
        this.f41340c = baseTextView;
        this.f41341d = constraintLayout3;
        this.f41342e = imageView;
        this.f41343f = constraintLayout4;
        this.f41344g = baseTextView2;
        this.f41345h = baseTextView3;
        this.f41346i = baseTextView4;
        this.f41347j = baseTextView5;
        this.f41348k = baseTextView6;
        this.f41349l = baseTextView7;
        this.f41350m = baseTextView8;
    }

    @NonNull
    public static ViewPaymentMethodBtnBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewPaymentMethodBtnBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewPaymentMethodBtnBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_payment_method_btn, viewGroup, z10, obj);
    }
}
