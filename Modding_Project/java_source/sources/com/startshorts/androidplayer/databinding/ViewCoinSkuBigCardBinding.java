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
public abstract class ViewCoinSkuBigCardBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f41191a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f41192b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f41193c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41194d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41195e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41196f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f41197g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final CoinSkuCardView f41198h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewCoinSkuBigCardBinding(Object obj, View view, int i10, View view2, BaseTextView baseTextView, ImageView imageView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5, CoinSkuCardView coinSkuCardView) {
        super(obj, view, i10);
        this.f41191a = view2;
        this.f41192b = baseTextView;
        this.f41193c = imageView;
        this.f41194d = baseTextView2;
        this.f41195e = baseTextView3;
        this.f41196f = baseTextView4;
        this.f41197g = baseTextView5;
        this.f41198h = coinSkuCardView;
    }

    @NonNull
    public static ViewCoinSkuBigCardBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewCoinSkuBigCardBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewCoinSkuBigCardBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_coin_sku_big_card, viewGroup, z10, obj);
    }
}
