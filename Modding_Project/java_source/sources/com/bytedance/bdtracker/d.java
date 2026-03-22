package com.bytedance.bdtracker;

import android.accounts.Account;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.bytedance.applog.IActiveCustomParamsCallback;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.applog.IDataObserver;
import com.bytedance.applog.IEventObserver;
import com.bytedance.applog.IExtraParams;
import com.bytedance.applog.IHeaderCustomTimelyCallback;
import com.bytedance.applog.IOaidObserver;
import com.bytedance.applog.IPresetEventObserver;
import com.bytedance.applog.IPullAbTestConfigCallback;
import com.bytedance.applog.ISessionObserver;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.Level;
import com.bytedance.applog.R;
import com.bytedance.applog.UriConfig;
import com.bytedance.applog.alink.IALinkListener;
import com.bytedance.applog.event.EventBuilder;
import com.bytedance.applog.event.IEventHandler;
import com.bytedance.applog.exception.AppCrashType;
import com.bytedance.applog.exposure.ViewExposureManager;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.ILogProcessor;
import com.bytedance.applog.log.LogProcessorHolder;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.network.INetworkClient;
import com.bytedance.applog.oneid.IDBindCallback;
import com.bytedance.applog.profile.UserProfileCallback;
import com.bytedance.applog.simulate.SimulateLaunchActivity;
import com.bytedance.bdtracker.l0;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class d implements IAppLogInstance {
    public static final List<d> J = new CopyOnWriteArrayList();
    public static final AtomicInteger K = new AtomicInteger(0);
    public IActiveCustomParamsCallback A;
    public volatile s B;
    public IEventHandler C;
    public final IAppLogLogger D;

    /* renamed from: j  reason: collision with root package name */
    public final r3 f11910j;

    /* renamed from: k  reason: collision with root package name */
    public final p3 f11911k;

    /* renamed from: o  reason: collision with root package name */
    public volatile p1 f11915o;

    /* renamed from: p  reason: collision with root package name */
    public volatile r1 f11916p;

    /* renamed from: q  reason: collision with root package name */
    public volatile e0 f11917q;

    /* renamed from: r  reason: collision with root package name */
    public volatile w f11918r;

    /* renamed from: s  reason: collision with root package name */
    public volatile ViewExposureManager f11919s;

    /* renamed from: t  reason: collision with root package name */
    public volatile INetworkClient f11920t;

    /* renamed from: v  reason: collision with root package name */
    public volatile IHeaderCustomTimelyCallback f11922v;

    /* renamed from: w  reason: collision with root package name */
    public volatile a1 f11923w;

    /* renamed from: y  reason: collision with root package name */
    public d1 f11925y;

    /* renamed from: z  reason: collision with root package name */
    public IALinkListener f11926z;

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentHashMap<String, JSONObject> f11901a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public final f1 f11902b = new f1();

    /* renamed from: c  reason: collision with root package name */
    public final e1 f11903c = new e1();

    /* renamed from: d  reason: collision with root package name */
    public final u1 f11904d = new u1();

    /* renamed from: e  reason: collision with root package name */
    public final j1 f11905e = new j1();

    /* renamed from: f  reason: collision with root package name */
    public final Set<Integer> f11906f = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    public final Set<String> f11907g = new HashSet();

    /* renamed from: h  reason: collision with root package name */
    public final Set<Class<?>> f11908h = new HashSet();

    /* renamed from: i  reason: collision with root package name */
    public final Map<String, k0> f11909i = new ConcurrentHashMap();

    /* renamed from: l  reason: collision with root package name */
    public int f11912l = 0;

    /* renamed from: m  reason: collision with root package name */
    public String f11913m = "";

    /* renamed from: n  reason: collision with root package name */
    public volatile Application f11914n = null;

    /* renamed from: u  reason: collision with root package name */
    public volatile boolean f11921u = false;

    /* renamed from: x  reason: collision with root package name */
    public volatile boolean f11924x = false;
    public volatile boolean E = true;
    public long F = 0;
    public volatile boolean G = false;
    public final s4<String> H = new s4<>();
    public final s4<String> I = new s4<>();

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f11927a;

        public a(boolean z10) {
            this.f11927a = z10;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.f11913m);
                jSONObject2.put("接口加密开关", this.f11927a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes3.dex */
    public class b implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f11929a;

        public b(boolean z10) {
            this.f11929a = z10;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.f11913m);
                jSONObject2.put("禁止采集详细信息开关", this.f11929a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes3.dex */
    public class c implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f11931a;

        public c(boolean z10) {
            this.f11931a = z10;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.f11913m);
                jSONObject2.put("剪切板开关", this.f11931a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* renamed from: com.bytedance.bdtracker.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0155d implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f11933a;

        public C0155d(boolean z10) {
            this.f11933a = z10;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject.put("appId", d.this.f11913m);
                jSONObject2.put("隐私模式开关", this.f11933a);
                jSONObject.put("config", jSONObject2);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public d() {
        K.incrementAndGet();
        this.D = new LoggerImpl();
        this.f11910j = new r3(this);
        this.f11911k = new p3(this);
        J.add(this);
    }

    public u1 a() {
        return this.f11904d;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void activateALink(Uri uri) {
        JSONObject jSONObject;
        if (b("activateALink")) {
            return;
        }
        j jVar = this.f11917q.B;
        jVar.c();
        if (uri != null) {
            jVar.f12074h = uri.toString();
        }
        jVar.b().debug(3, "Activate deep link with url: {}...", jVar.f12074h);
        Handler a10 = jVar.a();
        String str = null;
        try {
            jSONObject = new JSONObject();
            if (uri != null) {
                String scheme = uri.getScheme();
                if (Intrinsics.areEqual(scheme, ProxyConfig.MATCH_HTTP) || Intrinsics.areEqual(scheme, "https")) {
                    jSONObject.put("tr_token", uri.getLastPathSegment());
                }
                for (String str2 : uri.getQueryParameterNames()) {
                    jSONObject.put(str2, uri.getQueryParameter(str2));
                }
            }
        } catch (Throwable unused) {
            jSONObject = null;
        }
        l lVar = (l) p.f12300a.a(jSONObject, l.class);
        if (lVar != null) {
            str = lVar.d();
        }
        if (str != null && str.length() != 0) {
            jVar.f12071e = 0;
            a10.sendMessage(a10.obtainMessage(1, lVar));
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public synchronized void addDataObserver(IDataObserver iDataObserver) {
        try {
            if (this.f11925y == null) {
                this.f11925y = new d1();
            }
            this.f11925y.a(iDataObserver);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void addEventObserver(IEventObserver iEventObserver) {
        this.f11903c.a(l0.b.a(iEventObserver, (IPresetEventObserver) null));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String addNetCommonParams(Context context, String str, boolean z10, Level level) {
        JSONObject jSONObject;
        r3 r3Var = this.f11910j;
        if (this.f11916p != null) {
            jSONObject = this.f11916p.e();
        } else {
            jSONObject = null;
        }
        return r3Var.a(jSONObject, str, z10, level);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void addSessionHook(ISessionObserver iSessionObserver) {
        this.f11902b.a(iSessionObserver);
    }

    public boolean b() {
        return this.G;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void bind(Map<String, String> map, IDBindCallback iDBindCallback) {
        if (b("bind")) {
            return;
        }
        e0 e0Var = this.f11917q;
        if (map == null) {
            e0Var.f11955d.D.warn("BindID identities is null", new Object[0]);
        } else {
            e0Var.F.a(map, iDBindCallback);
        }
    }

    public final void c() {
        s4<String> s4Var = this.H;
        if (s4Var.f12392b && !l0.b.b(s4Var, this.f11915o.f())) {
            if (this.I.f12392b) {
                this.f11916p.b(this.H.f12391a, this.I.f12391a);
            } else {
                this.f11916p.h(this.H.f12391a);
            }
            this.f11916p.g("");
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void clearAbTestConfigsCache() {
        if (this.f11916p == null) {
            new m0().initCause(new AssertionError("Please initialize first")).printStackTrace();
            return;
        }
        r1 r1Var = this.f11916p;
        r1Var.e(null);
        r1Var.f("");
        r1Var.a((JSONObject) null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void clearDb() {
        if (this.f11917q == null) {
            new m0().initCause(new AssertionError("clearDb before init")).printStackTrace();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.D.debug("Start to clear db data...", new Object[0]);
        this.f11917q.c().a();
        this.D.debug("Db data cleared", new Object[0]);
        k2.a(getMonitor(), "api_usage", "clearDb", elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void flush() {
        if (b("flush")) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f11917q.a((String[]) null, true);
        k2.a(getMonitor(), "api_usage", "flush", elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IALinkListener getALinkListener() {
        return this.f11926z;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @Nullable
    public <T> T getAbConfig(String str, T t10) {
        T t11 = null;
        if (a("getAbConfig")) {
            return null;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        r1 r1Var = this.f11916p;
        JSONObject optJSONObject = r1Var.f12360c.a().optJSONObject(str);
        if (optJSONObject != null) {
            String optString = optJSONObject.optString("vid");
            Object opt = optJSONObject.opt("val");
            r1Var.a(optString);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ab_sdk_version", optString);
                r1Var.f12366i.onEventV3("abtest_exposure", jSONObject, 0);
            } catch (Throwable th2) {
                r1Var.f12366i.D.error(Collections.singletonList("DeviceManager"), "JSON handle failed", th2, new Object[0]);
            }
            if (opt != null) {
                t11 = opt;
            }
            if (t11 != null) {
                t10 = t11;
            }
        }
        k2.a(getMonitor(), "api_usage", "getAbConfig", elapsedRealtime);
        return t10;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getAbSdkVersion() {
        if (a("getAbSdkVersion")) {
            return "";
        }
        return this.f11916p.a();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IActiveCustomParamsCallback getActiveCustomParams() {
        return this.A;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @Deprecated
    public String getAid() {
        return this.f11913m;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public JSONObject getAllAbTestConfigs() {
        if (this.f11917q == null) {
            return new JSONObject();
        }
        return this.f11917q.f11956e.a();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public f getAppContext() {
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getAppId() {
        return this.f11913m;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getClientUdid() {
        if (a("getClientUdid")) {
            return "";
        }
        return this.f11916p.f12361d.optString("clientudid", "");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public Context getContext() {
        return this.f11914n;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public String getDeepLinkUrl() {
        if (this.f11917q != null) {
            return this.f11917q.B.f12074h;
        }
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getDid() {
        if (a("getDid")) {
            return "";
        }
        return this.f11916p.c();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean getEncryptAndCompress() {
        return this.E;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public a1 getEventFilterByClient() {
        return this.f11923w;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IEventHandler getEventHandler() {
        return this.C;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @Nullable
    public JSONObject getHeader() {
        if (a("getHeader")) {
            return null;
        }
        return this.f11916p.e();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public IHeaderCustomTimelyCallback getHeaderCustomCallback() {
        return this.f11922v;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public <T> T getHeaderValue(String str, T t10, Class<T> cls) {
        if (a("getHeaderValue")) {
            return null;
        }
        return (T) this.f11916p.a(str, (String) t10, (Class<String>) cls);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getIid() {
        if (a("getIid")) {
            return "";
        }
        return this.f11916p.f();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public InitConfig getInitConfig() {
        if (this.f11915o != null) {
            return this.f11915o.f12304c;
        }
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public int getLaunchFrom() {
        return this.f11912l;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public h2 getMonitor() {
        if (b("getMonitor")) {
            return null;
        }
        return this.f11917q.f11968q;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public INetworkClient getNetClient() {
        if (this.f11920t != null) {
            return this.f11920t;
        }
        if (getInitConfig() != null && getInitConfig().getNetworkClient() != null) {
            return getInitConfig().getNetworkClient();
        }
        synchronized (this) {
            try {
                if (this.f11920t == null) {
                    this.f11920t = new b3(this.f11911k);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f11920t;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getOpenUdid() {
        if (a("getOpenUdid")) {
            return "";
        }
        return this.f11916p.g();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public Map<String, String> getRequestHeader() {
        if (this.f11915o == null) {
            return Collections.emptyMap();
        }
        String str = "";
        String string = this.f11915o.f12307f.getString("device_token", "");
        HashMap hashMap = new HashMap();
        if (string != null) {
            str = string;
        }
        hashMap.put("x-tt-dt", str);
        return hashMap;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getSdkVersion() {
        return "6.15.4";
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getSessionId() {
        if (this.f11917q != null) {
            return this.f11917q.d();
        }
        return "";
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getSsid() {
        if (a("getSsid")) {
            return "";
        }
        return this.f11916p.i();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void getSsidGroup(Map<String, String> map) {
        String did = getDid();
        if (!TextUtils.isEmpty(did)) {
            map.put("device_id", did);
        }
        String iid = getIid();
        if (!TextUtils.isEmpty(iid)) {
            map.put("install_id", iid);
        }
        String openUdid = getOpenUdid();
        if (!TextUtils.isEmpty(openUdid)) {
            map.put("openudid", openUdid);
        }
        String clientUdid = getClientUdid();
        if (!TextUtils.isEmpty(clientUdid)) {
            map.put("clientudid", clientUdid);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getUdid() {
        if (a("getUdid")) {
            return "";
        }
        return this.f11916p.j();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @Nullable
    public UriConfig getUriRuntime() {
        if (b("getUriRuntime")) {
            return null;
        }
        return this.f11917q.e();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getUserID() {
        if (b("getUserID")) {
            return null;
        }
        return String.valueOf(this.f11917q.f11965n.f12080a);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public String getUserUniqueID() {
        if (a("getUserUniqueID")) {
            return "";
        }
        return this.f11916p.k();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    @NonNull
    public ViewExposureManager getViewExposureManager() {
        return this.f11919s;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public JSONObject getViewProperties(View view) {
        if (view != null) {
            return this.f11901a.get(l0.b.b(view));
        }
        return null;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean hasStarted() {
        return this.f11921u;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void ignoreAutoTrackClick(View view) {
        if (view == null) {
            return;
        }
        this.f11907g.add(l0.b.b(view));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void ignoreAutoTrackClickByViewType(Class<?>... clsArr) {
        if (clsArr == null) {
            return;
        }
        this.f11908h.addAll(Arrays.asList(clsArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
        r2 = r2.getCanonicalName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        if (android.text.TextUtils.isEmpty(r2) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
        r5.f11906f.add(java.lang.Integer.valueOf(r2.hashCode()));
     */
    @Override // com.bytedance.applog.IAppLogInstance
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void ignoreAutoTrackPage(java.lang.Class<?>... r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L3
            return
        L3:
            int r0 = r6.length
            r1 = 0
        L5:
            if (r1 >= r0) goto L64
            r2 = r6[r1]
            if (r2 != 0) goto Lc
            goto L61
        Lc:
            java.util.List<java.lang.Class<?>> r3 = com.bytedance.bdtracker.v4.f12476c
            java.util.Iterator r3 = r3.iterator()
        L12:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L25
            java.lang.Object r4 = r3.next()
            java.lang.Class r4 = (java.lang.Class) r4
            boolean r4 = r2.isAssignableFrom(r4)
            if (r4 == 0) goto L12
            goto L3d
        L25:
            java.util.List<java.lang.Class<?>> r3 = com.bytedance.bdtracker.v4.f12477d
            java.util.Iterator r3 = r3.iterator()
        L2b:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L56
            java.lang.Object r4 = r3.next()
            java.lang.Class r4 = (java.lang.Class) r4
            boolean r4 = r2.isAssignableFrom(r4)
            if (r4 == 0) goto L2b
        L3d:
            java.lang.String r2 = r2.getCanonicalName()
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L48
            goto L61
        L48:
            java.util.Set<java.lang.Integer> r3 = r5.f11906f
            int r2 = r2.hashCode()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r3.add(r2)
            goto L61
        L56:
            com.bytedance.applog.log.IAppLogLogger r3 = r5.D
            java.lang.Object[] r2 = new java.lang.Object[]{r2}
            java.lang.String r4 = "{} is not a page class"
            r3.warn(r4, r2)
        L61:
            int r1 = r1 + 1
            goto L5
        L64:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d.ignoreAutoTrackPage(java.lang.Class[]):void");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void init(@NonNull Context context, @NonNull InitConfig initConfig) {
        String str;
        ILogProcessor g1Var;
        synchronized (d.class) {
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (l0.b.c(initConfig.getAid())) {
                    Log.e("AppLog", "Init failed. App id must not be empty!");
                } else if (l0.b.c(initConfig.getChannel())) {
                    Log.e("AppLog", "Channel must not be empty!");
                } else if (com.bytedance.bdtracker.b.b(initConfig.getAid())) {
                    Log.e("AppLog", "The app id: " + initConfig.getAid() + " has initialized already");
                } else {
                    this.D.setAppId(initConfig.getAid());
                    this.f11913m = initConfig.getAid();
                    this.f11914n = (Application) context.getApplicationContext();
                    if (initConfig.isLogEnable()) {
                        if (initConfig.getLogger() != null) {
                            str = this.f11913m;
                            g1Var = new h1(initConfig.getLogger());
                        } else {
                            str = this.f11913m;
                            g1Var = new g1(this);
                        }
                        LogProcessorHolder.setProcessor(str, g1Var);
                    }
                    this.D.info("AppLog init begin...", new Object[0]);
                    if (!initConfig.isMonitorEnabled() && !j2.a(initConfig)) {
                        initConfig.getUriConfig();
                    }
                    initMetaSec(context);
                    if (TextUtils.isEmpty(initConfig.getSpName())) {
                        initConfig.setSpName(com.bytedance.bdtracker.b.a(this, "applog_stats"));
                    }
                    this.f11915o = new p1(this, this.f11914n, initConfig);
                    this.f11916p = new r1(this, this.f11914n, this.f11915o);
                    c();
                    this.f11917q = new e0(this, this.f11915o, this.f11916p, this.f11905e);
                    LogUtils.sendJsonFetcher("init_begin", new e(this, initConfig));
                    this.f11918r = w.a(this.f11914n);
                    this.f11919s = new ViewExposureManager(this);
                    if (AppCrashType.hasJavaCrashType(initConfig.getTrackCrashType())) {
                        n0.a();
                    }
                    this.f11912l = 1;
                    this.f11921u = initConfig.autoStart();
                    LogUtils.sendString("init_end", this.f11913m);
                    this.D.info("AppLog init end", new Object[0]);
                    if (l0.b.a(SimulateLaunchActivity.entryAppId, this.f11913m)) {
                        s3.a(this);
                    }
                    this.f11915o.k();
                    h2 monitor = getMonitor();
                    Intrinsics.checkParameterIsNotNull("sdk_init", "metricsName");
                    k2.a(monitor, "sdk_init", (String) null, elapsedRealtime);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void initH5Bridge(@NonNull View view, @NonNull String str) {
        Class<?> b10 = l0.b.b("com.bytedance.applog.tracker.WebViewUtil");
        if (b10 == null) {
            this.D.warn("No WebViewUtil class, and will not initialize h5 bridge", new Object[0]);
            return;
        }
        try {
            Method declaredMethod = b10.getDeclaredMethod("injectWebViewBridges", View.class, String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, view, str);
        } catch (Throwable th2) {
            this.D.error("Initialize h5 bridge failed", th2, new Object[0]);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void initMetaSec(@NonNull Context context) {
        if (getInitConfig() != null && !getInitConfig().isMetaSecEnabled()) {
            return;
        }
        Class<?> b10 = l0.b.b("com.bytedance.applog.metasec.AppLogSecHelper");
        if (b10 == null) {
            this.D.debug("No AppLogSecHelper class, and will not init", new Object[0]);
            return;
        }
        try {
            Method declaredMethod = b10.getDeclaredMethod("init", IAppLogInstance.class, Context.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, this, context);
        } catch (Throwable th2) {
            this.D.error("Initialize AppLogSecHelper failed", th2, new Object[0]);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void initWebViewBridge(@NonNull View view, @NonNull String str) {
        Class<?> b10 = l0.b.b("com.bytedance.applog.tracker.WebViewUtil");
        if (b10 != null) {
            try {
                b10.getMethod("injectWebViewBridges", View.class, String.class).invoke(null, view, str);
            } catch (Throwable th2) {
                this.D.error("Init webview bridge failed", th2, new Object[0]);
            }
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isAutoTrackClickIgnored(View view) {
        if (view == null) {
            return false;
        }
        if (this.f11907g.contains(l0.b.b(view))) {
            return true;
        }
        for (Class<?> cls : this.f11908h) {
            if (cls.isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isAutoTrackPageIgnored(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        String canonicalName = cls.getCanonicalName();
        if (TextUtils.isEmpty(canonicalName)) {
            return false;
        }
        return this.f11906f.contains(Integer.valueOf(canonicalName.hashCode()));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isBavEnabled() {
        if (this.f11917q != null && this.f11917q.g()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isH5BridgeEnable() {
        if (getInitConfig() != null && getInitConfig().isH5BridgeEnable()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isH5CollectEnable() {
        if (getInitConfig() != null && getInitConfig().isH5CollectEnable()) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isNewUser() {
        if (a("isNewUser")) {
            return false;
        }
        return this.f11916p.f12362e;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean isPrivacyMode() {
        return this.f11924x;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean manualActivate() {
        if (b("manualActivate")) {
            return false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean a10 = this.f11917q.a(false);
        k2.a(getMonitor(), "api_usage", "manualActivate", elapsedRealtime);
        return a10;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public EventBuilder newEvent(@NonNull String str) {
        return new EventBuilder(this).setEvent(str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onActivityPause() {
        if (this.f11918r != null) {
            this.f11918r.onActivityPaused(null);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onActivityResumed(@NonNull Activity activity, int i10) {
        if (this.f11918r != null) {
            this.f11918r.a(activity, i10);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(@NonNull String str, @Nullable Bundle bundle) {
        onEventV3(str, bundle, 0);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onMiscEvent(@NonNull String str, @Nullable JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str) && jSONObject != null && jSONObject.length() > 0) {
            this.D.debug(Arrays.asList("customEvent", "miscEvent"), "logType:{} params:{} ", str, jSONObject.toString());
            try {
                jSONObject.put("log_type", str);
                receive(new x3("log_data", jSONObject));
                return;
            } catch (Throwable th2) {
                this.D.error("call onMiscEvent error", th2, new Object[0]);
                return;
            }
        }
        this.D.warn("call onMiscEvent with invalid params", new Object[0]);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onPause(@NonNull Context context) {
        if (context instanceof Activity) {
            onActivityPause();
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onResume(@NonNull Context context) {
        if (context instanceof Activity) {
            onActivityResumed((Activity) context, context.hashCode());
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void pauseDurationEvent(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (l0.b.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        k0 k0Var = this.f11909i.get(str);
        if (l0.b.a((Object) k0Var, "No duration event with name: " + str)) {
            return;
        }
        k0Var.a(elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileAppend(JSONObject jSONObject) {
        if (!b("profileAppend") && jSONObject != null && jSONObject.length() != 0) {
            try {
                if (!l0.b.a(jSONObject, new Class[]{String.class, Integer.class}, new Class[]{String.class})) {
                    this.D.warn("only support String、Int、String Array！", new Object[0]);
                    return;
                }
            } catch (Throwable th2) {
                this.D.error("JSON handle failed", th2, new Object[0]);
            }
            c5.a(this.D, jSONObject);
            this.f11917q.b(jSONObject);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileIncrement(JSONObject jSONObject) {
        if (!b("profileIncrement") && jSONObject != null && jSONObject.length() != 0) {
            try {
                if (!l0.b.a(jSONObject, new Class[]{Integer.class}, (Class<?>[]) null)) {
                    this.D.warn("only support Int param", new Object[0]);
                    return;
                }
            } catch (Throwable th2) {
                this.D.error("JSON handle failed", th2, new Object[0]);
            }
            c5.a(this.D, jSONObject);
            this.f11917q.c(jSONObject);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileSet(JSONObject jSONObject) {
        if (!b("profileSet") && jSONObject != null && jSONObject.length() != 0) {
            c5.a(this.D, jSONObject);
            this.f11917q.d(jSONObject);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileSetOnce(JSONObject jSONObject) {
        if (!b("profileSetOnce") && jSONObject != null && jSONObject.length() != 0) {
            c5.a(this.D, jSONObject);
            this.f11917q.e(jSONObject);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void profileUnset(String str) {
        if (b("profileUnset")) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, "");
        } catch (Throwable th2) {
            this.D.error("JSON handle failed", th2, new Object[0]);
        }
        c5.a(this.D, jSONObject);
        this.f11917q.f(jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void pullAbTestConfigs() {
        pullAbTestConfigs(-1, null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void putCommonParams(Context context, Map<String, String> map, boolean z10, Level level) {
        JSONObject jSONObject;
        r3 r3Var = this.f11910j;
        if (this.f11916p != null) {
            jSONObject = this.f11916p.e();
        } else {
            jSONObject = null;
        }
        r3Var.a(jSONObject, z10, map, level);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void receive(u3 u3Var) {
        if (u3Var == null) {
            return;
        }
        u3Var.f12456m = this.f11913m;
        if (this.f11917q == null) {
            this.f11905e.a(u3Var);
        } else {
            this.f11917q.a(u3Var);
        }
        LogUtils.sendObject("event_receive", u3Var);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void registerHeaderCustomCallback(IHeaderCustomTimelyCallback iHeaderCustomTimelyCallback) {
        this.f11922v = iHeaderCustomTimelyCallback;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeAllDataObserver() {
        d1 d1Var = this.f11925y;
        if (d1Var != null) {
            d1Var.f11937a.clear();
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeDataObserver(IDataObserver iDataObserver) {
        d1 d1Var = this.f11925y;
        if (d1Var != null) {
            d1Var.b(iDataObserver);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeEventObserver(IEventObserver iEventObserver) {
        this.f11903c.b(l0.b.a(iEventObserver, (IPresetEventObserver) null));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeHeaderInfo(String str) {
        if (a("removeHeaderInfo")) {
            return;
        }
        this.f11916p.d(str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeOaidObserver(@Nullable IOaidObserver iOaidObserver) {
        h5.b(iOaidObserver);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeSessionHook(ISessionObserver iSessionObserver) {
        this.f11902b.b(iSessionObserver);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public boolean reportPhoneDetailInfo() {
        if (this.f11916p != null && !this.f11916p.f12368k) {
            return true;
        }
        return false;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void resumeDurationEvent(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (l0.b.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        k0 k0Var = this.f11909i.get(str);
        if (l0.b.a((Object) k0Var, "No duration event with name: " + str)) {
            return;
        }
        k0Var.b(elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setALinkListener(IALinkListener iALinkListener) {
        this.f11926z = iALinkListener;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAccount(Account account) {
        if (a("setAccount")) {
            return;
        }
        u1 a10 = this.f11916p.f12366i.a();
        if (a10.f12439a instanceof n4) {
            t3 t3Var = ((n4) a10.f12439a).f12259c;
            if (t3Var != null) {
                t3Var.a(account);
                return;
            }
            return;
        }
        a10.f12440b = account;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setActiveCustomParams(IActiveCustomParamsCallback iActiveCustomParamsCallback) {
        this.A = iActiveCustomParamsCallback;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAppLanguageAndRegion(@NonNull String str, @NonNull String str2) {
        boolean z10;
        if (b("setAppLanguageAndRegion")) {
            return;
        }
        e0 e0Var = this.f11917q;
        r1 r1Var = e0Var.f11960i;
        boolean z11 = false;
        if (r1Var.a("app_language", (Object) str)) {
            com.bytedance.bdtracker.a.a(r1Var.f12360c.f12307f, "app_language", str);
            z10 = true;
        } else {
            z10 = false;
        }
        r1 r1Var2 = e0Var.f11960i;
        if (r1Var2.a("app_region", (Object) str2)) {
            com.bytedance.bdtracker.a.a(r1Var2.f12360c.f12307f, "app_region", str2);
            z11 = true;
        }
        if (z10 | z11) {
            e0Var.a(e0Var.f11962k);
            e0Var.a(e0Var.f11957f);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAppTrack(JSONObject jSONObject) {
        if (jSONObject == null || a("setAppTrack")) {
            return;
        }
        r1 r1Var = this.f11916p;
        if (r1Var.a("app_track", jSONObject)) {
            p1 p1Var = r1Var.f12360c;
            com.bytedance.bdtracker.a.a(p1Var.f12305d, "app_track", jSONObject.toString());
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setClipboardEnabled(boolean z10) {
        if (b("setClipboardEnabled")) {
            return;
        }
        this.f11917q.B.f12067a = z10;
        LogUtils.sendJsonFetcher("update_config", new c(z10));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setEncryptAndCompress(boolean z10) {
        this.E = z10;
        if (l0.b.d(this.f11913m)) {
            LogUtils.sendJsonFetcher("update_config", new a(z10));
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setEventFilterByClient(List<String> list, boolean z10) {
        a1 b1Var;
        a1 a1Var = null;
        if (list != null && !list.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (String str : list) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                if (z10) {
                    b1Var = new c1(hashSet, null);
                } else {
                    b1Var = new b1(hashSet, null);
                }
                a1Var = b1Var;
            }
        }
        this.f11923w = a1Var;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setEventHandler(IEventHandler iEventHandler) {
        this.C = iEventHandler;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setExternalAbVersion(@NonNull String str) {
        if (a("setExternalAbVersion")) {
            return;
        }
        this.f11916p.f(str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setExtraParams(IExtraParams iExtraParams) {
        this.f11910j.f12372a = iExtraParams;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setForbidReportPhoneDetailInfo(boolean z10) {
        if (a("setForbidReportPhoneDetailInfo")) {
            return;
        }
        r1 r1Var = this.f11916p;
        r1Var.f12368k = z10;
        if (!r1Var.r()) {
            r1Var.a("sim_serial_number", (Object) null);
        }
        LogUtils.sendJsonFetcher("update_config", new b(z10));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setGPSLocation(float f10, float f11, String str) {
        if (this.f11916p == null) {
            this.D.warn("Please initialize first", new Object[0]);
        } else {
            this.B = new s(f10, f11, str);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setGoogleAid(@NonNull String str) {
        if (a("setGoogleAid")) {
            return;
        }
        r1 r1Var = this.f11916p;
        if (r1Var.a("google_aid", (Object) str)) {
            com.bytedance.bdtracker.a.a(r1Var.f12360c.f12307f, "google_aid", str);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setHeaderInfo(String str, Object obj) {
        if (a("setHeaderInfo") || TextUtils.isEmpty(str)) {
            return;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put(str, obj);
        c5.a(this.D, hashMap);
        this.f11916p.a(hashMap);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setLaunchFrom(int i10) {
        this.f11912l = i10;
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setOaidObserver(@Nullable IOaidObserver iOaidObserver) {
        h5.a(iOaidObserver);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setPrivacyMode(boolean z10) {
        this.f11924x = z10;
        if (l0.b.d(this.f11913m)) {
            LogUtils.sendJsonFetcher("update_config", new C0155d(z10));
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setPullAbTestConfigsThrottleMills(Long l10) {
        if (this.f11917q == null) {
            new m0().initCause(new AssertionError("Please initialize first")).printStackTrace();
            return;
        }
        this.f11917q.a(l10);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setRangersEventVerifyEnable(boolean z10, String str) {
        if (b("setRangersEventVerifyEnable")) {
            return;
        }
        e0 e0Var = this.f11917q;
        e0Var.f11961j.removeMessages(15);
        e0Var.f11961j.obtainMessage(15, new Object[]{Boolean.valueOf(z10), str}).sendToTarget();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setTouchPoint(@NonNull String str) {
        setHeaderInfo("touch_point", str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setTracerData(JSONObject jSONObject) {
        if (a("setTracerData")) {
            return;
        }
        this.f11916p.a("tracer_data", jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setUriRuntime(UriConfig uriConfig) {
        if (b("setUriRuntime")) {
            return;
        }
        e0 e0Var = this.f11917q;
        e0Var.f11966o = uriConfig;
        e0Var.a(e0Var.f11962k);
        if (e0Var.f11956e.f12304c.isAutoActive()) {
            e0Var.a(true);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserAgent(@NonNull String str) {
        if (a("setUserAgent")) {
            return;
        }
        r1 r1Var = this.f11916p;
        if (r1Var.a("user_agent", (Object) str)) {
            com.bytedance.bdtracker.a.a(r1Var.f12360c.f12307f, "user_agent", str);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserID(long j10) {
        if (b("setUserID")) {
            return;
        }
        this.f11917q.f11965n.f12080a = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserUniqueID(@Nullable String str) {
        if (this.f11916p == null) {
            s4<String> s4Var = this.H;
            s4Var.f12391a = str;
            s4Var.f12392b = true;
            return;
        }
        setUserUniqueID(str, this.f11916p.l());
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewId(Dialog dialog, String str) {
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        dialog.getWindow().getDecorView().setTag(R.id.applog_tag_view_id, str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewProperties(View view, JSONObject jSONObject) {
        if (view != null && jSONObject != null) {
            this.f11901a.put(l0.b.b(view), jSONObject);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void start() {
        if (!b("start") && !this.f11921u) {
            this.f11921u = true;
            e0 e0Var = this.f11917q;
            if (!e0Var.f11969r) {
                e0Var.i();
            }
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void startDurationEvent(String str) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (l0.b.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        k0 k0Var = this.f11909i.get(str);
        if (k0Var == null) {
            k0Var = new k0(this.D, str);
            this.f11909i.put(str, k0Var);
        }
        k0Var.c(elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void startSimulator(@NonNull String str) {
        if (b("startSimulator")) {
            return;
        }
        e0 e0Var = this.f11917q;
        c0 c0Var = e0Var.f11970s;
        if (c0Var != null) {
            c0Var.f11887d = true;
        }
        Class<?> b10 = l0.b.b("com.bytedance.applog.picker.DomSender");
        if (b10 != null) {
            try {
                e0Var.f11970s = (c0) b10.getConstructor(e0.class, String.class).newInstance(e0Var, str);
                e0Var.f11961j.sendMessage(e0Var.f11961j.obtainMessage(9, e0Var.f11970s));
            } catch (Throwable th2) {
                e0Var.f11955d.D.error("Start simulator failed.", th2, new Object[0]);
            }
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void stopDurationEvent(String str, JSONObject jSONObject) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (l0.b.a(TextUtils.isEmpty(str), "Event name must not empty!")) {
            return;
        }
        k0 k0Var = this.f11909i.get(str);
        if (l0.b.a((Object) k0Var, "No duration event with name: " + str)) {
            return;
        }
        long j10 = 0;
        if (elapsedRealtime <= 0) {
            IAppLogLogger iAppLogLogger = k0Var.f12135a;
            if (iAppLogLogger != null) {
                iAppLogLogger.warn(4, "End at illegal time: " + elapsedRealtime, new Object[0]);
            }
        } else {
            k0Var.a(elapsedRealtime);
            IAppLogLogger iAppLogLogger2 = k0Var.f12135a;
            if (iAppLogLogger2 != null) {
                iAppLogLogger2.debug(4, "[DurationEvent:{}] End[ at:{} and duration is {}ms", k0Var.f12136b, Long.valueOf(elapsedRealtime), Long.valueOf(k0Var.f12138d));
            }
            j10 = k0Var.f12138d;
        }
        JSONObject jSONObject2 = new JSONObject();
        l0.b.b(jSONObject, jSONObject2);
        try {
            jSONObject2.put("$event_duration", j10);
        } catch (Throwable th2) {
            this.D.error("JSON handle failed", th2, new Object[0]);
        }
        receive(new b4(str, jSONObject2));
        this.f11909i.remove(str);
    }

    public String toString() {
        StringBuilder a10 = com.bytedance.bdtracker.a.a("AppLogInstance{id:");
        a10.append(K.get());
        a10.append(";appId:");
        a10.append(this.f11913m);
        a10.append("}@");
        a10.append(hashCode());
        return a10.toString();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackClick(View view) {
        trackClick(view, null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Activity activity) {
        trackPage(activity, (JSONObject) null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void userProfileSetOnce(JSONObject jSONObject, UserProfileCallback userProfileCallback) {
        if (b("userProfileSetOnce")) {
            return;
        }
        e0 e0Var = this.f11917q;
        if (e0Var.f11961j != null) {
            l3.a(e0Var, 0, jSONObject, userProfileCallback, e0Var.f11961j, false);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void userProfileSync(JSONObject jSONObject, UserProfileCallback userProfileCallback) {
        if (b("userProfileSync")) {
            return;
        }
        e0 e0Var = this.f11917q;
        if (e0Var.f11961j != null) {
            l3.a(e0Var, 1, jSONObject, userProfileCallback, e0Var.f11961j, false);
        }
    }

    public final boolean a(String str) {
        r1 r1Var = this.f11916p;
        return l0.b.a((Object) r1Var, "Call " + str + " before please initialize first");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void addEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
        this.f11903c.a(l0.b.a(iEventObserver, iPresetEventObserver));
    }

    public final boolean b(String str) {
        e0 e0Var = this.f11917q;
        return l0.b.a((Object) e0Var, "Call " + str + " before please initialize first");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject) {
        onEventV3(str, jSONObject, 0);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void pullAbTestConfigs(int i10, IPullAbTestConfigCallback iPullAbTestConfigCallback) {
        if (this.f11917q == null) {
            new m0().initCause(new AssertionError("Please initialize first")).printStackTrace();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        long abs = this.f11917q.f11952a - Math.abs(currentTimeMillis - this.F);
        if (abs < 0) {
            this.F = currentTimeMillis;
            Handler handler = this.f11917q.f11967p;
            handler.sendMessage(handler.obtainMessage(18, i10, -1, iPullAbTestConfigCallback));
        } else if (iPullAbTestConfigCallback != null) {
            iPullAbTestConfigCallback.onThrottle(abs);
        } else {
            this.D.warn("Pull ABTest config too frequently", new Object[0]);
        }
        k2.a(getMonitor(), "api_usage", "pullAbTestConfigs", elapsedRealtime);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void removeEventObserver(IEventObserver iEventObserver, IPresetEventObserver iPresetEventObserver) {
        this.f11903c.b(l0.b.a(iEventObserver, iPresetEventObserver));
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewId(View view, String str) {
        if (view == null) {
            return;
        }
        view.setTag(R.id.applog_tag_view_id, str);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackClick(View view, JSONObject jSONObject) {
        w3 a10 = l0.b.a(view, false);
        if (a10 != null && jSONObject != null) {
            a10.f12458o = jSONObject;
        }
        receive(a10);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Activity activity, JSONObject jSONObject) {
        a(activity, jSONObject);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:4|(3:5|(1:7)(0)|18)|9|10|11|12|(1:14)|15|18|19|20|21|22|23|24|25) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        r4 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Object r9, org.json.JSONObject r10) {
        /*
            r8 = this;
            com.bytedance.bdtracker.w r0 = r8.f11918r
            if (r0 == 0) goto La0
            if (r9 != 0) goto L8
            goto La0
        L8:
            com.bytedance.bdtracker.b4 r0 = new com.bytedance.bdtracker.b4
            java.lang.String r1 = "bav2b_page"
            r2 = 1
            r0.<init>(r1, r2)
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            java.lang.Class r3 = r9.getClass()
            java.lang.String r3 = r3.getName()
            java.util.List<java.lang.Class<?>> r4 = com.bytedance.bdtracker.v4.f12477d
            java.util.Iterator r4 = r4.iterator()
        L23:
            boolean r5 = r4.hasNext()
            r6 = 0
            if (r5 == 0) goto L6b
            java.lang.Object r5 = r4.next()
            java.lang.Class r5 = (java.lang.Class) r5
            boolean r5 = r5.isInstance(r9)
            if (r5 == 0) goto L23
            java.lang.Class r4 = r9.getClass()     // Catch: java.lang.Throwable -> L4b
            java.lang.String r5 = "getActivity"
            java.lang.Class[] r7 = new java.lang.Class[r6]     // Catch: java.lang.Throwable -> L4b
            java.lang.reflect.Method r4 = r4.getMethod(r5, r7)     // Catch: java.lang.Throwable -> L4b
            java.lang.Object[] r5 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r4 = r4.invoke(r9, r5)     // Catch: java.lang.Throwable -> L4b
            android.app.Activity r4 = (android.app.Activity) r4     // Catch: java.lang.Throwable -> L4b
            goto L4c
        L4b:
            r4 = 0
        L4c:
            if (r4 == 0) goto L6a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            r5.append(r4)
            java.lang.String r4 = ":"
            r5.append(r4)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
        L6a:
            r6 = r2
        L6b:
            java.lang.String r4 = "page_key"
            r1.put(r4, r3)     // Catch: org.json.JSONException -> L97
            java.lang.String r3 = "is_fragment"
            r1.put(r3, r6)     // Catch: org.json.JSONException -> L97
            java.lang.String r3 = "duration"
            r4 = 1000(0x3e8, double:4.94E-321)
            r1.put(r3, r4)     // Catch: org.json.JSONException -> L97
            java.lang.String r3 = "page_title"
            java.lang.String r4 = com.bytedance.bdtracker.v4.c(r9)     // Catch: org.json.JSONException -> L97
            r1.put(r3, r4)     // Catch: org.json.JSONException -> L97
            java.lang.String r3 = "page_path"
            java.lang.String r9 = com.bytedance.bdtracker.v4.b(r9)     // Catch: org.json.JSONException -> L97
            r1.put(r3, r9)     // Catch: org.json.JSONException -> L97
            java.lang.String r9 = "is_custom"
            r1.put(r9, r2)     // Catch: org.json.JSONException -> L97
            com.bytedance.bdtracker.l0.b.b(r10, r1)     // Catch: org.json.JSONException -> L97
            goto L9b
        L97:
            r9 = move-exception
            r9.printStackTrace()
        L9b:
            r0.f12458o = r1
            r8.receive(r0)
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.d.a(java.lang.Object, org.json.JSONObject):void");
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(@NonNull String str) {
        onEventV3(str, (JSONObject) null, 0);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setHeaderInfo(HashMap<String, Object> hashMap) {
        if (a("setHeaderInfo")) {
            return;
        }
        c5.a(this.D, hashMap);
        this.f11916p.a(hashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.applog.IAppLogInstance
    public void setUserUniqueID(@Nullable String str, @Nullable String str2) {
        if (this.f11916p == null) {
            s4<String> s4Var = this.H;
            s4Var.f12391a = str;
            s4Var.f12392b = true;
            s4<String> s4Var2 = this.I;
            s4Var2.f12391a = str2;
            s4Var2.f12392b = true;
        } else if (b("setUserUniqueID")) {
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            e0 e0Var = this.f11917q;
            if (!l0.b.a(str, e0Var.f11960i.k())) {
                boolean z10 = false;
                e0Var.a((String[]) null, false);
                ArrayList arrayList = new ArrayList();
                long currentTimeMillis = System.currentTimeMillis();
                e4 a10 = w.a();
                boolean d10 = l0.b.d(e0Var.f11965n.a());
                if (d10 && a10 != null) {
                    a10 = (e4) a10.m4626clone();
                    a10.f12456m = e0Var.f11955d.f11913m;
                    long j10 = currentTimeMillis - a10.f12446c;
                    a10.a(currentTimeMillis);
                    if (j10 < 0) {
                        j10 = 0;
                    }
                    a10.f11994s = j10;
                    a10.B = e0Var.f11965n.b();
                    e0Var.f11965n.a(e0Var.f11955d, a10);
                    arrayList.add(a10);
                }
                e0Var.a(str, str2);
                if (a10 == null) {
                    a10 = w.f12490l;
                } else {
                    z10 = true;
                }
                if (d10 && a10 != null) {
                    e4 e4Var = (e4) a10.m4626clone();
                    e4Var.a(currentTimeMillis + 1);
                    e4Var.f11994s = -1L;
                    e0Var.f11965n.a(e0Var.f11955d, e4Var, arrayList, true).f11893v = e0Var.f11965n.b();
                    if (z10) {
                        e0Var.f11965n.a(e0Var.f11955d, e4Var);
                        arrayList.add(e4Var);
                    }
                }
                if (!arrayList.isEmpty()) {
                    e0Var.c().f11871c.b(arrayList);
                }
                e0Var.a(e0Var.f11963l);
            }
            k2.a(getMonitor(), "api_usage", "setUserUniqueID", elapsedRealtime);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setViewId(Object obj, String str) {
        if (obj == null) {
            return;
        }
        if (!l0.b.a(obj, "android.support.v7.app.AlertDialog", "androidx.appcompat.app.AlertDialog")) {
            this.D.warn("Only support AlertDialog view", new Object[0]);
            return;
        }
        try {
            Window window = (Window) obj.getClass().getMethod("getWindow", new Class[0]).invoke(obj, new Object[0]);
            if (window != null) {
                window.getDecorView().setTag(R.id.applog_tag_view_id, str);
            }
        } catch (NoSuchMethodException e10) {
            this.D.error("Not found getWindow method in alertDialog", e10, new Object[0]);
        } catch (Throwable th2) {
            this.D.error("Cannot set viewId for alertDialog", th2, new Object[0]);
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Object obj) {
        trackPage(obj, (JSONObject) null);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(@NonNull String str, @Nullable Bundle bundle, int i10) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th2) {
                        th = th2;
                        jSONObject = jSONObject2;
                        this.D.error("Parse event params failed", th, new Object[0]);
                        onEventV3(str, jSONObject, i10);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        onEventV3(str, jSONObject, i10);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void receive(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return;
        }
        for (String str : strArr) {
        }
        if (this.f11917q == null) {
            this.f11905e.a(strArr);
            return;
        }
        e0 e0Var = this.f11917q;
        e0Var.f11967p.removeMessages(4);
        e0Var.f11967p.obtainMessage(4, strArr).sendToTarget();
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void trackPage(Object obj, JSONObject jSONObject) {
        a(obj, jSONObject);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject, int i10) {
        if (TextUtils.isEmpty(str)) {
            this.D.error("event name is empty", new Object[0]);
            return;
        }
        this.D.debug(Arrays.asList("customEvent", "eventV3"), "event:{} type:{} params:{} ", str, Integer.valueOf(i10), jSONObject != null ? jSONObject.toString() : null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        c5.a(this.D, str, jSONObject);
        receive(new b4(this.f11913m, str, false, jSONObject != null ? jSONObject.toString() : null, i10));
        h2 monitor = getMonitor();
        String sessionId = getSessionId();
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        v2 v2Var = new v2();
        v2Var.f12466a = "onEventV3";
        v2Var.f12467b = elapsedRealtime2 - elapsedRealtime;
        if (monitor != null) {
            ((m2) monitor).a(v2Var);
        }
        if (monitor != null) {
            if (sessionId == null) {
                sessionId = "";
            }
            ((m2) monitor).a(new t2(0L, sessionId, 1L));
        }
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void init(@NonNull Context context, @NonNull InitConfig initConfig, Activity activity) {
        init(context, initConfig);
        if (this.f11918r == null || activity == null) {
            return;
        }
        this.f11918r.onActivityCreated(activity, null);
        this.f11918r.onActivityResumed(activity);
    }

    @Override // com.bytedance.applog.IAppLogInstance
    public void setAppContext(@NonNull f fVar) {
    }
}
