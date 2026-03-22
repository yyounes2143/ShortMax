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
import com.startshorts.androidplayer.ui.view.purchase.CoinSkuCardView;
/* loaded from: classes6.dex */
public abstract class ViewCoinSkuSmallCardBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f41202a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f41203b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f41204c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f41205d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41206e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41207f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f41208g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final CoinSkuCardView f41209h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewCoinSkuSmallCardBinding(Object obj, View view, int i10, View view2, View view3, BaseTextView baseTextView, ImageView imageView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, CoinSkuCardView coinSkuCardView) {
        super(obj, view, i10);
        this.f41202a = view2;
        this.f41203b = view3;
        this.f41204c = baseTextView;
        this.f41205d = imageView;
        this.f41206e = baseTextView2;
        this.f41207f = baseTextView3;
        this.f41208g = baseTextView4;
        this.f41209h = coinSkuCardView;
    }

    @NonNull
    public static ViewCoinSkuSmallCardBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewCoinSkuSmallCardBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewCoinSkuSmallCardBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_coin_sku_small_card, viewGroup, z10, obj);
    }
}
