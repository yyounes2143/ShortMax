package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
/* loaded from: classes6.dex */
public abstract class DialogEnablePipBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final LottieAnimationView f38739a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f38740b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final BaseTextView f38741c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final BaseTextView f38742d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CustomFrescoView f38743e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final BaseTextView f38744f;

    /* JADX INFO: Access modifiers changed from: protected */
    public DialogEnablePipBinding(Object obj, View view, int i10, LottieAnimationView lottieAnimationView, ImageView imageView, BaseTextView baseTextView, BaseTextView baseTextView2, CustomFrescoView customFrescoView, BaseTextView baseTextView3) {
        super(obj, view, i10);
        this.f38739a = lottieAnimationView;
        this.f38740b = imageView;
        this.f38741c = baseTextView;
        this.f38742d = baseTextView2;
        this.f38743e = customFrescoView;
        this.f38744f = baseTextView3;
    }
}
