package com.amazonaws.internal.keyvaluestore;

import android.security.keystore.KeyGenParameterSpec;
import androidx.annotation.RequiresApi;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.google.android.gms.stats.CodePackage;
import java.security.Key;
import java.security.KeyStore;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
@RequiresApi(api = 23)
/* loaded from: classes2.dex */
class KeyProvider23 implements KeyProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f5051a = LogFactory.b(KeyProvider23.class);

    @Override // com.amazonaws.internal.keyvaluestore.KeyProvider
    public synchronized Key a(String str) throws KeyNotGeneratedException {
        SecretKey generateKey;
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (!keyStore.containsAlias(str)) {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes(CodePackage.GCM).setEncryptionPaddings("NoPadding").setKeySize(256).setRandomizedEncryptionRequired(false).build());
                generateKey = keyGenerator.generateKey();
                Log log = f5051a;
                log.j("Generated the encryption key identified by the keyAlias: " + str + " using AndroidKeyStore");
            } else {
                throw new KeyNotGeneratedException("Key already exists for the keyAlias: " + str + " in AndroidKeyStore");
            }
        } catch (Exception e10) {
            throw new KeyNotGeneratedException("Cannot generate a key for alias: " + str + " in AndroidKeyStore", e10);
        }
        return generateKey;
    }

    @Override // com.amazonaws.internal.keyvaluestore.KeyProvider
    public synchronized Key b(String str) throws KeyNotFoundException {
        Key key;
        try {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                keyStore.load(null);
                if (keyStore.containsAlias(str)) {
                    Log log = f5051a;
                    log.h("AndroidKeyStore contains keyAlias " + str);
                    log.h("Loading the encryption key from Android KeyStore.");
                    key = keyStore.getKey(str, null);
                    if (key == null) {
                        throw new KeyNotFoundException("Key is null even though the keyAlias: " + str + " is present in AndroidKeyStore");
                    }
                } else {
                    throw new KeyNotFoundException("AndroidKeyStore does not contain the keyAlias: " + str);
                }
            } catch (Exception e10) {
                throw new KeyNotFoundException("Error occurred while accessing AndroidKeyStore to retrieve the key for keyAlias: " + str, e10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return key;
    }

    @Override // com.amazonaws.internal.keyvaluestore.KeyProvider
    public synchronized void c(String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            keyStore.deleteEntry(str);
        } catch (Exception e10) {
            Log log = f5051a;
            log.b("Error in deleting the key for keyAlias: " + str + " from Android KeyStore.", e10);
        }
    }
}
