package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfzf extends AbstractSequentialList implements Serializable {
    final List zza;
    final zzfve zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfzf(List list, zzfve zzfveVar) {
        list.getClass();
        this.zza = list;
        this.zzb = zzfveVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.zza.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        return new zzfze(this, this.zza.listIterator(i10));
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        this.zza.subList(i10, i11).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }
}
