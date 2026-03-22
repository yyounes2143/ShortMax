package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.BinderThread;
import com.google.android.exoplayer2.video.spherical.b;
/* compiled from: TouchTracker.java */
/* loaded from: classes4.dex */
final class h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, b.a {

    /* renamed from: c  reason: collision with root package name */
    private final a f19314c;

    /* renamed from: d  reason: collision with root package name */
    private final float f19315d;

    /* renamed from: e  reason: collision with root package name */
    private final GestureDetector f19316e;

    /* renamed from: a  reason: collision with root package name */
    private final PointF f19312a = new PointF();

    /* renamed from: b  reason: collision with root package name */
    private final PointF f19313b = new PointF();

    /* renamed from: f  reason: collision with root package name */
    private volatile float f19317f = 3.1415927f;

    /* compiled from: TouchTracker.java */
    /* loaded from: classes4.dex */
    public interface a {
        void b(PointF pointF);

        default boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public h(Context context, a aVar, float f10) {
        this.f19314c = aVar;
        this.f19315d = f10;
        this.f19316e = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.video.spherical.b.a
    @BinderThread
    public void a(float[] fArr, float f10) {
        this.f19317f = -f10;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f19312a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x10 = (motionEvent2.getX() - this.f19312a.x) / this.f19315d;
        float y10 = motionEvent2.getY();
        PointF pointF = this.f19312a;
        float f12 = (y10 - pointF.y) / this.f19315d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d10 = this.f19317f;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        PointF pointF2 = this.f19313b;
        pointF2.x -= (cos * x10) - (sin * f12);
        float f13 = pointF2.y + (sin * x10) + (cos * f12);
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f13));
        this.f19314c.b(this.f19313b);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f19314c.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f19316e.onTouchEvent(motionEvent);
    }
}
