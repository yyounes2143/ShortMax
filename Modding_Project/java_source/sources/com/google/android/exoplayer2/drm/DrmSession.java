package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.h;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4.dex */
public interface DrmSession {

    /* loaded from: classes4.dex */
    public static class DrmSessionException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f17563a;

        public DrmSessionException(Throwable th2, int i10) {
            super(th2);
            this.f17563a = i10;
        }
    }

    static void f(@Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.g(null);
        }
        if (drmSession != null) {
            drmSession.e(null);
        }
    }

    default boolean a() {
        return false;
    }

    @Nullable
    r5.b b();

    UUID c();

    boolean d(String str);

    void e(@Nullable h.a aVar);

    void g(@Nullable h.a aVar);

    @Nullable
    DrmSessionException getError();

    int getState();

    @Nullable
    Map<String, String> queryKeyStatus();
}
