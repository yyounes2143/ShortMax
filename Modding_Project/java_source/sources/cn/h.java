package cn;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
/* compiled from: Clock.java */
/* loaded from: classes8.dex */
public interface h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f3594a = new e0();

    void a();

    n createHandler(Looper looper, @Nullable Handler.Callback callback);

    long currentTimeMillis();

    long elapsedRealtime();

    long nanoTime();

    long uptimeMillis();
}
