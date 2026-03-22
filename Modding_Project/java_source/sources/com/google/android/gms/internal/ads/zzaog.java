package com.google.android.gms.internal.ads;

import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaog {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzeu zza = new zzeu(0);
    private long zzf = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private final zzen zzb = new zzen();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaog(int i10) {
    }

    private final int zze(zzadw zzadwVar) {
        byte[] bArr = zzex.zzb;
        int length = bArr.length;
        this.zzb.zzJ(bArr, 0);
        this.zzc = true;
        zzadwVar.zzj();
        return 0;
    }

    public final int zza(zzadw zzadwVar, zzaer zzaerVar, int i10) throws IOException {
        if (i10 <= 0) {
            zze(zzadwVar);
            return 0;
        }
        long j10 = -9223372036854775807L;
        if (!this.zze) {
            long zzd = zzadwVar.zzd();
            int min = (int) Math.min(112800L, zzd);
            long j11 = zzd - min;
            if (zzadwVar.zzf() != j11) {
                zzaerVar.zza = j11;
            } else {
                zzen zzenVar = this.zzb;
                zzenVar.zzI(min);
                zzadwVar.zzj();
                zzadwVar.zzh(zzenVar.zzN(), 0, min);
                int zzc = zzenVar.zzc();
                int zzd2 = zzenVar.zzd();
                int i11 = zzd2 - 188;
                while (true) {
                    if (i11 < zzc) {
                        break;
                    }
                    byte[] zzN = zzenVar.zzN();
                    int i12 = -4;
                    int i13 = 0;
                    while (true) {
                        if (i12 > 4) {
                            break;
                        }
                        int i14 = (i12 * MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION) + i11;
                        if (i14 < zzc || i14 >= zzd2 || zzN[i14] != 71) {
                            i13 = 0;
                        } else {
                            i13++;
                            if (i13 == 5) {
                                long zzb = zzaop.zzb(zzenVar, i11, i10);
                                if (zzb != -9223372036854775807L) {
                                    j10 = zzb;
                                    break;
                                }
                            }
                        }
                        i12++;
                    }
                    i11--;
                }
                this.zzg = j10;
                this.zze = true;
                return 0;
            }
        } else if (this.zzg == -9223372036854775807L) {
            zze(zzadwVar);
            return 0;
        } else if (!this.zzd) {
            int min2 = (int) Math.min(112800L, zzadwVar.zzd());
            if (zzadwVar.zzf() != 0) {
                zzaerVar.zza = 0L;
            } else {
                zzen zzenVar2 = this.zzb;
                zzenVar2.zzI(min2);
                zzadwVar.zzj();
                zzadwVar.zzh(zzenVar2.zzN(), 0, min2);
                int zzc2 = zzenVar2.zzc();
                int zzd3 = zzenVar2.zzd();
                while (true) {
                    if (zzc2 >= zzd3) {
                        break;
                    }
                    if (zzenVar2.zzN()[zzc2] == 71) {
                        long zzb2 = zzaop.zzb(zzenVar2, zzc2, i10);
                        if (zzb2 != -9223372036854775807L) {
                            j10 = zzb2;
                            break;
                        }
                    }
                    zzc2++;
                }
                this.zzf = j10;
                this.zzd = true;
                return 0;
            }
        } else {
            long j12 = this.zzf;
            if (j12 == -9223372036854775807L) {
                zze(zzadwVar);
                return 0;
            }
            zzeu zzeuVar = this.zza;
            this.zzh = zzeuVar.zzc(this.zzg) - zzeuVar.zzb(j12);
            zze(zzadwVar);
            return 0;
        }
        return 1;
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzeu zzc() {
        return this.zza;
    }

    public final boolean zzd() {
        return this.zzc;
    }
}
