package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzamx  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzamx {
    private static final zzamx zza = new zzamx();
    private final ConcurrentMap<Class<?>, zzanb<?>> zzc = new ConcurrentHashMap();
    private final zzane zzb = new zzama();

    private zzamx() {
    }

    public static zzamx zza() {
        return zza;
    }

    public final <T> zzanb<T> zza(Class<T> cls) {
        zzalh.zza(cls, "messageType");
        zzanb<T> zzanbVar = (zzanb<T>) this.zzc.get(cls);
        if (zzanbVar == null) {
            zzanb<T> zza2 = this.zzb.zza(cls);
            zzalh.zza(cls, "messageType");
            zzalh.zza(zza2, "schema");
            zzanb<T> zzanbVar2 = (zzanb<T>) this.zzc.putIfAbsent(cls, zza2);
            return zzanbVar2 != null ? zzanbVar2 : zza2;
        }
        return zzanbVar;
    }

    public final <T> zzanb<T> zza(T t10) {
        return zza((Class) t10.getClass());
    }
}
