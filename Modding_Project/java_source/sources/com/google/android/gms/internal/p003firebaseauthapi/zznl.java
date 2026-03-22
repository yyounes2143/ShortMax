package com.google.android.gms.internal.p003firebaseauthapi;

import java.lang.Enum;
import java.security.GeneralSecurityException;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznl  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznl<E extends Enum<E>, O> {
    private final Map<E, O> zza;
    private final Map<O, E> zzb;

    public static <E extends Enum<E>, O> zznk<E, O> zza() {
        return new zznk<>();
    }

    private zznl(Map<E, O> map, Map<O, E> map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final E zza(O o10) throws GeneralSecurityException {
        E e10 = this.zzb.get(o10);
        if (e10 != null) {
            return e10;
        }
        String valueOf = String.valueOf(o10);
        throw new GeneralSecurityException("Unable to convert object enum: " + valueOf);
    }

    public final O zza(E e10) throws GeneralSecurityException {
        O o10 = this.zza.get(e10);
        if (o10 != null) {
            return o10;
        }
        String valueOf = String.valueOf(e10);
        throw new GeneralSecurityException("Unable to convert proto enum: " + valueOf);
    }
}
