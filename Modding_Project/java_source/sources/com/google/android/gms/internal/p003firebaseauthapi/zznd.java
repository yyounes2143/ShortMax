package com.google.android.gms.internal.p003firebaseauthapi;

import android.security.keystore.KeyGenParameterSpec;
import androidx.annotation.RequiresApi;
import com.google.android.gms.stats.CodePackage;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.KeyGenerator;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zznd  reason: invalid package */
/* loaded from: classes4.dex */
public final class zznd implements zzbx {
    private static final Object zza = new Object();

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zznd$zza */
    /* loaded from: classes4.dex */
    public static final class zza {
        @RequiresApi(23)
        public zza() {
            zznd.zza();
        }
    }

    @RequiresApi(23)
    public zznd() throws GeneralSecurityException {
        this(new zza());
    }

    static /* synthetic */ boolean zza() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(23)
    public static boolean zzc(String str) throws GeneralSecurityException {
        synchronized (zza) {
            try {
                String zza2 = zzaai.zza("android-keystore://", str);
                if (!zzmz.zzb(zza2)) {
                    KeyGenParameterSpec build = new KeyGenParameterSpec.Builder(zza2, 3).setKeySize(256).setBlockModes(CodePackage.GCM).setEncryptionPaddings("NoPadding").build();
                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                    keyGenerator.init(build);
                    keyGenerator.generateKey();
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbx
    @RequiresApi(23)
    public final boolean zzb(String str) {
        if (str.toLowerCase(Locale.US).startsWith("android-keystore://")) {
            return true;
        }
        return false;
    }

    private zznd(zza zzaVar) {
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbx
    public final zzba zza(String str) throws GeneralSecurityException {
        zznb zznbVar;
        try {
            synchronized (zza) {
                zznbVar = new zznb(zzaai.zza("android-keystore://", str));
                byte[] zza2 = zzqd.zza(10);
                byte[] bArr = new byte[0];
                if (!Arrays.equals(zza2, zznbVar.zza(zznbVar.zzb(zza2, bArr), bArr))) {
                    throw new KeyStoreException("cannot use Android Keystore: encryption/decryption of non-empty message and empty aad returns an incorrect result");
                }
            }
            return zznbVar;
        } catch (IOException e10) {
            throw new GeneralSecurityException(e10);
        }
    }
}
