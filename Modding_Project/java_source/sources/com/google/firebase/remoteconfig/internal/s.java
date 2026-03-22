package com.google.firebase.remoteconfig.internal;

import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ConfigSharedPrefsClient.java */
/* loaded from: classes5.dex */
public class s {

    /* renamed from: f  reason: collision with root package name */
    static final Date f21473f = new Date(-1);
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    static final Date f21474g = new Date(-1);

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f21475a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f21476b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Object f21477c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Object f21478d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Object f21479e = new Object();

    /* compiled from: ConfigSharedPrefsClient.java */
    /* loaded from: classes5.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f21480a;

        /* renamed from: b  reason: collision with root package name */
        private Date f21481b;

        a(int i10, Date date) {
            this.f21480a = i10;
            this.f21481b = date;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Date a() {
            return this.f21481b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int b() {
            return this.f21480a;
        }
    }

    /* compiled from: ConfigSharedPrefsClient.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private int f21482a;

        /* renamed from: b  reason: collision with root package name */
        private Date f21483b;

        @VisibleForTesting
        public b(int i10, Date date) {
            this.f21482a = i10;
            this.f21483b = date;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Date a() {
            return this.f21483b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int b() {
            return this.f21482a;
        }
    }

    public s(SharedPreferences sharedPreferences) {
        this.f21475a = sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a() {
        a aVar;
        synchronized (this.f21477c) {
            aVar = new a(this.f21475a.getInt("num_failed_fetches", 0), new Date(this.f21475a.getLong("backoff_end_time_in_millis", -1L)));
        }
        return aVar;
    }

    public Map<String, String> b() {
        try {
            JSONObject jSONObject = new JSONObject(this.f21475a.getString("customSignals", JsonUtils.EMPTY_JSON));
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.optString(next));
            }
            return hashMap;
        } catch (JSONException unused) {
            return new HashMap();
        }
    }

    public long c() {
        return this.f21475a.getLong("fetch_timeout_in_seconds", 60L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String d() {
        return this.f21475a.getString("last_fetch_etag", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Date e() {
        return new Date(this.f21475a.getLong("last_fetch_time_in_millis", -1L));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long f() {
        return this.f21475a.getLong("last_template_version", 0L);
    }

    public long g() {
        return this.f21475a.getLong("minimum_fetch_interval_in_seconds", ConfigFetchHandler.f21345j);
    }

    public b h() {
        b bVar;
        synchronized (this.f21478d) {
            bVar = new b(this.f21475a.getInt("num_failed_realtime_streams", 0), new Date(this.f21475a.getLong("realtime_backoff_end_time_in_millis", -1L)));
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        k(0, f21474g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        p(0, f21474g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(int i10, Date date) {
        synchronized (this.f21477c) {
            this.f21475a.edit().putInt("num_failed_fetches", i10).putLong("backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    @WorkerThread
    public void l(f9.i iVar) {
        synchronized (this.f21476b) {
            this.f21475a.edit().putLong("fetch_timeout_in_seconds", iVar.a()).putLong("minimum_fetch_interval_in_seconds", iVar.b()).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(String str) {
        synchronized (this.f21476b) {
            this.f21475a.edit().putString("last_fetch_etag", str).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(long j10) {
        synchronized (this.f21476b) {
            this.f21475a.edit().putLong("last_template_version", j10).apply();
        }
    }

    public void o(Date date) {
        synchronized (this.f21478d) {
            this.f21475a.edit().putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(int i10, Date date) {
        synchronized (this.f21478d) {
            this.f21475a.edit().putInt("num_failed_realtime_streams", i10).putLong("realtime_backoff_end_time_in_millis", date.getTime()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        synchronized (this.f21476b) {
            this.f21475a.edit().putInt("last_fetch_status", 1).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(Date date) {
        synchronized (this.f21476b) {
            this.f21475a.edit().putInt("last_fetch_status", -1).putLong("last_fetch_time_in_millis", date.getTime()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        synchronized (this.f21476b) {
            this.f21475a.edit().putInt("last_fetch_status", 2).apply();
        }
    }
}
