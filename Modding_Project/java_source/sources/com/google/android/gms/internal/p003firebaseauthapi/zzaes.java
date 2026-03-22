package com.google.android.gms.internal.p003firebaseauthapi;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.logging.Logger;
import java.net.HttpURLConnection;
import java.net.URL;
import w8.b;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaes  reason: invalid package */
/* loaded from: classes4.dex */
public interface zzaes {
    public static final Logger zza = new Logger("FirebaseAuth", "GetAuthDomainTaskResponseHandler");

    Context zza();

    Uri.Builder zza(Intent intent, String str, String str2);

    String zza(String str);

    HttpURLConnection zza(URL url);

    void zza(Uri uri, String str, b<s7.b> bVar);

    void zza(String str, Status status);
}
