package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzch  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzch {
    private static final zzch zza = new zzch();

    private zzch() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzch zza() {
        return zza;
    }

    public static zzch zza(zzch zzchVar) throws GeneralSecurityException {
        if (zzchVar != null) {
            return zzchVar;
        }
        throw new GeneralSecurityException("SecretKeyAccess is required");
    }
}
