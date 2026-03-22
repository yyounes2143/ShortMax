package d8;

import java.io.IOException;
/* compiled from: AutoRolloutAssignmentEncoder.java */
/* loaded from: classes5.dex */
public final class a implements q8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final q8.a f50200a = new a();

    /* compiled from: AutoRolloutAssignmentEncoder.java */
    /* renamed from: d8.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0704a implements p8.c<j> {

        /* renamed from: a  reason: collision with root package name */
        static final C0704a f50201a = new C0704a();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f50202b = p8.b.d("rolloutId");

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f50203c = p8.b.d("parameterKey");

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f50204d = p8.b.d("parameterValue");

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f50205e = p8.b.d("variantId");

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f50206f = p8.b.d("templateVersion");

        private C0704a() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(j jVar, p8.d dVar) throws IOException {
            dVar.f(f50202b, jVar.e());
            dVar.f(f50203c, jVar.c());
            dVar.f(f50204d, jVar.d());
            dVar.f(f50205e, jVar.g());
            dVar.b(f50206f, jVar.f());
        }
    }

    private a() {
    }

    @Override // q8.a
    public void a(q8.b<?> bVar) {
        C0704a c0704a = C0704a.f50201a;
        bVar.a(j.class, c0704a);
        bVar.a(b.class, c0704a);
    }
}
