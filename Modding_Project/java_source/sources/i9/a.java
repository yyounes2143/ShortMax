package i9;

import java.io.IOException;
/* compiled from: AutoRolloutAssignmentEncoder.java */
/* loaded from: classes5.dex */
public final class a implements q8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final q8.a f53346a = new a();

    /* compiled from: AutoRolloutAssignmentEncoder.java */
    /* renamed from: i9.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0774a implements p8.c<d> {

        /* renamed from: a  reason: collision with root package name */
        static final C0774a f53347a = new C0774a();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f53348b = p8.b.d("rolloutId");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f53349c = p8.b.d("variantId");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f53350d = p8.b.d("parameterKey");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f53351e = p8.b.d("parameterValue");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f53352f = p8.b.d("templateVersion");

        private C0774a() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(d dVar, p8.d dVar2) throws IOException {
            dVar2.f(f53348b, dVar.d());
            dVar2.f(f53349c, dVar.f());
            dVar2.f(f53350d, dVar.b());
            dVar2.f(f53351e, dVar.c());
            dVar2.b(f53352f, dVar.e());
        }
    }

    private a() {
    }

    @Override // q8.a
    public void a(q8.b<?> bVar) {
        C0774a c0774a = C0774a.f53347a;
        bVar.a(d.class, c0774a);
        bVar.a(b.class, c0774a);
    }
}
