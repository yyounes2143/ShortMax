package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhgh implements Iterator {
    int zza = 0;
    final /* synthetic */ zzhgi zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhgh(zzhgi zzhgiVar) {
        this.zzb = zzhgiVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.zza;
        zzhgi zzhgiVar = this.zzb;
        if (i10 >= zzhgiVar.zza.size() && !zzhgiVar.zzb.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i10 = this.zza;
        zzhgi zzhgiVar = this.zzb;
        List list = zzhgiVar.zza;
        if (i10 < list.size()) {
            int i11 = this.zza;
            this.zza = i11 + 1;
            return list.get(i11);
        }
        list.add(zzhgiVar.zzb.next());
        return next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
