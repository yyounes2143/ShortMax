package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.security.ProviderInstaller;
import java.security.GeneralSecurityException;
import java.security.Provider;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzzm  reason: invalid package */
/* loaded from: classes4.dex */
final class zzzm<JcePrimitiveT> implements zzzn<JcePrimitiveT> {
    private final zzzp<JcePrimitiveT> zza;

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzzn
    public final JcePrimitiveT zza(String str) throws GeneralSecurityException {
        Exception exc = null;
        for (Provider provider : zzzj.zza(ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL")) {
            try {
                return this.zza.zza(str, provider);
            } catch (Exception e10) {
                if (exc == null) {
                    exc = e10;
                }
            }
        }
        return this.zza.zza(str, null);
    }

    private zzzm(zzzp<JcePrimitiveT> zzzpVar) {
        this.zza = zzzpVar;
    }
}
