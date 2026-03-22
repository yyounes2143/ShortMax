package io.bidmachine.media3.exoplayer.drm;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import io.bidmachine.media3.exoplayer.drm.h;
import java.util.Map;
import java.util.UUID;
/* compiled from: ErrorStateDrmSession.java */
/* loaded from: classes8.dex */
public final class l implements DrmSession {

    /* renamed from: a  reason: collision with root package name */
    private final DrmSession.DrmSessionException f55870a;

    public l(DrmSession.DrmSessionException drmSessionException) {
        this.f55870a = (DrmSession.DrmSessionException) cn.a.e(drmSessionException);
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public boolean a() {
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    @Nullable
    public fn.b b() {
        return null;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public final UUID c() {
        return zm.f.f71928a;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public boolean d(String str) {
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    @Nullable
    public DrmSession.DrmSessionException getError() {
        return this.f55870a;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        return null;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public void f(@Nullable h.a aVar) {
    }

    @Override // io.bidmachine.media3.exoplayer.drm.DrmSession
    public void g(@Nullable h.a aVar) {
    }
}
