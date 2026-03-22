package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfwz extends zzfxc implements NavigableMap {
    final /* synthetic */ zzfxi zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfwz(zzfxi zzfxiVar, NavigableMap navigableMap) {
        super(zzfxiVar, navigableMap);
        Objects.requireNonNull(zzfxiVar);
        this.zzc = zzfxiVar;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return zza(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new zzfwz(this.zzc, ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).descendingMap());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry firstEntry = ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return zza(firstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry floorEntry = ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return zza(floorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).floorKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry higherEntry = ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return zza(higherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).higherKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc, com.google.android.gms.internal.ads.zzfwv, com.google.android.gms.internal.ads.zzfzm, java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry lastEntry = ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return zza(lastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry lowerEntry = ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return zza(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return zzc(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return zzc(descendingMap().entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzfxc, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    final Map.Entry zzc(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        zzfxi zzfxiVar = this.zzc;
        Collection zza = zzfxiVar.zza();
        zza.addAll((Collection) entry.getValue());
        it.remove();
        return new zzfym(entry.getKey(), zzfxiVar.zzb(zza));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfxc
    /* renamed from: zzd */
    public final NavigableSet zzg() {
        return new zzfxa(this.zzc, (NavigableMap) ((SortedMap) ((zzfwv) this).zza));
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    final /* synthetic */ SortedMap zzf() {
        return (NavigableMap) ((SortedMap) ((zzfwv) this).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfxc
    public final /* synthetic */ SortedSet zzh() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z10) {
        return new zzfwz(this.zzc, ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).headMap(obj, z10));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
        return new zzfwz(this.zzc, ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).subMap(obj, z10, obj2, z11));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z10) {
        return new zzfwz(this.zzc, ((NavigableMap) ((SortedMap) ((zzfwv) this).zza)).tailMap(obj, z10));
    }
}
