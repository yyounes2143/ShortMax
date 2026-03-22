package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.util.ArrayDeque;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaht {
    private final byte[] zza = new byte[8];
    private final ArrayDeque zzb = new ArrayDeque();
    private final zzaia zzc = new zzaia();
    private zzahu zzd;
    private int zze;
    private int zzf;
    private long zzg;

    private final long zzd(zzadw zzadwVar, int i10) throws IOException {
        byte[] bArr = this.zza;
        zzadwVar.zzi(bArr, 0, i10);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | (bArr[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        }
        return j10;
    }

    public final void zza(zzahu zzahuVar) {
        this.zzd = zzahuVar;
    }

    public final void zzb() {
        this.zze = 0;
        this.zzb.clear();
        this.zzc.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        if (r1 == 1) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzadw r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaht.zzc(com.google.android.gms.internal.ads.zzadw):boolean");
    }
}
