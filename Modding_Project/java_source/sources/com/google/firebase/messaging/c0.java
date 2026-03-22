package com.google.firebase.messaging;

import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GmsRpc.java */
/* loaded from: classes5.dex */
public class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.f f21158a;

    /* renamed from: b  reason: collision with root package name */
    private final h0 f21159b;

    /* renamed from: c  reason: collision with root package name */
    private final Rpc f21160c;

    /* renamed from: d  reason: collision with root package name */
    private final w8.b<e9.i> f21161d;

    /* renamed from: e  reason: collision with root package name */
    private final w8.b<HeartBeatInfo> f21162e;

    /* renamed from: f  reason: collision with root package name */
    private final x8.e f21163f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(com.google.firebase.f fVar, h0 h0Var, w8.b<e9.i> bVar, w8.b<HeartBeatInfo> bVar2, x8.e eVar) {
        this(fVar, h0Var, new Rpc(fVar.l()), bVar, bVar2, eVar);
    }

    private static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task<String> c(Task<Bundle> task) {
        return task.continueWith(new androidx.credentials.a(), new Continuation() { // from class: com.google.firebase.messaging.b0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                String i10;
                i10 = c0.this.i(task2);
                return i10;
            }
        });
    }

    private String d() {
        try {
            return b(MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1).digest(this.f21158a.o().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    @AnyThread
    private String g(Bundle bundle) throws IOException {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString("error");
            if (!"RST".equals(string3)) {
                if (string3 != null) {
                    throw new IOException(string3);
                }
                Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
            throw new IOException("INSTANCE_ID_RESET");
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(String str) {
        if (!"SERVICE_NOT_AVAILABLE".equals(str) && !"INTERNAL_SERVER_ERROR".equals(str) && !"InternalServerError".equals(str)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String i(Task task) throws Exception {
        return g((Bundle) task.getResult(IOException.class));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void j(java.lang.String r3, java.lang.String r4, android.os.Bundle r5) throws java.util.concurrent.ExecutionException, java.lang.InterruptedException {
        /*
            r2 = this;
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "scope"
            r5.putString(r1, r4)
            java.lang.String r4 = "sender"
            r5.putString(r4, r3)
            java.lang.String r4 = "subtype"
            r5.putString(r4, r3)
            com.google.firebase.f r3 = r2.f21158a
            com.google.firebase.m r3 = r3.p()
            java.lang.String r3 = r3.c()
            java.lang.String r4 = "gmp_app_id"
            r5.putString(r4, r3)
            com.google.firebase.messaging.h0 r3 = r2.f21159b
            int r3 = r3.d()
            java.lang.String r3 = java.lang.Integer.toString(r3)
            java.lang.String r4 = "gmsv"
            r5.putString(r4, r3)
            int r3 = android.os.Build.VERSION.SDK_INT
            java.lang.String r3 = java.lang.Integer.toString(r3)
            java.lang.String r4 = "osv"
            r5.putString(r4, r3)
            com.google.firebase.messaging.h0 r3 = r2.f21159b
            java.lang.String r3 = r3.a()
            java.lang.String r4 = "app_ver"
            r5.putString(r4, r3)
            com.google.firebase.messaging.h0 r3 = r2.f21159b
            java.lang.String r3 = r3.b()
            java.lang.String r4 = "app_ver_name"
            r5.putString(r4, r3)
            java.lang.String r3 = "firebase-app-name-hash"
            java.lang.String r4 = r2.d()
            r5.putString(r3, r4)
            x8.e r3 = r2.f21163f     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            r4 = 0
            com.google.android.gms.tasks.Task r3 = r3.a(r4)     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            java.lang.Object r3 = com.google.android.gms.tasks.Tasks.await(r3)     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            com.google.firebase.installations.f r3 = (com.google.firebase.installations.f) r3     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            java.lang.String r3 = r3.b()     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            if (r4 != 0) goto L7a
            java.lang.String r4 = "Goog-Firebase-Installations-Auth"
            r5.putString(r4, r3)     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            goto L85
        L76:
            r3 = move-exception
            goto L80
        L78:
            r3 = move-exception
            goto L80
        L7a:
            java.lang.String r3 = "FIS auth token is empty"
            android.util.Log.w(r0, r3)     // Catch: java.lang.InterruptedException -> L76 java.util.concurrent.ExecutionException -> L78
            goto L85
        L80:
            java.lang.String r4 = "Failed to get FIS auth token"
            android.util.Log.e(r0, r4, r3)
        L85:
            x8.e r3 = r2.f21163f
            com.google.android.gms.tasks.Task r3 = r3.getId()
            java.lang.Object r3 = com.google.android.gms.tasks.Tasks.await(r3)
            java.lang.String r3 = (java.lang.String) r3
            java.lang.String r4 = "appid"
            r5.putString(r4, r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "fcm-"
            r3.append(r4)
            java.lang.String r4 = "25.0.1"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "cliv"
            r5.putString(r4, r3)
            w8.b<com.google.firebase.heartbeatinfo.HeartBeatInfo> r3 = r2.f21162e
            java.lang.Object r3 = r3.get()
            com.google.firebase.heartbeatinfo.HeartBeatInfo r3 = (com.google.firebase.heartbeatinfo.HeartBeatInfo) r3
            w8.b<e9.i> r4 = r2.f21161d
            java.lang.Object r4 = r4.get()
            e9.i r4 = (e9.i) r4
            if (r3 == 0) goto Le2
            if (r4 == 0) goto Le2
            java.lang.String r0 = "fire-iid"
            com.google.firebase.heartbeatinfo.HeartBeatInfo$HeartBeat r3 = r3.a(r0)
            com.google.firebase.heartbeatinfo.HeartBeatInfo$HeartBeat r0 = com.google.firebase.heartbeatinfo.HeartBeatInfo.HeartBeat.NONE
            if (r3 == r0) goto Le2
            int r3 = r3.getCode()
            java.lang.String r3 = java.lang.Integer.toString(r3)
            java.lang.String r0 = "Firebase-Client-Log-Type"
            r5.putString(r0, r3)
            java.lang.String r3 = "Firebase-Client"
            java.lang.String r4 = r4.getUserAgent()
            r5.putString(r3, r4)
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.c0.j(java.lang.String, java.lang.String, android.os.Bundle):void");
    }

    private Task<Bundle> l(String str, String str2, Bundle bundle) {
        try {
            j(str, str2, bundle);
            return this.f21160c.send(bundle);
        } catch (InterruptedException | ExecutionException e10) {
            return Tasks.forException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<CloudMessage> e() {
        return this.f21160c.getProxiedNotificationData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<String> f() {
        return c(l(h0.c(this.f21158a), ProxyConfig.MATCH_ALL_SCHEMES, new Bundle()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> k(boolean z10) {
        return this.f21160c.setRetainProxiedNotifications(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<?> m(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return c(l(str, "/topics/" + str2, bundle));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<?> n(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString("delete", "1");
        return c(l(str, "/topics/" + str2, bundle));
    }

    @VisibleForTesting
    c0(com.google.firebase.f fVar, h0 h0Var, Rpc rpc, w8.b<e9.i> bVar, w8.b<HeartBeatInfo> bVar2, x8.e eVar) {
        this.f21158a = fVar;
        this.f21159b = h0Var;
        this.f21160c = rpc;
        this.f21161d = bVar;
        this.f21162e = bVar2;
        this.f21163f = eVar;
    }
}
