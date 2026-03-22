package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzvz extends zzup {
    private static final zzap zza;
    private final zzvj[] zzb;
    private final List zzc;
    private final zzbl[] zzd;
    private final ArrayList zze;
    private int zzf = -1;
    private long[][] zzg;
    @Nullable
    private zzvw zzh;
    private final zzus zzi;

    static {
        zzad zzadVar = new zzad();
        zzadVar.zza("MergingMediaSource");
        zza = zzadVar.zzc();
    }

    public zzvz(boolean z10, boolean z11, zzus zzusVar, zzvj... zzvjVarArr) {
        this.zzb = zzvjVarArr;
        this.zzi = zzusVar;
        this.zze = new ArrayList(Arrays.asList(zzvjVarArr));
        this.zzc = new ArrayList(zzvjVarArr.length);
        int i10 = 0;
        while (true) {
            int length = zzvjVarArr.length;
            if (i10 < length) {
                this.zzc.add(new ArrayList());
                i10++;
            } else {
                this.zzd = new zzbl[length];
                this.zzg = new long[0];
                new HashMap();
                zzfzw.zzb(8).zzb(2).zza();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzup
    public final /* bridge */ /* synthetic */ void zzA(Object obj, zzvj zzvjVar, zzbl zzblVar) {
        int i10;
        Integer num = (Integer) obj;
        if (this.zzh == null) {
            if (this.zzf == -1) {
                i10 = zzblVar.zzb();
                this.zzf = i10;
            } else {
                int zzb = zzblVar.zzb();
                int i11 = this.zzf;
                if (zzb != i11) {
                    this.zzh = new zzvw(0);
                    return;
                }
                i10 = i11;
            }
            if (this.zzg.length == 0) {
                this.zzg = (long[][]) Array.newInstance(Long.TYPE, i10, this.zzd.length);
            }
            ArrayList arrayList = this.zze;
            arrayList.remove(zzvjVar);
            zzbl[] zzblVarArr = this.zzd;
            zzblVarArr[num.intValue()] = zzblVar;
            if (arrayList.isEmpty()) {
                zzo(zzblVarArr[0]);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    public final void zzG(zzvf zzvfVar) {
        zzvf zzvfVar2;
        zzvv zzvvVar = (zzvv) zzvfVar;
        int i10 = 0;
        while (true) {
            zzvj[] zzvjVarArr = this.zzb;
            if (i10 < zzvjVarArr.length) {
                List list = (List) this.zzc.get(i10);
                zzvf zzn = zzvvVar.zzn(i10);
                int i11 = 0;
                while (true) {
                    if (i11 < list.size()) {
                        zzvfVar2 = ((zzvx) list.get(i11)).zzb;
                        if (zzvfVar2.equals(zzn)) {
                            list.remove(i11);
                            break;
                        }
                        i11++;
                    }
                }
                zzvjVarArr[i10].zzG(zzvvVar.zzn(i10));
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    public final zzvf zzI(zzvh zzvhVar, zzzm zzzmVar, long j10) {
        zzbl[] zzblVarArr = this.zzd;
        zzvj[] zzvjVarArr = this.zzb;
        int length = zzvjVarArr.length;
        zzvf[] zzvfVarArr = new zzvf[length];
        int zza2 = zzblVarArr[0].zza(zzvhVar.zza);
        for (int i10 = 0; i10 < length; i10++) {
            zzvh zza3 = zzvhVar.zza(zzblVarArr[i10].zzf(zza2));
            zzvfVarArr[i10] = zzvjVarArr[i10].zzI(zza3, zzzmVar, j10 - this.zzg[zza2][i10]);
            ((List) this.zzc.get(i10)).add(new zzvx(zza3, zzvfVarArr[i10], null));
        }
        return new zzvv(this.zzi, this.zzg[zza2], zzvfVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    public final zzap zzJ() {
        zzvj[] zzvjVarArr = this.zzb;
        if (zzvjVarArr.length > 0) {
            return zzvjVarArr[0].zzJ();
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzug
    public final void zzn(@Nullable zzhj zzhjVar) {
        super.zzn(zzhjVar);
        int i10 = 0;
        while (true) {
            zzvj[] zzvjVarArr = this.zzb;
            if (i10 < zzvjVarArr.length) {
                zzB(Integer.valueOf(i10), zzvjVarArr[i10]);
                i10++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzug
    public final void zzq() {
        super.zzq();
        Arrays.fill(this.zzd, (Object) null);
        this.zzf = -1;
        this.zzh = null;
        ArrayList arrayList = this.zze;
        arrayList.clear();
        Collections.addAll(arrayList, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzug, com.google.android.gms.internal.ads.zzvj
    public final void zzt(zzap zzapVar) {
        this.zzb[0].zzt(zzapVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzup
    @Nullable
    public final /* bridge */ /* synthetic */ zzvh zzy(Object obj, zzvh zzvhVar) {
        zzvh zzvhVar2;
        zzvh zzvhVar3;
        int intValue = ((Integer) obj).intValue();
        List list = this.zzc;
        List list2 = (List) list.get(intValue);
        for (int i10 = 0; i10 < list2.size(); i10++) {
            zzvhVar2 = ((zzvx) list2.get(i10)).zza;
            if (zzvhVar2.equals(zzvhVar)) {
                zzvhVar3 = ((zzvx) ((List) list.get(0)).get(i10)).zza;
                return zzvhVar3;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzvj
    public final void zzz() throws IOException {
        zzvw zzvwVar = this.zzh;
        if (zzvwVar == null) {
            super.zzz();
            return;
        }
        throw zzvwVar;
    }
}
