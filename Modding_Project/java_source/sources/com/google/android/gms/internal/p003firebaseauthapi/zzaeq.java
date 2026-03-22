package com.google.android.gms.internal.p003firebaseauthapi;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.f;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import v7.j;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaeq  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaeq extends AsyncTask<Void, Void, zzaep> {
    private static final Logger zza = new Logger("FirebaseAuth", "GetAuthDomainTask");
    private final String zzb;
    private final String zzc;
    private final WeakReference<zzaes> zzd;
    private final Uri.Builder zze;
    private final String zzf;
    private final f zzg;

    public zzaeq(String str, String str2, Intent intent, f fVar, zzaes zzaesVar) {
        this.zzb = Preconditions.checkNotEmpty(str);
        this.zzg = (f) Preconditions.checkNotNull(fVar);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(intent);
        String checkNotEmpty = Preconditions.checkNotEmpty(intent.getStringExtra("com.google.firebase.auth.KEY_API_KEY"));
        Uri.Builder buildUpon = Uri.parse(zzaesVar.zza(checkNotEmpty)).buildUpon();
        buildUpon.appendPath("getProjectConfig").appendQueryParameter("key", checkNotEmpty).appendQueryParameter("androidPackageName", str).appendQueryParameter("sha1Cert", (String) Preconditions.checkNotNull(str2));
        this.zzc = buildUpon.build().toString();
        this.zzd = new WeakReference<>(zzaesVar);
        this.zze = zzaesVar.zza(intent, str, str2);
        this.zzf = intent.getStringExtra("com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    @Nullable
    /* renamed from: zza */
    public final zzaep doInBackground(Void... voidArr) {
        try {
            URL url = new URL(this.zzc);
            zzaes zzaesVar = this.zzd.get();
            HttpURLConnection zza2 = zzaesVar.zza(url);
            zza2.addRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json; charset=UTF-8");
            zza2.setConnectTimeout(60000);
            new zzafe(zzaesVar.zza(), this.zzg, zzafc.zza().zzb()).zza(zza2);
            int responseCode = zza2.getResponseCode();
            if (responseCode != 200) {
                String zza3 = zza(zza2);
                zza.e(String.format("Error getting project config. Failed with %s %s", zza3, Integer.valueOf(responseCode)), new Object[0]);
                return zzaep.zzb(zza3);
            }
            zzahq zzahqVar = new zzahq();
            zzahqVar.zza(new String(zza(zza2.getInputStream(), 128)));
            if (!TextUtils.isEmpty(this.zzf)) {
                if (!zzahqVar.zza().contains(this.zzf)) {
                    return zzaep.zzb("UNAUTHORIZED_DOMAIN");
                }
                return zzaep.zza(this.zzf);
            }
            for (String str : zzahqVar.zza()) {
                if (zza(str)) {
                    return zzaep.zza(str);
                }
            }
            return null;
        } catch (zzacn e10) {
            Logger logger = zza;
            String message = e10.getMessage();
            logger.e("ConversionException encountered: " + message, new Object[0]);
            return null;
        } catch (IOException e11) {
            Logger logger2 = zza;
            String message2 = e11.getMessage();
            logger2.e("IOException occurred: " + message2, new Object[0]);
            return null;
        } catch (NullPointerException e12) {
            Logger logger3 = zza;
            String message3 = e12.getMessage();
            logger3.e("Null pointer encountered: " + message3, new Object[0]);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onCancelled(zzaep zzaepVar) {
        onPostExecute((zzaep) null);
    }

    @Nullable
    private static String zza(HttpURLConnection httpURLConnection) throws zzacn {
        try {
            if (httpURLConnection.getResponseCode() >= 400) {
                InputStream errorStream = httpURLConnection.getErrorStream();
                if (errorStream == null) {
                    return "WEB_INTERNAL_ERROR:Could not retrieve the authDomain for this project but did not receive an error response from the network request. Please try again.";
                }
                return (String) zzaex.zza(new String(zza(errorStream, 128)), String.class);
            }
            return null;
        } catch (IOException e10) {
            Logger logger = zza;
            String valueOf = String.valueOf(e10);
            logger.w("Error parsing error message from response body in getErrorMessageFromBody. " + valueOf, new Object[0]);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: zza */
    public final void onPostExecute(zzaep zzaepVar) {
        String str;
        String str2;
        Uri.Builder builder;
        zzaes zzaesVar = this.zzd.get();
        if (zzaepVar != null) {
            str = zzaepVar.zza();
            str2 = zzaepVar.zzb();
        } else {
            str = null;
            str2 = null;
        }
        if (zzaesVar == null) {
            zza.e("An error has occurred: the handler reference has returned null.", new Object[0]);
        } else if (!TextUtils.isEmpty(str) && (builder = this.zze) != null) {
            builder.authority(str);
            zzaesVar.zza(this.zze.build(), this.zzb, FirebaseAuth.getInstance(this.zzg).J());
        } else {
            zzaesVar.zza(this.zzb, j.a(str2));
        }
    }

    @VisibleForTesting
    private static boolean zza(String str) {
        try {
            String host = new URI("https://" + str).getHost();
            if (host != null) {
                if (host.endsWith("firebaseapp.com")) {
                    return true;
                }
                if (host.endsWith("web.app")) {
                    return true;
                }
            }
        } catch (URISyntaxException e10) {
            Logger logger = zza;
            String message = e10.getMessage();
            logger.e("Error parsing URL for auth domain check: " + str + ". " + message, new Object[0]);
        }
        return false;
    }

    private static byte[] zza(InputStream inputStream, int i10) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[128];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Throwable th2) {
            byteArrayOutputStream.close();
            throw th2;
        }
    }
}
