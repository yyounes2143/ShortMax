package com.google.android.gms.internal.ads;

import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaoe implements zzadf {
    private final zzeu zza;
    private final zzen zzb = new zzen();
    private final int zzc;

    public zzaoe(int i10, zzeu zzeuVar, int i11) {
        this.zzc = i10;
        this.zza = zzeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final zzade zza(zzadw zzadwVar, long j10) throws IOException {
        int zza;
        int zza2;
        long zzf = zzadwVar.zzf();
        int min = (int) Math.min(112800L, zzadwVar.zzd() - zzf);
        zzen zzenVar = this.zzb;
        zzenVar.zzI(min);
        zzadwVar.zzh(zzenVar.zzN(), 0, min);
        int zzd = zzenVar.zzd();
        long j11 = -1;
        long j12 = -9223372036854775807L;
        long j13 = -1;
        while (zzenVar.zza() >= 188 && (zza2 = (zza = zzaop.zza(zzenVar.zzN(), zzenVar.zzc(), zzd)) + MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) <= zzd) {
            long zzb = zzaop.zzb(zzenVar, zza, this.zzc);
            if (zzb != -9223372036854775807L) {
                long zzb2 = this.zza.zzb(zzb);
                if (zzb2 > j10) {
                    if (j12 == -9223372036854775807L) {
                        return zzade.zzd(zzb2, zzf);
                    }
                } else {
                    j13 = zza;
                    if (100000 + zzb2 <= j10) {
                        j12 = zzb2;
                    }
                }
                return zzade.zze(zzf + j13);
            }
            zzenVar.zzL(zza2);
            j11 = zza2;
        }
        if (j12 != -9223372036854775807L) {
            return zzade.zzf(j12, zzf + j11);
        }
        return zzade.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final void zzb() {
        byte[] bArr = zzex.zzb;
        int length = bArr.length;
        this.zzb.zzJ(bArr, 0);
    }
}
