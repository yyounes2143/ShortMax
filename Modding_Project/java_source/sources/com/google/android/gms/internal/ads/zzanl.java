package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzanl implements zzamz {
    private final zzen zza;
    private final zzaen zzb;
    @Nullable
    private final String zzc;
    private final int zzd;
    private final String zze;
    private zzafb zzf;
    private String zzg;
    private int zzh = 0;
    private int zzi;
    private boolean zzj;
    private boolean zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzanl(@Nullable String str, int i10, String str2) {
        zzen zzenVar = new zzen(4);
        this.zza = zzenVar;
        zzenVar.zzN()[0] = -1;
        this.zzb = new zzaen();
        this.zzn = -9223372036854775807L;
        this.zzc = str;
        this.zzd = i10;
        this.zze = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zza(zzen zzenVar) {
        boolean z10;
        boolean z11;
        zzdd.zzb(this.zzf);
        while (zzenVar.zza() > 0) {
            int i10 = this.zzh;
            boolean z12 = true;
            if (i10 != 0) {
                if (i10 != 1) {
                    int min = Math.min(zzenVar.zza(), this.zzm - this.zzi);
                    this.zzf.zzr(zzenVar, min);
                    int i11 = this.zzi + min;
                    this.zzi = i11;
                    if (i11 >= this.zzm) {
                        if (this.zzn == -9223372036854775807L) {
                            z12 = false;
                        }
                        zzdd.zzf(z12);
                        this.zzf.zzt(this.zzn, 1, this.zzm, 0, null);
                        this.zzn += this.zzl;
                        this.zzi = 0;
                        this.zzh = 0;
                    }
                } else {
                    int min2 = Math.min(zzenVar.zza(), 4 - this.zzi);
                    zzen zzenVar2 = this.zza;
                    zzenVar.zzH(zzenVar2.zzN(), this.zzi, min2);
                    int i12 = this.zzi + min2;
                    this.zzi = i12;
                    if (i12 >= 4) {
                        zzenVar2.zzL(0);
                        zzaen zzaenVar = this.zzb;
                        if (!zzaenVar.zza(zzenVar2.zzg())) {
                            this.zzi = 0;
                            this.zzh = 1;
                        } else {
                            this.zzm = zzaenVar.zzc;
                            if (!this.zzj) {
                                this.zzl = (zzaenVar.zzg * 1000000) / zzaenVar.zzd;
                                zzx zzxVar = new zzx();
                                zzxVar.zzS(this.zzg);
                                zzxVar.zzG(this.zze);
                                zzxVar.zzah(zzaenVar.zzb);
                                zzxVar.zzX(4096);
                                zzxVar.zzD(zzaenVar.zze);
                                zzxVar.zzai(zzaenVar.zzd);
                                zzxVar.zzW(this.zzc);
                                zzxVar.zzaf(this.zzd);
                                this.zzf.zzm(zzxVar.zzan());
                                this.zzj = true;
                            }
                            zzenVar2.zzL(0);
                            this.zzf.zzr(zzenVar2, 4);
                            this.zzh = 2;
                        }
                    }
                }
            } else {
                byte[] zzN = zzenVar.zzN();
                int zzc = zzenVar.zzc();
                int zzd = zzenVar.zzd();
                while (true) {
                    if (zzc < zzd) {
                        int i13 = zzc + 1;
                        byte b10 = zzN[zzc];
                        if ((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 255) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (this.zzk && (b10 & 224) == 224) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.zzk = z10;
                        if (z11) {
                            zzenVar.zzL(i13);
                            this.zzk = false;
                            this.zza.zzN()[1] = zzN[zzc];
                            this.zzi = 2;
                            this.zzh = 1;
                            break;
                        }
                        zzc = i13;
                    } else {
                        zzenVar.zzL(zzd);
                        break;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzg = zzaonVar.zzb();
        this.zzf = zzadyVar.zzw(zzaonVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        this.zzn = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzk = false;
        this.zzn = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
    }
}
