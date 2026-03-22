package r3;

import android.app.ActivityManager;
import java.util.concurrent.TimeUnit;
/* compiled from: DefaultBitmapMemoryCacheParamsSupplier.java */
/* loaded from: classes3.dex */
public class n implements k2.k<x> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f65528b = TimeUnit.MINUTES.toMillis(5);

    /* renamed from: a  reason: collision with root package name */
    private final ActivityManager f65529a;

    public n(ActivityManager activityManager) {
        this.f65529a = activityManager;
    }

    private int b() {
        int min = Math.min(this.f65529a.getMemoryClass() * 1048576, Integer.MAX_VALUE);
        if (min < 33554432) {
            return 4194304;
        }
        if (min < 67108864) {
            return 6291456;
        }
        return min / 4;
    }

    @Override // k2.k
    /* renamed from: a */
    public x get() {
        return new x(b(), 256, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, f65528b);
    }
}
