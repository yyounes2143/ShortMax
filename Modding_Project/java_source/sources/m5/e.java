package m5;

import android.os.SystemClock;
/* compiled from: UptimeClock.java */
/* loaded from: classes4.dex */
public class e implements a {
    @Override // m5.a
    public long getTime() {
        return SystemClock.elapsedRealtime();
    }
}
