package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamq implements zzadv {
    private final zzamr zza = new zzamr(null, 0, MimeTypes.AUDIO_AC3);
    private final zzen zzb = new zzen(2786);
    private boolean zzc;

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        zzen zzenVar = this.zzb;
        int zza = zzadwVar.zza(zzenVar.zzN(), 0, 2786);
        if (zza == -1) {
            return -1;
        }
        zzenVar.zzL(0);
        zzenVar.zzK(zza);
        if (!this.zzc) {
            this.zza.zzd(0L, 4);
            this.zzc = true;
        }
        this.zza.zza(zzenVar);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zza.zzb(zzadyVar, new zzaon(Integer.MIN_VALUE, 0, 1));
        zzadyVar.zzG();
        zzadyVar.zzP(new zzaet(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        this.zzc = false;
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        zzen zzenVar = new zzen(10);
        int i10 = 0;
        while (true) {
            zzadl zzadlVar = (zzadl) zzadwVar;
            zzadlVar.zzm(zzenVar.zzN(), 0, 10, false);
            zzenVar.zzL(0);
            if (zzenVar.zzo() != 4801587) {
                break;
            }
            zzenVar.zzM(3);
            int zzl = zzenVar.zzl();
            i10 += zzl + 10;
            zzadlVar.zzl(zzl, false);
        }
        zzadwVar.zzj();
        zzadl zzadlVar2 = (zzadl) zzadwVar;
        zzadlVar2.zzl(i10, false);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            zzadlVar2.zzm(zzenVar.zzN(), 0, 6, false);
            zzenVar.zzL(0);
            if (zzenVar.zzq() != 2935) {
                zzadwVar.zzj();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                zzadlVar2.zzl(i12, false);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int zzb = zzacu.zzb(zzenVar.zzN());
                if (zzb == -1) {
                    return false;
                }
                zzadlVar2.zzl(zzb - 6, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
