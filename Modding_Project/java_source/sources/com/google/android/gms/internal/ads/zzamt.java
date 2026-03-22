package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamt implements zzamz {
    private final zzem zza;
    private final zzen zzb;
    @Nullable
    private final String zzc;
    private final int zzd;
    private final String zze;
    private String zzf;
    private zzafb zzg;
    private int zzh;
    private int zzi;
    private boolean zzj;
    private long zzk;
    private zzz zzl;
    private int zzm;
    private long zzn;

    public zzamt(@Nullable String str, int i10, String str2) {
        zzem zzemVar = new zzem(new byte[16], 16);
        this.zza = zzemVar;
        this.zzb = new zzen(zzemVar.zza);
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = false;
        this.zzn = -9223372036854775807L;
        this.zzc = str;
        this.zzd = i10;
        this.zze = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zza(zzen zzenVar) {
        boolean z10;
        boolean z11;
        zzdd.zzb(this.zzg);
        while (zzenVar.zza() > 0) {
            int i10 = this.zzh;
            boolean z12 = true;
            if (i10 != 0) {
                if (i10 != 1) {
                    int min = Math.min(zzenVar.zza(), this.zzm - this.zzi);
                    this.zzg.zzr(zzenVar, min);
                    int i11 = this.zzi + min;
                    this.zzi = i11;
                    if (i11 == this.zzm) {
                        if (this.zzn == -9223372036854775807L) {
                            z12 = false;
                        }
                        zzdd.zzf(z12);
                        this.zzg.zzt(this.zzn, 1, this.zzm, 0, null);
                        this.zzn += this.zzk;
                        this.zzh = 0;
                    }
                } else {
                    zzen zzenVar2 = this.zzb;
                    byte[] zzN = zzenVar2.zzN();
                    int min2 = Math.min(zzenVar.zza(), 16 - this.zzi);
                    zzenVar.zzH(zzN, this.zzi, min2);
                    int i12 = this.zzi + min2;
                    this.zzi = i12;
                    if (i12 == 16) {
                        zzem zzemVar = this.zza;
                        zzemVar.zzl(0);
                        zzacw zzb = zzacy.zzb(zzemVar);
                        zzz zzzVar = this.zzl;
                        if (zzzVar == null || zzzVar.zzG != 2 || zzb.zza != zzzVar.zzH || !"audio/ac4".equals(zzzVar.zzo)) {
                            zzx zzxVar = new zzx();
                            zzxVar.zzS(this.zzf);
                            zzxVar.zzG(this.zze);
                            zzxVar.zzah("audio/ac4");
                            zzxVar.zzD(2);
                            zzxVar.zzai(zzb.zza);
                            zzxVar.zzW(this.zzc);
                            zzxVar.zzaf(this.zzd);
                            zzz zzan = zzxVar.zzan();
                            this.zzl = zzan;
                            this.zzg.zzm(zzan);
                        }
                        this.zzm = zzb.zzb;
                        this.zzk = (zzb.zzc * 1000000) / this.zzl.zzH;
                        zzenVar2.zzL(0);
                        this.zzg.zzr(zzenVar2, 16);
                        this.zzh = 2;
                    }
                }
            } else {
                while (zzenVar.zza() > 0) {
                    if (!this.zzj) {
                        if (zzenVar.zzm() == 172) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.zzj = z10;
                    } else {
                        int zzm = zzenVar.zzm();
                        if (zzm == 172) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.zzj = z11;
                        byte b10 = 64;
                        if (zzm != 64) {
                            if (zzm == 65) {
                                zzm = 65;
                            }
                        }
                        this.zzh = 1;
                        zzen zzenVar3 = this.zzb;
                        zzenVar3.zzN()[0] = -84;
                        if (zzm == 65) {
                            b10 = 65;
                        }
                        zzenVar3.zzN()[1] = b10;
                        this.zzi = 2;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzf = zzaonVar.zzb();
        this.zzg = zzadyVar.zzw(zzaonVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        this.zzn = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = false;
        this.zzn = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
    }
}
