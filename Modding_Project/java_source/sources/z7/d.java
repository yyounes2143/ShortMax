package z7;

import androidx.annotation.NonNull;
import e8.f0;
import e8.g0;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;
import w8.a;
/* compiled from: CrashlyticsNativeComponentDeferredProxy.java */
/* loaded from: classes5.dex */
public final class d implements z7.a {

    /* renamed from: c  reason: collision with root package name */
    private static final h f71508c = new b();

    /* renamed from: a  reason: collision with root package name */
    private final w8.a<z7.a> f71509a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<z7.a> f71510b = new AtomicReference<>(null);

    /* compiled from: CrashlyticsNativeComponentDeferredProxy.java */
    /* loaded from: classes5.dex */
    private static final class b implements h {
        private b() {
        }

        @Override // z7.h
        public File a() {
            return null;
        }

        @Override // z7.h
        public f0.a b() {
            return null;
        }

        @Override // z7.h
        public File c() {
            return null;
        }

        @Override // z7.h
        public File d() {
            return null;
        }

        @Override // z7.h
        public File e() {
            return null;
        }

        @Override // z7.h
        public File f() {
            return null;
        }

        @Override // z7.h
        public File g() {
            return null;
        }
    }

    public d(w8.a<z7.a> aVar) {
        this.f71509a = aVar;
        aVar.a(new a.InterfaceC0960a() { // from class: z7.b
            @Override // w8.a.InterfaceC0960a
            public final void a(w8.b bVar) {
                d.this.g(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(w8.b bVar) {
        g.f().b("Crashlytics native component now available.");
        this.f71510b.set((z7.a) bVar.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(String str, String str2, long j10, g0 g0Var, w8.b bVar) {
        ((z7.a) bVar.get()).c(str, str2, j10, g0Var);
    }

    @Override // z7.a
    @NonNull
    public h a(@NonNull String str) {
        z7.a aVar = this.f71510b.get();
        if (aVar == null) {
            return f71508c;
        }
        return aVar.a(str);
    }

    @Override // z7.a
    public boolean b() {
        z7.a aVar = this.f71510b.get();
        if (aVar != null && aVar.b()) {
            return true;
        }
        return false;
    }

    @Override // z7.a
    public void c(@NonNull final String str, @NonNull final String str2, final long j10, @NonNull final g0 g0Var) {
        g f10 = g.f();
        f10.i("Deferring native open session: " + str);
        this.f71509a.a(new a.InterfaceC0960a() { // from class: z7.c
            @Override // w8.a.InterfaceC0960a
            public final void a(w8.b bVar) {
                d.h(str, str2, j10, g0Var, bVar);
            }
        });
    }

    @Override // z7.a
    public boolean d(@NonNull String str) {
        z7.a aVar = this.f71510b.get();
        if (aVar != null && aVar.d(str)) {
            return true;
        }
        return false;
    }
}
