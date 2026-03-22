package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Provider;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzzv  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzzv implements zzzp<MessageDigest> {
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzzp
    public final /* synthetic */ MessageDigest zza(String str, Provider provider) throws GeneralSecurityException {
        if (provider == null) {
            return MessageDigest.getInstance(str);
        }
        return MessageDigest.getInstance(str, provider);
    }
}
