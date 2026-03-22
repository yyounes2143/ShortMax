package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.startshorts.androidplayer.R$layout;
/* loaded from: classes6.dex */
public abstract class ItemVipChooseBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f41027a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CircularProgressIndicator f41028b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LottieAnimationView f41029c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f41030d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LottieAnimationView f41031e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f41032f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemVipChooseBinding(Object obj, View view, int i10, ConstraintLayout constraintLayout, CircularProgressIndicator circularProgressIndicator, LottieAnimationView lottieAnimationView, ImageView imageView, LottieAnimationView lottieAnimationView2, TextView textView) {
        super(obj, view, i10);
        this.f41027a = constraintLayout;
        this.f41028b = circularProgressIndicator;
        this.f41029c = lottieAnimationView;
        this.f41030d = imageView;
        this.f41031e = lottieAnimationView2;
        this.f41032f = textView;
    }

    public static ItemVipChooseBinding b(@NonNull View view) {
        return d(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemVipChooseBinding d(@NonNull View view, @Nullable Object obj) {
        return (ItemVipChooseBinding) ViewDataBinding.bind(obj, view, R$layout.item_vip_choose);
    }
}
