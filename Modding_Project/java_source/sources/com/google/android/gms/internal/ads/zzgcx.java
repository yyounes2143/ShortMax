package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
abstract class zzgcx extends zzgcn {
    private List zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcx(zzfyl zzfylVar, boolean z10) {
        super(zzfylVar, z10, true);
        List zzb;
        if (zzfylVar.isEmpty()) {
            zzb = Collections.emptyList();
        } else {
            zzb = zzfzg.zzb(zzfylVar.size());
        }
        for (int i10 = 0; i10 < zzfylVar.size(); i10++) {
            zzb.add(null);
        }
        this.zza = zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzgcn
    public final void zzA(int i10) {
        super.zzA(i10);
        this.zza = null;
    }

    abstract Object zzD(List list);

    @Override // com.google.android.gms.internal.ads.zzgcn
    final void zzx(int i10, Object obj) {
        List list = this.zza;
        if (list != null) {
            list.set(i10, new zzgcw(obj));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcn
    final void zzy() {
        List list = this.zza;
        if (list != null) {
            zzc(zzD(list));
        }
    }
}
