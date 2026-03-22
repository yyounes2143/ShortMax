package com.google.android.gms.internal.p003firebaseauthapi;

import java.lang.Enum;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznk  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznk<E extends Enum<E>, O> {
    private Map<E, O> zza;
    private Map<O, E> zzb;

    public final zznk<E, O> zza(E e10, O o10) {
        this.zza.put(e10, o10);
        this.zzb.put(o10, e10);
        return this;
    }

    private zznk() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    public final zznl<E, O> zza() {
        return new zznl<>(Collections.unmodifiableMap(this.zza), Collections.unmodifiableMap(this.zzb));
    }
}
