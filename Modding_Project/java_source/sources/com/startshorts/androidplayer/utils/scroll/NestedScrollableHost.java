package com.startshorts.androidplayer.utils.scroll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.viewpager2.widget.ViewPager2;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NestedScrollableHost.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NestedScrollableHost extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f48203a;

    /* renamed from: b  reason: collision with root package name */
    private float f48204b;

    /* renamed from: c  reason: collision with root package name */
    private float f48205c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollableHost(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48203a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private final boolean a(int i10, float f10) {
        int i11 = -((int) Math.signum(f10));
        if (i10 != 0) {
            if (i10 == 1) {
                View child = getChild();
                if (child == null) {
                    return false;
                }
                return child.canScrollVertically(i11);
            }
            throw new IllegalArgumentException();
        }
        View child2 = getChild();
        if (child2 == null) {
            return false;
        }
        return child2.canScrollHorizontally(i11);
    }

    private final void b(MotionEvent motionEvent) {
        boolean z10;
        float f10;
        boolean z11;
        ViewPager2 parentViewPager = getParentViewPager();
        if (parentViewPager != null) {
            int orientation = parentViewPager.getOrientation();
            float f11 = 1.0f;
            if (!a(orientation, -1.0f) && !a(orientation, 1.0f)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            } else if (motionEvent.getAction() == 0) {
                this.f48204b = motionEvent.getX();
                this.f48205c = motionEvent.getY();
                getParent().requestDisallowInterceptTouchEvent(true);
            } else if (motionEvent.getAction() == 2) {
                float x10 = motionEvent.getX() - this.f48204b;
                float y10 = motionEvent.getY() - this.f48205c;
                if (orientation == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                float abs = Math.abs(x10);
                if (z10) {
                    f10 = 0.5f;
                } else {
                    f10 = 1.0f;
                }
                float f12 = abs * f10;
                float abs2 = Math.abs(y10);
                if (!z10) {
                    f11 = 0.5f;
                }
                float f13 = abs2 * f11;
                int i10 = this.f48203a;
                if (f12 > i10 || f13 > i10) {
                    if (f13 > f12) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z10 == z11) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                        return;
                    }
                    if (!z10) {
                        x10 = y10;
                    }
                    if (a(orientation, x10)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        return;
                    }
                    getParent().requestDisallowInterceptTouchEvent(false);
                    NestedScrollableHost mLastNestedScrollHost = getMLastNestedScrollHost();
                    if (mLastNestedScrollHost != null) {
                        mLastNestedScrollHost.setRequestDisallowInterceptTouchEventForTrue();
                    }
                }
            }
        }
    }

    private final View getChild() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:5:0x000c -> B:6:0x000d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.startshorts.androidplayer.utils.scroll.NestedScrollableHost getMLastNestedScrollHost() {
        /*
            r3 = this;
            android.view.ViewParent r0 = r3.getParent()
            boolean r1 = r0 instanceof android.view.View
            r2 = 0
            if (r1 == 0) goto Lc
            android.view.View r0 = (android.view.View) r0
            goto Ld
        Lc:
            r0 = r2
        Ld:
            if (r0 == 0) goto L22
            boolean r1 = r0 instanceof com.startshorts.androidplayer.utils.scroll.NestedScrollableHost
            if (r1 == 0) goto L17
            r2 = r0
            com.startshorts.androidplayer.utils.scroll.NestedScrollableHost r2 = (com.startshorts.androidplayer.utils.scroll.NestedScrollableHost) r2
            goto L22
        L17:
            android.view.ViewParent r0 = r0.getParent()
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto Lc
            android.view.View r0 = (android.view.View) r0
            goto Ld
        L22:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.scroll.NestedScrollableHost.getMLastNestedScrollHost():com.startshorts.androidplayer.utils.scroll.NestedScrollableHost");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b A[LOOP:0: B:6:0x000d->B:11:0x001b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x000c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:5:0x000c -> B:6:0x000d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final androidx.viewpager2.widget.ViewPager2 getParentViewPager() {
        /*
            r3 = this;
            android.view.ViewParent r0 = r3.getParent()
            boolean r1 = r0 instanceof android.view.View
            r2 = 0
            if (r1 == 0) goto Lc
            android.view.View r0 = (android.view.View) r0
            goto Ld
        Lc:
            r0 = r2
        Ld:
            if (r0 == 0) goto L1e
            boolean r1 = r0 instanceof androidx.viewpager2.widget.ViewPager2
            if (r1 != 0) goto L1e
            android.view.ViewParent r0 = r0.getParent()
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto Lc
            android.view.View r0 = (android.view.View) r0
            goto Ld
        L1e:
            boolean r1 = r0 instanceof androidx.viewpager2.widget.ViewPager2
            if (r1 == 0) goto L25
            r2 = r0
            androidx.viewpager2.widget.ViewPager2 r2 = (androidx.viewpager2.widget.ViewPager2) r2
        L25:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.scroll.NestedScrollableHost.getParentViewPager():androidx.viewpager2.widget.ViewPager2");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        b(e10);
        return super.onInterceptTouchEvent(e10);
    }

    public final void setRequestDisallowInterceptTouchEventForTrue() {
        getParent().requestDisallowInterceptTouchEvent(true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedScrollableHost(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48203a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }
}
