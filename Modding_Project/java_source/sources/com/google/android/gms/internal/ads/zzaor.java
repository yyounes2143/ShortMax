package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaor {
    private final List zza;
    private final String zzb = "video/mp2t";
    private final zzafb[] zzc;
    private final zzfz zzd;

    public zzaor(List list, String str) {
        this.zza = list;
        this.zzc = new zzafb[list.size()];
        zzfz zzfzVar = new zzfz(new zzfy() { // from class: com.google.android.gms.internal.ads.zzaoq
            @Override // com.google.android.gms.internal.ads.zzfy
            public final void zza(long j10, zzen zzenVar) {
                zzadh.zzb(j10, zzenVar, zzaor.this.zzc);
            }
        });
        this.zzd = zzfzVar;
        zzfzVar.zze(3);
    }

    public final void zzb(long j10, zzen zzenVar) {
        if (zzenVar.zza() >= 9) {
            int zzg = zzenVar.zzg();
            int zzg2 = zzenVar.zzg();
            int zzm = zzenVar.zzm();
            if (zzg == 434 && zzg2 == 1195456820 && zzm == 3) {
                this.zzd.zzb(j10, zzenVar);
            }
        }
    }

    public final void zzc(zzady zzadyVar, zzaon zzaonVar) {
        int i10 = 0;
        while (true) {
            zzafb[] zzafbVarArr = this.zzc;
            if (i10 < zzafbVarArr.length) {
                zzaonVar.zzc();
                zzafb zzw = zzadyVar.zzw(zzaonVar.zza(), 3);
                zzz zzzVar = (zzz) this.zza.get(i10);
                String str = zzzVar.zzo;
                boolean z10 = true;
                if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                    z10 = false;
                }
                zzdd.zze(z10, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
                zzx zzxVar = new zzx();
                zzxVar.zzS(zzaonVar.zzb());
                zzxVar.zzG(this.zzb);
                zzxVar.zzah(str);
                zzxVar.zzaj(zzzVar.zze);
                zzxVar.zzW(zzzVar.zzd);
                zzxVar.zzB(zzzVar.zzL);
                zzxVar.zzT(zzzVar.zzr);
                zzw.zzm(zzxVar.zzan());
                zzafbVarArr[i10] = zzw;
                i10++;
            } else {
                return;
            }
        }
    }
}
