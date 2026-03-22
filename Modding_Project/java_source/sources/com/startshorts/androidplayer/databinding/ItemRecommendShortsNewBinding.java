package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemRecommendShortsNewBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final CardView f40650a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CustomFrescoView f40651b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f40652c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f40653d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextureView f40654e;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemRecommendShortsNewBinding(Object obj, View view, int i10, CardView cardView, CustomFrescoView customFrescoView, BaseTextView baseTextView, BaseTextView baseTextView2, TextureView textureView) {
        super(obj, view, i10);
        this.f40650a = cardView;
        this.f40651b = customFrescoView;
        this.f40652c = baseTextView;
        this.f40653d = baseTextView2;
        this.f40654e = textureView;
    }

    @NonNull
    public static ItemRecommendShortsNewBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemRecommendShortsNewBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemRecommendShortsNewBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_recommend_shorts_new, viewGroup, z10, obj);
    }
}
