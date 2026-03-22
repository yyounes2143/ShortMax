package e8;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import e8.f0;
import java.io.IOException;
/* compiled from: AutoCrashlyticsReportEncoder.java */
/* loaded from: classes5.dex */
public final class a implements q8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final q8.a f50843a = new a();

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* renamed from: e8.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0716a implements p8.c<f0.a.AbstractC0718a> {

        /* renamed from: a  reason: collision with root package name */
        static final C0716a f50844a = new C0716a();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50845b = p8.b.d("arch");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50846c = p8.b.d("libraryName");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50847d = p8.b.d("buildId");

        private C0716a() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.a.AbstractC0718a abstractC0718a, p8.d dVar) throws IOException {
            dVar.f(f50845b, abstractC0718a.b());
            dVar.f(f50846c, abstractC0718a.d());
            dVar.f(f50847d, abstractC0718a.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class b implements p8.c<f0.a> {

        /* renamed from: a  reason: collision with root package name */
        static final b f50848a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50849b = p8.b.d("pid");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50850c = p8.b.d("processName");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50851d = p8.b.d("reasonCode");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50852e = p8.b.d("importance");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50853f = p8.b.d("pss");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50854g = p8.b.d("rss");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f50855h = p8.b.d("timestamp");

        /* renamed from: i  reason: collision with root package name */
        private static final p8.b f50856i = p8.b.d("traceFile");

        /* renamed from: j  reason: collision with root package name */
        private static final p8.b f50857j = p8.b.d("buildIdMappingForArch");

        private b() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.a aVar, p8.d dVar) throws IOException {
            dVar.d(f50849b, aVar.d());
            dVar.f(f50850c, aVar.e());
            dVar.d(f50851d, aVar.g());
            dVar.d(f50852e, aVar.c());
            dVar.b(f50853f, aVar.f());
            dVar.b(f50854g, aVar.h());
            dVar.b(f50855h, aVar.i());
            dVar.f(f50856i, aVar.j());
            dVar.f(f50857j, aVar.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class c implements p8.c<f0.c> {

        /* renamed from: a  reason: collision with root package name */
        static final c f50858a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50859b = p8.b.d("key");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50860c = p8.b.d(AppMeasurementSdk.ConditionalUserProperty.VALUE);

        private c() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.c cVar, p8.d dVar) throws IOException {
            dVar.f(f50859b, cVar.b());
            dVar.f(f50860c, cVar.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class d implements p8.c<f0> {

        /* renamed from: a  reason: collision with root package name */
        static final d f50861a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50862b = p8.b.d("sdkVersion");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50863c = p8.b.d("gmpAppId");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50864d = p8.b.d("platform");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50865e = p8.b.d("installationUuid");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50866f = p8.b.d("firebaseInstallationId");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50867g = p8.b.d("firebaseAuthenticationToken");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f50868h = p8.b.d("appQualitySessionId");

        /* renamed from: i  reason: collision with root package name */
        private static final p8.b f50869i = p8.b.d("buildVersion");

        /* renamed from: j  reason: collision with root package name */
        private static final p8.b f50870j = p8.b.d("displayVersion");

        /* renamed from: k  reason: collision with root package name */
        private static final p8.b f50871k = p8.b.d("session");

        /* renamed from: l  reason: collision with root package name */
        private static final p8.b f50872l = p8.b.d("ndkPayload");

        /* renamed from: m  reason: collision with root package name */
        private static final p8.b f50873m = p8.b.d("appExitInfo");

        private d() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0 f0Var, p8.d dVar) throws IOException {
            dVar.f(f50862b, f0Var.m());
            dVar.f(f50863c, f0Var.i());
            dVar.d(f50864d, f0Var.l());
            dVar.f(f50865e, f0Var.j());
            dVar.f(f50866f, f0Var.h());
            dVar.f(f50867g, f0Var.g());
            dVar.f(f50868h, f0Var.d());
            dVar.f(f50869i, f0Var.e());
            dVar.f(f50870j, f0Var.f());
            dVar.f(f50871k, f0Var.n());
            dVar.f(f50872l, f0Var.k());
            dVar.f(f50873m, f0Var.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class e implements p8.c<f0.d> {

        /* renamed from: a  reason: collision with root package name */
        static final e f50874a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50875b = p8.b.d("files");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50876c = p8.b.d("orgId");

        private e() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.d dVar, p8.d dVar2) throws IOException {
            dVar2.f(f50875b, dVar.b());
            dVar2.f(f50876c, dVar.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class f implements p8.c<f0.d.b> {

        /* renamed from: a  reason: collision with root package name */
        static final f f50877a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50878b = p8.b.d("filename");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50879c = p8.b.d("contents");

        private f() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.d.b bVar, p8.d dVar) throws IOException {
            dVar.f(f50878b, bVar.c());
            dVar.f(f50879c, bVar.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class g implements p8.c<f0.e.a> {

        /* renamed from: a  reason: collision with root package name */
        static final g f50880a = new g();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50881b = p8.b.d("identifier");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50882c = p8.b.d("version");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50883d = p8.b.d("displayVersion");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50884e = p8.b.d("organization");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50885f = p8.b.d("installationUuid");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50886g = p8.b.d("developmentPlatform");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f50887h = p8.b.d("developmentPlatformVersion");

        private g() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.a aVar, p8.d dVar) throws IOException {
            dVar.f(f50881b, aVar.e());
            dVar.f(f50882c, aVar.h());
            dVar.f(f50883d, aVar.d());
            dVar.f(f50884e, aVar.g());
            dVar.f(f50885f, aVar.f());
            dVar.f(f50886g, aVar.b());
            dVar.f(f50887h, aVar.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class h implements p8.c<f0.e.a.b> {

        /* renamed from: a  reason: collision with root package name */
        static final h f50888a = new h();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50889b = p8.b.d("clsId");

        private h() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.a.b bVar, p8.d dVar) throws IOException {
            dVar.f(f50889b, bVar.a());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class i implements p8.c<f0.e.c> {

        /* renamed from: a  reason: collision with root package name */
        static final i f50890a = new i();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50891b = p8.b.d("arch");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50892c = p8.b.d("model");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50893d = p8.b.d("cores");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50894e = p8.b.d("ram");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50895f = p8.b.d("diskSpace");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50896g = p8.b.d("simulator");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f50897h = p8.b.d("state");

        /* renamed from: i  reason: collision with root package name */
        private static final p8.b f50898i = p8.b.d("manufacturer");

        /* renamed from: j  reason: collision with root package name */
        private static final p8.b f50899j = p8.b.d("modelClass");

        private i() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.c cVar, p8.d dVar) throws IOException {
            dVar.d(f50891b, cVar.b());
            dVar.f(f50892c, cVar.f());
            dVar.d(f50893d, cVar.c());
            dVar.b(f50894e, cVar.h());
            dVar.b(f50895f, cVar.d());
            dVar.c(f50896g, cVar.j());
            dVar.d(f50897h, cVar.i());
            dVar.f(f50898i, cVar.e());
            dVar.f(f50899j, cVar.g());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class j implements p8.c<f0.e> {

        /* renamed from: a  reason: collision with root package name */
        static final j f50900a = new j();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50901b = p8.b.d("generator");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50902c = p8.b.d("identifier");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50903d = p8.b.d("appQualitySessionId");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50904e = p8.b.d("startedAt");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50905f = p8.b.d("endedAt");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50906g = p8.b.d("crashed");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f50907h = p8.b.d(MBridgeConstans.DYNAMIC_VIEW_WX_APP);

        /* renamed from: i  reason: collision with root package name */
        private static final p8.b f50908i = p8.b.d("user");

        /* renamed from: j  reason: collision with root package name */
        private static final p8.b f50909j = p8.b.d("os");

        /* renamed from: k  reason: collision with root package name */
        private static final p8.b f50910k = p8.b.d("device");

        /* renamed from: l  reason: collision with root package name */
        private static final p8.b f50911l = p8.b.d("events");

        /* renamed from: m  reason: collision with root package name */
        private static final p8.b f50912m = p8.b.d("generatorType");

        private j() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e eVar, p8.d dVar) throws IOException {
            dVar.f(f50901b, eVar.g());
            dVar.f(f50902c, eVar.j());
            dVar.f(f50903d, eVar.c());
            dVar.b(f50904e, eVar.l());
            dVar.f(f50905f, eVar.e());
            dVar.c(f50906g, eVar.n());
            dVar.f(f50907h, eVar.b());
            dVar.f(f50908i, eVar.m());
            dVar.f(f50909j, eVar.k());
            dVar.f(f50910k, eVar.d());
            dVar.f(f50911l, eVar.f());
            dVar.d(f50912m, eVar.h());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class k implements p8.c<f0.e.d.a> {

        /* renamed from: a  reason: collision with root package name */
        static final k f50913a = new k();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50914b = p8.b.d("execution");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50915c = p8.b.d("customAttributes");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50916d = p8.b.d("internalKeys");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50917e = p8.b.d("background");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50918f = p8.b.d("currentProcessDetails");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50919g = p8.b.d("appProcessDetails");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f50920h = p8.b.d("uiOrientation");

        private k() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a aVar, p8.d dVar) throws IOException {
            dVar.f(f50914b, aVar.f());
            dVar.f(f50915c, aVar.e());
            dVar.f(f50916d, aVar.g());
            dVar.f(f50917e, aVar.c());
            dVar.f(f50918f, aVar.d());
            dVar.f(f50919g, aVar.b());
            dVar.d(f50920h, aVar.h());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class l implements p8.c<f0.e.d.a.b.AbstractC0722a> {

        /* renamed from: a  reason: collision with root package name */
        static final l f50921a = new l();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50922b = p8.b.d("baseAddress");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50923c = p8.b.d("size");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50924d = p8.b.d("name");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50925e = p8.b.d("uuid");

        private l() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0722a abstractC0722a, p8.d dVar) throws IOException {
            dVar.b(f50922b, abstractC0722a.b());
            dVar.b(f50923c, abstractC0722a.d());
            dVar.f(f50924d, abstractC0722a.c());
            dVar.f(f50925e, abstractC0722a.f());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class m implements p8.c<f0.e.d.a.b> {

        /* renamed from: a  reason: collision with root package name */
        static final m f50926a = new m();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50927b = p8.b.d("threads");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50928c = p8.b.d("exception");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50929d = p8.b.d("appExitInfo");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50930e = p8.b.d("signal");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50931f = p8.b.d("binaries");

        private m() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a.b bVar, p8.d dVar) throws IOException {
            dVar.f(f50927b, bVar.f());
            dVar.f(f50928c, bVar.d());
            dVar.f(f50929d, bVar.b());
            dVar.f(f50930e, bVar.e());
            dVar.f(f50931f, bVar.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class n implements p8.c<f0.e.d.a.b.c> {

        /* renamed from: a  reason: collision with root package name */
        static final n f50932a = new n();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50933b = p8.b.d("type");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50934c = p8.b.d("reason");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50935d = p8.b.d(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50936e = p8.b.d("causedBy");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50937f = p8.b.d("overflowCount");

        private n() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a.b.c cVar, p8.d dVar) throws IOException {
            dVar.f(f50933b, cVar.f());
            dVar.f(f50934c, cVar.e());
            dVar.f(f50935d, cVar.c());
            dVar.f(f50936e, cVar.b());
            dVar.d(f50937f, cVar.d());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class o implements p8.c<f0.e.d.a.b.AbstractC0726d> {

        /* renamed from: a  reason: collision with root package name */
        static final o f50938a = new o();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50939b = p8.b.d("name");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50940c = p8.b.d(Module.ResponseKey.Code);

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50941d = p8.b.d("address");

        private o() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0726d abstractC0726d, p8.d dVar) throws IOException {
            dVar.f(f50939b, abstractC0726d.d());
            dVar.f(f50940c, abstractC0726d.c());
            dVar.b(f50941d, abstractC0726d.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class p implements p8.c<f0.e.d.a.b.AbstractC0728e> {

        /* renamed from: a  reason: collision with root package name */
        static final p f50942a = new p();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50943b = p8.b.d("name");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50944c = p8.b.d("importance");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50945d = p8.b.d(com.mbridge.msdk.foundation.entity.b.JSON_KEY_FRAME_ADS);

        private p() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0728e abstractC0728e, p8.d dVar) throws IOException {
            dVar.f(f50943b, abstractC0728e.d());
            dVar.d(f50944c, abstractC0728e.c());
            dVar.f(f50945d, abstractC0728e.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class q implements p8.c<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> {

        /* renamed from: a  reason: collision with root package name */
        static final q f50946a = new q();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50947b = p8.b.d("pc");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50948c = p8.b.d("symbol");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50949d = p8.b.d("file");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50950e = p8.b.d(TypedValues.CycleType.S_WAVE_OFFSET);

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50951f = p8.b.d("importance");

        private q() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a.b.AbstractC0728e.AbstractC0730b abstractC0730b, p8.d dVar) throws IOException {
            dVar.b(f50947b, abstractC0730b.e());
            dVar.f(f50948c, abstractC0730b.f());
            dVar.f(f50949d, abstractC0730b.b());
            dVar.b(f50950e, abstractC0730b.d());
            dVar.d(f50951f, abstractC0730b.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class r implements p8.c<f0.e.d.a.c> {

        /* renamed from: a  reason: collision with root package name */
        static final r f50952a = new r();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50953b = p8.b.d("processName");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50954c = p8.b.d("pid");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50955d = p8.b.d("importance");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50956e = p8.b.d("defaultProcess");

        private r() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.a.c cVar, p8.d dVar) throws IOException {
            dVar.f(f50953b, cVar.d());
            dVar.d(f50954c, cVar.c());
            dVar.d(f50955d, cVar.b());
            dVar.c(f50956e, cVar.e());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class s implements p8.c<f0.e.d.c> {

        /* renamed from: a  reason: collision with root package name */
        static final s f50957a = new s();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50958b = p8.b.d("batteryLevel");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50959c = p8.b.d("batteryVelocity");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50960d = p8.b.d("proximityOn");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50961e = p8.b.d(AdUnitActivity.EXTRA_ORIENTATION);

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50962f = p8.b.d("ramUsed");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50963g = p8.b.d("diskUsed");

        private s() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.c cVar, p8.d dVar) throws IOException {
            dVar.f(f50958b, cVar.b());
            dVar.d(f50959c, cVar.c());
            dVar.c(f50960d, cVar.g());
            dVar.d(f50961e, cVar.e());
            dVar.b(f50962f, cVar.f());
            dVar.b(f50963g, cVar.d());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class t implements p8.c<f0.e.d> {

        /* renamed from: a  reason: collision with root package name */
        static final t f50964a = new t();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50965b = p8.b.d("timestamp");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50966c = p8.b.d("type");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50967d = p8.b.d(MBridgeConstans.DYNAMIC_VIEW_WX_APP);

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50968e = p8.b.d("device");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50969f = p8.b.d("log");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f50970g = p8.b.d("rollouts");

        private t() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d dVar, p8.d dVar2) throws IOException {
            dVar2.b(f50965b, dVar.f());
            dVar2.f(f50966c, dVar.g());
            dVar2.f(f50967d, dVar.b());
            dVar2.f(f50968e, dVar.c());
            dVar2.f(f50969f, dVar.d());
            dVar2.f(f50970g, dVar.e());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class u implements p8.c<f0.e.d.AbstractC0733d> {

        /* renamed from: a  reason: collision with root package name */
        static final u f50971a = new u();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50972b = p8.b.d("content");

        private u() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.AbstractC0733d abstractC0733d, p8.d dVar) throws IOException {
            dVar.f(f50972b, abstractC0733d.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class v implements p8.c<f0.e.d.AbstractC0734e> {

        /* renamed from: a  reason: collision with root package name */
        static final v f50973a = new v();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50974b = p8.b.d("rolloutVariant");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50975c = p8.b.d("parameterKey");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50976d = p8.b.d("parameterValue");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50977e = p8.b.d("templateVersion");

        private v() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.AbstractC0734e abstractC0734e, p8.d dVar) throws IOException {
            dVar.f(f50974b, abstractC0734e.d());
            dVar.f(f50975c, abstractC0734e.b());
            dVar.f(f50976d, abstractC0734e.c());
            dVar.b(f50977e, abstractC0734e.e());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class w implements p8.c<f0.e.d.AbstractC0734e.b> {

        /* renamed from: a  reason: collision with root package name */
        static final w f50978a = new w();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50979b = p8.b.d("rolloutId");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50980c = p8.b.d("variantId");

        private w() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.AbstractC0734e.b bVar, p8.d dVar) throws IOException {
            dVar.f(f50979b, bVar.b());
            dVar.f(f50980c, bVar.c());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class x implements p8.c<f0.e.d.f> {

        /* renamed from: a  reason: collision with root package name */
        static final x f50981a = new x();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50982b = p8.b.d("assignments");

        private x() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.d.f fVar, p8.d dVar) throws IOException {
            dVar.f(f50982b, fVar.b());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class y implements p8.c<f0.e.AbstractC0735e> {

        /* renamed from: a  reason: collision with root package name */
        static final y f50983a = new y();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50984b = p8.b.d("platform");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50985c = p8.b.d("version");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50986d = p8.b.d("buildVersion");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50987e = p8.b.d("jailbroken");

        private y() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.AbstractC0735e abstractC0735e, p8.d dVar) throws IOException {
            dVar.d(f50984b, abstractC0735e.c());
            dVar.f(f50985c, abstractC0735e.d());
            dVar.f(f50986d, abstractC0735e.b());
            dVar.c(f50987e, abstractC0735e.e());
        }
    }

    /* compiled from: AutoCrashlyticsReportEncoder.java */
    /* loaded from: classes5.dex */
    private static final class z implements p8.c<f0.e.f> {

        /* renamed from: a  reason: collision with root package name */
        static final z f50988a = new z();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50989b = p8.b.d("identifier");

        private z() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f0.e.f fVar, p8.d dVar) throws IOException {
            dVar.f(f50989b, fVar.b());
        }
    }

    private a() {
    }

    @Override // q8.a
    public void a(q8.b<?> bVar) {
        d dVar = d.f50861a;
        bVar.a(f0.class, dVar);
        bVar.a(e8.b.class, dVar);
        j jVar = j.f50900a;
        bVar.a(f0.e.class, jVar);
        bVar.a(e8.h.class, jVar);
        g gVar = g.f50880a;
        bVar.a(f0.e.a.class, gVar);
        bVar.a(e8.i.class, gVar);
        h hVar = h.f50888a;
        bVar.a(f0.e.a.b.class, hVar);
        bVar.a(e8.j.class, hVar);
        z zVar = z.f50988a;
        bVar.a(f0.e.f.class, zVar);
        bVar.a(a0.class, zVar);
        y yVar = y.f50983a;
        bVar.a(f0.e.AbstractC0735e.class, yVar);
        bVar.a(e8.z.class, yVar);
        i iVar = i.f50890a;
        bVar.a(f0.e.c.class, iVar);
        bVar.a(e8.k.class, iVar);
        t tVar = t.f50964a;
        bVar.a(f0.e.d.class, tVar);
        bVar.a(e8.l.class, tVar);
        k kVar = k.f50913a;
        bVar.a(f0.e.d.a.class, kVar);
        bVar.a(e8.m.class, kVar);
        m mVar = m.f50926a;
        bVar.a(f0.e.d.a.b.class, mVar);
        bVar.a(e8.n.class, mVar);
        p pVar = p.f50942a;
        bVar.a(f0.e.d.a.b.AbstractC0728e.class, pVar);
        bVar.a(e8.r.class, pVar);
        q qVar = q.f50946a;
        bVar.a(f0.e.d.a.b.AbstractC0728e.AbstractC0730b.class, qVar);
        bVar.a(e8.s.class, qVar);
        n nVar = n.f50932a;
        bVar.a(f0.e.d.a.b.c.class, nVar);
        bVar.a(e8.p.class, nVar);
        b bVar2 = b.f50848a;
        bVar.a(f0.a.class, bVar2);
        bVar.a(e8.c.class, bVar2);
        C0716a c0716a = C0716a.f50844a;
        bVar.a(f0.a.AbstractC0718a.class, c0716a);
        bVar.a(e8.d.class, c0716a);
        o oVar = o.f50938a;
        bVar.a(f0.e.d.a.b.AbstractC0726d.class, oVar);
        bVar.a(e8.q.class, oVar);
        l lVar = l.f50921a;
        bVar.a(f0.e.d.a.b.AbstractC0722a.class, lVar);
        bVar.a(e8.o.class, lVar);
        c cVar = c.f50858a;
        bVar.a(f0.c.class, cVar);
        bVar.a(e8.e.class, cVar);
        r rVar = r.f50952a;
        bVar.a(f0.e.d.a.c.class, rVar);
        bVar.a(e8.t.class, rVar);
        s sVar = s.f50957a;
        bVar.a(f0.e.d.c.class, sVar);
        bVar.a(e8.u.class, sVar);
        u uVar = u.f50971a;
        bVar.a(f0.e.d.AbstractC0733d.class, uVar);
        bVar.a(e8.v.class, uVar);
        x xVar = x.f50981a;
        bVar.a(f0.e.d.f.class, xVar);
        bVar.a(e8.y.class, xVar);
        v vVar = v.f50973a;
        bVar.a(f0.e.d.AbstractC0734e.class, vVar);
        bVar.a(e8.w.class, vVar);
        w wVar = w.f50978a;
        bVar.a(f0.e.d.AbstractC0734e.b.class, wVar);
        bVar.a(e8.x.class, wVar);
        e eVar = e.f50874a;
        bVar.a(f0.d.class, eVar);
        bVar.a(e8.f.class, eVar);
        f fVar = f.f50877a;
        bVar.a(f0.d.b.class, fVar);
        bVar.a(e8.g.class, fVar);
    }
}
