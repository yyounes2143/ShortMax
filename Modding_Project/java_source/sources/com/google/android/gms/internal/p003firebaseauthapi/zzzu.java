package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzzu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzzu implements zzzp<KeyFactory> {
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzzp
    public final /* synthetic */ KeyFactory zza(String str, Provider provider) throws GeneralSecurityException {
        if (provider == null) {
            return KeyFactory.getInstance(str);
        }
        return KeyFactory.getInstance(str, provider);
    }
}
