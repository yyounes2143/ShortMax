package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzalg {
    private final zzen zza = new zzen();
    private final int[] zzb = new int[256];
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzb(zzalg zzalgVar, zzen zzenVar, int i10) {
        int zzo;
        if (i10 >= 4) {
            zzenVar.zzM(3);
            int i11 = i10 - 4;
            if ((zzenVar.zzm() & 128) != 0) {
                if (i11 >= 7 && (zzo = zzenVar.zzo()) >= 4) {
                    zzalgVar.zzh = zzenVar.zzq();
                    zzalgVar.zzi = zzenVar.zzq();
                    zzalgVar.zza.zzI(zzo - 4);
                    i11 = i10 - 11;
                } else {
                    return;
                }
            }
            zzen zzenVar2 = zzalgVar.zza;
            int zzc = zzenVar2.zzc();
            int zzd = zzenVar2.zzd();
            if (zzc < zzd && i11 > 0) {
                int min = Math.min(i11, zzd - zzc);
                zzenVar.zzH(zzenVar2.zzN(), zzc, min);
                zzenVar2.zzL(zzc + min);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzc(zzalg zzalgVar, zzen zzenVar, int i10) {
        if (i10 < 19) {
            return;
        }
        zzalgVar.zzd = zzenVar.zzq();
        zzalgVar.zze = zzenVar.zzq();
        zzenVar.zzM(11);
        zzalgVar.zzf = zzenVar.zzq();
        zzalgVar.zzg = zzenVar.zzq();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzd(zzalg zzalgVar, zzen zzenVar, int i10) {
        if (i10 % 5 != 2) {
            return;
        }
        zzenVar.zzM(2);
        int[] iArr = zzalgVar.zzb;
        Arrays.fill(iArr, 0);
        int i11 = i10 / 5;
        for (int i12 = 0; i12 < i11; i12++) {
            int zzm = zzenVar.zzm();
            int zzm2 = zzenVar.zzm();
            int zzm3 = zzenVar.zzm();
            int zzm4 = zzenVar.zzm();
            double d10 = zzm2;
            int zzm5 = zzenVar.zzm() << 24;
            String str = zzex.zza;
            double d11 = zzm3 - 128;
            double d12 = zzm4 - 128;
            iArr[zzm] = (Math.max(0, Math.min((int) (d10 + (1.402d * d11)), 255)) << 16) | zzm5 | (Math.max(0, Math.min((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 255)) << 8) | Math.max(0, Math.min((int) (d10 + (d12 * 1.772d)), 255));
        }
        zzalgVar.zzc = true;
    }

    @Nullable
    public final zzcu zza() {
        int i10;
        int i11;
        if (this.zzd != 0 && this.zze != 0 && this.zzh != 0 && this.zzi != 0) {
            zzen zzenVar = this.zza;
            if (zzenVar.zzd() != 0 && zzenVar.zzc() == zzenVar.zzd() && this.zzc) {
                zzenVar.zzL(0);
                int i12 = this.zzh * this.zzi;
                int[] iArr = new int[i12];
                int i13 = 0;
                while (i13 < i12) {
                    int zzm = zzenVar.zzm();
                    if (zzm != 0) {
                        i10 = i13 + 1;
                        iArr[i13] = this.zzb[zzm];
                    } else {
                        int zzm2 = zzenVar.zzm();
                        if (zzm2 != 0) {
                            int i14 = zzm2 & 63;
                            if ((zzm2 & 64) != 0) {
                                i14 = (i14 << 8) | zzenVar.zzm();
                            }
                            if ((zzm2 & 128) == 0) {
                                i11 = this.zzb[0];
                            } else {
                                i11 = this.zzb[zzenVar.zzm()];
                            }
                            i10 = i14 + i13;
                            Arrays.fill(iArr, i13, i10, i11);
                        }
                    }
                    i13 = i10;
                }
                Bitmap createBitmap = Bitmap.createBitmap(iArr, this.zzh, this.zzi, Bitmap.Config.ARGB_8888);
                zzcs zzcsVar = new zzcs();
                zzcsVar.zzc(createBitmap);
                zzcsVar.zzh(this.zzf / this.zzd);
                zzcsVar.zzi(0);
                zzcsVar.zze(this.zzg / this.zze, 0);
                zzcsVar.zzf(0);
                zzcsVar.zzk(this.zzh / this.zzd);
                zzcsVar.zzd(this.zzi / this.zze);
                return zzcsVar.zzq();
            }
            return null;
        }
        return null;
    }

    public final void zze() {
        this.zzd = 0;
        this.zze = 0;
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = 0;
        this.zzi = 0;
        this.zza.zzI(0);
        this.zzc = false;
    }
}
