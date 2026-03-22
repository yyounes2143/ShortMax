package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.m;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: DummyExoMediaDrm.java */
@RequiresApi(18)
/* loaded from: classes4.dex */
public final class k implements m {
    @Override // com.google.android.exoplayer2.drm.m
    public int a() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.m
    public r5.b b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public boolean c(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public m.a d(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> hashMap) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public m.d getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.google.android.exoplayer2.drm.m
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void release() {
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void closeSession(byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.m
    public void e(@Nullable m.b bVar) {
    }
}
