package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.Set;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaq  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzaq<E> extends zzag<E> implements Set<E> {
    private transient zzah<E> zza;

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return zzav.zza(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzav.zza(this);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzag
    public zzah<E> zzc() {
        zzah<E> zzahVar = this.zza;
        if (zzahVar == null) {
            zzah<E> zzf = zzf();
            this.zza = zzf;
            return zzf;
        }
        return zzahVar;
    }

    zzah<E> zzf() {
        return zzah.zza(toArray());
    }
}
