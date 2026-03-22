package com.google.android.gms.internal.ads;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzanu implements zzadf {
    private final zzeu zza;
    private final zzen zzb = new zzen();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzanu(zzeu zzeuVar, zzanv zzanvVar) {
        this.zza = zzeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final zzade zza(zzadw zzadwVar, long j10) throws IOException {
        int zzh;
        long j11;
        long zzf = zzadwVar.zzf();
        int min = (int) Math.min(20000L, zzadwVar.zzd() - zzf);
        zzen zzenVar = this.zzb;
        zzenVar.zzI(min);
        zzadwVar.zzh(zzenVar.zzN(), 0, min);
        int i10 = -1;
        int i11 = -1;
        long j12 = -9223372036854775807L;
        while (zzenVar.zza() >= 4) {
            if (zzanw.zzh(zzenVar.zzN(), zzenVar.zzc()) != 442) {
                zzenVar.zzM(1);
            } else {
                zzenVar.zzM(4);
                long zzc = zzanx.zzc(zzenVar);
                if (zzc != -9223372036854775807L) {
                    long zzb = this.zza.zzb(zzc);
                    if (zzb > j10) {
                        if (j12 == -9223372036854775807L) {
                            return zzade.zzd(zzb, zzf);
                        }
                        j11 = i11;
                    } else if (100000 + zzb > j10) {
                        j11 = zzenVar.zzc();
                    } else {
                        i11 = zzenVar.zzc();
                        j12 = zzb;
                    }
                    return zzade.zze(zzf + j11);
                }
                int zzd = zzenVar.zzd();
                if (zzenVar.zza() < 10) {
                    zzenVar.zzL(zzd);
                } else {
                    zzenVar.zzM(9);
                    int zzm = zzenVar.zzm() & 7;
                    if (zzenVar.zza() < zzm) {
                        zzenVar.zzL(zzd);
                    } else {
                        zzenVar.zzM(zzm);
                        if (zzenVar.zza() < 4) {
                            zzenVar.zzL(zzd);
                        } else {
                            if (zzanw.zzh(zzenVar.zzN(), zzenVar.zzc()) == 443) {
                                zzenVar.zzM(4);
                                int zzq = zzenVar.zzq();
                                if (zzenVar.zza() < zzq) {
                                    zzenVar.zzL(zzd);
                                } else {
                                    zzenVar.zzM(zzq);
                                }
                            }
                            while (true) {
                                if (zzenVar.zza() < 4 || (zzh = zzanw.zzh(zzenVar.zzN(), zzenVar.zzc())) == 442 || zzh == 441 || (zzh >>> 8) != 1) {
                                    break;
                                }
                                zzenVar.zzM(4);
                                if (zzenVar.zza() < 2) {
                                    zzenVar.zzL(zzd);
                                    break;
                                }
                                zzenVar.zzL(Math.min(zzenVar.zzd(), zzenVar.zzc() + zzenVar.zzq()));
                            }
                        }
                    }
                }
                i10 = zzenVar.zzc();
            }
        }
        if (j12 != -9223372036854775807L) {
            return zzade.zzf(j12, zzf + i10);
        }
        return zzade.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final void zzb() {
        byte[] bArr = zzex.zzb;
        int length = bArr.length;
        this.zzb.zzJ(bArr, 0);
    }
}
