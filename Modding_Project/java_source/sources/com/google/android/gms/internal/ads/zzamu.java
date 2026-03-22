package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamu implements zzadv {
    private final zzamv zza;
    private final zzen zzb;
    private final zzen zzc;
    private final zzem zzd;
    private zzady zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    private boolean zzi;

    public zzamu() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        zzdd.zzb(this.zze);
        zzen zzenVar = this.zzb;
        int zza = zzadwVar.zza(zzenVar.zzN(), 0, 2048);
        if (!this.zzi) {
            this.zze.zzP(new zzaet(-9223372036854775807L, 0L));
            this.zzi = true;
        }
        if (zza == -1) {
            return -1;
        }
        zzenVar.zzL(0);
        zzenVar.zzK(zza);
        if (!this.zzh) {
            this.zza.zzd(this.zzf, 4);
            this.zzh = true;
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
        this.zze = zzadyVar;
        this.zza.zzb(zzadyVar, new zzaon(Integer.MIN_VALUE, 0, 1));
        zzadyVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        this.zzh = false;
        this.zza.zze();
        this.zzf = j11;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        zzen zzenVar;
        int i10 = 0;
        while (true) {
            zzenVar = this.zzc;
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
        if (this.zzg == -1) {
            this.zzg = i10;
        }
        int i11 = 0;
        int i12 = 0;
        int i13 = i10;
        do {
            zzadlVar2.zzm(zzenVar.zzN(), 0, 2, false);
            zzenVar.zzL(0);
            if (!zzamv.zzf(zzenVar.zzq())) {
                i13++;
                zzadwVar.zzj();
                zzadlVar2.zzl(i13, false);
            } else {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                zzadlVar2.zzm(zzenVar.zzN(), 0, 4, false);
                zzem zzemVar = this.zzd;
                zzemVar.zzl(14);
                int zzd = zzemVar.zzd(13);
                if (zzd <= 6) {
                    i13++;
                    zzadwVar.zzj();
                    zzadlVar2.zzl(i13, false);
                } else {
                    zzadlVar2.zzl(zzd - 6, false);
                    i12 += zzd;
                }
            }
            i11 = 0;
            i12 = 0;
        } while (i13 - i10 < 8192);
        return false;
    }

    public zzamu(int i10) {
        this.zza = new zzamv(true, null, 0, MimeTypes.AUDIO_AAC);
        this.zzb = new zzen(2048);
        this.zzg = -1L;
        zzen zzenVar = new zzen(10);
        this.zzc = zzenVar;
        byte[] zzN = zzenVar.zzN();
        this.zzd = new zzem(zzN, zzN.length);
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
