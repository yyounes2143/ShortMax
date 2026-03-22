package cn;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
/* compiled from: SystemClock.java */
/* loaded from: classes8.dex */
public class e0 implements h {
    @Override // cn.h
    public n createHandler(Looper looper, @Nullable Handler.Callback callback) {
        return new f0(new Handler(looper, callback));
    }

    @Override // cn.h
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // cn.h
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // cn.h
    public long nanoTime() {
        return System.nanoTime();
    }

    @Override // cn.h
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }

    @Override // cn.h
    public void a() {
    }
}
