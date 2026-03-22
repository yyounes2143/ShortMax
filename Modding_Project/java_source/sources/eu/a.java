package eu;

import java.util.Queue;
import org.slf4j.Marker;
import org.slf4j.event.Level;
/* compiled from: EventRecodingLogger.java */
/* loaded from: classes8.dex */
public class a implements du.a {

    /* renamed from: a  reason: collision with root package name */
    String f51555a;

    /* renamed from: b  reason: collision with root package name */
    org.slf4j.helpers.b f51556b;

    /* renamed from: c  reason: collision with root package name */
    Queue<c> f51557c;

    public a(org.slf4j.helpers.b bVar, Queue<c> queue) {
        this.f51556b = bVar;
        this.f51555a = bVar.getName();
        this.f51557c = queue;
    }

    private void a(Level level, Marker marker, String str, Object[] objArr, Throwable th2) {
        c cVar = new c();
        cVar.j(System.currentTimeMillis());
        cVar.c(level);
        cVar.d(this.f51556b);
        cVar.e(this.f51555a);
        cVar.f(marker);
        cVar.g(str);
        cVar.h(Thread.currentThread().getName());
        cVar.b(objArr);
        cVar.i(th2);
        this.f51557c.add(cVar);
    }

    private void c(Level level, Marker marker, String str, Throwable th2) {
        a(level, marker, str, null, th2);
    }

    @Override // du.a
    public void b(String str) {
        c(Level.TRACE, null, str, null);
    }

    @Override // du.a
    public void d(String str) {
        c(Level.WARN, null, str, null);
    }

    @Override // du.a
    public String getName() {
        return this.f51555a;
    }
}
