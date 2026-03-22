package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzly extends zzht {
    public static final /* synthetic */ int zzb = 0;
    private final int zzc;
    private final int zzd;
    private final int[] zze;
    private final int[] zzf;
    private final zzbl[] zzg;
    private final Object[] zzh;
    private final HashMap zzi;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzly(java.util.Collection r7, com.google.android.gms.internal.ads.zzxc r8) {
        /*
            r6 = this;
            int r0 = r7.size()
            com.google.android.gms.internal.ads.zzbl[] r0 = new com.google.android.gms.internal.ads.zzbl[r0]
            java.util.Iterator r1 = r7.iterator()
            r2 = 0
            r3 = r2
        Lc:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L22
            java.lang.Object r4 = r1.next()
            com.google.android.gms.internal.ads.zzlg r4 = (com.google.android.gms.internal.ads.zzlg) r4
            int r5 = r3 + 1
            com.google.android.gms.internal.ads.zzbl r4 = r4.zza()
            r0[r3] = r4
            r3 = r5
            goto Lc
        L22:
            int r1 = r7.size()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.util.Iterator r7 = r7.iterator()
        L2c:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L42
            java.lang.Object r3 = r7.next()
            com.google.android.gms.internal.ads.zzlg r3 = (com.google.android.gms.internal.ads.zzlg) r3
            int r4 = r2 + 1
            java.lang.Object r3 = r3.zzb()
            r1[r2] = r3
            r2 = r4
            goto L2c
        L42:
            r6.<init>(r0, r1, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzly.<init>(java.util.Collection, com.google.android.gms.internal.ads.zzxc):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbl
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzht
    protected final int zzp(Object obj) {
        Integer num = (Integer) this.zzi.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzht
    protected final int zzq(int i10) {
        return zzex.zzc(this.zze, i10 + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzht
    protected final int zzr(int i10) {
        return zzex.zzc(this.zzf, i10 + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzht
    protected final int zzs(int i10) {
        return this.zze[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzht
    protected final int zzt(int i10) {
        return this.zzf[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzht
    protected final zzbl zzu(int i10) {
        return this.zzg[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzht
    protected final Object zzv(int i10) {
        return this.zzh[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List zzw() {
        return Arrays.asList(this.zzg);
    }

    public final zzly zzx(zzxc zzxcVar) {
        zzbl[] zzblVarArr = this.zzg;
        zzbl[] zzblVarArr2 = new zzbl[zzblVarArr.length];
        for (int i10 = 0; i10 < zzblVarArr.length; i10++) {
            zzblVarArr2[i10] = new zzlx(this, zzblVarArr[i10]);
        }
        return new zzly(zzblVarArr2, this.zzh, zzxcVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzly(zzbl[] zzblVarArr, Object[] objArr, zzxc zzxcVar) {
        super(false, zzxcVar);
        int i10 = 0;
        this.zzg = zzblVarArr;
        int length = zzblVarArr.length;
        this.zze = new int[length];
        this.zzf = new int[length];
        this.zzh = objArr;
        this.zzi = new HashMap();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 < zzblVarArr.length) {
            zzbl zzblVar = zzblVarArr[i10];
            this.zzg[i13] = zzblVar;
            this.zzf[i13] = i11;
            this.zze[i13] = i12;
            i11 += zzblVar.zzc();
            i12 += this.zzg[i13].zzb();
            this.zzi.put(objArr[i13], Integer.valueOf(i13));
            i10++;
            i13++;
        }
        this.zzc = i11;
        this.zzd = i12;
    }
}
