package com.google.android.datatransport.cct.internal;

import com.applovin.sdk.AppLovinEventTypes;
import com.appsflyer.AdRevenueScheme;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.IOException;
/* compiled from: AutoBatchedLogRequestEncoder.java */
/* loaded from: classes4.dex */
public final class b implements q8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final q8.a f17028a = new b();

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class a implements p8.c<com.google.android.datatransport.cct.internal.a> {

        /* renamed from: a  reason: collision with root package name */
        static final a f17029a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17030b = p8.b.d("sdkVersion");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f17031c = p8.b.d("model");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f17032d = p8.b.d("hardware");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f17033e = p8.b.d("device");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f17034f = p8.b.d(AppLovinEventTypes.USER_VIEWED_PRODUCT);

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f17035g = p8.b.d("osBuild");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f17036h = p8.b.d("manufacturer");

        /* renamed from: i  reason: collision with root package name */
        private static final p8.b f17037i = p8.b.d(HiAnalyticsConstant.HaKey.BI_KEY_FINGERPRINT);

        /* renamed from: j  reason: collision with root package name */
        private static final p8.b f17038j = p8.b.d("locale");

        /* renamed from: k  reason: collision with root package name */
        private static final p8.b f17039k = p8.b.d(AdRevenueScheme.COUNTRY);

        /* renamed from: l  reason: collision with root package name */
        private static final p8.b f17040l = p8.b.d("mccMnc");

        /* renamed from: m  reason: collision with root package name */
        private static final p8.b f17041m = p8.b.d("applicationBuild");

        private a() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(com.google.android.datatransport.cct.internal.a aVar, p8.d dVar) throws IOException {
            dVar.f(f17030b, aVar.m());
            dVar.f(f17031c, aVar.j());
            dVar.f(f17032d, aVar.f());
            dVar.f(f17033e, aVar.d());
            dVar.f(f17034f, aVar.l());
            dVar.f(f17035g, aVar.k());
            dVar.f(f17036h, aVar.h());
            dVar.f(f17037i, aVar.e());
            dVar.f(f17038j, aVar.g());
            dVar.f(f17039k, aVar.c());
            dVar.f(f17040l, aVar.i());
            dVar.f(f17041m, aVar.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* renamed from: com.google.android.datatransport.cct.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static final class C0284b implements p8.c<m> {

        /* renamed from: a  reason: collision with root package name */
        static final C0284b f17042a = new C0284b();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17043b = p8.b.d("logRequest");

        private C0284b() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(m mVar, p8.d dVar) throws IOException {
            dVar.f(f17043b, mVar.c());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class c implements p8.c<ClientInfo> {

        /* renamed from: a  reason: collision with root package name */
        static final c f17044a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17045b = p8.b.d("clientType");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f17046c = p8.b.d("androidClientInfo");

        private c() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(ClientInfo clientInfo, p8.d dVar) throws IOException {
            dVar.f(f17045b, clientInfo.c());
            dVar.f(f17046c, clientInfo.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class d implements p8.c<ComplianceData> {

        /* renamed from: a  reason: collision with root package name */
        static final d f17047a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17048b = p8.b.d("privacyContext");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f17049c = p8.b.d("productIdOrigin");

        private d() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(ComplianceData complianceData, p8.d dVar) throws IOException {
            dVar.f(f17048b, complianceData.b());
            dVar.f(f17049c, complianceData.c());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class e implements p8.c<n> {

        /* renamed from: a  reason: collision with root package name */
        static final e f17050a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17051b = p8.b.d("clearBlob");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f17052c = p8.b.d("encryptedBlob");

        private e() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(n nVar, p8.d dVar) throws IOException {
            dVar.f(f17051b, nVar.b());
            dVar.f(f17052c, nVar.c());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class f implements p8.c<o> {

        /* renamed from: a  reason: collision with root package name */
        static final f f17053a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17054b = p8.b.d("originAssociatedProductId");

        private f() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(o oVar, p8.d dVar) throws IOException {
            dVar.f(f17054b, oVar.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class g implements p8.c<p> {

        /* renamed from: a  reason: collision with root package name */
        static final g f17055a = new g();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17056b = p8.b.d("prequest");

        private g() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(p pVar, p8.d dVar) throws IOException {
            dVar.f(f17056b, pVar.b());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class h implements p8.c<q> {

        /* renamed from: a  reason: collision with root package name */
        static final h f17057a = new h();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17058b = p8.b.d("eventTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f17059c = p8.b.d("eventCode");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f17060d = p8.b.d("complianceData");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f17061e = p8.b.d("eventUptimeMs");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f17062f = p8.b.d("sourceExtension");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f17063g = p8.b.d("sourceExtensionJsonProto3");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f17064h = p8.b.d("timezoneOffsetSeconds");

        /* renamed from: i  reason: collision with root package name */
        private static final p8.b f17065i = p8.b.d("networkConnectionInfo");

        /* renamed from: j  reason: collision with root package name */
        private static final p8.b f17066j = p8.b.d("experimentIds");

        private h() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(q qVar, p8.d dVar) throws IOException {
            dVar.b(f17058b, qVar.d());
            dVar.f(f17059c, qVar.c());
            dVar.f(f17060d, qVar.b());
            dVar.b(f17061e, qVar.e());
            dVar.f(f17062f, qVar.h());
            dVar.f(f17063g, qVar.i());
            dVar.b(f17064h, qVar.j());
            dVar.f(f17065i, qVar.g());
            dVar.f(f17066j, qVar.f());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class i implements p8.c<r> {

        /* renamed from: a  reason: collision with root package name */
        static final i f17067a = new i();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17068b = p8.b.d("requestTimeMs");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f17069c = p8.b.d("requestUptimeMs");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f17070d = p8.b.d("clientInfo");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f17071e = p8.b.d("logSource");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f17072f = p8.b.d("logSourceName");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f17073g = p8.b.d("logEvent");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f17074h = p8.b.d("qosTier");

        private i() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(r rVar, p8.d dVar) throws IOException {
            dVar.b(f17068b, rVar.g());
            dVar.b(f17069c, rVar.h());
            dVar.f(f17070d, rVar.b());
            dVar.f(f17071e, rVar.d());
            dVar.f(f17072f, rVar.e());
            dVar.f(f17073g, rVar.c());
            dVar.f(f17074h, rVar.f());
        }
    }

    /* compiled from: AutoBatchedLogRequestEncoder.java */
    /* loaded from: classes4.dex */
    private static final class j implements p8.c<NetworkConnectionInfo> {

        /* renamed from: a  reason: collision with root package name */
        static final j f17075a = new j();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f17076b = p8.b.d("networkType");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f17077c = p8.b.d("mobileSubtype");

        private j() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(NetworkConnectionInfo networkConnectionInfo, p8.d dVar) throws IOException {
            dVar.f(f17076b, networkConnectionInfo.c());
            dVar.f(f17077c, networkConnectionInfo.b());
        }
    }

    private b() {
    }

    @Override // q8.a
    public void a(q8.b<?> bVar) {
        C0284b c0284b = C0284b.f17042a;
        bVar.a(m.class, c0284b);
        bVar.a(com.google.android.datatransport.cct.internal.d.class, c0284b);
        i iVar = i.f17067a;
        bVar.a(r.class, iVar);
        bVar.a(k.class, iVar);
        c cVar = c.f17044a;
        bVar.a(ClientInfo.class, cVar);
        bVar.a(com.google.android.datatransport.cct.internal.e.class, cVar);
        a aVar = a.f17029a;
        bVar.a(com.google.android.datatransport.cct.internal.a.class, aVar);
        bVar.a(com.google.android.datatransport.cct.internal.c.class, aVar);
        h hVar = h.f17057a;
        bVar.a(q.class, hVar);
        bVar.a(com.google.android.datatransport.cct.internal.j.class, hVar);
        d dVar = d.f17047a;
        bVar.a(ComplianceData.class, dVar);
        bVar.a(com.google.android.datatransport.cct.internal.f.class, dVar);
        g gVar = g.f17055a;
        bVar.a(p.class, gVar);
        bVar.a(com.google.android.datatransport.cct.internal.i.class, gVar);
        f fVar = f.f17053a;
        bVar.a(o.class, fVar);
        bVar.a(com.google.android.datatransport.cct.internal.h.class, fVar);
        j jVar = j.f17075a;
        bVar.a(NetworkConnectionInfo.class, jVar);
        bVar.a(l.class, jVar);
        e eVar = e.f17050a;
        bVar.a(n.class, eVar);
        bVar.a(com.google.android.datatransport.cct.internal.g.class, eVar);
    }
}
