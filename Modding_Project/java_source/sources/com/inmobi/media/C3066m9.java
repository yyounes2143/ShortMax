package com.inmobi.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* renamed from: com.inmobi.media.m9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3066m9 extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    public final String f25031a;

    /* renamed from: b  reason: collision with root package name */
    public C3050l9 f25032b;

    /* renamed from: c  reason: collision with root package name */
    public ImageView f25033c;

    /* renamed from: d  reason: collision with root package name */
    public ProgressBar f25034d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3066m9(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f25031a = C3066m9.class.getSimpleName();
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        setVideoView(new C3050l9(context2));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(getVideoView(), layoutParams);
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setVisibility(8);
        setPosterImage(imageView);
        addView(getPosterImage(), layoutParams);
        ProgressBar progressBar = new ProgressBar(getContext());
        progressBar.setVisibility(8);
        setProgressBar(progressBar);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        addView(getProgressBar(), layoutParams2);
        Context context3 = getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
        C2938e9 c2938e9 = new C2938e9(context3, null, 0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(13);
        getVideoView().setMediaController(c2938e9);
        addView(c2938e9, layoutParams3);
    }

    @NotNull
    public final ImageView getPosterImage() {
        ImageView imageView = this.f25033c;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("posterImage");
        return null;
    }

    @NotNull
    public final ProgressBar getProgressBar() {
        ProgressBar progressBar = this.f25034d;
        if (progressBar != null) {
            return progressBar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        return null;
    }

    @NotNull
    public final C3050l9 getVideoView() {
        C3050l9 c3050l9 = this.f25032b;
        if (c3050l9 != null) {
            return c3050l9;
        }
        Intrinsics.throwUninitializedPropertyAccessException("videoView");
        return null;
    }

    public final void setPosterImage(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.f25033c = imageView;
    }

    public final void setProgressBar(@NotNull ProgressBar progressBar) {
        Intrinsics.checkNotNullParameter(progressBar, "<set-?>");
        this.f25034d = progressBar;
    }

    public final void setVideoView(@NotNull C3050l9 c3050l9) {
        Intrinsics.checkNotNullParameter(c3050l9, "<set-?>");
        this.f25032b = c3050l9;
    }

    public final void setPosterImage(@Nullable Bitmap bitmap) {
        getPosterImage().setImageBitmap(bitmap);
    }
}
