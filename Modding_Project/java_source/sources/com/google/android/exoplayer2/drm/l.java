package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.h;
import java.util.Map;
import java.util.UUID;
/* compiled from: ErrorStateDrmSession.java */
/* loaded from: classes4.dex */
public final class l implements DrmSession {

    /* renamed from: a  reason: collision with root package name */
    private final DrmSession.DrmSessionException f17588a;

    public l(DrmSession.DrmSessionException drmSessionException) {
        this.f17588a = (DrmSession.DrmSessionException) b7.a.e(drmSessionException);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean a() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public r5.b b() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID c() {
        return o5.l.f63096a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean d(String str) {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public DrmSession.DrmSessionException getError() {
        return this.f17588a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void e(@Nullable h.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void g(@Nullable h.a aVar) {
    }
}
