package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemCoinSkuRecommendMainBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f39815a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f39816b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39817c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f39818d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f39819e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f39820f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f39821g;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemCoinSkuRecommendMainBinding(Object obj, View view, int i10, View view2, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, LinearLayout linearLayout, BaseTextView baseTextView4, BaseTextView baseTextView5) {
        super(obj, view, i10);
        this.f39815a = view2;
        this.f39816b = baseTextView;
        this.f39817c = baseTextView2;
        this.f39818d = baseTextView3;
        this.f39819e = linearLayout;
        this.f39820f = baseTextView4;
        this.f39821g = baseTextView5;
    }

    @NonNull
    public static ItemCoinSkuRecommendMainBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCoinSkuRecommendMainBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemCoinSkuRecommendMainBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_coin_sku_recommend_main, viewGroup, z10, obj);
    }
}
