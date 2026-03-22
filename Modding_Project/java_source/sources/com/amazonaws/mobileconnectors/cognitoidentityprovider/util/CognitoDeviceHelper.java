package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import android.content.Context;
import android.os.Build;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.Base64;
import com.amazonaws.util.StringUtils;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class CognitoDeviceHelper {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f5617a = LogFactory.b(CognitoDeviceHelper.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f5618b = new Object();

    /* renamed from: c  reason: collision with root package name */
    static deviceSRP f5619c = null;

    /* renamed from: d  reason: collision with root package name */
    static Map<String, AWSKeyValueStore> f5620d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f5621e = true;

    /* loaded from: classes2.dex */
    public static class deviceSRP {

        /* renamed from: c  reason: collision with root package name */
        private static final ThreadLocal<MessageDigest> f5622c = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper.deviceSRP.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* renamed from: a */
            public MessageDigest initialValue() {
                try {
                    return MessageDigest.getInstance("SHA-256");
                } catch (NoSuchAlgorithmException e10) {
                    throw new ExceptionInInitializerError(e10);
                }
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private static final BigInteger f5623d = new BigInteger("FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF", 16);

        /* renamed from: e  reason: collision with root package name */
        private static final BigInteger f5624e = BigInteger.valueOf(2);

        /* renamed from: f  reason: collision with root package name */
        private static final SecureRandom f5625f;

        /* renamed from: a  reason: collision with root package name */
        private final BigInteger f5626a;

        /* renamed from: b  reason: collision with root package name */
        private final BigInteger f5627b;

        static {
            SecureRandom instanceStrong;
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    instanceStrong = SecureRandom.getInstanceStrong();
                    f5625f = instanceStrong;
                    return;
                }
                f5625f = new SecureRandom();
            } catch (NoSuchAlgorithmException e10) {
                throw new ExceptionInInitializerError(e10);
            }
        }

        public deviceSRP(String str, String str2, String str3) {
            byte[] e10 = e(str, str2, str3);
            BigInteger bigInteger = new BigInteger(128, f5625f);
            this.f5626a = bigInteger;
            this.f5627b = b(bigInteger, e10);
        }

        public static void a() {
            f5622c.get().reset();
        }

        private static BigInteger b(BigInteger bigInteger, byte[] bArr) {
            a();
            g(bigInteger);
            h(bArr);
            return f5624e.modPow(new BigInteger(1, c()), f5623d);
        }

        public static byte[] c() {
            return f5622c.get().digest();
        }

        private byte[] e(String str, String str2, String str3) {
            a();
            i(str, str2, ":", str3);
            return c();
        }

        public static void g(BigInteger bigInteger) {
            MessageDigest messageDigest = f5622c.get();
            if (bigInteger != null) {
                messageDigest.update(bigInteger.toByteArray());
            }
        }

        public static void h(byte[] bArr) {
            MessageDigest messageDigest = f5622c.get();
            if (bArr != null) {
                messageDigest.update(bArr);
            }
        }

        public static void i(String... strArr) {
            MessageDigest messageDigest = f5622c.get();
            for (String str : strArr) {
                if (str != null) {
                    messageDigest.update(str.getBytes(StringUtils.f6417a));
                }
            }
        }

        public BigInteger d() {
            return this.f5626a;
        }

        public BigInteger f() {
            return this.f5627b;
        }
    }

    public static void a(String str, String str2, String str3, Context context) {
        try {
            g(context, str, str2).o("DeviceGroupKey", str3);
        } catch (Exception e10) {
            f5617a.b("Error accessing SharedPreferences", e10);
        }
    }

    public static void b(String str, String str2, String str3, Context context) {
        try {
            g(context, str, str2).o("DeviceKey", str3);
        } catch (Exception e10) {
            f5617a.b("Error accessing SharedPreferences", e10);
        }
    }

    public static void c(String str, String str2, String str3, Context context) {
        try {
            g(context, str, str2).o("DeviceSecret", str3);
        } catch (Exception e10) {
            f5617a.b("Error accessing SharedPreferences", e10);
        }
    }

    public static void d(String str, String str2, Context context) {
        try {
            g(context, str, str2).a();
        } catch (Exception e10) {
            f5617a.b("Error accessing SharedPreferences", e10);
        }
    }

    public static String e() {
        return String.valueOf(UUID.randomUUID());
    }

    public static Map<String, String> f(String str, String str2) {
        HashMap hashMap = new HashMap();
        String e10 = e();
        deviceSRP devicesrp = new deviceSRP(str2, str, e10);
        f5619c = devicesrp;
        byte[] byteArray = devicesrp.d().toByteArray();
        byte[] byteArray2 = f5619c.f().toByteArray();
        hashMap.put("salt", new String(Base64.encode(byteArray)));
        hashMap.put("verifier", new String(Base64.encode(byteArray2)));
        hashMap.put("secret", e10);
        return hashMap;
    }

    private static AWSKeyValueStore g(Context context, String str, String str2) {
        synchronized (f5618b) {
            try {
                String h10 = h(str, str2);
                if (f5620d.containsKey(h10)) {
                    return f5620d.get(h10);
                }
                AWSKeyValueStore aWSKeyValueStore = new AWSKeyValueStore(context, h10, f5621e);
                f5620d.put(h10, aWSKeyValueStore);
                return aWSKeyValueStore;
            } catch (Exception e10) {
                f5617a.b("Error in retrieving the persistent store.", e10);
                return null;
            }
        }
    }

    private static String h(String str, String str2) {
        return "CognitoIdentityProviderDeviceCache." + str2 + "." + str;
    }

    public static String i(String str, String str2, Context context) {
        try {
            AWSKeyValueStore g10 = g(context, str, str2);
            if (g10 != null && g10.b("DeviceGroupKey")) {
                return g10.g("DeviceGroupKey");
            }
            return null;
        } catch (Exception e10) {
            f5617a.b("Error accessing SharedPreferences", e10);
            return null;
        }
    }

    public static String j(String str, String str2, Context context) {
        try {
            AWSKeyValueStore g10 = g(context, str, str2);
            if (g10 != null && g10.b("DeviceKey")) {
                return g10.g("DeviceKey");
            }
            return null;
        } catch (Exception e10) {
            f5617a.b("Error accessing SharedPreferences", e10);
            return null;
        }
    }

    public static String k() {
        return Build.MODEL;
    }

    public static String l(String str, String str2, Context context) {
        try {
            AWSKeyValueStore g10 = g(context, str, str2);
            if (g10 != null && g10.b("DeviceSecret")) {
                return g10.g("DeviceSecret");
            }
            return null;
        } catch (Exception e10) {
            f5617a.b("Error accessing SharedPreferences", e10);
            return null;
        }
    }

    public static void m(boolean z10) {
        synchronized (f5618b) {
            try {
                f5621e = z10;
                for (String str : f5620d.keySet()) {
                    f5620d.get(str).r(z10);
                }
            } catch (Exception e10) {
                f5617a.b("Error in setting the isPersistenceEnabled flag in the key-value store.", e10);
            }
        }
    }
}
