package au;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import org.greenrobot.eventbus.EventBusException;
/* compiled from: HandlerPoster.java */
/* loaded from: classes8.dex */
public class e extends Handler implements k {

    /* renamed from: a  reason: collision with root package name */
    private final j f2092a;

    /* renamed from: b  reason: collision with root package name */
    private final int f2093b;

    /* renamed from: c  reason: collision with root package name */
    private final c f2094c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2095d;

    public e(c cVar, Looper looper, int i10) {
        super(looper);
        this.f2094c = cVar;
        this.f2093b = i10;
        this.f2092a = new j();
    }

    @Override // au.k
    public void a(p pVar, Object obj) {
        i a10 = i.a(pVar, obj);
        synchronized (this) {
            try {
                this.f2092a.a(a10);
                if (!this.f2095d) {
                    this.f2095d = true;
                    if (!sendMessage(obtainMessage())) {
                        throw new EventBusException("Could not send handler message");
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                i b10 = this.f2092a.b();
                if (b10 == null) {
                    synchronized (this) {
                        b10 = this.f2092a.b();
                        if (b10 == null) {
                            this.f2095d = false;
                            return;
                        }
                    }
                }
                this.f2094c.h(b10);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f2093b);
            if (sendMessage(obtainMessage())) {
                this.f2095d = true;
                return;
            }
            throw new EventBusException("Could not send handler message");
        } catch (Throwable th2) {
            this.f2095d = false;
            throw th2;
        }
    }
}
