package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
/* loaded from: classes6.dex */
public abstract class ItemSubsSkuRecommendNormalBinding extends ViewDataBinding {
    /* JADX INFO: Access modifiers changed from: protected */
    public ItemSubsSkuRecommendNormalBinding(Object obj, View view, int i10) {
        super(obj, view, i10);
    }

    @NonNull
    public static ItemSubsSkuRecommendNormalBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemSubsSkuRecommendNormalBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemSubsSkuRecommendNormalBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_subs_sku_recommend_normal, viewGroup, z10, obj);
    }
}
