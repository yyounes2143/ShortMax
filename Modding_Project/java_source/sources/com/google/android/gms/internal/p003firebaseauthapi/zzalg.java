package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalg  reason: invalid package */
/* loaded from: classes4.dex */
final class zzalg implements zzamj {
    private static final zzalg zza = new zzalg();

    private zzalg() {
    }

    public static zzalg zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamj
    public final boolean zzb(Class<?> cls) {
        return zzalf.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzamj
    public final zzamk zza(Class<?> cls) {
        if (zzalf.class.isAssignableFrom(cls)) {
            try {
                return (zzamk) zzalf.zza((Class<zzalf>) cls.asSubclass(zzalf.class)).zza(zzalf.zze.zzc, (Object) null, (Object) null);
            } catch (Exception e10) {
                String name = cls.getName();
                throw new RuntimeException("Unable to get message info for " + name, e10);
            }
        }
        String name2 = cls.getName();
        throw new IllegalArgumentException("Unsupported message type: " + name2);
    }
}
