package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzfww implements Iterator {
    final Iterator zza;
    Collection zzb;
    Iterator zzc;
    final /* synthetic */ zzfxi zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfww(zzfxi zzfxiVar) {
        Map map;
        Objects.requireNonNull(zzfxiVar);
        this.zzd = zzfxiVar;
        map = zzfxiVar.zza;
        this.zza = map.entrySet().iterator();
        this.zzb = null;
        this.zzc = zzfyy.INSTANCE;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.zza.hasNext() && !this.zzc.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.zzc.hasNext()) {
            Map.Entry entry = (Map.Entry) this.zza.next();
            entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.zzb = collection;
            this.zzc = collection.iterator();
        }
        return this.zzc.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i10;
        this.zzc.remove();
        Collection collection = this.zzb;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.zza.remove();
        }
        zzfxi zzfxiVar = this.zzd;
        i10 = zzfxiVar.zzb;
        zzfxiVar.zzb = i10 - 1;
    }
}
