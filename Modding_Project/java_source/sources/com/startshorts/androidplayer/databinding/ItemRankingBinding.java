package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class ItemRankingBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f40614a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final BaseTextView f40615b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CustomFrescoView f40616c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f40617d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f40618e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f40619f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final BaseTextView f40620g;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemRankingBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, BaseTextView baseTextView, CustomFrescoView customFrescoView, ImageView imageView, ImageView imageView2, BaseTextView baseTextView2, BaseTextView baseTextView3) {
        super(obj, view, i10);
        this.f40614a = constraintLayout;
        this.f40615b = baseTextView;
        this.f40616c = customFrescoView;
        this.f40617d = imageView;
        this.f40618e = imageView2;
        this.f40619f = baseTextView2;
        this.f40620g = baseTextView3;
    }

    @NonNull
    public static ItemRankingBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemRankingBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemRankingBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_ranking, viewGroup, z10, obj);
    }
}
