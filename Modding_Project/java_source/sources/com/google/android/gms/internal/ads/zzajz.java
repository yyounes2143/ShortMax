package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzajz implements zzadv {
    private zzady zza;
    private zzakh zzb;
    private boolean zzc;

    private final boolean zza(zzadw zzadwVar) throws IOException {
        zzakb zzakbVar = new zzakb();
        if (zzakbVar.zzb(zzadwVar, true) && (zzakbVar.zza & 2) == 2) {
            int min = Math.min(zzakbVar.zze, 8);
            zzen zzenVar = new zzen(min);
            zzadwVar.zzh(zzenVar.zzN(), 0, min);
            zzenVar.zzL(0);
            if (zzenVar.zza() >= 5 && zzenVar.zzm() == 127 && zzenVar.zzu() == 1179402563) {
                this.zzb = new zzajy();
            } else {
                zzenVar.zzL(0);
                try {
                    if (zzafh.zzd(1, zzenVar, true)) {
                        this.zzb = new zzakj();
                    }
                } catch (zzaz unused) {
                }
                zzenVar.zzL(0);
                if (zzakd.zzd(zzenVar)) {
                    this.zzb = new zzakd();
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        zzdd.zzb(this.zza);
        if (this.zzb == null) {
            if (zza(zzadwVar)) {
                zzadwVar.zzj();
            } else {
                throw zzaz.zza("Failed to determine bitstream type", null);
            }
        }
        if (!this.zzc) {
            zzafb zzw = this.zza.zzw(0, 1);
            this.zza.zzG();
            this.zzb.zzh(this.zza, zzw);
            this.zzc = true;
        }
        return this.zzb.zze(zzadwVar, zzaerVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zza = zzadyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        zzakh zzakhVar = this.zzb;
        if (zzakhVar != null) {
            zzakhVar.zzj(j10, j11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        try {
            return zza(zzadwVar);
        } catch (zzaz unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
