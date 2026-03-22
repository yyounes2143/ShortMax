package com.startshorts.androidplayer.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.ViewStubProxy;
import com.airbnb.lottie.LottieAnimationView;
/* loaded from: classes6.dex */
public abstract class ActivityRoutingBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ViewStubProxy f38446a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f38447b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LottieAnimationView f38448c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityRoutingBinding(Object obj, View view, int i10, ViewStubProxy viewStubProxy, ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView) {
        super(obj, view, i10);
        this.f38446a = viewStubProxy;
        this.f38447b = constraintLayout;
        this.f38448c = lottieAnimationView;
    }
}
