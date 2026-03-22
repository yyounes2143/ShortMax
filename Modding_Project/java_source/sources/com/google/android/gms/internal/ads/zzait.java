package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzait implements zzaiq {
    private final int zza;
    private final int zzb;
    private final zzen zzc;

    public zzait(zzfd zzfdVar, zzz zzzVar) {
        zzen zzenVar = zzfdVar.zza;
        this.zzc = zzenVar;
        zzenVar.zzL(12);
        int zzp = zzenVar.zzp();
        if (MimeTypes.AUDIO_RAW.equals(zzzVar.zzo)) {
            int zzk = zzex.zzk(zzzVar.zzI) * zzzVar.zzG;
            if (zzp == 0 || zzp % zzk != 0) {
                zzea.zzf("BoxParsers", "Audio sample size mismatch. stsd sample size: " + zzk + ", stsz sample size: " + zzp);
                zzp = zzk;
            }
        }
        this.zza = zzp == 0 ? -1 : zzp;
        this.zzb = zzenVar.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaiq
    public final int zzc() {
        int i10 = this.zza;
        if (i10 == -1) {
            return this.zzc.zzp();
        }
        return i10;
    }
}
