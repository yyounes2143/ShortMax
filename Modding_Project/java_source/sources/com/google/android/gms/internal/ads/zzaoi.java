package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaoi implements zzaoa {
    final /* synthetic */ zzaoj zza;
    private final zzem zzb;
    private final SparseArray zzc;
    private final SparseIntArray zzd;
    private final int zze;

    public zzaoi(zzaoj zzaojVar, int i10) {
        Objects.requireNonNull(zzaojVar);
        this.zza = zzaojVar;
        this.zzb = new zzem(new byte[5], 5);
        this.zzc = new SparseArray();
        this.zzd = new SparseIntArray();
        this.zze = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza(zzen zzenVar) {
        List list;
        SparseArray sparseArray;
        int i10;
        zzady zzadyVar;
        SparseBooleanArray sparseBooleanArray;
        SparseBooleanArray sparseBooleanArray2;
        zzeu zzeuVar;
        int i11;
        zzady zzadyVar2;
        SparseArray sparseArray2;
        SparseBooleanArray sparseBooleanArray3;
        zzaom zzaomVar;
        zzeu zzeuVar2;
        int i12;
        zzem zzemVar;
        int i13;
        if (zzenVar.zzm() == 2) {
            zzaoj zzaojVar = this.zza;
            list = zzaojVar.zzb;
            zzeu zzeuVar3 = (zzeu) list.get(0);
            if ((zzenVar.zzm() & 128) != 0) {
                zzenVar.zzM(1);
                int zzq = zzenVar.zzq();
                int i14 = 3;
                zzenVar.zzM(3);
                zzem zzemVar2 = this.zzb;
                zzenVar.zzG(zzemVar2, 2);
                zzemVar2.zzn(3);
                int i15 = 13;
                zzaojVar.zzr = zzemVar2.zzd(13);
                zzenVar.zzG(zzemVar2, 2);
                int i16 = 4;
                zzemVar2.zzn(4);
                int i17 = 12;
                zzenVar.zzM(zzemVar2.zzd(12));
                SparseArray sparseArray3 = this.zzc;
                sparseArray3.clear();
                SparseIntArray sparseIntArray = this.zzd;
                sparseIntArray.clear();
                int zza = zzenVar.zza();
                while (zza > 0) {
                    int i18 = 5;
                    zzenVar.zzG(zzemVar2, 5);
                    int zzd = zzemVar2.zzd(8);
                    zzemVar2.zzn(i14);
                    int zzd2 = zzemVar2.zzd(i15);
                    zzemVar2.zzn(i16);
                    int zzd3 = zzemVar2.zzd(i17);
                    int zzc = zzenVar.zzc();
                    int i19 = zzc + zzd3;
                    String str = null;
                    ArrayList arrayList = null;
                    int i20 = -1;
                    int i21 = 0;
                    while (zzenVar.zzc() < i19) {
                        int zzm = zzenVar.zzm();
                        int zzc2 = zzenVar.zzc() + zzenVar.zzm();
                        if (zzc2 > i19) {
                            break;
                        }
                        if (zzm == i18) {
                            long zzu = zzenVar.zzu();
                            if (zzu != 1094921523) {
                                if (zzu != 1161904947) {
                                    if (zzu != 1094921524) {
                                        if (zzu == 1212503619) {
                                            i13 = 36;
                                            i20 = i13;
                                        }
                                        zzeuVar2 = zzeuVar3;
                                        i12 = zzq;
                                        zzemVar = zzemVar2;
                                    }
                                    zzeuVar2 = zzeuVar3;
                                    i12 = zzq;
                                    zzemVar = zzemVar2;
                                    i20 = 172;
                                }
                                zzeuVar2 = zzeuVar3;
                                i12 = zzq;
                                zzemVar = zzemVar2;
                                i20 = 135;
                            }
                            zzeuVar2 = zzeuVar3;
                            i12 = zzq;
                            zzemVar = zzemVar2;
                            i20 = 129;
                        } else {
                            if (zzm != 106) {
                                if (zzm != 122) {
                                    if (zzm == 127) {
                                        int zzm2 = zzenVar.zzm();
                                        if (zzm2 != 21) {
                                            if (zzm2 == 14) {
                                                i13 = 136;
                                            } else {
                                                if (zzm2 == 33) {
                                                    i13 = 139;
                                                }
                                                zzeuVar2 = zzeuVar3;
                                                i12 = zzq;
                                                zzemVar = zzemVar2;
                                            }
                                            i20 = i13;
                                            zzeuVar2 = zzeuVar3;
                                            i12 = zzq;
                                            zzemVar = zzemVar2;
                                        }
                                        zzeuVar2 = zzeuVar3;
                                        i12 = zzq;
                                        zzemVar = zzemVar2;
                                        i20 = 172;
                                    } else if (zzm == 123) {
                                        i13 = 138;
                                        i20 = i13;
                                        zzeuVar2 = zzeuVar3;
                                        i12 = zzq;
                                        zzemVar = zzemVar2;
                                    } else if (zzm == 10) {
                                        String trim = zzenVar.zzB(3, StandardCharsets.UTF_8).trim();
                                        i21 = zzenVar.zzm();
                                        str = trim;
                                        zzeuVar2 = zzeuVar3;
                                        i12 = zzq;
                                        zzemVar = zzemVar2;
                                    } else {
                                        if (zzm == 89) {
                                            ArrayList arrayList2 = new ArrayList();
                                            while (zzenVar.zzc() < zzc2) {
                                                zzem zzemVar3 = zzemVar2;
                                                String trim2 = zzenVar.zzB(3, StandardCharsets.UTF_8).trim();
                                                int zzm3 = zzenVar.zzm();
                                                zzeu zzeuVar4 = zzeuVar3;
                                                byte[] bArr = new byte[4];
                                                zzenVar.zzH(bArr, 0, 4);
                                                arrayList2.add(new zzaok(trim2, zzm3, bArr));
                                                zzeuVar3 = zzeuVar4;
                                                zzemVar2 = zzemVar3;
                                                zzq = zzq;
                                            }
                                            zzeuVar2 = zzeuVar3;
                                            i12 = zzq;
                                            zzemVar = zzemVar2;
                                            arrayList = arrayList2;
                                            i20 = 89;
                                        } else {
                                            zzeuVar2 = zzeuVar3;
                                            i12 = zzq;
                                            zzemVar = zzemVar2;
                                            if (zzm == 111) {
                                                i20 = 257;
                                            }
                                        }
                                        zzenVar.zzM(zzc2 - zzenVar.zzc());
                                        zzeuVar3 = zzeuVar2;
                                        zzemVar2 = zzemVar;
                                        zzq = i12;
                                        i18 = 5;
                                    }
                                }
                                zzeuVar2 = zzeuVar3;
                                i12 = zzq;
                                zzemVar = zzemVar2;
                                i20 = 135;
                            }
                            zzeuVar2 = zzeuVar3;
                            i12 = zzq;
                            zzemVar = zzemVar2;
                            i20 = 129;
                        }
                        zzenVar.zzM(zzc2 - zzenVar.zzc());
                        zzeuVar3 = zzeuVar2;
                        zzemVar2 = zzemVar;
                        zzq = i12;
                        i18 = 5;
                    }
                    zzeu zzeuVar5 = zzeuVar3;
                    int i22 = zzq;
                    zzem zzemVar4 = zzemVar2;
                    zzenVar.zzL(i19);
                    zzaol zzaolVar = new zzaol(i20, str, i21, arrayList, Arrays.copyOfRange(zzenVar.zzN(), zzc, i19));
                    if (zzd == 6 || zzd == 5) {
                        zzd = zzaolVar.zza;
                    }
                    zza -= zzd3 + 5;
                    sparseBooleanArray3 = zzaojVar.zzh;
                    if (!sparseBooleanArray3.get(zzd2)) {
                        zzaomVar = zzaojVar.zze;
                        zzaoo zzb = zzaomVar.zzb(zzd, zzaolVar);
                        sparseIntArray.put(zzd2, zzd2);
                        sparseArray3.put(zzd2, zzb);
                    }
                    i16 = 4;
                    zzeuVar3 = zzeuVar5;
                    zzemVar2 = zzemVar4;
                    zzq = i22;
                    i14 = 3;
                    i15 = 13;
                    i17 = 12;
                }
                zzeu zzeuVar6 = zzeuVar3;
                int i23 = zzq;
                int size = sparseIntArray.size();
                int i24 = 0;
                while (i24 < size) {
                    int keyAt = sparseIntArray.keyAt(i24);
                    int valueAt = sparseIntArray.valueAt(i24);
                    sparseBooleanArray = zzaojVar.zzh;
                    sparseBooleanArray.put(keyAt, true);
                    sparseBooleanArray2 = zzaojVar.zzi;
                    sparseBooleanArray2.put(valueAt, true);
                    zzaoo zzaooVar = (zzaoo) sparseArray3.valueAt(i24);
                    if (zzaooVar != null) {
                        zzadyVar2 = zzaojVar.zzl;
                        i11 = i23;
                        zzaon zzaonVar = new zzaon(i11, keyAt, 8192);
                        zzeuVar = zzeuVar6;
                        zzaooVar.zzb(zzeuVar, zzadyVar2, zzaonVar);
                        sparseArray2 = zzaojVar.zzg;
                        sparseArray2.put(valueAt, zzaooVar);
                    } else {
                        zzeuVar = zzeuVar6;
                        i11 = i23;
                    }
                    i24++;
                    zzeuVar6 = zzeuVar;
                    i23 = i11;
                }
                int i25 = this.zze;
                sparseArray = zzaojVar.zzg;
                sparseArray.remove(i25);
                zzaojVar.zzm = 0;
                i10 = zzaojVar.zzm;
                if (i10 == 0) {
                    zzadyVar = zzaojVar.zzl;
                    zzadyVar.zzG();
                    zzaojVar.zzn = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zzb(zzeu zzeuVar, zzady zzadyVar, zzaon zzaonVar) {
    }
}
