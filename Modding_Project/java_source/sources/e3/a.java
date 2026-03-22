package e3;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.VisibleForTesting;
/* compiled from: GestureDetector.java */
/* loaded from: classes3.dex */
public class a {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    InterfaceC0712a f50785a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final float f50786b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    boolean f50787c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    boolean f50788d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    long f50789e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    float f50790f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    float f50791g;

    /* compiled from: GestureDetector.java */
    /* renamed from: e3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0712a {
        boolean a();
    }

    public a(Context context) {
        this.f50786b = ViewConfiguration.get(context).getScaledTouchSlop();
        a();
    }

    public static a c(Context context) {
        return new a(context);
    }

    public void a() {
        this.f50785a = null;
        e();
    }

    public boolean b() {
        return this.f50787c;
    }

    public boolean d(MotionEvent motionEvent) {
        InterfaceC0712a interfaceC0712a;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        this.f50787c = false;
                        this.f50788d = false;
                    }
                } else if (Math.abs(motionEvent.getX() - this.f50790f) > this.f50786b || Math.abs(motionEvent.getY() - this.f50791g) > this.f50786b) {
                    this.f50788d = false;
                }
            } else {
                this.f50787c = false;
                if (Math.abs(motionEvent.getX() - this.f50790f) > this.f50786b || Math.abs(motionEvent.getY() - this.f50791g) > this.f50786b) {
                    this.f50788d = false;
                }
                if (this.f50788d && motionEvent.getEventTime() - this.f50789e <= ViewConfiguration.getLongPressTimeout() && (interfaceC0712a = this.f50785a) != null) {
                    interfaceC0712a.a();
                }
                this.f50788d = false;
            }
        } else {
            this.f50787c = true;
            this.f50788d = true;
            this.f50789e = motionEvent.getEventTime();
            this.f50790f = motionEvent.getX();
            this.f50791g = motionEvent.getY();
        }
        return true;
    }

    public void e() {
        this.f50787c = false;
        this.f50788d = false;
    }

    public void f(InterfaceC0712a interfaceC0712a) {
        this.f50785a = interfaceC0712a;
    }
}
