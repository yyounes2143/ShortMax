package com.ss.mediakit.vcnlib;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes6.dex */
public class X509Util {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String OID_ANY_EKU = "2.5.29.37.0";
    private static final String OID_SERVER_GATED_MICROSOFT = "1.3.6.1.4.1.311.10.3.3";
    private static final String OID_SERVER_GATED_NETSCAPE = "2.16.840.1.113730.4.1";
    private static final String OID_TLS_SERVER_AUTH = "1.3.6.1.5.5.7.3.1";
    private static final String TAG = "X509Util";
    private static CertificateFactory sCertificateFactory;
    private static X509TrustManagerImplementation sDefaultTrustManager;
    private static boolean sDisableNativeCodeForTest;
    private static boolean sLoadedSystemKeyStore;
    private static File sSystemCertificateDirectory;
    private static KeyStore sSystemKeyStore;
    private static Set<Pair<X500Principal, PublicKey>> sSystemTrustAnchorCache;
    private static KeyStore sTestKeyStore;
    private static X509TrustManagerImplementation sTestTrustManager;
    private static TrustStorageListener sTrustStorageListener;
    private static final Object sLock = new Object();
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class TrustStorageListener extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean equals;
            if (Build.VERSION.SDK_INT >= 26) {
                equals = true;
                if (!"android.security.action.KEYCHAIN_CHANGED".equals(intent.getAction()) && !"android.security.action.TRUST_STORE_CHANGED".equals(intent.getAction()) && (!"android.security.action.KEY_ACCESS_CHANGED".equals(intent.getAction()) || intent.getBooleanExtra("android.security.extra.KEY_ACCESSIBLE", false))) {
                    equals = false;
                }
            } else {
                equals = "android.security.STORAGE_CHANGED".equals(intent.getAction());
            }
            if (equals) {
                try {
                    X509Util.reloadDefaultTrustManager();
                } catch (KeyStoreException e10) {
                    Log.e(X509Util.TAG, "Unable to reload the default TrustManager", e10);
                } catch (NoSuchAlgorithmException e11) {
                    Log.e(X509Util.TAG, "Unable to reload the default TrustManager", e11);
                } catch (CertificateException e12) {
                    Log.e(X509Util.TAG, "Unable to reload the default TrustManager", e12);
                }
            }
        }

        private TrustStorageListener() {
        }
    }

    /* loaded from: classes6.dex */
    private static final class X509TrustManagerIceCreamSandwich implements X509TrustManagerImplementation {
        private final X509TrustManager mTrustManager;

        public X509TrustManagerIceCreamSandwich(X509TrustManager x509TrustManager) {
            this.mTrustManager = x509TrustManager;
        }

        @Override // com.ss.mediakit.vcnlib.X509Util.X509TrustManagerImplementation
        public List<X509Certificate> checkServerTrusted(X509Certificate[] x509CertificateArr, String str, String str2) throws CertificateException {
            this.mTrustManager.checkServerTrusted(x509CertificateArr, str);
            return Collections.emptyList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public interface X509TrustManagerImplementation {
        List<X509Certificate> checkServerTrusted(X509Certificate[] x509CertificateArr, String str, String str2) throws CertificateException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class X509TrustManagerJellyBean implements X509TrustManagerImplementation {
        private final X509TrustManagerExtensions mTrustManagerExtensions;

        @SuppressLint({"NewApi"})
        public X509TrustManagerJellyBean(X509TrustManager x509TrustManager) {
            this.mTrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        }

        @Override // com.ss.mediakit.vcnlib.X509Util.X509TrustManagerImplementation
        @SuppressLint({"NewApi"})
        public List<X509Certificate> checkServerTrusted(X509Certificate[] x509CertificateArr, String str, String str2) throws CertificateException {
            return this.mTrustManagerExtensions.checkServerTrusted(x509CertificateArr, str, str2);
        }
    }

    public static void addTestRootCertificate(byte[] bArr) throws CertificateException, KeyStoreException, NoSuchAlgorithmException {
        ensureInitialized();
        X509Certificate createCertificateFromBytes = createCertificateFromBytes(bArr);
        synchronized (sLock) {
            KeyStore keyStore = sTestKeyStore;
            keyStore.setCertificateEntry("root_cert_" + Integer.toString(sTestKeyStore.size()), createCertificateFromBytes);
            reloadTestTrustManager();
        }
    }

    public static void clearTestRootCertificates() throws NoSuchAlgorithmException, CertificateException, KeyStoreException {
        ensureInitialized();
        synchronized (sLock) {
            try {
                sTestKeyStore.load(null);
                reloadTestTrustManager();
            } catch (IOException unused) {
            }
        }
    }

    public static X509Certificate createCertificateFromBytes(byte[] bArr) throws CertificateException, KeyStoreException, NoSuchAlgorithmException {
        ensureInitialized();
        return (X509Certificate) sCertificateFactory.generateCertificate(new ByteArrayInputStream(bArr));
    }

    private static X509TrustManagerImplementation createTrustManager(KeyStore keyStore) throws KeyStoreException, NoSuchAlgorithmException {
        TrustManager[] trustManagers;
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
            if (trustManager instanceof X509TrustManager) {
                try {
                    return new X509TrustManagerJellyBean((X509TrustManager) trustManager);
                } catch (IllegalArgumentException e10) {
                    Log.e(TAG, "Error creating trust manager (" + trustManager.getClass().getName() + "): " + e10);
                }
            }
        }
        Log.e(TAG, "Could not find suitable trust manager");
        return null;
    }

    private static void ensureInitialized() throws CertificateException, KeyStoreException, NoSuchAlgorithmException {
        synchronized (sLock) {
            ensureInitializedLocked();
        }
    }

    private static void ensureInitializedLocked() throws CertificateException, KeyStoreException, NoSuchAlgorithmException {
        if (sCertificateFactory == null) {
            sCertificateFactory = CertificateFactory.getInstance(AndroidStaticDeviceInfoDataSource.CERTIFICATE_TYPE_X509);
        }
        if (sDefaultTrustManager == null) {
            sDefaultTrustManager = createTrustManager(null);
        }
        if (!sLoadedSystemKeyStore) {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidCAStore");
                sSystemKeyStore = keyStore;
                try {
                    keyStore.load(null);
                } catch (IOException unused) {
                }
                sSystemCertificateDirectory = new File(System.getenv("ANDROID_ROOT") + "/etc/security/cacerts");
            } catch (KeyStoreException unused2) {
            }
            sLoadedSystemKeyStore = true;
        }
        if (sSystemTrustAnchorCache == null) {
            sSystemTrustAnchorCache = new HashSet();
        }
        if (sTestKeyStore == null) {
            KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());
            sTestKeyStore = keyStore2;
            try {
                keyStore2.load(null);
            } catch (IOException unused3) {
            }
        }
        if (sTestTrustManager == null) {
            sTestTrustManager = createTrustManager(sTestKeyStore);
        }
        if (sTrustStorageListener == null) {
            sTrustStorageListener = new TrustStorageListener();
            IntentFilter intentFilter = new IntentFilter();
            if (Build.VERSION.SDK_INT >= 26) {
                intentFilter.addAction("android.security.action.KEYCHAIN_CHANGED");
                intentFilter.addAction("android.security.action.KEY_ACCESS_CHANGED");
                intentFilter.addAction("android.security.action.TRUST_STORE_CHANGED");
            } else {
                intentFilter.addAction("android.security.STORAGE_CHANGED");
            }
            NetUtils.getApplicationContext().registerReceiver(sTrustStorageListener, intentFilter);
        }
    }

    private static String hashPrincipal(X500Principal x500Principal) throws NoSuchAlgorithmException {
        byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(x500Principal.getEncoded());
        char[] cArr = new char[8];
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = i10 * 2;
            char[] cArr2 = HEX_DIGITS;
            byte b10 = digest[3 - i10];
            cArr[i11] = cArr2[(b10 >> 4) & 15];
            cArr[i11 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    private static boolean isKnownRoot(X509Certificate x509Certificate) throws NoSuchAlgorithmException, KeyStoreException {
        if (sSystemKeyStore == null) {
            return false;
        }
        Pair<X500Principal, PublicKey> pair = new Pair<>(x509Certificate.getSubjectX500Principal(), x509Certificate.getPublicKey());
        if (sSystemTrustAnchorCache.contains(pair)) {
            return true;
        }
        String hashPrincipal = hashPrincipal(x509Certificate.getSubjectX500Principal());
        int i10 = 0;
        while (true) {
            String str = hashPrincipal + '.' + i10;
            if (!new File(sSystemCertificateDirectory, str).exists()) {
                return false;
            }
            Certificate certificate = sSystemKeyStore.getCertificate("system:" + str);
            if (certificate != null) {
                if (!(certificate instanceof X509Certificate)) {
                    Log.e(TAG, "Anchor " + str + " not an X509Certificate: " + certificate.getClass().getName());
                } else {
                    X509Certificate x509Certificate2 = (X509Certificate) certificate;
                    if (x509Certificate.getSubjectX500Principal().equals(x509Certificate2.getSubjectX500Principal()) && x509Certificate.getPublicKey().equals(x509Certificate2.getPublicKey())) {
                        sSystemTrustAnchorCache.add(pair);
                        return true;
                    }
                }
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void reloadDefaultTrustManager() throws KeyStoreException, NoSuchAlgorithmException, CertificateException {
        synchronized (sLock) {
            sDefaultTrustManager = null;
            sSystemTrustAnchorCache = null;
            ensureInitializedLocked();
        }
    }

    private static void reloadTestTrustManager() throws KeyStoreException, NoSuchAlgorithmException {
        sTestTrustManager = createTrustManager(sTestKeyStore);
    }

    public static void setDisableNativeCodeForTest(boolean z10) {
        sDisableNativeCodeForTest = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean verifyKeyUsage(java.security.cert.X509Certificate r4) throws java.security.cert.CertificateException {
        /*
            r0 = 0
            java.util.List r4 = r4.getExtendedKeyUsage()     // Catch: java.lang.NullPointerException -> L3b
            r1 = 1
            if (r4 != 0) goto L9
            return r1
        L9:
            java.util.Iterator r4 = r4.iterator()
        Ld:
            boolean r2 = r4.hasNext()
            if (r2 != 0) goto L14
            return r0
        L14:
            java.lang.Object r2 = r4.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = "1.3.6.1.5.5.7.3.1"
            boolean r3 = r2.equals(r3)
            if (r3 != 0) goto L3a
            java.lang.String r3 = "2.5.29.37.0"
            boolean r3 = r2.equals(r3)
            if (r3 != 0) goto L3a
            java.lang.String r3 = "2.16.840.1.113730.4.1"
            boolean r3 = r2.equals(r3)
            if (r3 != 0) goto L3a
            java.lang.String r3 = "1.3.6.1.4.1.311.10.3.3"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto Ld
        L3a:
            return r1
        L3b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.vcnlib.X509Util.verifyKeyUsage(java.security.cert.X509Certificate):boolean");
    }

    public static AndroidCertVerifyResult verifyServerCertificates(byte[][] bArr, String str, String str2) throws KeyStoreException, NoSuchAlgorithmException {
        List<X509Certificate> checkServerTrusted;
        boolean z10;
        if (bArr != null && bArr.length != 0 && bArr[0] != null) {
            try {
                ensureInitialized();
                ArrayList arrayList = new ArrayList();
                try {
                    arrayList.add(createCertificateFromBytes(bArr[0]));
                    for (int i10 = 1; i10 < bArr.length; i10++) {
                        try {
                            arrayList.add(createCertificateFromBytes(bArr[i10]));
                        } catch (CertificateException unused) {
                            Log.w(TAG, "intermediate " + i10 + " failed parsing");
                        }
                    }
                    X509Certificate[] x509CertificateArr = (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                    try {
                        x509CertificateArr[0].checkValidity();
                        if (!verifyKeyUsage(x509CertificateArr[0])) {
                            return new AndroidCertVerifyResult(-6);
                        }
                        synchronized (sLock) {
                            X509TrustManagerImplementation x509TrustManagerImplementation = sDefaultTrustManager;
                            if (x509TrustManagerImplementation == null) {
                                return new AndroidCertVerifyResult(-1);
                            }
                            try {
                                checkServerTrusted = x509TrustManagerImplementation.checkServerTrusted(x509CertificateArr, str, str2);
                            } catch (CertificateException e10) {
                                try {
                                    checkServerTrusted = sTestTrustManager.checkServerTrusted(x509CertificateArr, str, str2);
                                } catch (CertificateException unused2) {
                                    Log.i(TAG, "Failed to validate the certificate chain, error: " + e10.getMessage());
                                    return new AndroidCertVerifyResult(-2);
                                }
                            }
                            if (checkServerTrusted.size() > 0) {
                                z10 = isKnownRoot(checkServerTrusted.get(checkServerTrusted.size() - 1));
                            } else {
                                z10 = false;
                            }
                            return new AndroidCertVerifyResult(0, z10, checkServerTrusted);
                        }
                    } catch (CertificateExpiredException unused3) {
                        return new AndroidCertVerifyResult(-3);
                    } catch (CertificateNotYetValidException unused4) {
                        return new AndroidCertVerifyResult(-4);
                    } catch (CertificateException unused5) {
                        return new AndroidCertVerifyResult(-1);
                    }
                } catch (CertificateException unused6) {
                    return new AndroidCertVerifyResult(-5);
                }
            } catch (CertificateException unused7) {
                return new AndroidCertVerifyResult(-1);
            }
        }
        throw new IllegalArgumentException("Expected non-null and non-empty certificate chain passed as |certChain|. |certChain|=" + Arrays.deepToString(bArr));
    }
}
