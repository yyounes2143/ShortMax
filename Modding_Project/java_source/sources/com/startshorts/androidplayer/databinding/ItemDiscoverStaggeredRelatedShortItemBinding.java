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
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverStaggeredRelatedShortItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f40302a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40303b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverStaggeredRelatedShortItemBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, BaseTextView baseTextView) {
        super(obj, view, i10);
        this.f40302a = customFrescoView;
        this.f40303b = baseTextView;
    }

    @NonNull
    public static ItemDiscoverStaggeredRelatedShortItemBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDiscoverStaggeredRelatedShortItemBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemDiscoverStaggeredRelatedShortItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_discover_staggered_related_short_item, viewGroup, z10, obj);
    }
}
