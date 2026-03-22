package y7;

import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import n7.a;
import w8.a;
/* compiled from: AnalyticsDeferredProxy.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final w8.a<n7.a> f70738a;

    /* renamed from: b  reason: collision with root package name */
    private volatile a8.a f70739b;

    /* renamed from: c  reason: collision with root package name */
    private volatile b8.b f70740c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private final List<b8.a> f70741d;

    public d(w8.a<n7.a> aVar) {
        this(aVar, new b8.c(), new a8.f());
    }

    private void f() {
        this.f70738a.a(new a.InterfaceC0960a() { // from class: y7.c
            @Override // w8.a.InterfaceC0960a
            public final void a(w8.b bVar) {
                d.this.i(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, Bundle bundle) {
        this.f70739b.a(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(b8.a aVar) {
        synchronized (this) {
            try {
                if (this.f70740c instanceof b8.c) {
                    this.f70741d.add(aVar);
                }
                this.f70740c.a(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(w8.b bVar) {
        z7.g.f().b("AnalyticsConnector now available.");
        n7.a aVar = (n7.a) bVar.get();
        a8.e eVar = new a8.e(aVar);
        e eVar2 = new e();
        if (j(aVar, eVar2) != null) {
            z7.g.f().b("Registered Firebase Analytics listener.");
            a8.d dVar = new a8.d();
            a8.c cVar = new a8.c(eVar, 500, TimeUnit.MILLISECONDS);
            synchronized (this) {
                try {
                    for (b8.a aVar2 : this.f70741d) {
                        dVar.a(aVar2);
                    }
                    eVar2.d(dVar);
                    eVar2.e(cVar);
                    this.f70740c = dVar;
                    this.f70739b = cVar;
                } finally {
                }
            }
            return;
        }
        z7.g.f().k("Could not register Firebase Analytics listener; a listener is already registered.");
    }

    private static a.InterfaceC0876a j(@NonNull n7.a aVar, @NonNull e eVar) {
        a.InterfaceC0876a f10 = aVar.f("clx", eVar);
        if (f10 == null) {
            z7.g.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            f10 = aVar.f("crash", eVar);
            if (f10 != null) {
                z7.g.f().k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return f10;
    }

    public a8.a d() {
        return new a8.a() { // from class: y7.b
            @Override // a8.a
            public final void a(String str, Bundle bundle) {
                d.this.g(str, bundle);
            }
        };
    }

    public b8.b e() {
        return new b8.b() { // from class: y7.a
            @Override // b8.b
            public final void a(b8.a aVar) {
                d.this.h(aVar);
            }
        };
    }

    public d(w8.a<n7.a> aVar, @NonNull b8.b bVar, @NonNull a8.a aVar2) {
        this.f70738a = aVar;
        this.f70740c = bVar;
        this.f70741d = new ArrayList();
        this.f70739b = aVar2;
        f();
    }
}
