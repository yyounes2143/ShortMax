package com.applovin.impl.sdk;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.l7;
import com.applovin.impl.n4;
import com.applovin.impl.p6;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinAdType;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static final File f9615b = new File(k.o().getFilesDir(), "al/persisted-ads");

    /* renamed from: a  reason: collision with root package name */
    private final k f9616a;

    /* loaded from: classes2.dex */
    public static class a implements n4 {

        /* renamed from: a  reason: collision with root package name */
        private final String f9617a;

        /* renamed from: b  reason: collision with root package name */
        private final AppLovinAdType f9618b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f9619c;

        /* renamed from: d  reason: collision with root package name */
        private final long f9620d;

        /* renamed from: e  reason: collision with root package name */
        private final long f9621e;

        public a(String str, AppLovinAdType appLovinAdType, boolean z10, long j10, long j11) {
            this.f9617a = str;
            this.f9618b = appLovinAdType;
            this.f9619c = z10;
            this.f9620d = j10;
            this.f9621e = j11;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.f9621e;
        }

        public long c() {
            return this.f9620d;
        }

        public String d() {
            return this.f9617a + "_" + this.f9618b;
        }

        public String e() {
            return this.f9617a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String e10 = e();
            String e11 = aVar.e();
            if (e10 != null ? !e10.equals(e11) : e11 != null) {
                return false;
            }
            AppLovinAdType f10 = f();
            AppLovinAdType f11 = aVar.f();
            if (f10 != null ? f10.equals(f11) : f11 == null) {
                return true;
            }
            return false;
        }

        public AppLovinAdType f() {
            return this.f9618b;
        }

        public boolean g() {
            return this.f9619c;
        }

        public int hashCode() {
            int hashCode;
            String e10 = e();
            int i10 = 43;
            if (e10 == null) {
                hashCode = 43;
            } else {
                hashCode = e10.hashCode();
            }
            AppLovinAdType f10 = f();
            int i11 = (hashCode + 59) * 59;
            if (f10 != null) {
                i10 = f10.hashCode();
            }
            return i11 + i10;
        }

        public String toString() {
            return "AdPersistenceFileService.PersistedAdFilePath(id=" + e() + ", type=" + f() + ", isAdServerAd=" + g() + ", expiryTimeMillis=" + c() + ", appLaunchTimestamp=" + b() + ")";
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar) {
            return a(bVar, 0L, 0L);
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar, long j10, long j11) {
            if (bVar == null) {
                return null;
            }
            return new a(StringUtils.isValidString(bVar.getMediationServeId()) ? bVar.getMediationServeId() : UUID.randomUUID().toString(), bVar.getType(), bVar instanceof com.applovin.impl.sdk.ad.a, SystemClock.elapsedRealtime() + j10, j11);
        }

        public static a a(JSONObject jSONObject, k kVar) {
            String string = JsonUtils.getString(jSONObject, "id", "");
            String string2 = JsonUtils.getString(jSONObject, "type", "");
            Boolean bool = JsonUtils.getBoolean(jSONObject, "is_ad_server_ad", null);
            long j10 = JsonUtils.getLong(jSONObject, "expiry_time_millis", 0L);
            long j11 = JsonUtils.getLong(jSONObject, "app_launch_timestamp", 0L);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || bool == null) {
                return null;
            }
            return new a(string, AppLovinAdType.fromString(string2), bool.booleanValue(), j10, j11);
        }

        @Override // com.applovin.impl.n4
        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putString(jSONObject, "id", this.f9617a);
            JsonUtils.putString(jSONObject, "type", this.f9618b.toString());
            JsonUtils.putBoolean(jSONObject, "is_ad_server_ad", this.f9619c);
            JsonUtils.putLong(jSONObject, "expiry_time_millis", this.f9620d);
            JsonUtils.putLong(jSONObject, "app_launch_timestamp", this.f9621e);
            return jSONObject;
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(a aVar);
    }

    /* renamed from: com.applovin.impl.sdk.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0119c {
        void a(com.applovin.impl.sdk.ad.b bVar, String str);
    }

    public c(k kVar) {
        this.f9616a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        a a10 = a.a(bVar, ((Long) this.f9616a.a(v4.Y0)).longValue(), k.n());
        File a11 = a(a10);
        if (a11 == null) {
            a("Could not persist incompatible ad", bVar, bVar2);
            return;
        }
        try {
            JSONObject a12 = bVar.a();
            if (a12 == null) {
                a("Could not serialize ad for persistence", bVar, bVar2);
                return;
            }
            if (this.f9616a.H().a((InputStream) new ByteArrayInputStream(a12.toString().getBytes("UTF-8")), a11, true)) {
                a(a10, bVar, bVar2);
            } else {
                a("Failed to write persisted ad to disk", bVar, bVar2);
            }
        } catch (Throwable th2) {
            a("Ad could not be persisted", bVar, bVar2);
            this.f9616a.E().a("AdPersistenceFileService", th2, CollectionUtils.map("error_message", "Ad could not be persisted"));
        }
    }

    public void b(final com.applovin.impl.sdk.ad.b bVar, final b bVar2) {
        if (!b()) {
            a("Ad Persistence directory could not be created", bVar, bVar2);
        } else {
            this.f9616a.r0().a((g5) new p6(this.f9616a, "persistAd", new Runnable() { // from class: com.applovin.impl.sdk.b0
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.a(bVar, bVar2);
                }
            }), b6.b.CACHING);
        }
    }

    private boolean b() {
        File file = f9615b;
        if (file.exists()) {
            return true;
        }
        return file.mkdir();
    }

    public void b(a aVar) {
        File a10 = a(aVar);
        if (a10 != null) {
            a10.delete();
        }
    }

    public void a(final a aVar, final InterfaceC0119c interfaceC0119c) {
        final File a10 = a(aVar);
        if (a10 != null && a10.exists()) {
            this.f9616a.r0().a((g5) new p6(this.f9616a, "retrievePersistedAd", new Runnable() { // from class: com.applovin.impl.sdk.c0
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.a(a10, interfaceC0119c, aVar);
                }
            }), b6.b.OTHER);
        } else {
            interfaceC0119c.a(null, "Persisted ad could not be retrieved: Retrieval failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(File file, InterfaceC0119c interfaceC0119c, a aVar) {
        com.applovin.impl.sdk.ad.b a10;
        String f10 = this.f9616a.H().f(file);
        if (f10 == null) {
            interfaceC0119c.a(null, "Persisted ad could not be retrieved: Read failed");
            return;
        }
        try {
            JSONObject jsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(f10, new JSONObject());
            JsonUtils.putBoolean(JsonUtils.getJSONObject(jsonObjectFromJsonString, "full_response", new JSONObject()), "is_persisted_ad", true);
            if (aVar.g()) {
                a10 = com.applovin.impl.sdk.ad.a.a(jsonObjectFromJsonString, this.f9616a);
            } else {
                a10 = l7.a(jsonObjectFromJsonString, this.f9616a);
            }
            if (a10 == null) {
                interfaceC0119c.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            } else {
                interfaceC0119c.a(a10, null);
            }
        } catch (Throwable th2) {
            interfaceC0119c.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            this.f9616a.E().a("AdPersistenceFileService", th2, CollectionUtils.map("error_message", "Persisted ad could not be retrieved: Deserialization failed"));
        }
    }

    private File a(a aVar) {
        if (aVar == null) {
            return null;
        }
        return new File(f9615b.getAbsolutePath() + DomExceptionUtils.SEPARATOR + aVar.d());
    }

    private void a(a aVar, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.f9616a.O();
        if (o.a()) {
            this.f9616a.O().a("AdPersistenceFileService", "Ad was persisted successfully");
        }
        bVar2.a(aVar);
        this.f9616a.g().a(com.applovin.impl.c2.G, bVar);
    }

    private void a(String str, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.f9616a.O();
        if (o.a()) {
            this.f9616a.O().a("AdPersistenceFileService", str);
        }
        bVar2.a(null);
        Map a10 = com.applovin.impl.e2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("error_message", str, a10);
        this.f9616a.g().d(com.applovin.impl.c2.H, a10);
    }

    public void a(List list) {
        File[] listFiles = f9615b.listFiles();
        if (listFiles == null) {
            return;
        }
        boolean z10 = false;
        for (File file : listFiles) {
            Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((a) it.next()).d().equals(file.getName())) {
                        z10 = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z10) {
                file.delete();
            }
        }
    }

    public void a() {
        File[] listFiles;
        File file = f9615b;
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                file2.delete();
            }
        }
    }
}
