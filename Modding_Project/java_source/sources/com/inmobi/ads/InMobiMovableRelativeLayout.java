package com.inmobi.ads;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.inmobi.media.E5;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiMovableRelativeLayout extends RelativeLayout {
    @NotNull
    public static final E5 Companion = new E5();

    /* renamed from: a  reason: collision with root package name */
    public WeakReference f23402a;

    /* renamed from: b  reason: collision with root package name */
    public ViewGroup.LayoutParams f23403b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f23404c;

    /* renamed from: d  reason: collision with root package name */
    public float f23405d;

    /* renamed from: e  reason: collision with root package name */
    public float f23406e;

    public InMobiMovableRelativeLayout(@Nullable Context context) {
        super(context);
        this.f23402a = new WeakReference(null);
        this.f23404c = true;
        setBackgroundColor(Color.parseColor("#00000000"));
    }

    private final void setParentView(ViewGroup viewGroup) {
        this.f23402a = new WeakReference(viewGroup);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        setParentView((ViewGroup) parent);
        if (this.f23403b == null) {
            this.f23403b = getLayoutParams();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setParentView(null);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        ViewGroup viewGroup;
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (this.f23404c) {
            float rawX = ev.getRawX();
            float rawY = ev.getRawY();
            int action = ev.getAction();
            if (action != 0) {
                if (action == 2 && (viewGroup = (ViewGroup) this.f23402a.get()) != null) {
                    int left = (int) (getLeft() + (rawX - this.f23405d));
                    int top = (int) (getTop() + (rawY - this.f23406e));
                    int paddingLeft = viewGroup.getPaddingLeft();
                    int paddingTop = viewGroup.getPaddingTop();
                    int width = viewGroup.getWidth() - viewGroup.getPaddingRight();
                    int height = viewGroup.getHeight() - viewGroup.getPaddingBottom();
                    int max = Math.max(paddingLeft, Math.min(left, width - getWidth()));
                    int max2 = Math.max(paddingTop, Math.min(top, height - getHeight()));
                    layout(max, max2, getWidth() + max, getHeight() + max2);
                    this.f23405d = rawX;
                    this.f23406e = rawY;
                }
            } else {
                this.f23405d = rawX;
                this.f23406e = rawY;
            }
        }
        return super.onInterceptTouchEvent(ev);
    }

    public final void resetPosition() {
        setLayoutParams(this.f23403b);
    }

    public final void setIsMovable(boolean z10) {
        this.f23404c = z10;
    }

    public InMobiMovableRelativeLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23402a = new WeakReference(null);
        this.f23404c = true;
        setBackgroundColor(Color.parseColor("#00000000"));
    }

    public InMobiMovableRelativeLayout(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f23402a = new WeakReference(null);
        this.f23404c = true;
        setBackgroundColor(Color.parseColor("#00000000"));
    }
}
