package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzafx implements zzadf {
    private final zzaeg zza;
    private final int zzb;
    private final zzaeb zzc = new zzaeb();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzafx(zzaeg zzaegVar, int i10, zzafy zzafyVar) {
        this.zza = zzaegVar;
        this.zzb = i10;
    }

    private final long zzc(zzadw zzadwVar) throws IOException {
        while (zzadwVar.zze() < zzadwVar.zzd() - 6) {
            zzaeg zzaegVar = this.zza;
            int i10 = this.zzb;
            zzaeb zzaebVar = this.zzc;
            long zze = zzadwVar.zze();
            byte[] bArr = new byte[2];
            zzadwVar.zzh(bArr, 0, 2);
            if ((((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) != i10) {
                zzadwVar.zzj();
                zzadwVar.zzg((int) (zze - zzadwVar.zzf()));
            } else {
                zzen zzenVar = new zzen(16);
                System.arraycopy(bArr, 0, zzenVar.zzN(), 0, 2);
                zzenVar.zzK(zzadz.zzb(zzadwVar, zzenVar.zzN(), 2, 14));
                zzadwVar.zzj();
                zzadwVar.zzg((int) (zze - zzadwVar.zzf()));
                if (zzaec.zzc(zzenVar, zzaegVar, i10, zzaebVar)) {
                    break;
                }
            }
            zzadwVar.zzg(1);
        }
        if (zzadwVar.zze() >= zzadwVar.zzd() - 6) {
            zzadwVar.zzg((int) (zzadwVar.zzd() - zzadwVar.zze()));
            return this.zza.zzj;
        }
        return this.zzc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final zzade zza(zzadw zzadwVar, long j10) throws IOException {
        long zzf = zzadwVar.zzf();
        long zzc = zzc(zzadwVar);
        long zze = zzadwVar.zze();
        zzadwVar.zzg(Math.max(6, this.zza.zzc));
        int i10 = (zzc > j10 ? 1 : (zzc == j10 ? 0 : -1));
        long zzc2 = zzc(zzadwVar);
        long zze2 = zzadwVar.zze();
        if (i10 <= 0 && zzc2 > j10) {
            return zzade.zze(zze);
        }
        if (zzc2 <= j10) {
            return zzade.zzf(zzc2, zze2);
        }
        return zzade.zzd(zzc, zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final /* synthetic */ void zzb() {
    }
}
