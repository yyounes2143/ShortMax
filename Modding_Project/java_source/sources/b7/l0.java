package b7;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
/* compiled from: SystemClock.java */
/* loaded from: classes4.dex */
public class l0 implements d {
    @Override // b7.d
    public m createHandler(Looper looper, @Nullable Handler.Callback callback) {
        return new m0(new Handler(looper, callback));
    }

    @Override // b7.d
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // b7.d
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }

    @Override // b7.d
    public void a() {
    }
}
