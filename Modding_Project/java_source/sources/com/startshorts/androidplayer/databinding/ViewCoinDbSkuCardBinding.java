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
import com.startshorts.androidplayer.ui.view.purchase.CoinDBSkuCardView;
/* loaded from: classes6.dex */
public abstract class ViewCoinDbSkuCardBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f41181a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f41182b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f41183c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f41184d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f41185e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f41186f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final CoinDBSkuCardView f41187g;

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewCoinDbSkuCardBinding(Object obj, View view, int i10, View view2, BaseTextView baseTextView, ImageView imageView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, CoinDBSkuCardView coinDBSkuCardView) {
        super(obj, view, i10);
        this.f41181a = view2;
        this.f41182b = baseTextView;
        this.f41183c = imageView;
        this.f41184d = baseTextView2;
        this.f41185e = baseTextView3;
        this.f41186f = baseTextView4;
        this.f41187g = coinDBSkuCardView;
    }

    @NonNull
    public static ViewCoinDbSkuCardBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewCoinDbSkuCardBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ViewCoinDbSkuCardBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.view_coin_db_sku_card, viewGroup, z10, obj);
    }
}
