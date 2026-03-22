package com.startshorts.androidplayer.ui.view.base;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InterceptParentTouchScrollView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InterceptParentTouchScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f47093a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InterceptParentTouchScrollView(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.f47093a = true;
    }

    public final boolean getMInterceptParentTouchEvent() {
        return this.f47093a;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (this.f47093a) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.widget.ScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (this.f47093a) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onTouchEvent(ev);
    }

    public final void setMInterceptParentTouchEvent(boolean z10) {
        this.f47093a = z10;
    }
}
