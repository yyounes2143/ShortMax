package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView;
/* loaded from: classes6.dex */
public abstract class ViewSubDbSkuSmallCardBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f41386a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f41387b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Flow f41388c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41389d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41390e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final GradientTextView f41391f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SubDBSkuCardView f41392g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f41393h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewSubDbSkuSmallCardBinding(Object obj, View view, int i10, View view2, View view3, Flow flow, BaseTextView baseTextView, BaseTextView baseTextView2, GradientTextView gradientTextView, SubDBSkuCardView subDBSkuCardView, ImageView imageView) {
        super(obj, view, i10);
        this.f41386a = view2;
        this.f41387b = view3;
        this.f41388c = flow;
        this.f41389d = baseTextView;
        this.f41390e = baseTextView2;
        this.f41391f = gradientTextView;
        this.f41392g = subDBSkuCardView;
        this.f41393h = imageView;
    }

    @NonNull
    public static ViewSubDbSkuSmallCardBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewSubDbSkuSmallCardBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewSubDbSkuSmallCardBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_sub_db_sku_small_card, viewGroup, z10, obj);
    }
}
