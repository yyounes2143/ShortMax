package ai.turbolink.sdk.helpers;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.security.keystore.KeyGenParameterSpec;
import java.security.KeyStore;
import java.util.Arrays;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StoreHelper.kt */
@Metadata
/* loaded from: classes.dex */
public final class StoreHelper {
    @NotNull
    public static final StoreHelper INSTANCE = new StoreHelper();

    /* compiled from: StoreHelper.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class KeyStore {
        @NotNull
        public static final KeyStore INSTANCE = new KeyStore();

        private KeyStore() {
        }

        public static /* synthetic */ String getKeyStore$default(KeyStore keyStore, String str, String str2, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str2 = "AndroidKeyStore";
            }
            return keyStore.getKeyStore(str, str2);
        }

        public static /* synthetic */ void setKeyStore$default(KeyStore keyStore, String str, String str2, String str3, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                str3 = "AndroidKeyStore";
            }
            keyStore.setKeyStore(str, str2, str3);
        }

        @Nullable
        public final String getKeyStore(@NotNull String storeAlias, @NotNull String storeType) {
            Intrinsics.checkNotNullParameter(storeAlias, "storeAlias");
            Intrinsics.checkNotNullParameter(storeType, "storeType");
            try {
                java.security.KeyStore keyStore = java.security.KeyStore.getInstance(storeType);
                keyStore.load(null);
                if (!keyStore.containsAlias(storeAlias)) {
                    return null;
                }
                KeyStore.Entry entry = keyStore.getEntry(storeAlias, null);
                Intrinsics.checkNotNull(entry, "null cannot be cast to non-null type java.security.KeyStore.SecretKeyEntry");
                SecretKey secretKey = ((KeyStore.SecretKeyEntry) entry).getSecretKey();
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("storeAlias:%s, secretKey:%s", Arrays.copyOf(new Object[]{storeAlias, secretKey.toString()}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                TurboLinkLogger.v(format);
                return secretKey.toString();
            } catch (Exception e10) {
                TurboLinkLogger.v("Get keystore raise exception " + e10.getMessage());
                return null;
            }
        }

        public final void setKeyStore(@NotNull String storeAlias, @NotNull String storeValue, @NotNull String storeType) {
            Intrinsics.checkNotNullParameter(storeAlias, "storeAlias");
            Intrinsics.checkNotNullParameter(storeValue, "storeValue");
            Intrinsics.checkNotNullParameter(storeType, "storeType");
            try {
                java.security.KeyStore keyStore = java.security.KeyStore.getInstance(storeType);
                keyStore.load(null);
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", storeType);
                KeyGenParameterSpec build = new KeyGenParameterSpec.Builder(storeAlias, 3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder(\n               …                 .build()");
                keyGenerator.init(build);
                keyStore.setEntry(storeAlias, new KeyStore.SecretKeyEntry(keyGenerator.generateKey()), null);
            } catch (Exception e10) {
                TurboLinkLogger.v("Store value to keyStore at specified alias raise exception " + e10.getMessage());
            }
        }
    }

    private StoreHelper() {
    }
}
