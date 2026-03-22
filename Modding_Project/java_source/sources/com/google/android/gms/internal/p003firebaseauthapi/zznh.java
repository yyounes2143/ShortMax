package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.security.ProviderInstaller;
import java.lang.reflect.InvocationTargetException;
import java.security.Provider;
import java.security.Security;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznh {
    private static final String[] zza = {ProviderInstaller.PROVIDER_NAME, "AndroidOpenSSL", "Conscrypt"};

    public static Provider zza() {
        for (String str : zza) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                return provider;
            }
        }
        return null;
    }

    public static Provider zzb() {
        try {
            return (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
