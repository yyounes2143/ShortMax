package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzok  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzok {
    public static final zzok zza = new zzoj().zza();
    private final Map<String, String> zzb;

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzok)) {
            return false;
        }
        return this.zzb.equals(((zzok) obj).zzb);
    }

    public final int hashCode() {
        return this.zzb.hashCode();
    }

    public final String toString() {
        return this.zzb.toString();
    }

    public final boolean zza() {
        return this.zzb.isEmpty();
    }

    private zzok(Map<String, String> map) {
        this.zzb = map;
    }
}
