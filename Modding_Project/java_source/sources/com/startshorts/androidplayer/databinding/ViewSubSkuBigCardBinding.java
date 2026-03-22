package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.purchase.SubSkuCardView;
/* loaded from: classes6.dex */
public abstract class ViewSubSkuBigCardBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f41397a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f41398b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f41399c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41400d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41401e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41402f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f41403g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f41404h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final GradientTextView f41405i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SubSkuCardView f41406j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final CustomFrescoView f41407k;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewSubSkuBigCardBinding(Object obj, View view, int i10, View view2, View view3, ImageView imageView, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5, GradientTextView gradientTextView, SubSkuCardView subSkuCardView, CustomFrescoView customFrescoView) {
        super(obj, view, i10);
        this.f41397a = view2;
        this.f41398b = view3;
        this.f41399c = imageView;
        this.f41400d = baseTextView;
        this.f41401e = baseTextView2;
        this.f41402f = baseTextView3;
        this.f41403g = baseTextView4;
        this.f41404h = baseTextView5;
        this.f41405i = gradientTextView;
        this.f41406j = subSkuCardView;
        this.f41407k = customFrescoView;
    }

    @NonNull
    public static ViewSubSkuBigCardBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewSubSkuBigCardBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewSubSkuBigCardBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_sub_sku_big_card, viewGroup, z10, obj);
    }
}
