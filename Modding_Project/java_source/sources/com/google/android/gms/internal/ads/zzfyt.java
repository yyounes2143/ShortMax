package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfyt implements Map, Serializable {
    private transient zzfyv zza;
    private transient zzfyv zzb;
    private transient zzfyl zzc;

    public static zzfyt zzc(Map map) {
        int i10;
        Set entrySet = map.entrySet();
        if (entrySet instanceof Collection) {
            i10 = entrySet.size();
        } else {
            i10 = 4;
        }
        zzfys zzfysVar = new zzfys(i10);
        zzfysVar.zzb(entrySet);
        return zzfysVar.zzc();
    }

    public static zzfyt zzd() {
        return zzgah.zza;
    }

    public static zzfyt zze(Object obj, Object obj2) {
        zzfxn.zzb("dialog_not_shown_reason", obj2);
        return zzgah.zzj(1, new Object[]{"dialog_not_shown_reason", obj2}, null);
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return zzfzn.zzb(this, obj);
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 != null) {
            return obj3;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzgas.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        zzfxn.zza(size, "size");
        StringBuilder sb2 = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb2.append('{');
        boolean z10 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
            z10 = false;
        }
        sb2.append('}');
        return sb2.toString();
    }

    abstract zzfyl zza();

    @Override // java.util.Map
    /* renamed from: zzb */
    public final zzfyl values() {
        zzfyl zzfylVar = this.zzc;
        if (zzfylVar == null) {
            zzfyl zza = zza();
            this.zzc = zza;
            return zza;
        }
        return zzfylVar;
    }

    abstract zzfyv zzf();

    abstract zzfyv zzg();

    @Override // java.util.Map
    /* renamed from: zzh */
    public final zzfyv entrySet() {
        zzfyv zzfyvVar = this.zza;
        if (zzfyvVar == null) {
            zzfyv zzf = zzf();
            this.zza = zzf;
            return zzf;
        }
        return zzfyvVar;
    }

    @Override // java.util.Map
    /* renamed from: zzi */
    public final zzfyv keySet() {
        zzfyv zzfyvVar = this.zzb;
        if (zzfyvVar == null) {
            zzfyv zzg = zzg();
            this.zzb = zzg;
            return zzg;
        }
        return zzfyvVar;
    }
}
