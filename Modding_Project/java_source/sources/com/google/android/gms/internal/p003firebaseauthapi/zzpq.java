package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzpq  reason: invalid package */
/* loaded from: classes4.dex */
final class zzpq<P> implements Iterator<P> {
    private final Iterator<P> zza;
    private final Iterator<P> zzb;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.zza.hasNext() && !this.zzb.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final P next() {
        if (this.zza.hasNext()) {
            return this.zza.next();
        }
        return this.zzb.next();
    }

    private zzpq(Iterator<P> it, Iterator<P> it2) {
        this.zza = it;
        this.zzb = it2;
    }
}
