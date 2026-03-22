package c5;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import java.io.IOException;
/* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
/* loaded from: classes4.dex */
public final class a implements q8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final q8.a f3051a = new a();

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* renamed from: c5.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static final class C0085a implements p8.c<f5.a> {

        /* renamed from: a  reason: collision with root package name */
        static final C0085a f3052a = new C0085a();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f3053b = p8.b.a("window").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f3054c = p8.b.a("logSourceMetrics").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f3055d = p8.b.a("globalMetrics").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f3056e = p8.b.a("appNamespace").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        private C0085a() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f5.a aVar, p8.d dVar) throws IOException {
            dVar.f(f3053b, aVar.d());
            dVar.f(f3054c, aVar.c());
            dVar.f(f3055d, aVar.b());
            dVar.f(f3056e, aVar.a());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes4.dex */
    private static final class b implements p8.c<f5.b> {

        /* renamed from: a  reason: collision with root package name */
        static final b f3057a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f3058b = p8.b.a("storageMetrics").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f5.b bVar, p8.d dVar) throws IOException {
            dVar.f(f3058b, bVar.a());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes4.dex */
    private static final class c implements p8.c<LogEventDropped> {

        /* renamed from: a  reason: collision with root package name */
        static final c f3059a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f3060b = p8.b.a("eventsDroppedCount").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f3061c = p8.b.a("reason").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        private c() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(LogEventDropped logEventDropped, p8.d dVar) throws IOException {
            dVar.b(f3060b, logEventDropped.a());
            dVar.f(f3061c, logEventDropped.b());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes4.dex */
    private static final class d implements p8.c<f5.c> {

        /* renamed from: a  reason: collision with root package name */
        static final d f3062a = new d();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f3063b = p8.b.a("logSource").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f3064c = p8.b.a("logEventDropped").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private d() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f5.c cVar, p8.d dVar) throws IOException {
            dVar.f(f3063b, cVar.b());
            dVar.f(f3064c, cVar.a());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes4.dex */
    private static final class e implements p8.c<m> {

        /* renamed from: a  reason: collision with root package name */
        static final e f3065a = new e();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f3066b = p8.b.d("clientMetrics");

        private e() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(m mVar, p8.d dVar) throws IOException {
            dVar.f(f3066b, mVar.b());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes4.dex */
    private static final class f implements p8.c<f5.d> {

        /* renamed from: a  reason: collision with root package name */
        static final f f3067a = new f();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f3068b = p8.b.a("currentCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f3069c = p8.b.a("maxCacheSizeBytes").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private f() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f5.d dVar, p8.d dVar2) throws IOException {
            dVar2.b(f3068b, dVar.a());
            dVar2.b(f3069c, dVar.b());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes4.dex */
    private static final class g implements p8.c<f5.e> {

        /* renamed from: a  reason: collision with root package name */
        static final g f3070a = new g();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f3071b = p8.b.a("startMs").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f3072c = p8.b.a("endMs").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        private g() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(f5.e eVar, p8.d dVar) throws IOException {
            dVar.b(f3071b, eVar.b());
            dVar.b(f3072c, eVar.a());
        }
    }

    private a() {
    }

    @Override // q8.a
    public void a(q8.b<?> bVar) {
        bVar.a(m.class, e.f3065a);
        bVar.a(f5.a.class, C0085a.f3052a);
        bVar.a(f5.e.class, g.f3070a);
        bVar.a(f5.c.class, d.f3062a);
        bVar.a(LogEventDropped.class, c.f3059a);
        bVar.a(f5.b.class, b.f3057a);
        bVar.a(f5.d.class, f.f3067a);
    }
}
