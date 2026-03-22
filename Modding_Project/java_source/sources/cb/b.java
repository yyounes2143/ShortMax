package cb;

import android.os.SystemClock;
import androidx.work.PeriodicWorkRequest;
import java.util.concurrent.Future;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Future<ab.d> f3420a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3421b = SystemClock.elapsedRealtime();

    public b(Future<ab.d> future) {
        this.f3420a = future;
    }

    public Future<ab.d> a() {
        return this.f3420a;
    }

    public boolean b() {
        if (SystemClock.elapsedRealtime() - this.f3421b <= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            return true;
        }
        return false;
    }
}
