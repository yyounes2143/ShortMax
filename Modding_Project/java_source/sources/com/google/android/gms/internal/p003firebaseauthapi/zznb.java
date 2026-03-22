package com.google.android.gms.internal.p003firebaseauthapi;

import android.util.Log;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.ProviderException;
import javax.crypto.BadPaddingException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznb  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznb implements zzba {
    private static final String zza = "zznb";
    private final zzba zzb;

    public zznb(String str) throws GeneralSecurityException, IOException {
        this.zzb = zzmz.zza(str);
    }

    private static void zza() {
        try {
            Thread.sleep((int) (Math.random() * 100.0d));
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzba
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            return this.zzb.zzb(bArr, bArr2);
        } catch (GeneralSecurityException | ProviderException e10) {
            Log.w(zza, "encountered a potentially transient KeyStore error, will wait and retry", e10);
            zza();
            return this.zzb.zzb(bArr, bArr2);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzba
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            return this.zzb.zza(bArr, bArr2);
        } catch (GeneralSecurityException e10) {
            e = e10;
            Log.w(zza, "encountered a potentially transient KeyStore error, will wait and retry", e);
            zza();
            return this.zzb.zza(bArr, bArr2);
        } catch (ProviderException e11) {
            e = e11;
            Log.w(zza, "encountered a potentially transient KeyStore error, will wait and retry", e);
            zza();
            return this.zzb.zza(bArr, bArr2);
        } catch (BadPaddingException e12) {
            throw e12;
        }
    }
}
