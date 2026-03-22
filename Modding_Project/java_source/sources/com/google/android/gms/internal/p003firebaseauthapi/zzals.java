package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzals  reason: invalid package */
/* loaded from: classes4.dex */
final class zzals<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zza;

    public zzals(Iterator<Map.Entry<K, Object>> it) {
        this.zza = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zza.next();
        if (next.getValue() instanceof zzalq) {
            return new zzalp(next);
        }
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zza.remove();
    }
}
