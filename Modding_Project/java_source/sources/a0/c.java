package a0;

import a0.c;
import android.graphics.Bitmap;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import g0.h;
import g0.i;
import kotlin.Metadata;
import m0.f;
import m0.j;
import m0.m;
import n0.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventListener.kt */
@Metadata
/* loaded from: classes2.dex */
public interface c extends f.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f49a = b.f51a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final c f50b = new a();

    /* compiled from: EventListener.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a implements c {
        a() {
        }

        @Override // a0.c, m0.f.b
        @MainThread
        public void a(@NotNull m0.f fVar) {
            C0000c.k(this, fVar);
        }

        @Override // a0.c, m0.f.b
        @MainThread
        public void b(@NotNull m0.f fVar, @NotNull m0.d dVar) {
            C0000c.j(this, fVar, dVar);
        }

        @Override // a0.c, m0.f.b
        @MainThread
        public void c(@NotNull m0.f fVar, @NotNull m mVar) {
            C0000c.l(this, fVar, mVar);
        }

        @Override // a0.c, m0.f.b
        @MainThread
        public void d(@NotNull m0.f fVar) {
            C0000c.i(this, fVar);
        }

        @Override // a0.c
        @MainThread
        public void e(@NotNull m0.f fVar) {
            C0000c.n(this, fVar);
        }

        @Override // a0.c
        @WorkerThread
        public void f(@NotNull m0.f fVar, @NotNull Bitmap bitmap) {
            C0000c.p(this, fVar, bitmap);
        }

        @Override // a0.c
        @MainThread
        public void g(@NotNull m0.f fVar, @NotNull Object obj) {
            C0000c.g(this, fVar, obj);
        }

        @Override // a0.c
        @WorkerThread
        public void h(@NotNull m0.f fVar, @NotNull i iVar, @NotNull j jVar, @Nullable h hVar) {
            C0000c.c(this, fVar, iVar, jVar, hVar);
        }

        @Override // a0.c
        @WorkerThread
        public void i(@NotNull m0.f fVar, @NotNull i iVar, @NotNull j jVar) {
            C0000c.d(this, fVar, iVar, jVar);
        }

        @Override // a0.c
        @MainThread
        public void j(@NotNull m0.f fVar, @NotNull g gVar) {
            C0000c.m(this, fVar, gVar);
        }

        @Override // a0.c
        @WorkerThread
        public void k(@NotNull m0.f fVar, @NotNull Bitmap bitmap) {
            C0000c.o(this, fVar, bitmap);
        }

        @Override // a0.c
        @MainThread
        public void l(@NotNull m0.f fVar, @NotNull Object obj) {
            C0000c.f(this, fVar, obj);
        }

        @Override // a0.c
        @MainThread
        public void m(@NotNull m0.f fVar, @Nullable String str) {
            C0000c.e(this, fVar, str);
        }

        @Override // a0.c
        @WorkerThread
        public void n(@NotNull m0.f fVar, @NotNull d0.g gVar, @NotNull j jVar) {
            C0000c.b(this, fVar, gVar, jVar);
        }

        @Override // a0.c
        @MainThread
        public void o(@NotNull m0.f fVar, @NotNull q0.c cVar) {
            C0000c.q(this, fVar, cVar);
        }

        @Override // a0.c
        @MainThread
        public void p(@NotNull m0.f fVar, @NotNull Object obj) {
            C0000c.h(this, fVar, obj);
        }

        @Override // a0.c
        @MainThread
        public void q(@NotNull m0.f fVar, @NotNull q0.c cVar) {
            C0000c.r(this, fVar, cVar);
        }

        @Override // a0.c
        @WorkerThread
        public void r(@NotNull m0.f fVar, @NotNull d0.g gVar, @NotNull j jVar, @Nullable d0.e eVar) {
            C0000c.a(this, fVar, gVar, jVar, eVar);
        }
    }

    /* compiled from: EventListener.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f51a = new b();

        private b() {
        }
    }

    /* compiled from: EventListener.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f52a = a.f54a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final d f53b = new d() { // from class: a0.d
            @Override // a0.c.d
            public final c a(m0.f fVar) {
                c a10;
                a10 = c.d.b.a(fVar);
                return a10;
            }
        };

        /* compiled from: EventListener.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ a f54a = new a();

            private a() {
            }
        }

        /* compiled from: EventListener.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class b {
            /* JADX INFO: Access modifiers changed from: private */
            public static c a(m0.f fVar) {
                return c.f50b;
            }
        }

        @NotNull
        c a(@NotNull m0.f fVar);
    }

    @Override // m0.f.b
    @MainThread
    void a(@NotNull m0.f fVar);

    @Override // m0.f.b
    @MainThread
    void b(@NotNull m0.f fVar, @NotNull m0.d dVar);

    @Override // m0.f.b
    @MainThread
    void c(@NotNull m0.f fVar, @NotNull m mVar);

    @Override // m0.f.b
    @MainThread
    void d(@NotNull m0.f fVar);

    @MainThread
    void e(@NotNull m0.f fVar);

    @WorkerThread
    void f(@NotNull m0.f fVar, @NotNull Bitmap bitmap);

    @MainThread
    void g(@NotNull m0.f fVar, @NotNull Object obj);

    @WorkerThread
    void h(@NotNull m0.f fVar, @NotNull i iVar, @NotNull j jVar, @Nullable h hVar);

    @WorkerThread
    void i(@NotNull m0.f fVar, @NotNull i iVar, @NotNull j jVar);

    @MainThread
    void j(@NotNull m0.f fVar, @NotNull g gVar);

    @WorkerThread
    void k(@NotNull m0.f fVar, @NotNull Bitmap bitmap);

    @MainThread
    void l(@NotNull m0.f fVar, @NotNull Object obj);

    @MainThread
    void m(@NotNull m0.f fVar, @Nullable String str);

    @WorkerThread
    void n(@NotNull m0.f fVar, @NotNull d0.g gVar, @NotNull j jVar);

    @MainThread
    void o(@NotNull m0.f fVar, @NotNull q0.c cVar);

    @MainThread
    void p(@NotNull m0.f fVar, @NotNull Object obj);

    @MainThread
    void q(@NotNull m0.f fVar, @NotNull q0.c cVar);

    @WorkerThread
    void r(@NotNull m0.f fVar, @NotNull d0.g gVar, @NotNull j jVar, @Nullable d0.e eVar);

    /* compiled from: EventListener.kt */
    @Metadata
    /* renamed from: a0.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0000c {
        @MainThread
        public static void i(@NotNull c cVar, @NotNull m0.f fVar) {
        }

        @MainThread
        public static void k(@NotNull c cVar, @NotNull m0.f fVar) {
        }

        @MainThread
        public static void n(@NotNull c cVar, @NotNull m0.f fVar) {
        }

        @MainThread
        public static void e(@NotNull c cVar, @NotNull m0.f fVar, @Nullable String str) {
        }

        @MainThread
        public static void f(@NotNull c cVar, @NotNull m0.f fVar, @NotNull Object obj) {
        }

        @MainThread
        public static void g(@NotNull c cVar, @NotNull m0.f fVar, @NotNull Object obj) {
        }

        @MainThread
        public static void h(@NotNull c cVar, @NotNull m0.f fVar, @NotNull Object obj) {
        }

        @MainThread
        public static void j(@NotNull c cVar, @NotNull m0.f fVar, @NotNull m0.d dVar) {
        }

        @MainThread
        public static void l(@NotNull c cVar, @NotNull m0.f fVar, @NotNull m mVar) {
        }

        @MainThread
        public static void m(@NotNull c cVar, @NotNull m0.f fVar, @NotNull g gVar) {
        }

        @WorkerThread
        public static void o(@NotNull c cVar, @NotNull m0.f fVar, @NotNull Bitmap bitmap) {
        }

        @WorkerThread
        public static void p(@NotNull c cVar, @NotNull m0.f fVar, @NotNull Bitmap bitmap) {
        }

        @MainThread
        public static void q(@NotNull c cVar, @NotNull m0.f fVar, @NotNull q0.c cVar2) {
        }

        @MainThread
        public static void r(@NotNull c cVar, @NotNull m0.f fVar, @NotNull q0.c cVar2) {
        }

        @WorkerThread
        public static void b(@NotNull c cVar, @NotNull m0.f fVar, @NotNull d0.g gVar, @NotNull j jVar) {
        }

        @WorkerThread
        public static void d(@NotNull c cVar, @NotNull m0.f fVar, @NotNull i iVar, @NotNull j jVar) {
        }

        @WorkerThread
        public static void a(@NotNull c cVar, @NotNull m0.f fVar, @NotNull d0.g gVar, @NotNull j jVar, @Nullable d0.e eVar) {
        }

        @WorkerThread
        public static void c(@NotNull c cVar, @NotNull m0.f fVar, @NotNull i iVar, @NotNull j jVar, @Nullable h hVar) {
        }
    }
}
