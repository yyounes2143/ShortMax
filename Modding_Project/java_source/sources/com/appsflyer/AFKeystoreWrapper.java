package com.appsflyer;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Calendar;
import java.util.Enumeration;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes2.dex */
public class AFKeystoreWrapper {
    public KeyStore getMonetizationNetwork;
    private Context getRevenue;
    public final Object getMediationNetwork = new Object();
    public String getCurrencyIso4217Code = "";
    public int AFAdRevenueData = 0;

    public AFKeystoreWrapper(Context context) {
        this.getRevenue = context;
        AFLogger.afInfoLog("Initialising KeyStore..");
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.getMonetizationNetwork = keyStore;
            keyStore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e10) {
            AFLogger.afErrorLog("Couldn't load keystore instance of type: AndroidKeyStore", e10);
        }
    }

    public final boolean AFAdRevenueData() {
        boolean z10;
        synchronized (this.getMediationNetwork) {
            try {
                KeyStore keyStore = this.getMonetizationNetwork;
                z10 = false;
                if (keyStore != null) {
                    Enumeration<String> aliases = keyStore.aliases();
                    while (true) {
                        if (!aliases.hasMoreElements()) {
                            break;
                        }
                        String nextElement = aliases.nextElement();
                        if (nextElement != null && AFAdRevenueData(nextElement)) {
                            String[] split = nextElement.split(",");
                            if (split.length == 3) {
                                AFLogger.afInfoLog("Found a matching AF key with alias:\n".concat(nextElement));
                                z10 = true;
                                String[] split2 = split[1].trim().split(ContainerUtils.KEY_VALUE_DELIMITER);
                                String[] split3 = split[2].trim().split(ContainerUtils.KEY_VALUE_DELIMITER);
                                if (split2.length == 2 && split3.length == 2) {
                                    this.getCurrencyIso4217Code = split2[1].trim();
                                    this.AFAdRevenueData = Integer.parseInt(split3[1].trim());
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public final String getCurrencyIso4217Code() {
        String str;
        synchronized (this.getMediationNetwork) {
            str = this.getCurrencyIso4217Code;
        }
        return str;
    }

    public final String getMonetizationNetwork() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("com.appsflyer,");
        synchronized (this.getMediationNetwork) {
            sb2.append("KSAppsFlyerId=");
            sb2.append(this.getCurrencyIso4217Code);
            sb2.append(",");
            sb2.append("KSAppsFlyerRICounter=");
            sb2.append(this.AFAdRevenueData);
        }
        return sb2.toString();
    }

    public final void getRevenue(String str) {
        AFLogger.afInfoLog("Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 5);
            synchronized (this.getMediationNetwork) {
                if (!this.getMonetizationNetwork.containsAlias(str)) {
                    KeyGenParameterSpec build = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(build);
                    keyPairGenerator.generateKeyPair();
                } else {
                    AFLogger.afInfoLog("Alias already exists: ".concat(String.valueOf(str)));
                }
            }
        } catch (Throwable th2) {
            StringBuilder sb2 = new StringBuilder("Exception ");
            sb2.append(th2.getMessage());
            sb2.append(" occurred");
            AFLogger.afErrorLog(sb2.toString(), th2);
        }
    }

    private static boolean AFAdRevenueData(String str) {
        return str.startsWith("com.appsflyer");
    }

    public final int getRevenue() {
        int i10;
        synchronized (this.getMediationNetwork) {
            i10 = this.AFAdRevenueData;
        }
        return i10;
    }
}
