package gn;

import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
/* compiled from: PlaybackLooperProvider.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes8.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f52452a;
    @GuardedBy("lock")

    /* renamed from: b  reason: collision with root package name */
    private Looper f52453b;
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private HandlerThread f52454c;
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private int f52455d;

    public f0() {
        this(null);
    }

    public Looper a() {
        Looper looper;
        boolean z10;
        synchronized (this.f52452a) {
            try {
                if (this.f52453b == null) {
                    if (this.f52455d == 0 && this.f52454c == null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    cn.a.g(z10);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.f52454c = handlerThread;
                    handlerThread.start();
                    this.f52453b = this.f52454c.getLooper();
                }
                this.f52455d++;
                looper = this.f52453b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return looper;
    }

    public void b() {
        boolean z10;
        HandlerThread handlerThread;
        synchronized (this.f52452a) {
            try {
                if (this.f52455d > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                cn.a.g(z10);
                int i10 = this.f52455d - 1;
                this.f52455d = i10;
                if (i10 == 0 && (handlerThread = this.f52454c) != null) {
                    handlerThread.quit();
                    this.f52454c = null;
                    this.f52453b = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public f0(Looper looper) {
        this.f52452a = new Object();
        this.f52453b = looper;
        this.f52454c = null;
        this.f52455d = 0;
    }
}
