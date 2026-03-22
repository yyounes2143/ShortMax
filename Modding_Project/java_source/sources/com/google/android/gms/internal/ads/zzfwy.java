package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzfwy extends zzfzk {
    final /* synthetic */ zzfxi zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwy(zzfxi zzfxiVar, Map map) {
        super(map);
        Objects.requireNonNull(zzfxiVar);
        this.zza = zzfxiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzk, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        zzfza.zzb(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.zzd.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this != obj && !this.zzd.keySet().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzd.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfzk, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfwx(this, this.zzd.entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzfzk, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i10;
        Collection collection = (Collection) this.zzd.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfxi zzfxiVar = this.zza;
            i10 = zzfxiVar.zzb;
            zzfxiVar.zzb = i10 - size;
            if (size > 0) {
                return true;
            }
            return false;
        }
        return false;
    }
}
