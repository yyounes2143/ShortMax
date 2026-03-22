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
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemDiscoverStaggeredRankShortItemBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f40293a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f40294b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40295c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40296d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40297e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverStaggeredRankShortItemBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, ImageView imageView, ImageView imageView2, BaseTextView baseTextView, BaseTextView baseTextView2) {
        super(obj, view, i10);
        this.f40293a = customFrescoView;
        this.f40294b = imageView;
        this.f40295c = imageView2;
        this.f40296d = baseTextView;
        this.f40297e = baseTextView2;
    }

    @NonNull
    public static ItemDiscoverStaggeredRankShortItemBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDiscoverStaggeredRankShortItemBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemDiscoverStaggeredRankShortItemBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_discover_staggered_rank_short_item, viewGroup, z10, obj);
    }
}
