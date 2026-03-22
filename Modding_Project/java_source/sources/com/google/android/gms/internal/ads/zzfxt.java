package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfxt extends AbstractSet {
    final /* synthetic */ zzfxz zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfxt(zzfxz zzfxzVar) {
        Objects.requireNonNull(zzfxzVar);
        this.zza = zzfxzVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int zzw;
        zzfxz zzfxzVar = this.zza;
        Map zzl = zzfxzVar.zzl();
        if (zzl != null) {
            return zzl.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            zzw = zzfxzVar.zzw(entry.getKey());
            if (zzw != -1 && zzfvm.zza(zzfxz.zzj(zzfxzVar, zzw), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfxz zzfxzVar = this.zza;
        Map zzl = zzfxzVar.zzl();
        if (zzl != null) {
            return zzl.entrySet().iterator();
        }
        return new zzfxr(zzfxzVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int zzv;
        int[] zzA;
        Object[] zzB;
        Object[] zzC;
        int i10;
        zzfxz zzfxzVar = this.zza;
        Map zzl = zzfxzVar.zzl();
        if (zzl != null) {
            return zzl.entrySet().remove(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (!zzfxzVar.zzr()) {
                zzv = zzfxzVar.zzv();
                Object key = entry.getKey();
                Object value = entry.getValue();
                Object zzi = zzfxz.zzi(zzfxzVar);
                zzA = zzfxzVar.zzA();
                zzB = zzfxzVar.zzB();
                zzC = zzfxzVar.zzC();
                int zzb = zzfya.zzb(key, value, zzv, zzi, zzA, zzB, zzC);
                if (zzb != -1) {
                    zzfxzVar.zzq(zzb, zzv);
                    i10 = zzfxzVar.zzg;
                    zzfxzVar.zzg = i10 - 1;
                    zzfxzVar.zzo();
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
