package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamy implements zzamz {
    private final List zza;
    private final zzafb[] zzc;
    private boolean zzd;
    private int zze;
    private int zzf;
    private final String zzb = "video/mp2t";
    private long zzg = -9223372036854775807L;

    public zzamy(List list, String str) {
        this.zza = list;
        this.zzc = new zzafb[list.size()];
    }

    private final boolean zzf(zzen zzenVar, int i10) {
        if (zzenVar.zza() == 0) {
            return false;
        }
        if (zzenVar.zzm() != i10) {
            this.zzd = false;
        }
        this.zze--;
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zza(zzen zzenVar) {
        zzafb[] zzafbVarArr;
        if (this.zzd) {
            if (this.zze != 2 || zzf(zzenVar, 32)) {
                if (this.zze != 1 || zzf(zzenVar, 0)) {
                    int zzc = zzenVar.zzc();
                    int zza = zzenVar.zza();
                    for (zzafb zzafbVar : this.zzc) {
                        zzenVar.zzL(zzc);
                        zzafbVar.zzr(zzenVar, zza);
                    }
                    this.zzf += zza;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        int i10 = 0;
        while (true) {
            zzafb[] zzafbVarArr = this.zzc;
            if (i10 < zzafbVarArr.length) {
                zzaok zzaokVar = (zzaok) this.zza.get(i10);
                zzaonVar.zzc();
                zzafb zzw = zzadyVar.zzw(zzaonVar.zza(), 3);
                zzx zzxVar = new zzx();
                zzxVar.zzS(zzaonVar.zzb());
                zzxVar.zzG(this.zzb);
                zzxVar.zzah(MimeTypes.APPLICATION_DVBSUBS);
                zzxVar.zzT(Collections.singletonList(zzaokVar.zzb));
                zzxVar.zzW(zzaokVar.zza);
                zzw.zzm(zzxVar.zzan());
                zzafbVarArr[i10] = zzw;
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
        boolean z11;
        if (this.zzd) {
            if (this.zzg != -9223372036854775807L) {
                z11 = true;
            } else {
                z11 = false;
            }
            zzdd.zzf(z11);
            for (zzafb zzafbVar : this.zzc) {
                zzafbVar.zzt(this.zzg, 1, this.zzf, 0, null);
            }
            this.zzd = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.zzd = true;
        this.zzg = j10;
        this.zzf = 0;
        this.zze = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        this.zzd = false;
        this.zzg = -9223372036854775807L;
    }
}
