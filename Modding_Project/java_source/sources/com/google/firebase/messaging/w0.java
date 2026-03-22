package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.webkit.ProxyConfig;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Store.java */
/* loaded from: classes5.dex */
class w0 {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f21286a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Store.java */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: d  reason: collision with root package name */
        private static final long f21287d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a  reason: collision with root package name */
        final String f21288a;

        /* renamed from: b  reason: collision with root package name */
        final String f21289b;

        /* renamed from: c  reason: collision with root package name */
        final long f21290c;

        private a(String str, String str2, long j10) {
            this.f21288a = str;
            this.f21289b = str2;
            this.f21290c = j10;
        }

        static String a(String str, String str2, long j10) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(BidResponsed.KEY_TOKEN, str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j10);
                return jSONObject.toString();
            } catch (JSONException e10) {
                Log.w("FirebaseMessaging", "Failed to encode token: " + e10);
                return null;
            }
        }

        static a c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith("{")) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    return new a(jSONObject.getString(BidResponsed.KEY_TOKEN), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
                } catch (JSONException e10) {
                    Log.w("FirebaseMessaging", "Failed to parse token: " + e10);
                    return null;
                }
            }
            return new a(str, null, 0L);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean b(String str) {
            if (System.currentTimeMillis() <= this.f21290c + f21287d && str.equals(this.f21289b)) {
                return false;
            }
            return true;
        }
    }

    public w0(Context context) {
        this.f21286a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        a(context, "com.google.android.gms.appid-no-backup");
    }

    private void a(Context context, String str) {
        File file = new File(ContextCompat.getNoBackupFilesDir(context), str);
        if (file.exists()) {
            return;
        }
        try {
            if (file.createNewFile() && !e()) {
                Log.i("FirebaseMessaging", "App restored, clearing state");
                c();
            }
        } catch (IOException e10) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Error creating file in no backup dir: " + e10.getMessage());
            }
        }
    }

    private String b(String str, String str2) {
        return str + "|T|" + str2 + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + ProxyConfig.MATCH_ALL_SCHEMES;
    }

    public synchronized void c() {
        this.f21286a.edit().clear().commit();
    }

    public synchronized a d(String str, String str2) {
        return a.c(this.f21286a.getString(b(str, str2), null));
    }

    public synchronized boolean e() {
        return this.f21286a.getAll().isEmpty();
    }

    public synchronized void f(String str, String str2, String str3, String str4) {
        String a10 = a.a(str3, str4, System.currentTimeMillis());
        if (a10 == null) {
            return;
        }
        SharedPreferences.Editor edit = this.f21286a.edit();
        edit.putString(b(str, str2), a10);
        edit.commit();
    }
}
