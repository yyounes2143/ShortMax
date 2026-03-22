package ec;

import android.view.MotionEvent;
/* compiled from: IDecorator.java */
/* loaded from: classes5.dex */
public interface c {
    void a(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11, float f12, float f13);

    void b(MotionEvent motionEvent);

    boolean c(MotionEvent motionEvent);

    void d(MotionEvent motionEvent, boolean z10);

    boolean dispatchTouchEvent(MotionEvent motionEvent);

    boolean e(MotionEvent motionEvent);

    void f(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11);
}
