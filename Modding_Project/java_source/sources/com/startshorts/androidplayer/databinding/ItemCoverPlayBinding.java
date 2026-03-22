package com.startshorts.androidplayer.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
public abstract class ItemCoverPlayBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f39888a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f39889b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f39890c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CustomFrescoView f39891d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f39892e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f39893f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f39894g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final CustomFrescoView f39895h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f39896i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final BaseTextView f39897j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final BaseTextView f39898k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final BaseTextView f39899l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final BaseTextView f39900m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final View f39901n;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemCoverPlayBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, FrameLayout frameLayout, CustomFrescoView customFrescoView, ImageView imageView, ImageView imageView2, ImageView imageView3, CustomFrescoView customFrescoView2, ImageView imageView4, BaseTextView baseTextView, BaseTextView baseTextView2, BaseTextView baseTextView3, BaseTextView baseTextView4, View view2) {
        super(obj, view, i10);
        this.f39888a = constraintLayout;
        this.f39889b = constraintLayout2;
        this.f39890c = frameLayout;
        this.f39891d = customFrescoView;
        this.f39892e = imageView;
        this.f39893f = imageView2;
        this.f39894g = imageView3;
        this.f39895h = customFrescoView2;
        this.f39896i = imageView4;
        this.f39897j = baseTextView;
        this.f39898k = baseTextView2;
        this.f39899l = baseTextView3;
        this.f39900m = baseTextView4;
        this.f39901n = view2;
    }

    @NonNull
    public static ItemCoverPlayBinding b(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return d(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCoverPlayBinding d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ItemCoverPlayBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.item_cover_play, viewGroup, z10, obj);
    }
}
