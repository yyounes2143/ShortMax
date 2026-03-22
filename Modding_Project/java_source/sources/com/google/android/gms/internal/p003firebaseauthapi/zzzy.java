package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzzy  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzzy implements zzzp<Signature> {
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzzp
    public final /* synthetic */ Signature zza(String str, Provider provider) throws GeneralSecurityException {
        if (provider == null) {
            return Signature.getInstance(str);
        }
        return Signature.getInstance(str, provider);
    }
}
