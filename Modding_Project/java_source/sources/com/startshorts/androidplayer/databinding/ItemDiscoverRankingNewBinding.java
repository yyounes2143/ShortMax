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
public abstract class ItemDiscoverRankingNewBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CustomFrescoView f40242a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f40243b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40244c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40245d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final BaseTextView f40246e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40247f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f40248g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final BaseTextView f40249h;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemDiscoverRankingNewBinding(Object obj, View view, int i10, CustomFrescoView customFrescoView, ImageView imageView, ImageView imageView2, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5) {
        super(obj, view, i10);
        this.f40242a = customFrescoView;
        this.f40243b = imageView;
        this.f40244c = imageView2;
        this.f40245d = baseTextView;
        this.f40246e = baseTextView2;
        this.f40247f = baseTextView3;
        this.f40248g = baseTextView4;
        this.f40249h = baseTextView5;
    }

    @NonNull
    public static ItemDiscoverRankingNewBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDiscoverRankingNewBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemDiscoverRankingNewBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_discover_ranking_new, viewGroup, z10, obj);
    }
}
