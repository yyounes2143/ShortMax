package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzza extends zzzd {
    protected abstract Pair zzd(zzyz zzyzVar, int[][][] iArr, int[] iArr2, zzvh zzvhVar, zzbl zzblVar) throws zzin;

    @Override // com.google.android.gms.internal.ads.zzzd
    public final zzze zzo(zzmd[] zzmdVarArr, zzxk zzxkVar, zzvh zzvhVar, zzbl zzblVar) throws zzin {
        boolean z10;
        List[] listArr;
        boolean z11;
        zzfyq zzn;
        int[] iArr;
        boolean z12;
        int[] iArr2 = new int[3];
        zzbm[][] zzbmVarArr = new zzbm[3];
        int[][][] iArr3 = new int[3][];
        for (int i10 = 0; i10 < 3; i10++) {
            int i11 = zzxkVar.zzb;
            zzbmVarArr[i10] = new zzbm[i11];
            iArr3[i10] = new int[i11];
        }
        int i12 = 2;
        int[] iArr4 = new int[2];
        for (int i13 = 0; i13 < 2; i13++) {
            iArr4[i13] = zzmdVarArr[i13].zze();
        }
        int i14 = 0;
        while (i14 < zzxkVar.zzb) {
            zzbm zzb = zzxkVar.zzb(i14);
            int i15 = zzb.zzc;
            int i16 = i12;
            int i17 = 0;
            int i18 = 0;
            boolean z13 = true;
            while (i17 < i12) {
                zzmd zzmdVar = zzmdVarArr[i17];
                int i19 = 0;
                for (int i20 = 0; i20 < zzb.zza; i20++) {
                    i19 = Math.max(i19, zzmdVar.zzZ(zzb.zzb(i20)) & 7);
                }
                if (iArr2[i17] == 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (i19 <= i18) {
                    if (i19 == i18 && i15 == 5 && !z13 && z12) {
                        i16 = i17;
                        i18 = i19;
                        z13 = true;
                    }
                } else {
                    z13 = z12;
                    i16 = i17;
                    i18 = i19;
                }
                i17++;
                i12 = 2;
            }
            if (i16 == i12) {
                iArr = new int[zzb.zza];
            } else {
                zzmd zzmdVar2 = zzmdVarArr[i16];
                int i21 = zzb.zza;
                int[] iArr5 = new int[i21];
                for (int i22 = 0; i22 < i21; i22++) {
                    iArr5[i22] = zzmdVar2.zzZ(zzb.zzb(i22));
                }
                iArr = iArr5;
            }
            int i23 = iArr2[i16];
            zzbmVarArr[i16][i23] = zzb;
            iArr3[i16][i23] = iArr;
            iArr2[i16] = i23 + 1;
            i14++;
            i12 = 2;
        }
        int i24 = i12;
        boolean z14 = true;
        zzxk[] zzxkVarArr = new zzxk[i24];
        String[] strArr = new String[i24];
        int[] iArr6 = new int[i24];
        int i25 = 0;
        while (i25 < i24) {
            int i26 = iArr2[i25];
            zzxkVarArr[i25] = new zzxk((zzbm[]) zzex.zzQ(zzbmVarArr[i25], i26));
            iArr3[i25] = (int[][]) zzex.zzQ(iArr3[i25], i26);
            strArr[i25] = zzmdVarArr[i25].zzV();
            iArr6[i25] = zzmdVarArr[i25].zzb();
            i25++;
            i24 = 2;
        }
        int i27 = i24;
        zzyz zzyzVar = new zzyz(strArr, iArr6, zzxkVarArr, iArr4, iArr3, new zzxk((zzbm[]) zzex.zzQ(zzbmVarArr[i27], iArr2[i27])));
        Pair zzd = zzd(zzyzVar, iArr3, iArr4, zzvhVar, zzblVar);
        zzzb[] zzzbVarArr = (zzzb[]) zzd.second;
        List[] listArr2 = new List[zzzbVarArr.length];
        for (int i28 = 0; i28 < zzzbVarArr.length; i28++) {
            zzzb zzzbVar = zzzbVarArr[i28];
            if (zzzbVar != null) {
                zzn = zzfyq.zzo(zzzbVar);
            } else {
                zzn = zzfyq.zzn();
            }
            listArr2[i28] = zzn;
        }
        zzfyn zzfynVar = new zzfyn();
        int i29 = 0;
        for (int i30 = 2; i29 < i30; i30 = 2) {
            zzxk zzd2 = zzyzVar.zzd(i29);
            List list = listArr2[i29];
            int i31 = 0;
            while (i31 < zzd2.zzb) {
                zzbm zzb2 = zzd2.zzb(i31);
                if (zzyzVar.zza(i29, i31, false) != 0) {
                    z10 = z14;
                } else {
                    z10 = false;
                }
                int i32 = zzb2.zza;
                int[] iArr7 = new int[i32];
                boolean[] zArr = new boolean[i32];
                int i33 = 0;
                while (i33 < i32) {
                    iArr7[i33] = zzyzVar.zzb(i29, i31, i33) & 7;
                    int i34 = 0;
                    while (true) {
                        if (i34 < list.size()) {
                            zzzb zzzbVar2 = (zzzb) list.get(i34);
                            listArr = listArr2;
                            if (zzzbVar2.zzc().equals(zzb2) && zzzbVar2.zzg(i33) != -1) {
                                z11 = true;
                                break;
                            }
                            i34++;
                            listArr2 = listArr;
                        } else {
                            listArr = listArr2;
                            z11 = false;
                            break;
                        }
                    }
                    zArr[i33] = z11;
                    i33++;
                    listArr2 = listArr;
                }
                zzfynVar.zzf(new zzbs(zzb2, z10, iArr7, zArr));
                i31++;
                z14 = true;
            }
            i29++;
            z14 = true;
        }
        zzxk zze = zzyzVar.zze();
        for (int i35 = 0; i35 < zze.zzb; i35++) {
            zzbm zzb3 = zze.zzb(i35);
            int i36 = zzb3.zza;
            int[] iArr8 = new int[i36];
            Arrays.fill(iArr8, 0);
            zzfynVar.zzf(new zzbs(zzb3, false, iArr8, new boolean[i36]));
        }
        return new zzze((zzme[]) zzd.first, (zzyw[]) zzd.second, new zzbt(zzfynVar.zzi()), zzyzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void zzp(@Nullable Object obj) {
        zzyz zzyzVar = (zzyz) obj;
    }
}
