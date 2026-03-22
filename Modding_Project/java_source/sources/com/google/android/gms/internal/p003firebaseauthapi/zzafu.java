package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import org.json.JSONException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafu  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzafu {
    private static final boolean zza(int i10) {
        return i10 >= 200 && i10 < 300;
    }

    private static void zza(HttpURLConnection httpURLConnection, zzafv<?> zzafvVar, Type type) {
        InputStream errorStream;
        try {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (zza(responseCode)) {
                    errorStream = httpURLConnection.getInputStream();
                } else {
                    errorStream = httpURLConnection.getErrorStream();
                }
                StringBuilder sb2 = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, "UTF-8"));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb2.append(readLine);
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
                bufferedReader.close();
                String sb3 = sb2.toString();
                if (!zza(responseCode)) {
                    zzafvVar.zza((String) zzaex.zza(sb3, String.class));
                } else {
                    zzafvVar.zza((zzafv<?>) ((zzaez) zzaex.zza(sb3, type)));
                }
                httpURLConnection.disconnect();
            } catch (zzacn e10) {
                e = e10;
                zzafvVar.zza(e.getMessage());
                httpURLConnection.disconnect();
            } catch (SocketTimeoutException unused) {
                zzafvVar.zza("TIMEOUT");
                httpURLConnection.disconnect();
            } catch (IOException e11) {
                e = e11;
                zzafvVar.zza(e.getMessage());
                httpURLConnection.disconnect();
            }
        } catch (Throwable th4) {
            httpURLConnection.disconnect();
            throw th4;
        }
    }

    public static void zza(String str, zzafv<?> zzafvVar, Type type, zzafe zzafeVar) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(60000);
            zzafeVar.zza(httpURLConnection);
            zza(httpURLConnection, zzafvVar, type);
        } catch (SocketTimeoutException unused) {
            zzafvVar.zza("TIMEOUT");
        } catch (UnknownHostException unused2) {
            zzafvVar.zza("<<Network Error>>");
        } catch (IOException e10) {
            zzafvVar.zza(e10.getMessage());
        }
    }

    public static void zza(String str, zzafa zzafaVar, zzafv<?> zzafvVar, Type type, zzafe zzafeVar) {
        try {
            Preconditions.checkNotNull(zzafaVar);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoOutput(true);
            byte[] bytes = zzafaVar.zza().getBytes(Charset.defaultCharset());
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json");
            httpURLConnection.setConnectTimeout(60000);
            zzafeVar.zza(httpURLConnection);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream(), bytes.length);
            try {
                bufferedOutputStream.write(bytes, 0, bytes.length);
                bufferedOutputStream.close();
                zza(httpURLConnection, zzafvVar, type);
            } catch (Throwable th2) {
                try {
                    bufferedOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (SocketTimeoutException unused) {
            zzafvVar.zza("TIMEOUT");
        } catch (IOException e10) {
            e = e10;
            zzafvVar.zza(e.getMessage());
        } catch (NullPointerException e11) {
            e = e11;
            zzafvVar.zza(e.getMessage());
        } catch (UnknownHostException unused2) {
            zzafvVar.zza("<<Network Error>>");
        } catch (JSONException e12) {
            e = e12;
            zzafvVar.zza(e.getMessage());
        }
    }
}
