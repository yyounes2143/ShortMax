package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzar  reason: invalid package */
/* loaded from: classes4.dex */
final class zzar<K, V> extends zzaq<Map.Entry<K, V>> {
    private final transient zzal<K, V> zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzar(zzal<K, V> zzalVar, Object[] objArr, int i10, int i11) {
        this.zza = zzalVar;
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag, java.util.AbstractCollection, java.util.Collection
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

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaq, com.google.android.gms.internal.p003firebaseauthapi.zzag, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    public final zzay<Map.Entry<K, V>> zzd() {
        return (zzay) zzc().iterator();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaq
    final zzah<Map.Entry<K, V>> zzf() {
        return new zzau(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    public final int zza(Object[] objArr, int i10) {
        return zzc().zza(objArr, i10);
    }
}
