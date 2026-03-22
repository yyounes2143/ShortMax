package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Collections;
import java.util.HashMap;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzoj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzoj {
    private HashMap<String, String> zza = new HashMap<>();

    public final zzok zza() {
        if (this.zza != null) {
            zzok zzokVar = new zzok(Collections.unmodifiableMap(this.zza));
            this.zza = null;
            return zzokVar;
        }
        throw new IllegalStateException("cannot call build() twice");
    }
}
