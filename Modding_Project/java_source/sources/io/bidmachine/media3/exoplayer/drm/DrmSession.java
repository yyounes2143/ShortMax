package io.bidmachine.media3.exoplayer.drm;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.drm.h;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes8.dex */
public interface DrmSession {

    /* loaded from: classes8.dex */
    public static class DrmSessionException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f55845a;

        public DrmSessionException(Throwable th2, int i10) {
            super(th2);
            this.f55845a = i10;
        }
    }

    static void e(@Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.g(null);
        }
        if (drmSession != null) {
            drmSession.f(null);
        }
    }

    default boolean a() {
        return false;
    }

    @Nullable
    fn.b b();

    UUID c();

    boolean d(String str);

    void f(@Nullable h.a aVar);

    void g(@Nullable h.a aVar);

    @Nullable
    DrmSessionException getError();

    int getState();

    @Nullable
    Map<String, String> queryKeyStatus();
}
