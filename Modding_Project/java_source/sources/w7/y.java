package w7;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import w8.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OptionalProvider.java */
/* loaded from: classes5.dex */
public class y<T> implements w8.b<T>, w8.a<T> {

    /* renamed from: c  reason: collision with root package name */
    private static final a.InterfaceC0960a<Object> f69796c = new a.InterfaceC0960a() { // from class: w7.v
        @Override // w8.a.InterfaceC0960a
        public final void a(w8.b bVar) {
            y.f(bVar);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final w8.b<Object> f69797d = new w8.b() { // from class: w7.w
        @Override // w8.b
        public final Object get() {
            Object g10;
            g10 = y.g();
            return g10;
        }
    };
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private a.InterfaceC0960a<T> f69798a;

    /* renamed from: b  reason: collision with root package name */
    private volatile w8.b<T> f69799b;

    private y(a.InterfaceC0960a<T> interfaceC0960a, w8.b<T> bVar) {
        this.f69798a = interfaceC0960a;
        this.f69799b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> y<T> e() {
        return new y<>(f69796c, f69797d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object g() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(a.InterfaceC0960a interfaceC0960a, a.InterfaceC0960a interfaceC0960a2, w8.b bVar) {
        interfaceC0960a.a(bVar);
        interfaceC0960a2.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> y<T> i(w8.b<T> bVar) {
        return new y<>(null, bVar);
    }

    @Override // w8.a
    public void a(@NonNull final a.InterfaceC0960a<T> interfaceC0960a) {
        w8.b<T> bVar;
        w8.b<T> bVar2;
        w8.b<T> bVar3 = this.f69799b;
        w8.b<Object> bVar4 = f69797d;
        if (bVar3 != bVar4) {
            interfaceC0960a.a(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.f69799b;
            if (bVar != bVar4) {
                bVar2 = bVar;
            } else {
                final a.InterfaceC0960a<T> interfaceC0960a2 = this.f69798a;
                this.f69798a = new a.InterfaceC0960a() { // from class: w7.x
                    @Override // w8.a.InterfaceC0960a
                    public final void a(w8.b bVar5) {
                        y.h(a.InterfaceC0960a.this, interfaceC0960a, bVar5);
                    }
                };
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            interfaceC0960a.a(bVar);
        }
    }

    @Override // w8.b
    public T get() {
        return this.f69799b.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(w8.b<T> bVar) {
        a.InterfaceC0960a<T> interfaceC0960a;
        if (this.f69799b == f69797d) {
            synchronized (this) {
                interfaceC0960a = this.f69798a;
                this.f69798a = null;
                this.f69799b = bVar;
            }
            interfaceC0960a.a(bVar);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(w8.b bVar) {
    }
}
