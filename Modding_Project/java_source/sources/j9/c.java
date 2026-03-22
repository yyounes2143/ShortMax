package j9;

import java.io.IOException;
/* compiled from: AutoSessionEventEncoder.java */
/* loaded from: classes5.dex */
public final class c implements q8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final q8.a f60253a = new c();

    /* compiled from: AutoSessionEventEncoder.java */
    /* loaded from: classes5.dex */
    private static final class a implements p8.c<j9.a> {

        /* renamed from: a  reason: collision with root package name */
        static final a f60254a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f60255b = p8.b.d("packageName");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f60256c = p8.b.d("versionName");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f60257d = p8.b.d("appBuildVersion");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f60258e = p8.b.d("deviceManufacturer");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f60259f = p8.b.d("currentProcessDetails");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f60260g = p8.b.d("appProcessDetails");

        private a() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(j9.a aVar, p8.d dVar) throws IOException {
            dVar.f(f60255b, aVar.e());
            dVar.f(f60256c, aVar.f());
            dVar.f(f60257d, aVar.a());
            dVar.f(f60258e, aVar.d());
            dVar.f(f60259f, aVar.c());
            dVar.f(f60260g, aVar.b());
        }
    }

    /* compiled from: AutoSessionEventEncoder.java */
    /* loaded from: classes5.dex */
    private static final class b implements p8.c<j9.b> {

        /* renamed from: a  reason: collision with root package name */
        static final b f60261a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f60262b = p8.b.d("appId");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f60263c = p8.b.d("deviceModel");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f60264d = p8.b.d("sessionSdkVersion");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f60265e = p8.b.d("osVersion");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f60266f = p8.b.d("logEnvironment");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f60267g = p8.b.d("androidAppInfo");

        private b() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(j9.b bVar, p8.d dVar) throws IOException {
            dVar.f(f60262b, bVar.b());
            dVar.f(f60263c, bVar.c());
            dVar.f(f60264d, bVar.f());
            dVar.f(f60265e, bVar.e());
            dVar.f(f60266f, bVar.d());
            dVar.f(f60267g, bVar.a());
        }
    }

    /* compiled from: AutoSessionEventEncoder.java */
    /* renamed from: j9.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0831c implements p8.c<j9.d> {

        /* renamed from: a  reason: collision with root package name */
        static final C0831c f60268a = new C0831c();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f60269b = p8.b.d("performance");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f60270c = p8.b.d("crashlytics");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f60271d = p8.b.d("sessionSamplingRate");

        private C0831c() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(j9.d dVar, p8.d dVar2) throws IOException {
            dVar2.f(f60269b, dVar.b());
            dVar2.f(f60270c, dVar.a());
            dVar2.e(f60271d, dVar.c());
        }
    }

    /* compiled from: AutoSessionEventEncoder.java */
    /* loaded from: classes5.dex */
    private static final class d implements p8.c<y> {

        /* renamed from: a  reason: collision with root package name */
        static final d f60272a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f60273b = p8.b.d("processName");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f60274c = p8.b.d("pid");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f60275d = p8.b.d("importance");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f60276e = p8.b.d("defaultProcess");

        private d() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(y yVar, p8.d dVar) throws IOException {
            dVar.f(f60273b, yVar.c());
            dVar.d(f60274c, yVar.b());
            dVar.d(f60275d, yVar.a());
            dVar.c(f60276e, yVar.d());
        }
    }

    /* compiled from: AutoSessionEventEncoder.java */
    /* loaded from: classes5.dex */
    private static final class e implements p8.c<b0> {

        /* renamed from: a  reason: collision with root package name */
        static final e f60277a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f60278b = p8.b.d("eventType");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f60279c = p8.b.d("sessionData");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f60280d = p8.b.d("applicationInfo");

        private e() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(b0 b0Var, p8.d dVar) throws IOException {
            dVar.f(f60278b, b0Var.b());
            dVar.f(f60279c, b0Var.c());
            dVar.f(f60280d, b0Var.a());
        }
    }

    /* compiled from: AutoSessionEventEncoder.java */
    /* loaded from: classes5.dex */
    private static final class f implements p8.c<h0> {

        /* renamed from: a  reason: collision with root package name */
        static final f f60281a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f60282b = p8.b.d("sessionId");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f60283c = p8.b.d("firstSessionId");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f60284d = p8.b.d("sessionIndex");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f60285e = p8.b.d("eventTimestampUs");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f60286f = p8.b.d("dataCollectionStatus");

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f60287g = p8.b.d("firebaseInstallationId");

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f60288h = p8.b.d("firebaseAuthenticationToken");

        private f() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(h0 h0Var, p8.d dVar) throws IOException {
            dVar.f(f60282b, h0Var.f());
            dVar.f(f60283c, h0Var.e());
            dVar.d(f60284d, h0Var.g());
            dVar.b(f60285e, h0Var.b());
            dVar.f(f60286f, h0Var.a());
            dVar.f(f60287g, h0Var.d());
            dVar.f(f60288h, h0Var.c());
        }
    }

    private c() {
    }

    @Override // q8.a
    public void a(q8.b<?> bVar) {
        bVar.a(b0.class, e.f60277a);
        bVar.a(h0.class, f.f60281a);
        bVar.a(j9.d.class, C0831c.f60268a);
        bVar.a(j9.b.class, b.f60261a);
        bVar.a(j9.a.class, a.f60254a);
        bVar.a(y.class, d.f60272a);
    }
}
