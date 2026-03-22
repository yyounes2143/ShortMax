package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
/* loaded from: classes6.dex */
public abstract class ItemRecommendShortsNewTopBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final LinearLayout f40659a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f40660b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f40661c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f40662d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f40663e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f40664f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f40665g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f40666h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final GradientTextView f40667i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f40668j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final BaseTextView f40669k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final BaseTextView f40670l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final BaseTextView f40671m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final BaseTextView f40672n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final BaseTextView f40673o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final BaseTextView f40674p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final BaseTextView f40675q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final BaseTextView f40676r;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemRecommendShortsNewTopBinding(Object obj, View view, int i10, LinearLayout linearLayout, ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, GradientTextView gradientTextView, View view2, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, BaseTextView baseTextView5, BaseTextView baseTextView6, BaseTextView baseTextView7, BaseTextView baseTextView8) {
        super(obj, view, i10);
        this.f40659a = linearLayout;
        this.f40660b = constraintLayout;
        this.f40661c = imageView;
        this.f40662d = imageView2;
        this.f40663e = imageView3;
        this.f40664f = linearLayout2;
        this.f40665g = linearLayout3;
        this.f40666h = linearLayout4;
        this.f40667i = gradientTextView;
        this.f40668j = view2;
        this.f40669k = baseTextView;
        this.f40670l = baseTextView2;
        this.f40671m = baseTextView3;
        this.f40672n = baseTextView4;
        this.f40673o = baseTextView5;
        this.f40674p = baseTextView6;
        this.f40675q = baseTextView7;
        this.f40676r = baseTextView8;
    }

    @NonNull
    public static ItemRecommendShortsNewTopBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemRecommendShortsNewTopBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemRecommendShortsNewTopBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_recommend_shorts_new_top, viewGroup, z10, obj);
    }
}
