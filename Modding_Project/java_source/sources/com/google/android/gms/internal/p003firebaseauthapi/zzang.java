package com.google.android.gms.internal.p003firebaseauthapi;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzang  reason: invalid package */
/* loaded from: classes4.dex */
public class zzang<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private Object[] zza;
    private int zzb;
    private Map<K, V> zzc;
    private boolean zzd;
    private volatile zzanm zze;
    private Map<K, V> zzf;

    private final SortedMap<K, V> zzf() {
        zzg();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzg() {
        if (!this.zzd) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzg();
        if (this.zzb != 0) {
            this.zza = null;
            this.zzb = 0;
        }
        if (!this.zzc.isEmpty()) {
            this.zzc.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (zza((zzang<K, V>) comparable) < 0 && !this.zzc.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zze == null) {
            this.zze = new zzanm(this);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzang)) {
            return super.equals(obj);
        }
        zzang zzangVar = (zzang) obj;
        int size = size();
        if (size != zzangVar.size()) {
            return false;
        }
        int i10 = this.zzb;
        if (i10 != zzangVar.zzb) {
            return entrySet().equals(zzangVar.entrySet());
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (!zza(i11).equals(zzangVar.zza(i11))) {
                return false;
            }
        }
        if (i10 == size) {
            return true;
        }
        return this.zzc.equals(zzangVar.zzc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzang<K, V>) comparable);
        if (zza >= 0) {
            return (V) ((zzank) this.zza[zza]).getValue();
        }
        return this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int i10 = this.zzb;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += this.zza[i12].hashCode();
        }
        if (this.zzc.size() > 0) {
            return i11 + this.zzc.hashCode();
        }
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzang<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzg();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzang<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzb(zza);
        }
        if (this.zzc.isEmpty()) {
            return null;
        }
        return this.zzc.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzb + this.zzc.size();
    }

    private zzang() {
        this.zzc = Collections.emptyMap();
        this.zzf = Collections.emptyMap();
    }

    public final int zzb() {
        return this.zzb;
    }

    public final Iterable<Map.Entry<K, V>> zzc() {
        if (this.zzc.isEmpty()) {
            return Collections.emptySet();
        }
        return this.zzc.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> zzd() {
        return new zzanh(this);
    }

    public final boolean zze() {
        return this.zzd;
    }

    private final int zza(K k10) {
        int i10;
        int i11 = this.zzb;
        int i12 = i11 - 1;
        if (i12 >= 0) {
            int compareTo = k10.compareTo((Comparable) ((zzank) this.zza[i12]).getKey());
            if (compareTo > 0) {
                i10 = i11 + 1;
                return -i10;
            } else if (compareTo == 0) {
                return i12;
            }
        }
        int i13 = 0;
        while (i13 <= i12) {
            int i14 = (i13 + i12) / 2;
            int compareTo2 = k10.compareTo((Comparable) ((zzank) this.zza[i14]).getKey());
            if (compareTo2 < 0) {
                i12 = i14 - 1;
            } else if (compareTo2 <= 0) {
                return i14;
            } else {
                i13 = i14 + 1;
            }
        }
        i10 = i13 + 1;
        return -i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V zzb(int i10) {
        zzg();
        V v10 = (V) ((zzank) this.zza[i10]).getValue();
        Object[] objArr = this.zza;
        System.arraycopy(objArr, i10 + 1, objArr, i10, (this.zzb - i10) - 1);
        this.zzb--;
        if (!this.zzc.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzf().entrySet().iterator();
            this.zza[this.zzb] = new zzank(this, it.next());
            this.zzb++;
            it.remove();
        }
        return v10;
    }

    public final V zza(K k10, V v10) {
        zzg();
        int zza = zza((zzang<K, V>) k10);
        if (zza >= 0) {
            return (V) ((zzank) this.zza[zza]).setValue(v10);
        }
        zzg();
        if (this.zza == null) {
            this.zza = new Object[16];
        }
        int i10 = -(zza + 1);
        if (i10 >= 16) {
            return zzf().put(k10, v10);
        }
        int i11 = this.zzb;
        if (i11 == 16) {
            zzank zzankVar = (zzank) this.zza[15];
            this.zzb = i11 - 1;
            zzf().put((K) zzankVar.getKey(), (V) zzankVar.getValue());
        }
        Object[] objArr = this.zza;
        System.arraycopy(objArr, i10, objArr, i10 + 1, (objArr.length - i10) - 1);
        this.zza[i10] = new zzank(this, k10, v10);
        this.zzb++;
        return null;
    }

    public final Map.Entry<K, V> zza(int i10) {
        if (i10 < this.zzb) {
            return (zzank) this.zza[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    public void zza() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (this.zzd) {
            return;
        }
        if (this.zzc.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.zzc);
        }
        this.zzc = unmodifiableMap;
        if (this.zzf.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.zzf);
        }
        this.zzf = unmodifiableMap2;
        this.zzd = true;
    }
}
