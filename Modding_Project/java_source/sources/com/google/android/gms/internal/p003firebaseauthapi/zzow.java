package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzow  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzow {
    private static final zzow zza = new zzow();
    private static final zzov zzb = new zzov();
    private final AtomicReference<zzol> zzc = new AtomicReference<>();

    public static zzow zzb() {
        return zza;
    }

    public final zzol zza() {
        zzol zzolVar = this.zzc.get();
        if (zzolVar == null) {
            return zzb;
        }
        return zzolVar;
    }
}
