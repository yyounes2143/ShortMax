package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgcv extends zzgcx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgcv(zzfyl zzfylVar, boolean z10) {
        super(zzfylVar, z10);
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzgcx
    public final /* bridge */ /* synthetic */ Object zzD(List list) {
        Object obj;
        ArrayList zzb = zzfzg.zzb(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgcw zzgcwVar = (zzgcw) it.next();
            if (zzgcwVar != null) {
                obj = zzgcwVar.zza;
            } else {
                obj = null;
            }
            zzb.add(obj);
        }
        return Collections.unmodifiableList(zzb);
    }
}
