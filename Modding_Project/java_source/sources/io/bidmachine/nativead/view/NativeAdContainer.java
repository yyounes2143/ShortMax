package io.bidmachine.nativead.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* loaded from: classes8.dex */
class NativeAdContainer extends FrameLayout {
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final FrameLayout f57990a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    protected final NativeAdOverlayContainer f57991b;
    @Nullable
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    View f57992c;

    public NativeAdContainer(@NonNull Context context) {
        this(context, null);
    }

    protected void a() {
        View view = this.f57992c;
        if (view != null) {
            super.removeView(view);
            this.f57992c = null;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        FrameLayout frameLayout = this.f57990a;
        if (view != frameLayout) {
            frameLayout.addView(view);
        } else {
            super.addView(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        this.f57990a.bringChildToFront(view);
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        this.f57990a.removeAllViews();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (view == this.f57992c) {
            a();
        } else {
            this.f57990a.removeView(view);
        }
    }

    public NativeAdContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public NativeAdContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f57990a = frameLayout;
        NativeAdOverlayContainer nativeAdOverlayContainer = new NativeAdOverlayContainer(context);
        this.f57991b = nativeAdOverlayContainer;
        super.addView(frameLayout, -1, new FrameLayout.LayoutParams(-1, -1));
        super.addView(nativeAdOverlayContainer, -1, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10) {
        FrameLayout frameLayout = this.f57990a;
        if (view != frameLayout) {
            frameLayout.addView(view, i10);
        } else {
            super.addView(view, i10);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, int i11) {
        FrameLayout frameLayout = this.f57990a;
        if (view != frameLayout) {
            frameLayout.addView(view, i10, i11);
        } else {
            super.addView(view, i10, i11);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.f57990a;
        if (view != frameLayout) {
            frameLayout.addView(view, layoutParams);
        } else {
            super.addView(view, layoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.f57990a;
        if (view != frameLayout) {
            frameLayout.addView(view, i10, layoutParams);
        } else {
            super.addView(view, i10, layoutParams);
        }
    }
}
