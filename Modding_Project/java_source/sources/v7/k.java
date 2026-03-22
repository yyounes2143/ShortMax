package v7;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.VisibleForTesting;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.p003firebaseauthapi.zze;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class k {

    /* renamed from: h  reason: collision with root package name */
    private static Logger f68783h = new Logger("TokenRefresher", "FirebaseAuth:");

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.f f68784a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    volatile long f68785b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    volatile long f68786c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    private long f68787d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    private HandlerThread f68788e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    private Handler f68789f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    private Runnable f68790g;

    public k(com.google.firebase.f fVar) {
        f68783h.v("Initializing TokenRefresher", new Object[0]);
        com.google.firebase.f fVar2 = (com.google.firebase.f) Preconditions.checkNotNull(fVar);
        this.f68784a = fVar2;
        HandlerThread handlerThread = new HandlerThread("TokenRefresher", 10);
        this.f68788e = handlerThread;
        handlerThread.start();
        this.f68789f = new zze(this.f68788e.getLooper());
        this.f68790g = new n(this, fVar2.o());
        this.f68787d = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    }

    public final void b() {
        this.f68789f.removeCallbacks(this.f68790g);
    }

    public final void c() {
        Logger logger = f68783h;
        long j10 = this.f68785b - this.f68787d;
        logger.v("Scheduling refresh for " + j10, new Object[0]);
        b();
        this.f68786c = Math.max((this.f68785b - DefaultClock.getInstance().currentTimeMillis()) - this.f68787d, 0L) / 1000;
        this.f68789f.postDelayed(this.f68790g, this.f68786c * 1000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        long j10;
        int i10 = (int) this.f68786c;
        if (i10 != 30 && i10 != 60 && i10 != 120 && i10 != 240 && i10 != 480) {
            if (i10 != 960) {
                j10 = 30;
            } else {
                j10 = 960;
            }
        } else {
            j10 = 2 * this.f68786c;
        }
        this.f68786c = j10;
        this.f68785b = DefaultClock.getInstance().currentTimeMillis() + (this.f68786c * 1000);
        Logger logger = f68783h;
        long j11 = this.f68785b;
        logger.v("Scheduling refresh for " + j11, new Object[0]);
        this.f68789f.postDelayed(this.f68790g, this.f68786c * 1000);
    }
}
