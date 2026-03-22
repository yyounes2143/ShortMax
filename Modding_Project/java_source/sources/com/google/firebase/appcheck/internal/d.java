package com.google.firebase.appcheck.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseException;
import com.google.firebase.f;
import com.google.firebase.m;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import org.json.JSONException;
import q7.k;
import q7.l;
import u8.h;
/* compiled from: NetworkClient.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: f  reason: collision with root package name */
    private static final String f20376f = "com.google.firebase.appcheck.internal.d";

    /* renamed from: a  reason: collision with root package name */
    private final Context f20377a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20378b;

    /* renamed from: c  reason: collision with root package name */
    private final String f20379c;

    /* renamed from: d  reason: collision with root package name */
    private final String f20380d;

    /* renamed from: e  reason: collision with root package name */
    private final w8.b<h> f20381e;

    public d(@NonNull f fVar) {
        this(fVar.l(), fVar.p(), ((b) p7.e.d(fVar)).m());
    }

    private String d() {
        try {
            Context context = this.f20377a;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes == null) {
                String str = f20376f;
                Log.e(str, "Could not get fingerprint hash for package: " + this.f20377a.getPackageName());
                return null;
            }
            return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
        } catch (PackageManager.NameNotFoundException e10) {
            String str2 = f20376f;
            Log.e(str2, "No such package: " + this.f20377a.getPackageName(), e10);
            return null;
        }
    }

    private static String f(int i10) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 == 4) {
                    return "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeRecaptchaEnterpriseToken?key=%s";
                }
                throw new IllegalArgumentException("Unknown token type.");
            }
            return "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangePlayIntegrityToken?key=%s";
        }
        return "https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:exchangeDebugToken?key=%s";
    }

    private static boolean g(int i10) {
        if (i10 >= 200 && i10 < 300) {
            return true;
        }
        return false;
    }

    private String h(@NonNull URL url, @NonNull byte[] bArr, @NonNull l lVar, boolean z10) throws FirebaseException, IOException, JSONException {
        InputStream errorStream;
        HttpURLConnection a10 = a(url);
        try {
            a10.setDoOutput(true);
            a10.setFixedLengthStreamingMode(bArr.length);
            a10.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json");
            String e10 = e();
            if (e10 != null) {
                a10.setRequestProperty("X-Firebase-Client", e10);
            }
            a10.setRequestProperty("X-Android-Package", this.f20377a.getPackageName());
            a10.setRequestProperty("X-Android-Cert", d());
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(a10.getOutputStream(), bArr.length);
            bufferedOutputStream.write(bArr, 0, bArr.length);
            bufferedOutputStream.close();
            int responseCode = a10.getResponseCode();
            if (g(responseCode)) {
                errorStream = a10.getInputStream();
            } else {
                errorStream = a10.getErrorStream();
            }
            StringBuilder sb2 = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, StandardCharsets.UTF_8));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb2.append(readLine);
            }
            bufferedReader.close();
            String sb3 = sb2.toString();
            if (g(responseCode)) {
                if (z10) {
                    lVar.c();
                }
                a10.disconnect();
                return sb3;
            }
            lVar.d(responseCode);
            k a11 = k.a(sb3);
            throw new FirebaseException("Error returned from API. code: " + a11.b() + " body: " + a11.c());
        } catch (Throwable th2) {
            a10.disconnect();
            throw th2;
        }
    }

    @VisibleForTesting
    HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @NonNull
    public q7.a b(@NonNull byte[] bArr, int i10, @NonNull l lVar) throws FirebaseException, IOException, JSONException {
        if (lVar.a()) {
            return q7.a.a(h(new URL(String.format(f(i10), this.f20380d, this.f20379c, this.f20378b)), bArr, lVar, true));
        }
        throw new FirebaseException("Too many attempts.");
    }

    @NonNull
    public String c(@NonNull byte[] bArr, @NonNull l lVar) throws FirebaseException, IOException, JSONException {
        if (lVar.a()) {
            return h(new URL(String.format("https://firebaseappcheck.googleapis.com/v1/projects/%s/apps/%s:generatePlayIntegrityChallenge?key=%s", this.f20380d, this.f20379c, this.f20378b)), bArr, lVar, false);
        }
        throw new FirebaseException("Too many attempts.");
    }

    @VisibleForTesting
    String e() {
        h hVar = this.f20381e.get();
        if (hVar != null) {
            try {
                return (String) Tasks.await(hVar.b());
            } catch (Exception unused) {
                Log.w(f20376f, "Unable to get heartbeats!");
            }
        }
        return null;
    }

    @VisibleForTesting
    d(@NonNull Context context, @NonNull m mVar, @NonNull w8.b<h> bVar) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(mVar);
        Preconditions.checkNotNull(bVar);
        this.f20377a = context;
        this.f20378b = mVar.b();
        this.f20379c = mVar.c();
        String e10 = mVar.e();
        this.f20380d = e10;
        if (e10 != null) {
            this.f20381e = bVar;
            return;
        }
        throw new IllegalArgumentException("FirebaseOptions#getProjectId cannot be null.");
    }
}
