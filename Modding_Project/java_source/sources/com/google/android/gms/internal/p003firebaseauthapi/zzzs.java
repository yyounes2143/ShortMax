package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Cipher;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzzs  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzzs implements zzzp<Cipher> {
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzzp
    public final /* synthetic */ Cipher zza(String str, Provider provider) throws GeneralSecurityException {
        if (provider == null) {
            return Cipher.getInstance(str);
        }
        return Cipher.getInstance(str, provider);
    }
}
