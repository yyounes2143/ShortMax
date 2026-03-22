package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Mac;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzzw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzzw implements zzzp<Mac> {
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzzp
    public final /* synthetic */ Mac zza(String str, Provider provider) throws GeneralSecurityException {
        if (provider == null) {
            return Mac.getInstance(str);
        }
        return Mac.getInstance(str, provider);
    }
}
