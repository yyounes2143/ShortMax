package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView;
import com.yy.mobile.rollingtextview.RollingTextView;
/* loaded from: classes6.dex */
public abstract class ViewSubDbSkuBigCardBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f41368a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f41369b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f41370c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f41371d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f41372e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f41373f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LottieAnimationView f41374g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f41375h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RollingTextView f41376i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final BaseTextView f41377j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final BaseTextView f41378k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final BaseTextView f41379l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final BaseTextView f41380m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final BaseTextView f41381n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final SubDBSkuCardView f41382o;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewSubDbSkuBigCardBinding(Object obj, View view, int i10, View view2, View view3, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LottieAnimationView lottieAnimationView, BaseTextView baseTextView, RollingTextView rollingTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5, BaseTextView baseTextView6, SubDBSkuCardView subDBSkuCardView) {
        super(obj, view, i10);
        this.f41368a = view2;
        this.f41369b = view3;
        this.f41370c = linearLayout;
        this.f41371d = linearLayout2;
        this.f41372e = linearLayout3;
        this.f41373f = linearLayout4;
        this.f41374g = lottieAnimationView;
        this.f41375h = baseTextView;
        this.f41376i = rollingTextView;
        this.f41377j = baseTextView2;
        this.f41378k = baseTextView3;
        this.f41379l = baseTextView4;
        this.f41380m = baseTextView5;
        this.f41381n = baseTextView6;
        this.f41382o = subDBSkuCardView;
    }

    @NonNull
    public static ViewSubDbSkuBigCardBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewSubDbSkuBigCardBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewSubDbSkuBigCardBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_sub_db_sku_big_card, viewGroup, z10, obj);
    }
}
