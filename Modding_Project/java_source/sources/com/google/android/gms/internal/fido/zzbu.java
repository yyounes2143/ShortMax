package com.google.android.gms.internal.fido;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzbu extends zzbi {
    static final zzbu zzc;
    final transient zzaz zzd;

    static {
        int i10 = zzaz.zzd;
        zzc = new zzbu(zzbs.zza, zzbp.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbu(zzaz zzazVar, Comparator comparator) {
        super(comparator);
        this.zzd = zzazVar;
    }

    @Override // com.google.android.gms.internal.fido.zzbi, java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int zzt = zzt(obj, true);
        if (zzt == this.zzd.size()) {
            return null;
        }
        return this.zzd.get(zzt);
    }

    @Override // com.google.android.gms.internal.fido.zzav, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.zzd, obj, ((zzbi) this).zza) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof zzbo) {
            collection = ((zzbo) collection).zza();
        }
        if (zzca.zza(((zzbi) this).zza, collection) && collection.size() > 1) {
            zzcc listIterator = this.zzd.listIterator(0);
            Iterator it = collection.iterator();
            if (!listIterator.hasNext()) {
                return false;
            }
            Object next = it.next();
            E next2 = listIterator.next();
            while (true) {
                try {
                    int compare = ((zzbi) this).zza.compare(next2, next);
                    if (compare < 0) {
                        if (!listIterator.hasNext()) {
                            return false;
                        }
                        next2 = listIterator.next();
                    } else if (compare != 0) {
                        break;
                    } else if (!it.hasNext()) {
                        return true;
                    } else {
                        next = it.next();
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
        } else {
            return super.containsAll(collection);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0038 A[Catch: ClassCastException | NoSuchElementException -> 0x004c, TryCatch #0 {ClassCastException | NoSuchElementException -> 0x004c, blocks: (B:17:0x002c, B:18:0x0032, B:20:0x0038, B:22:0x0042), top: B:29:0x002c }] */
    @Override // com.google.android.gms.internal.fido.zzbc, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof java.util.Set
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            java.util.Set r7 = (java.util.Set) r7
            com.google.android.gms.internal.fido.zzaz r1 = r6.zzd
            int r1 = r1.size()
            int r3 = r7.size()
            if (r1 == r3) goto L19
            return r2
        L19:
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto L20
            return r0
        L20:
            java.util.Comparator r1 = r6.zza
            boolean r1 = com.google.android.gms.internal.fido.zzca.zza(r1, r7)
            if (r1 == 0) goto L4d
            java.util.Iterator r7 = r7.iterator()
            com.google.android.gms.internal.fido.zzaz r1 = r6.zzd     // Catch: java.lang.Throwable -> L4c
            com.google.android.gms.internal.fido.zzcc r1 = r1.listIterator(r2)     // Catch: java.lang.Throwable -> L4c
        L32:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> L4c
            if (r3 == 0) goto L4b
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r4 = r7.next()     // Catch: java.lang.Throwable -> L4c
            if (r4 == 0) goto L4a
            java.util.Comparator r5 = r6.zza     // Catch: java.lang.Throwable -> L4c
            int r3 = r5.compare(r3, r4)     // Catch: java.lang.Throwable -> L4c
            if (r3 == 0) goto L32
        L4a:
            return r2
        L4b:
            return r0
        L4c:
            return r2
        L4d:
            boolean r7 = r6.containsAll(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fido.zzbu.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.fido.zzbi, java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.zzd.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.android.gms.internal.fido.zzbi, java.util.NavigableSet
    public final Object floor(Object obj) {
        int zzs = zzs(obj, true) - 1;
        if (zzs == -1) {
            return null;
        }
        return this.zzd.get(zzs);
    }

    @Override // com.google.android.gms.internal.fido.zzbi, java.util.NavigableSet
    public final Object higher(Object obj) {
        int zzt = zzt(obj, false);
        if (zzt == this.zzd.size()) {
            return null;
        }
        return this.zzd.get(zzt);
    }

    @Override // com.google.android.gms.internal.fido.zzbi, com.google.android.gms.internal.fido.zzbc, com.google.android.gms.internal.fido.zzav, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzd.listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzbi, java.util.SortedSet
    public final Object last() {
        if (!isEmpty()) {
            zzaz zzazVar = this.zzd;
            return zzazVar.get(zzazVar.size() - 1);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.android.gms.internal.fido.zzbi, java.util.NavigableSet
    public final Object lower(Object obj) {
        int zzs = zzs(obj, false) - 1;
        if (zzs == -1) {
            return null;
        }
        return this.zzd.get(zzs);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzd.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzav
    public final int zza(Object[] objArr, int i10) {
        return this.zzd.zza(objArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzav
    public final int zzb() {
        return this.zzd.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzav
    public final int zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.fido.zzbi, com.google.android.gms.internal.fido.zzbc, com.google.android.gms.internal.fido.zzav
    public final zzcb zzd() {
        return this.zzd.listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzav
    public final Object[] zze() {
        return this.zzd.zze();
    }

    @Override // com.google.android.gms.internal.fido.zzbi
    final zzbi zzf() {
        Comparator reverseOrder = Collections.reverseOrder(((zzbi) this).zza);
        if (isEmpty()) {
            return zzbi.zzq(reverseOrder);
        }
        return new zzbu(this.zzd.zzf(), reverseOrder);
    }

    @Override // com.google.android.gms.internal.fido.zzbc
    public final zzaz zzi() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.fido.zzbi
    public final zzbi zzm(Object obj, boolean z10) {
        return zzu(0, zzs(obj, z10));
    }

    @Override // com.google.android.gms.internal.fido.zzbi
    final zzbi zzo(Object obj, boolean z10, Object obj2, boolean z11) {
        return zzp(obj, z10).zzm(obj2, z11);
    }

    @Override // com.google.android.gms.internal.fido.zzbi
    final zzbi zzp(Object obj, boolean z10) {
        return zzu(zzt(obj, z10), this.zzd.size());
    }

    @Override // com.google.android.gms.internal.fido.zzbi, java.util.NavigableSet
    /* renamed from: zzr */
    public final zzcb descendingIterator() {
        return this.zzd.zzf().listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzs(Object obj, boolean z10) {
        zzaz zzazVar = this.zzd;
        obj.getClass();
        int binarySearch = Collections.binarySearch(zzazVar, obj, ((zzbi) this).zza);
        if (binarySearch >= 0) {
            if (z10) {
                return binarySearch + 1;
            }
            return binarySearch;
        }
        return ~binarySearch;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzt(Object obj, boolean z10) {
        zzaz zzazVar = this.zzd;
        obj.getClass();
        int binarySearch = Collections.binarySearch(zzazVar, obj, ((zzbi) this).zza);
        if (binarySearch >= 0) {
            if (z10) {
                return binarySearch;
            }
            return binarySearch + 1;
        }
        return ~binarySearch;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzbu zzu(int i10, int i11) {
        if (i10 == 0) {
            if (i11 != this.zzd.size()) {
                i10 = 0;
            } else {
                return this;
            }
        }
        if (i10 < i11) {
            return new zzbu(this.zzd.subList(i10, i11), ((zzbi) this).zza);
        }
        return zzbi.zzq(((zzbi) this).zza);
    }
}
