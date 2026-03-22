package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzapb implements zzapc {
    private final ByteBuffer zza;

    public zzapb(ByteBuffer byteBuffer) {
        this.zza = byteBuffer.slice();
    }

    @Override // com.google.android.gms.internal.ads.zzapc
    public final long zza() {
        return this.zza.capacity();
    }

    @Override // com.google.android.gms.internal.ads.zzapc
    public final void zzb(MessageDigest[] messageDigestArr, long j10, int i10) throws IOException {
        ByteBuffer slice;
        ByteBuffer byteBuffer = this.zza;
        synchronized (byteBuffer) {
            int i11 = (int) j10;
            byteBuffer.position(i11);
            byteBuffer.limit(i11 + i10);
            slice = byteBuffer.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }
}
