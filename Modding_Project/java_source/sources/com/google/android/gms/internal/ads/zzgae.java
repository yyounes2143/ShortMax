package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgae extends zzfyv {
    private final transient zzfyt zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgae(zzfyt zzfytVar, Object[] objArr, int i10, int i11) {
        this.zza = zzfytVar;
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override // com.google.android.gms.internal.ads.zzfyl, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, com.google.android.gms.internal.ads.zzfyl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfyl
    public final int zza(Object[] objArr, int i10) {
        return zzd().zza(objArr, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzfyv, com.google.android.gms.internal.ads.zzfyl
    public final zzgaw zze() {
        return zzd().listIterator(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfyl
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfyv
    final zzfyq zzi() {
        return new zzgad(this);
    }
}
