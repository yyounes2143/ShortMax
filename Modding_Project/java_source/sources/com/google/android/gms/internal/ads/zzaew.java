package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaew implements zzadv {
    private final int zza;
    private final int zzb;
    private final String zzc;
    private int zzd;
    private int zze;
    private zzady zzf;
    private zzafb zzg;

    public zzaew(int i10, int i11, String str) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        int i10 = this.zze;
        if (i10 != 1) {
            if (i10 == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        zzafb zzafbVar = this.zzg;
        zzafbVar.getClass();
        int zzf = zzafbVar.zzf(zzadwVar, 1024, true);
        if (zzf == -1) {
            this.zze = 2;
            this.zzg.zzt(0L, 1, this.zzd, 0, null);
            this.zzd = 0;
        } else {
            this.zzd += zzf;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zzf = zzadyVar;
        zzafb zzw = zzadyVar.zzw(1024, 4);
        this.zzg = zzw;
        zzx zzxVar = new zzx();
        String str = this.zzc;
        zzxVar.zzG(str);
        zzxVar.zzah(str);
        zzw.zzm(zzxVar.zzan());
        this.zzf.zzG();
        this.zzf.zzP(new zzaex(-9223372036854775807L));
        this.zze = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        if (j10 != 0 && this.zze != 1) {
            return;
        }
        this.zze = 1;
        this.zzd = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        boolean z10;
        int i10 = this.zza;
        if (i10 != -1 && this.zzb != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        int i11 = this.zzb;
        zzen zzenVar = new zzen(i11);
        ((zzadl) zzadwVar).zzm(zzenVar.zzN(), 0, i11, false);
        if (zzenVar.zzq() == i10) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
