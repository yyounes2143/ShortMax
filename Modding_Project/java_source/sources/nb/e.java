package nb;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import pb.f;
/* loaded from: classes5.dex */
public class e implements X509TrustManager {

    /* renamed from: a  reason: collision with root package name */
    protected List<X509TrustManager> f62897a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private X509Certificate[] f62898b;

    public e(InputStream inputStream, String str) throws IllegalArgumentException {
        a(inputStream, str);
    }

    private void a(InputStream inputStream, String str) {
        if (inputStream != null && str != null) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                try {
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
                    KeyStore keyStore = KeyStore.getInstance("bks");
                    keyStore.load(inputStream, str.toCharArray());
                    trustManagerFactory.init(keyStore);
                    TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                    for (TrustManager trustManager : trustManagers) {
                        if (trustManager instanceof X509TrustManager) {
                            this.f62897a.add((X509TrustManager) trustManager);
                        }
                    }
                    pb.e.b(inputStream);
                } finally {
                    pb.e.b(inputStream);
                }
            } catch (IOException | NegativeArraySizeException | OutOfMemoryError | KeyStoreException | NoSuchAlgorithmException | CertificateException e10) {
                f.d("SX509TM", "loadInputStream: exception : " + e10.getMessage());
            }
            f.b("SX509TM", "loadInputStream: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            return;
        }
        throw new IllegalArgumentException("inputstream or trustPwd is null");
    }

    public void b(X509Certificate[] x509CertificateArr) {
        this.f62898b = x509CertificateArr;
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        f.e("SX509TM", "checkClientTrusted: ");
        for (X509TrustManager x509TrustManager : this.f62897a) {
            try {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            } catch (CertificateException e10) {
                f.d("SX509TM", "checkServerTrusted CertificateException" + e10.getMessage());
            }
        }
        throw new CertificateException("checkServerTrusted CertificateException");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        b(x509CertificateArr);
        f.e("SX509TM", "checkServerTrusted begin,size=" + x509CertificateArr.length + ",authType=" + str);
        long currentTimeMillis = System.currentTimeMillis();
        int length = x509CertificateArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            X509Certificate x509Certificate = x509CertificateArr[i10];
            f.b("SX509TM", "server ca chain: getSubjectDN is :" + x509Certificate.getSubjectDN());
            f.b("SX509TM", "IssuerDN :" + x509Certificate.getIssuerDN());
            f.b("SX509TM", "SerialNumber : " + x509Certificate.getSerialNumber());
        }
        int size = this.f62897a.size();
        for (int i11 = 0; i11 < size; i11++) {
            try {
                f.e("SX509TM", "check server i=" + i11);
                X509TrustManager x509TrustManager = this.f62897a.get(i11);
                X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
                if (acceptedIssuers != null) {
                    f.e("SX509TM", "client root ca size=" + acceptedIssuers.length);
                    for (int i12 = 0; i12 < acceptedIssuers.length; i12++) {
                        f.b("SX509TM", "client root ca getIssuerDN :" + acceptedIssuers[i12].getIssuerDN());
                    }
                }
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                f.e("SX509TM", "checkServerTrusted end, " + x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                return;
            } catch (CertificateException e10) {
                f.d("SX509TM", "checkServerTrusted error :" + e10.getMessage() + " , time : " + i11);
                if (i11 == size - 1) {
                    if (x509CertificateArr.length > 0) {
                        f.d("SX509TM", "root ca issuer : " + x509CertificateArr[x509CertificateArr.length - 1].getIssuerDN());
                    }
                    throw e10;
                }
            }
        }
        f.b("SX509TM", "checkServerTrusted: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        try {
            ArrayList arrayList = new ArrayList();
            for (X509TrustManager x509TrustManager : this.f62897a) {
                arrayList.addAll(Arrays.asList(x509TrustManager.getAcceptedIssuers()));
            }
            return (X509Certificate[]) arrayList.toArray(new X509Certificate[arrayList.size()]);
        } catch (Exception e10) {
            f.d("SX509TM", "getAcceptedIssuers exception : " + e10.getMessage());
            return new X509Certificate[0];
        }
    }
}
