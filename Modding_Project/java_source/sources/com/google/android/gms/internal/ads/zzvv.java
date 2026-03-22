package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzvv implements zzvf, zzve {
    private final zzvf[] zza;
    private final boolean[] zzb;
    @Nullable
    private zzve zzf;
    @Nullable
    private zzxk zzg;
    private final ArrayList zzd = new ArrayList();
    private final HashMap zze = new HashMap();
    private zzxb zzi = new zzur(zzfyq.zzn(), zzfyq.zzn());
    private final IdentityHashMap zzc = new IdentityHashMap();
    private zzvf[] zzh = new zzvf[0];

    public zzvv(zzus zzusVar, long[] jArr, zzvf... zzvfVarArr) {
        this.zza = zzvfVarArr;
        this.zzb = new boolean[zzvfVarArr.length];
        for (int i10 = 0; i10 < zzvfVarArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                this.zzb[i10] = true;
                this.zza[i10] = new zzxh(zzvfVarArr[i10], j10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zza(long j10, zzmi zzmiVar) {
        zzvf zzvfVar;
        zzvf[] zzvfVarArr = this.zzh;
        if (zzvfVarArr.length > 0) {
            zzvfVar = zzvfVarArr[0];
        } else {
            zzvfVar = this.zza[0];
        }
        return zzvfVar.zza(j10, zzmiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzb() {
        return this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final long zzc() {
        return this.zzi.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzd() {
        zzvf[] zzvfVarArr;
        zzvf[] zzvfVarArr2;
        long j10 = -9223372036854775807L;
        for (zzvf zzvfVar : this.zzh) {
            long zzd = zzvfVar.zzd();
            if (zzd != -9223372036854775807L) {
                if (j10 == -9223372036854775807L) {
                    for (zzvf zzvfVar2 : this.zzh) {
                        if (zzvfVar2 == zzvfVar) {
                            break;
                        } else if (zzvfVar2.zze(zzd) != zzd) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j10 = zzd;
                } else if (zzd != j10) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j10 != -9223372036854775807L && zzvfVar.zze(j10) != j10) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zze(long j10) {
        long zze = this.zzh[0].zze(j10);
        int i10 = 1;
        while (true) {
            zzvf[] zzvfVarArr = this.zzh;
            if (i10 < zzvfVarArr.length) {
                if (zzvfVarArr[i10].zze(zze) == zze) {
                    i10++;
                } else {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else {
                return zze;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final long zzf(zzyw[] zzywVarArr, boolean[] zArr, zzwz[] zzwzVarArr, boolean[] zArr2, long j10) {
        int length;
        zzwz zzwzVar;
        ArrayList arrayList;
        Integer num;
        int intValue;
        int length2 = zzywVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            length = zzywVarArr.length;
            if (i11 >= length) {
                break;
            }
            zzwz zzwzVar2 = zzwzVarArr[i11];
            if (zzwzVar2 == null) {
                num = null;
            } else {
                num = (Integer) this.zzc.get(zzwzVar2);
            }
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            iArr[i11] = intValue;
            zzyw zzywVar = zzywVarArr[i11];
            if (zzywVar != null) {
                String str = zzywVar.zzc().zzb;
                iArr2[i11] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i11] = -1;
            }
            i11++;
        }
        IdentityHashMap identityHashMap = this.zzc;
        identityHashMap.clear();
        zzvf[] zzvfVarArr = this.zza;
        zzwz[] zzwzVarArr2 = new zzwz[length];
        zzwz[] zzwzVarArr3 = new zzwz[length];
        zzyw[] zzywVarArr2 = new zzyw[length];
        ArrayList arrayList2 = new ArrayList(zzvfVarArr.length);
        long j11 = j10;
        int i12 = 0;
        while (i12 < zzvfVarArr.length) {
            int i13 = i10;
            while (i13 < zzywVarArr.length) {
                if (iArr[i13] == i12) {
                    zzwzVar = zzwzVarArr[i13];
                } else {
                    zzwzVar = null;
                }
                zzwzVarArr3[i13] = zzwzVar;
                if (iArr2[i13] == i12) {
                    zzyw zzywVar2 = zzywVarArr[i13];
                    zzywVar2.getClass();
                    arrayList = arrayList2;
                    zzbm zzbmVar = (zzbm) this.zze.get(zzywVar2.zzc());
                    zzbmVar.getClass();
                    zzywVarArr2[i13] = new zzvu(zzywVar2, zzbmVar);
                } else {
                    arrayList = arrayList2;
                    zzywVarArr2[i13] = null;
                }
                i13++;
                arrayList2 = arrayList;
            }
            ArrayList arrayList3 = arrayList2;
            int i14 = i12;
            zzyw[] zzywVarArr3 = zzywVarArr2;
            zzwz[] zzwzVarArr4 = zzwzVarArr3;
            long zzf = zzvfVarArr[i12].zzf(zzywVarArr2, zArr, zzwzVarArr3, zArr2, j11);
            if (i14 == 0) {
                j11 = zzf;
            } else if (zzf != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i15 = 0; i15 < zzywVarArr.length; i15++) {
                boolean z11 = true;
                if (iArr2[i15] == i14) {
                    zzwz zzwzVar3 = zzwzVarArr4[i15];
                    zzwzVar3.getClass();
                    zzwzVarArr2[i15] = zzwzVar3;
                    identityHashMap.put(zzwzVar3, Integer.valueOf(i14));
                    z10 = true;
                } else if (iArr[i15] == i14) {
                    if (zzwzVarArr4[i15] != null) {
                        z11 = false;
                    }
                    zzdd.zzf(z11);
                }
            }
            if (z10) {
                arrayList3.add(zzvfVarArr[i14]);
            }
            i12 = i14 + 1;
            arrayList2 = arrayList3;
            zzywVarArr2 = zzywVarArr3;
            zzwzVarArr3 = zzwzVarArr4;
            i10 = 0;
        }
        int i16 = i10;
        ArrayList arrayList4 = arrayList2;
        System.arraycopy(zzwzVarArr2, i16, zzwzVarArr, i16, length);
        this.zzh = (zzvf[]) arrayList4.toArray(new zzvf[i16]);
        this.zzi = new zzur(arrayList4, zzfzg.zzc(arrayList4, new zzfve() { // from class: com.google.android.gms.internal.ads.zzvt
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                return ((zzvf) obj).zzg().zzc();
            }
        }));
        return j11;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final zzxk zzg() {
        zzxk zzxkVar = this.zzg;
        zzxkVar.getClass();
        return zzxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzh(long j10, boolean z10) {
        for (zzvf zzvfVar : this.zzh) {
            zzvfVar.zzh(j10, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzi() throws IOException {
        int i10 = 0;
        while (true) {
            zzvf[] zzvfVarArr = this.zza;
            if (i10 < zzvfVarArr.length) {
                zzvfVarArr[i10].zzi();
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final /* bridge */ /* synthetic */ void zzj(zzxb zzxbVar) {
        zzvf zzvfVar = (zzvf) zzxbVar;
        zzve zzveVar = this.zzf;
        zzveVar.getClass();
        zzveVar.zzj(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzk(zzve zzveVar, long j10) {
        this.zzf = zzveVar;
        ArrayList arrayList = this.zzd;
        zzvf[] zzvfVarArr = this.zza;
        Collections.addAll(arrayList, zzvfVarArr);
        for (zzvf zzvfVar : zzvfVarArr) {
            zzvfVar.zzk(this, j10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzl(zzvf zzvfVar) {
        ArrayList arrayList = this.zzd;
        arrayList.remove(zzvfVar);
        if (!arrayList.isEmpty()) {
            return;
        }
        zzvf[] zzvfVarArr = this.zza;
        int i10 = 0;
        for (zzvf zzvfVar2 : zzvfVarArr) {
            i10 += zzvfVar2.zzg().zzb;
        }
        zzbm[] zzbmVarArr = new zzbm[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < zzvfVarArr.length; i12++) {
            zzxk zzg = zzvfVarArr[i12].zzg();
            int i13 = zzg.zzb;
            int i14 = 0;
            while (i14 < i13) {
                zzbm zzb = zzg.zzb(i14);
                int i15 = zzb.zza;
                zzz[] zzzVarArr = new zzz[i15];
                for (int i16 = 0; i16 < i15; i16++) {
                    zzz zzb2 = zzb.zzb(i16);
                    zzx zzb3 = zzb2.zzb();
                    String str = zzb2.zza;
                    if (str == null) {
                        str = "";
                    }
                    zzb3.zzS(i12 + ":" + str);
                    zzzVarArr[i16] = zzb3.zzan();
                }
                zzbm zzbmVar = new zzbm(i12 + ":" + zzb.zzb, zzzVarArr);
                this.zze.put(zzbmVar, zzb);
                zzbmVarArr[i11] = zzbmVar;
                i14++;
                i11++;
            }
        }
        this.zzg = new zzxk(zzbmVarArr);
        zzve zzveVar = this.zzf;
        zzveVar.getClass();
        zzveVar.zzl(this);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final void zzm(long j10) {
        this.zzi.zzm(j10);
    }

    public final zzvf zzn(int i10) {
        if (this.zzb[i10]) {
            return ((zzxh) this.zza[i10]).zzn();
        }
        return this.zza[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzo(zzla zzlaVar) {
        ArrayList arrayList = this.zzd;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((zzvf) arrayList.get(i10)).zzo(zzlaVar);
            }
            return false;
        }
        return this.zzi.zzo(zzlaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzxb
    public final boolean zzp() {
        return this.zzi.zzp();
    }
}
