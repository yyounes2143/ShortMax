package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzams implements zzadv {
    private final zzamt zza = new zzamt(null, 0, "audio/ac4");
    private final zzen zzb = new zzen(16384);
    private boolean zzc;

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        zzen zzenVar = this.zzb;
        int zza = zzadwVar.zza(zzenVar.zzN(), 0, 16384);
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
        int i10;
        boolean z10 = true;
        zzen zzenVar = new zzen(10);
        int i11 = 0;
        while (true) {
            zzadl zzadlVar = (zzadl) zzadwVar;
            zzadlVar.zzm(zzenVar.zzN(), 0, 10, false);
            zzenVar.zzL(0);
            if (zzenVar.zzo() != 4801587) {
                break;
            }
            zzenVar.zzM(3);
            int zzl = zzenVar.zzl();
            i11 += zzl + 10;
            zzadlVar.zzl(zzl, false);
            z10 = true;
        }
        zzadwVar.zzj();
        zzadl zzadlVar2 = (zzadl) zzadwVar;
        zzadlVar2.zzl(i11, false);
        int i12 = 0;
        int i13 = i11;
        while (true) {
            int i14 = 7;
            zzadlVar2.zzm(zzenVar.zzN(), 0, 7, false);
            zzenVar.zzL(0);
            int zzq = zzenVar.zzq();
            if (zzq != 44096 && zzq != 44097) {
                zzadwVar.zzj();
                i13 += z10 ? 1 : 0;
                if (i13 - i11 >= 8192) {
                    return false;
                }
                zzadlVar2.zzl(i13, false);
                i12 = 0;
            } else {
                i12 += z10 ? 1 : 0;
                if (i12 >= 4) {
                    return z10;
                }
                byte[] zzN = zzenVar.zzN();
                int i15 = zzacy.zza;
                if (zzN.length < 7) {
                    i10 = -1;
                } else {
                    int i16 = (zzN[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((zzN[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
                    if (i16 == 65535) {
                        i16 = ((zzN[4] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((zzN[5] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (zzN[6] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                    } else {
                        i14 = 4;
                    }
                    if (zzq == 44097) {
                        i14 += 2;
                    }
                    i10 = i16 + i14;
                }
                if (i10 == -1) {
                    return false;
                }
                zzadlVar2.zzl(i10 - 7, false);
                z10 = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
