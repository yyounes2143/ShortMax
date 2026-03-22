package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzfxo extends AbstractCollection {
    final Collection zza;
    final zzfvq zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfxo(Collection collection, zzfvq zzfvqVar) {
        this.zza = collection;
        this.zzb = zzfvqVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzfvp.zze(this.zzb.zza(obj));
        return this.zza.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        for (Object obj : collection) {
            zzfvp.zze(this.zzb.zza(obj));
        }
        return this.zza.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        zzfyw.zzb(this.zza, this.zzb);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (zzfxp.zza(this.zza, obj)) {
            return this.zzb.zza(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        zzfvq zzfvqVar = this.zzb;
        zzfvp.zzc(zzfvqVar, "predicate");
        int i10 = 0;
        for (Object obj : this.zza) {
            if (zzfvqVar.zza(obj)) {
                if (i10 != -1) {
                    return false;
                }
                return true;
            }
            i10++;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.zza.iterator();
        it.getClass();
        zzfvq zzfvqVar = this.zzb;
        zzfvqVar.getClass();
        return new zzfyx(it, zzfvqVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (contains(obj) && this.zza.remove(obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = this.zza.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.zzb.zza(next) && collection.contains(next)) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator it = this.zza.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.zzb.zza(next) && !collection.contains(next)) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i10 = 0;
        for (Object obj : this.zza) {
            if (this.zzb.zza(obj)) {
                i10++;
            }
        }
        return i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return zzfzg.zza(iterator()).toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return zzfzg.zza(iterator()).toArray(objArr);
    }
}
