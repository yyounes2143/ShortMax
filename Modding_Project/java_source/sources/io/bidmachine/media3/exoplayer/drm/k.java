package io.bidmachine.media3.exoplayer.drm;

import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.exoplayer.drm.m;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: DummyExoMediaDrm.java */
/* loaded from: classes8.dex */
public final class k implements m {
    @Override // io.bidmachine.media3.exoplayer.drm.m
    public int a() {
        return 1;
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public fn.b b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public boolean c(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public m.a d(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i10, @Nullable HashMap<String, String> hashMap) {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public m.d getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void release() {
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void closeSession(byte[] bArr) {
    }

    @Override // io.bidmachine.media3.exoplayer.drm.m
    public void f(@Nullable m.b bVar) {
    }
}
