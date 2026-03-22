package com.startshorts.androidplayer.ui.view.immersion.floatwindow;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.TextureView;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FloatWindowPlayLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FloatWindowPlayLayout extends TextureView {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f47323a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final GestureDetector f47324b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f47325c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f47326d;

    /* renamed from: e  reason: collision with root package name */
    private float f47327e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private b f47328f;

    /* compiled from: FloatWindowPlayLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    private final class a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        private float f47329a;

        /* renamed from: b  reason: collision with root package name */
        private float f47330b;

        public a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(@NotNull MotionEvent e10) {
            Intrinsics.checkNotNullParameter(e10, "e");
            if (!FloatWindowPlayLayout.this.f47326d && !FloatWindowPlayLayout.this.f47325c) {
                if (id.a.f53392a.c()) {
                    Logger.f41511a.e(FloatWindowPlayLayout.this.f47323a, "onDoubleTap");
                }
                b listener = FloatWindowPlayLayout.this.getListener();
                if (listener != null) {
                    listener.onDoubleTap();
                    return true;
                }
                return true;
            }
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(@NotNull MotionEvent e10) {
            Intrinsics.checkNotNullParameter(e10, "e");
            this.f47329a = e10.getRawX();
            this.f47330b = e10.getRawY();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(@Nullable MotionEvent motionEvent, @NotNull MotionEvent e22, float f10, float f11) {
            Intrinsics.checkNotNullParameter(e22, "e2");
            float rawX = e22.getRawX();
            float rawY = e22.getRawY();
            float f12 = rawX - this.f47329a;
            float f13 = rawY - this.f47330b;
            this.f47329a = rawX;
            this.f47330b = rawY;
            if (f12 != 0.0f || f13 != 0.0f) {
                FloatWindowPlayLayout.this.f47326d = true;
                FloatWindowPlayLayout.this.f47325c = false;
            }
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                String str = FloatWindowPlayLayout.this.f47323a;
                logger.e(str, "onScroll:dx=" + f12 + ", dy=" + f13);
            }
            b listener = FloatWindowPlayLayout.this.getListener();
            if (listener != null) {
                listener.d(f12, f13);
            }
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(@NotNull MotionEvent e10) {
            Intrinsics.checkNotNullParameter(e10, "e");
            if (!FloatWindowPlayLayout.this.f47326d && !FloatWindowPlayLayout.this.f47325c) {
                if (id.a.f53392a.c()) {
                    Logger.f41511a.e(FloatWindowPlayLayout.this.f47323a, "onSingleTapConfirmed");
                }
                b listener = FloatWindowPlayLayout.this.getListener();
                if (listener != null) {
                    listener.c();
                    return true;
                }
                return true;
            }
            return false;
        }
    }

    /* compiled from: FloatWindowPlayLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();

        void b(float f10);

        void c();

        void d(float f10, float f11);

        void onDoubleTap();

        void onUp();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FloatWindowPlayLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void f() {
        if (id.a.f53392a.c()) {
            Logger.f41511a.e(this.f47323a, "onDown");
        }
        this.f47325c = false;
        this.f47326d = false;
        b bVar = this.f47328f;
        if (bVar != null) {
            bVar.a();
        }
    }

    private final void g(float f10) {
        this.f47326d = false;
        if (id.a.f53392a.c()) {
            Logger logger = Logger.f41511a;
            String str = this.f47323a;
            logger.e(str, "onScale:" + f10);
        }
        b bVar = this.f47328f;
        if (bVar != null) {
            bVar.b(f10);
        }
    }

    private final void h() {
        if (id.a.f53392a.c()) {
            Logger.f41511a.e(this.f47323a, "onUp");
        }
        this.f47325c = false;
        this.f47326d = false;
        b bVar = this.f47328f;
        if (bVar != null) {
            bVar.onUp();
        }
    }

    private final float i(MotionEvent motionEvent) {
        float x10 = motionEvent.getX(0) - motionEvent.getX(1);
        float y10 = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x10 * x10) + (y10 * y10));
    }

    @Nullable
    public final b getListener() {
        return this.f47328f;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 5 && event.getPointerCount() == 2 && !this.f47326d) {
                        float i10 = i(event);
                        this.f47327e = i10;
                        if (i10 > 5.0f) {
                            this.f47325c = true;
                        }
                    }
                } else {
                    if (event.getPointerCount() == 2 && this.f47325c) {
                        float i11 = i(event);
                        float f10 = this.f47327e;
                        if (f10 != 0.0f && f10 != i11) {
                            this.f47327e = i11;
                            g(i11 / f10);
                        }
                    }
                    if (!this.f47325c) {
                        this.f47324b.onTouchEvent(event);
                    }
                }
            } else {
                if (!this.f47325c) {
                    this.f47324b.onTouchEvent(event);
                }
                this.f47326d = false;
                this.f47325c = false;
            }
        } else {
            f();
            this.f47324b.onTouchEvent(event);
        }
        if (actionMasked == 1 || actionMasked == 3) {
            h();
        }
        return true;
    }

    public final void setListener(@Nullable b bVar) {
        this.f47328f = bVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FloatWindowPlayLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ FloatWindowPlayLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FloatWindowPlayLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47323a = "FloatWindowPlayLayout";
        GestureDetector gestureDetector = new GestureDetector(context, new a());
        this.f47324b = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
    }
}
