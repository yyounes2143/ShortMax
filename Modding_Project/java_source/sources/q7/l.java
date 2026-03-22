package q7;

import com.vungle.ads.internal.signals.SignalManager;
import r7.a;
/* compiled from: RetryManager.java */
/* loaded from: classes5.dex */
public class l {

    /* renamed from: b  reason: collision with root package name */
    private long f65230b = 0;

    /* renamed from: c  reason: collision with root package name */
    private long f65231c = -1;

    /* renamed from: a  reason: collision with root package name */
    private final r7.a f65229a = new a.C0914a();

    private static int b(int i10) {
        if (i10 != 400 && i10 != 404) {
            return 0;
        }
        return 1;
    }

    public boolean a() {
        if (this.f65231c <= this.f65229a.currentTimeMillis()) {
            return true;
        }
        return false;
    }

    public void c() {
        this.f65230b = 0L;
        this.f65231c = -1L;
    }

    public void d(int i10) {
        this.f65230b++;
        if (b(i10) == 1) {
            this.f65231c = this.f65229a.currentTimeMillis() + SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            return;
        }
        this.f65231c = this.f65229a.currentTimeMillis() + Math.min((long) (Math.pow(2.0d, this.f65230b * ((Math.random() * 0.5d) + 1.0d)) * 1000.0d), 14400000L);
    }
}
