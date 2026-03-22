package io.bidmachine.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.BinderThread;
import io.bidmachine.media3.exoplayer.video.spherical.b;
/* compiled from: TouchTracker.java */
/* loaded from: classes8.dex */
final class h extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, b.a {

    /* renamed from: c  reason: collision with root package name */
    private final a f57398c;

    /* renamed from: d  reason: collision with root package name */
    private final float f57399d;

    /* renamed from: e  reason: collision with root package name */
    private final GestureDetector f57400e;

    /* renamed from: a  reason: collision with root package name */
    private final PointF f57396a = new PointF();

    /* renamed from: b  reason: collision with root package name */
    private final PointF f57397b = new PointF();

    /* renamed from: f  reason: collision with root package name */
    private volatile float f57401f = 3.1415927f;

    /* compiled from: TouchTracker.java */
    /* loaded from: classes8.dex */
    public interface a {
        void b(PointF pointF);

        default boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public h(Context context, a aVar, float f10) {
        this.f57398c = aVar;
        this.f57399d = f10;
        this.f57400e = new GestureDetector(context, this);
    }

    @Override // io.bidmachine.media3.exoplayer.video.spherical.b.a
    @BinderThread
    public void a(float[] fArr, float f10) {
        this.f57401f = -f10;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f57396a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x10 = (motionEvent2.getX() - this.f57396a.x) / this.f57399d;
        float y10 = motionEvent2.getY();
        PointF pointF = this.f57396a;
        float f12 = (y10 - pointF.y) / this.f57399d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d10 = this.f57401f;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        PointF pointF2 = this.f57397b;
        pointF2.x -= (cos * x10) - (sin * f12);
        float f13 = pointF2.y + (sin * x10) + (cos * f12);
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f13));
        this.f57398c.b(this.f57397b);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f57398c.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f57400e.onTouchEvent(motionEvent);
    }
}
