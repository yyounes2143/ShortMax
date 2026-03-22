package com.vungle.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.vungle.ads.NativeAd;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.ViewUtility;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeAdOptionsView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NativeAdOptionsView extends FrameLayout {
    private static final int AD_OPTIONS_VIEW_SIZE = 20;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private ImageView icon;

    /* compiled from: NativeAdOptionsView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdOptionsView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        initView(context);
    }

    private final void initView(Context context) {
        this.icon = new ImageView(context);
        int dpToPixels = ViewUtility.INSTANCE.dpToPixels(context, 20);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPixels, dpToPixels);
        ImageView imageView = this.icon;
        ImageView imageView2 = null;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("icon");
            imageView = null;
        }
        imageView.setLayoutParams(layoutParams);
        ImageView imageView3 = this.icon;
        if (imageView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("icon");
        } else {
            imageView2 = imageView3;
        }
        addView(imageView2);
    }

    public final void destroy() {
        try {
            ImageView imageView = this.icon;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("icon");
                imageView = null;
            }
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
        } catch (Exception e10) {
            Logger.Companion.w("NativeAd", "error msg: " + e10.getLocalizedMessage());
        }
        ImageView imageView2 = this.icon;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("icon");
            imageView2 = null;
        }
        imageView2.setImageDrawable(null);
        removeAllViews();
        if (getParent() != null) {
            ViewParent parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
    }

    @NotNull
    public final ImageView getPrivacyIcon$vungle_ads_release() {
        ImageView imageView = this.icon;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("icon");
            return null;
        }
        return imageView;
    }

    public final void renderTo(@NotNull FrameLayout rootView, @NativeAd.AdOptionsPosition int i10) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        if (getParent() != null) {
            ViewParent parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
        rootView.addView(this);
        ViewUtility viewUtility = ViewUtility.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        int dpToPixels = viewUtility.dpToPixels(context, 20);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPixels, dpToPixels);
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        layoutParams.gravity = 8388661;
                    } else {
                        layoutParams.gravity = 8388693;
                    }
                } else {
                    layoutParams.gravity = 8388691;
                }
            } else {
                layoutParams.gravity = 8388661;
            }
        } else {
            layoutParams.gravity = 8388659;
        }
        setLayoutParams(layoutParams);
        rootView.requestLayout();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdOptionsView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        initView(context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdOptionsView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        initView(context);
    }
}
