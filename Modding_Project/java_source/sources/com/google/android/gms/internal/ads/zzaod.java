package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaod {
    private final List zza;
    private final zzafb[] zzc;
    private final String zzb = "video/mp2t";
    private final zzfz zzd = new zzfz(new zzfy() { // from class: com.google.android.gms.internal.ads.zzaoc
        @Override // com.google.android.gms.internal.ads.zzfy
        public final void zza(long j10, zzen zzenVar) {
            zzadh.zza(j10, zzenVar, zzaod.this.zzc);
        }
    });

    public zzaod(List list, String str) {
        this.zza = list;
        this.zzc = new zzafb[list.size()];
    }

    public final void zzb() {
        this.zzd.zzd();
    }

    public final void zzc(long j10, zzen zzenVar) {
        this.zzd.zzb(j10, zzenVar);
    }

    public final void zzd(zzady zzadyVar, zzaon zzaonVar) {
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
                String str2 = zzzVar.zza;
                if (str2 == null) {
                    str2 = zzaonVar.zzb();
                }
                zzx zzxVar = new zzx();
                zzxVar.zzS(str2);
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

    public final void zze() {
        this.zzd.zzd();
    }

    public final void zzf(int i10) {
        this.zzd.zze(i10);
    }
}
