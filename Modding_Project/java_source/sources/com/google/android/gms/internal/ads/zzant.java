package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzant implements zzaoo {
    private final zzamz zza;
    private final zzem zzb = new zzem(new byte[10], 10);
    private int zzc = 0;
    private int zzd;
    private zzeu zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    public zzant(zzamz zzamzVar) {
        this.zza = zzamzVar;
    }

    private final void zze(int i10) {
        this.zzc = i10;
        this.zzd = 0;
    }

    private final boolean zzf(zzen zzenVar, @Nullable byte[] bArr, int i10) {
        int min = Math.min(zzenVar.zza(), i10 - this.zzd);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzenVar.zzM(min);
        } else {
            zzenVar.zzH(bArr, this.zzd, min);
        }
        int i11 = this.zzd + min;
        this.zzd = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zza(zzen zzenVar, int i10) throws zzaz {
        int i11;
        int i12;
        boolean z10;
        int i13;
        zzen zzenVar2;
        int i14;
        int i15;
        int i16;
        int i17;
        long j10;
        int i18;
        boolean z11;
        zzen zzenVar3 = zzenVar;
        zzdd.zzb(this.zze);
        int i19 = -1;
        int i20 = 2;
        boolean z12 = 0;
        int i21 = 1;
        if ((i10 & 1) != 0) {
            int i22 = this.zzc;
            if (i22 != 0 && i22 != 1) {
                if (i22 != 2) {
                    int i23 = this.zzj;
                    if (i23 != -1) {
                        zzea.zzf("PesReader", "Unexpected start indicator: expected " + i23 + " more bytes");
                    }
                    if (zzenVar.zzd() == 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    this.zza.zzc(z11);
                } else {
                    zzea.zzf("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            zze(1);
        }
        int i24 = i10;
        while (zzenVar.zza() > 0) {
            int i25 = this.zzc;
            if (i25 != 0) {
                if (i25 != i21) {
                    if (i25 != i20) {
                        int zza = zzenVar.zza();
                        int i26 = this.zzj;
                        if (i26 == i19) {
                            i16 = z12;
                        } else {
                            i16 = zza - i26;
                        }
                        if (i16 > 0) {
                            zza -= i16;
                            zzenVar3.zzK(zzenVar.zzc() + zza);
                        }
                        zzamz zzamzVar = this.zza;
                        zzamzVar.zza(zzenVar3);
                        int i27 = this.zzj;
                        if (i27 != i19) {
                            int i28 = i27 - zza;
                            this.zzj = i28;
                            if (i28 == 0) {
                                zzamzVar.zzc(z12);
                                zze(i21);
                            }
                        }
                        i11 = i24;
                        i12 = i20;
                        z10 = z12;
                        i13 = i21;
                        zzenVar2 = zzenVar3;
                        i14 = i19;
                    } else {
                        int min = Math.min(10, this.zzi);
                        zzem zzemVar = this.zzb;
                        if (zzf(zzenVar3, zzemVar.zza, min) && zzf(zzenVar3, null, this.zzi)) {
                            zzemVar.zzl(z12);
                            if (this.zzf) {
                                zzemVar.zzn(4);
                                long zzd = zzemVar.zzd(3);
                                zzemVar.zzn(i21);
                                int zzd2 = zzemVar.zzd(15) << 15;
                                zzemVar.zzn(i21);
                                long zzd3 = zzemVar.zzd(15);
                                zzemVar.zzn(i21);
                                if (!this.zzh && this.zzg) {
                                    zzemVar.zzn(4);
                                    zzemVar.zzn(i21);
                                    zzemVar.zzn(i21);
                                    i17 = i24;
                                    long zzd4 = zzemVar.zzd(15);
                                    zzemVar.zzn(i21);
                                    this.zze.zzb(zzd4 | (zzemVar.zzd(15) << 15) | (zzemVar.zzd(3) << 30));
                                    this.zzh = true;
                                } else {
                                    i17 = i24;
                                }
                                j10 = this.zze.zzb((zzd << 30) | zzd2 | zzd3);
                            } else {
                                i17 = i24;
                                j10 = -9223372036854775807L;
                            }
                            if (true != this.zzk) {
                                i18 = 0;
                            } else {
                                i18 = 4;
                            }
                            int i29 = i17 | i18;
                            this.zza.zzd(j10, i29);
                            zze(3);
                            zzenVar3 = zzenVar;
                            i24 = i29;
                            i19 = -1;
                            i20 = 2;
                            z12 = 0;
                            i21 = 1;
                        } else {
                            i11 = i24;
                            i14 = i19;
                            i12 = i20;
                            z10 = z12;
                            i13 = i21;
                            zzenVar2 = zzenVar;
                        }
                    }
                } else {
                    i11 = i24;
                    zzem zzemVar2 = this.zzb;
                    zzenVar2 = zzenVar;
                    if (zzf(zzenVar2, zzemVar2.zza, 9)) {
                        z10 = false;
                        zzemVar2.zzl(0);
                        int zzd5 = zzemVar2.zzd(24);
                        i13 = 1;
                        if (zzd5 != 1) {
                            zzea.zzf("PesReader", "Unexpected start code prefix: " + zzd5);
                            i14 = -1;
                            this.zzj = -1;
                            i15 = 0;
                            i12 = 2;
                        } else {
                            zzemVar2.zzn(8);
                            int zzd6 = zzemVar2.zzd(16);
                            zzemVar2.zzn(5);
                            this.zzk = zzemVar2.zzp();
                            i12 = 2;
                            zzemVar2.zzn(2);
                            this.zzf = zzemVar2.zzp();
                            this.zzg = zzemVar2.zzp();
                            zzemVar2.zzn(6);
                            int zzd7 = zzemVar2.zzd(8);
                            this.zzi = zzd7;
                            if (zzd6 == 0) {
                                this.zzj = -1;
                                i14 = -1;
                            } else {
                                int i30 = (zzd6 - 3) - zzd7;
                                this.zzj = i30;
                                if (i30 < 0) {
                                    zzea.zzf("PesReader", "Found negative packet payload size: " + i30);
                                    i14 = -1;
                                    this.zzj = -1;
                                } else {
                                    i14 = -1;
                                }
                            }
                            i15 = 2;
                        }
                        zze(i15);
                    } else {
                        i14 = -1;
                        z10 = false;
                        i13 = 1;
                        i12 = 2;
                    }
                }
            } else {
                i11 = i24;
                i12 = i20;
                z10 = z12;
                i13 = i21;
                zzenVar2 = zzenVar3;
                i14 = i19;
                zzenVar2.zzM(zzenVar.zza());
            }
            i19 = i14;
            zzenVar3 = zzenVar2;
            i21 = i13;
            i20 = i12;
            z12 = z10;
            i24 = i11;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zzb(zzeu zzeuVar, zzady zzadyVar, zzaon zzaonVar) {
        this.zze = zzeuVar;
        this.zza.zzb(zzadyVar, zzaonVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaoo
    public final void zzc() {
        this.zzc = 0;
        this.zzd = 0;
        this.zzh = false;
        this.zza.zze();
    }

    public final boolean zzd(boolean z10) {
        if (this.zzc == 3 && this.zzj == -1) {
            return true;
        }
        return false;
    }
}
