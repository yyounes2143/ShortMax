package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
/* loaded from: classes6.dex */
public abstract class ItemCoinSkuRecommendNormalBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final View f39826a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f39827b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f39828c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f39829d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f39830e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f39831f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemCoinSkuRecommendNormalBinding(Object obj, View view, int i10, View view2, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5) {
        super(obj, view, i10);
        this.f39826a = view2;
        this.f39827b = baseTextView;
        this.f39828c = baseTextView2;
        this.f39829d = baseTextView3;
        this.f39830e = baseTextView4;
        this.f39831f = baseTextView5;
    }

    @NonNull
    public static ItemCoinSkuRecommendNormalBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCoinSkuRecommendNormalBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemCoinSkuRecommendNormalBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_coin_sku_recommend_normal, viewGroup, z10, obj);
    }
}
