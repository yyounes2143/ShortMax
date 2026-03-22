package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.purchase.SubSkuCardView;
/* loaded from: classes6.dex */
public abstract class ViewSubSkuSmallCardBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f41411a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f41412b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Flow f41413c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41414d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41415e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final GradientTextView f41416f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SubSkuCardView f41417g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final CustomFrescoView f41418h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewSubSkuSmallCardBinding(Object obj, View view, int i10, View view2, View view3, Flow flow, BaseTextView baseTextView, BaseTextView baseTextView2, GradientTextView gradientTextView, SubSkuCardView subSkuCardView, CustomFrescoView customFrescoView) {
        super(obj, view, i10);
        this.f41411a = view2;
        this.f41412b = view3;
        this.f41413c = flow;
        this.f41414d = baseTextView;
        this.f41415e = baseTextView2;
        this.f41416f = gradientTextView;
        this.f41417g = subSkuCardView;
        this.f41418h = customFrescoView;
    }

    @NonNull
    public static ViewSubSkuSmallCardBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewSubSkuSmallCardBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewSubSkuSmallCardBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_sub_sku_small_card, viewGroup, z10, obj);
    }
}
