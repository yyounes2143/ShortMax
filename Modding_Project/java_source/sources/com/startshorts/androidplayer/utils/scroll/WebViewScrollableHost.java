package com.startshorts.androidplayer.utils.scroll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WebViewScrollableHost.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WebViewScrollableHost extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f48206a;

    /* renamed from: b  reason: collision with root package name */
    private float f48207b;

    /* renamed from: c  reason: collision with root package name */
    private float f48208c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewScrollableHost(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48206a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private final void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f48207b = motionEvent.getX();
            this.f48208c = motionEvent.getY();
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (motionEvent.getAction() == 2) {
            float abs = Math.abs(motionEvent.getX() - this.f48207b) * 0.5f;
            float abs2 = Math.abs(motionEvent.getY() - this.f48208c) * 1.0f;
            int i10 = this.f48206a;
            if (abs > i10 || abs2 > i10) {
                if (abs2 > abs) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                } else {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        a(e10);
        return super.onInterceptTouchEvent(e10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewScrollableHost(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48206a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }
}
