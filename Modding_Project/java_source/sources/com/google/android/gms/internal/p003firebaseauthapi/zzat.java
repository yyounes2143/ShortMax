package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzat  reason: invalid package */
/* loaded from: classes4.dex */
final class zzat<K> extends zzaq<K> {
    private final transient zzal<K, ?> zza;
    private final transient zzah<K> zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(zzal<K, ?> zzalVar, zzah<K> zzahVar) {
        this.zza = zzalVar;
        this.zzb = zzahVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (this.zza.get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaq, com.google.android.gms.internal.p003firebaseauthapi.zzag, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    public final int zza(Object[] objArr, int i10) {
        return zzc().zza(objArr, i10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaq, com.google.android.gms.internal.p003firebaseauthapi.zzag
    public final zzah<K> zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    public final zzay<K> zzd() {
        return (zzay) zzc().iterator();
    }
}
