package b7;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
/* compiled from: Clock.java */
/* loaded from: classes4.dex */
public interface d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f2436a = new l0();

    void a();

    m createHandler(Looper looper, @Nullable Handler.Callback callback);

    long elapsedRealtime();

    long uptimeMillis();
}
