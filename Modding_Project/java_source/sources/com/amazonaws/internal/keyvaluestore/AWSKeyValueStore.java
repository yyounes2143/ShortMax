package com.amazonaws.internal.keyvaluestore;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.Base64;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
/* loaded from: classes2.dex */
public class AWSKeyValueStore {

    /* renamed from: i  reason: collision with root package name */
    private static final Log f5041i = LogFactory.b(AWSKeyValueStore.class);

    /* renamed from: j  reason: collision with root package name */
    static Map<String, HashMap<String, String>> f5042j = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f5043a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5044b;

    /* renamed from: c  reason: collision with root package name */
    Context f5045c;

    /* renamed from: d  reason: collision with root package name */
    SharedPreferences f5046d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5047e;

    /* renamed from: f  reason: collision with root package name */
    SharedPreferences f5048f;

    /* renamed from: g  reason: collision with root package name */
    KeyProvider f5049g;

    /* renamed from: h  reason: collision with root package name */
    private SecureRandom f5050h = new SecureRandom();

    public AWSKeyValueStore(Context context, String str, boolean z10) {
        this.f5043a = i(str);
        this.f5047e = str;
        this.f5045c = context;
        r(z10);
    }

    private String c(Key key, AlgorithmParameterSpec algorithmParameterSpec, String str) {
        try {
            byte[] decode = Base64.decode(str);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, key, algorithmParameterSpec);
            return new String(cipher.doFinal(decode), "UTF-8");
        } catch (Exception e10) {
            f5041i.b("Error in decrypting data. ", e10);
            return null;
        }
    }

    private String d(Key key, AlgorithmParameterSpec algorithmParameterSpec, String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, key, algorithmParameterSpec);
            return Base64.encodeAsString(cipher.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e10) {
            f5041i.b("Error in encrypting data. ", e10);
            return null;
        }
    }

    private byte[] f() {
        byte[] bArr = new byte[12];
        this.f5050h.nextBytes(bArr);
        return bArr;
    }

    private AlgorithmParameterSpec h(byte[] bArr) {
        return new GCMParameterSpec(128, bArr);
    }

    private static Map<String, String> i(String str) {
        if (f5042j.containsKey(str)) {
            return f5042j.get(str);
        }
        HashMap<String, String> hashMap = new HashMap<>();
        f5042j.put(str, hashMap);
        return hashMap;
    }

    private String j(String str) {
        if (str == null) {
            return null;
        }
        return str + ".encrypted";
    }

    private String k() {
        return this.f5047e + ".aesKeyStoreAlias";
    }

    private AlgorithmParameterSpec l(String str) throws Exception {
        String str2 = str + ".iv";
        if (this.f5046d.contains(str2)) {
            String string = this.f5046d.getString(str2, null);
            if (string != null) {
                byte[] decode = Base64.decode(string);
                if (decode != null && decode.length != 0) {
                    return h(decode);
                }
                throw new Exception("Cannot base64 decode the initialization vector for " + str + " read from SharedPreferences.");
            }
            throw new Exception("Cannot read the initialization vector for " + str + " from SharedPreferences.");
        }
        throw new Exception("Initialization vector for " + str + " is missing from the SharedPreferences.");
    }

    private void m() {
        this.f5049g = new KeyProvider23();
    }

    private void n() {
        Map<String, ?> all = this.f5046d.getAll();
        for (String str : all.keySet()) {
            if (!str.endsWith(".encrypted") && !str.endsWith(".iv") && !str.endsWith(".keyvaluestoreversion")) {
                if (all.get(str) instanceof Long) {
                    o(str, String.valueOf(Long.valueOf(this.f5046d.getLong(str, 0L))));
                } else if (all.get(str) instanceof String) {
                    o(str, this.f5046d.getString(str, null));
                } else if (all.get(str) instanceof Float) {
                    o(str, String.valueOf(Float.valueOf(this.f5046d.getFloat(str, 0.0f))));
                } else if (all.get(str) instanceof Boolean) {
                    o(str, String.valueOf(Boolean.valueOf(this.f5046d.getBoolean(str, false))));
                } else if (all.get(str) instanceof Integer) {
                    o(str, String.valueOf(Integer.valueOf(this.f5046d.getInt(str, 0))));
                } else if (all.get(str) instanceof Set) {
                    StringBuilder sb2 = new StringBuilder();
                    Iterator it = ((Set) all.get(str)).iterator();
                    while (it.hasNext()) {
                        sb2.append((String) it.next());
                        if (it.hasNext()) {
                            sb2.append(",");
                        }
                    }
                    o(str, sb2.toString());
                }
                this.f5046d.edit().remove(str).apply();
            }
        }
    }

    private synchronized Key q(String str) {
        try {
        } catch (KeyNotFoundException e10) {
            Log log = f5041i;
            log.g(e10);
            log.j("Deleting the encryption key identified by the keyAlias: " + str);
            this.f5049g.c(str);
            return null;
        }
        return this.f5049g.b(str);
    }

    public synchronized void a() {
        this.f5043a.clear();
        if (this.f5044b) {
            this.f5046d.edit().clear().apply();
        }
    }

    public synchronized boolean b(String str) {
        if (this.f5044b) {
            if (this.f5043a.containsKey(str)) {
                return true;
            }
            return this.f5046d.contains(j(str));
        }
        return this.f5043a.containsKey(str);
    }

    synchronized Key e(String str) {
        try {
        } catch (KeyNotGeneratedException e10) {
            f5041i.b("Encryption Key cannot be generated successfully.", e10);
            return null;
        }
        return this.f5049g.a(str);
    }

    public synchronized String g(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f5043a.containsKey(str) && this.f5044b) {
            String j10 = j(str);
            Key q10 = q(k());
            if (q10 == null) {
                Log log = f5041i;
                log.g("Error in retrieving the decryption key used to decrypt the data from the persistent store. Returning null for the requested dataKey = " + str);
                return null;
            } else if (!this.f5046d.contains(j10)) {
                return null;
            } else {
                try {
                    SharedPreferences sharedPreferences = this.f5046d;
                    if (Integer.parseInt(sharedPreferences.getString(j10 + ".keyvaluestoreversion", null)) != 1) {
                        Log log2 = f5041i;
                        log2.c("The version of the data read from SharedPreferences for " + str + " does not match the version of the store.");
                        return null;
                    }
                    String c10 = c(q10, l(j10), this.f5046d.getString(j10, null));
                    this.f5043a.put(str, c10);
                    return c10;
                } catch (Exception e10) {
                    Log log3 = f5041i;
                    log3.f("Error in retrieving value for dataKey = " + str, e10);
                    p(str);
                    return null;
                }
            }
        }
        return this.f5043a.get(str);
    }

    public synchronized void o(String str, String str2) {
        byte[] f10;
        if (str == null) {
            f5041i.c("dataKey is null.");
            return;
        }
        this.f5043a.put(str, str2);
        if (!this.f5044b) {
            return;
        }
        if (str2 == null) {
            f5041i.h("Value is null. Removing the data, IV and version from SharedPreferences");
            this.f5043a.remove(str);
            p(str);
            return;
        }
        String j10 = j(str);
        String k10 = k();
        Key q10 = q(k10);
        if (q10 == null) {
            Log log = f5041i;
            log.g("No encryption key found for encryptionKeyAlias: " + k10);
            Key e10 = e(k10);
            if (e10 == null) {
                log.g("Error in generating the encryption key for encryptionKeyAlias: " + k10 + " used to encrypt the data before storing. Skipping persisting the data in the persistent store.");
                return;
            }
            q10 = e10;
        }
        try {
            f10 = f();
        } catch (Exception e11) {
            Log log2 = f5041i;
            log2.b("Error in storing value for dataKey = " + str + ". This data has not been stored in the persistent store.", e11);
        }
        if (f10 != null) {
            String d10 = d(q10, h(f10), str2);
            String encodeAsString = Base64.encodeAsString(f10);
            if (encodeAsString != null) {
                SharedPreferences.Editor putString = this.f5046d.edit().putString(j10, d10);
                SharedPreferences.Editor putString2 = putString.putString(j10 + ".iv", encodeAsString);
                putString2.putString(j10 + ".keyvaluestoreversion", String.valueOf(1)).apply();
                return;
            }
            throw new Exception("Error in Base64 encoding the IV for dataKey = " + str);
        }
        throw new Exception("The generated IV for dataKey = " + str + " is null.");
    }

    public synchronized void p(String str) {
        this.f5043a.remove(str);
        if (this.f5044b) {
            String j10 = j(str);
            SharedPreferences.Editor remove = this.f5046d.edit().remove(j10);
            SharedPreferences.Editor remove2 = remove.remove(j10 + ".iv");
            remove2.remove(j10 + ".keyvaluestoreversion").apply();
        }
    }

    public synchronized void r(boolean z10) {
        try {
            try {
                boolean z11 = this.f5044b;
                this.f5044b = z10;
                if (z10 && !z11) {
                    this.f5046d = this.f5045c.getSharedPreferences(this.f5047e, 0);
                    Context context = this.f5045c;
                    this.f5048f = context.getSharedPreferences(this.f5047e + ".encryptionkey", 0);
                    m();
                    Log log = f5041i;
                    log.j("Detected Android API Level = " + Build.VERSION.SDK_INT);
                    log.j("Creating the AWSKeyValueStore with key for sharedPreferencesForData = " + this.f5047e);
                    n();
                } else if (!z10) {
                    f5041i.j("Persistence is disabled. Data will be accessed from memory.");
                }
                if (!z10 && z11) {
                    this.f5046d.edit().clear().apply();
                }
            } catch (Exception e10) {
                Log log2 = f5041i;
                log2.b("Error in enabling persistence for " + this.f5047e, e10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
