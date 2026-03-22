package l3;

import android.graphics.Bitmap;
import java.util.List;
import k2.h;
/* compiled from: AnimatedImageResult.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final b f62077a;

    /* renamed from: b  reason: collision with root package name */
    private final int f62078b;

    /* renamed from: c  reason: collision with root package name */
    private String f62079c;

    /* renamed from: d  reason: collision with root package name */
    private o2.a<Bitmap> f62080d;

    /* renamed from: e  reason: collision with root package name */
    private List<o2.a<Bitmap>> f62081e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(e eVar) {
        this.f62077a = (b) h.g(eVar.e());
        this.f62078b = eVar.d();
        this.f62080d = eVar.f();
        this.f62081e = eVar.c();
        eVar.b();
        this.f62079c = eVar.g();
    }

    public static d b(b bVar) {
        return new d(bVar);
    }

    public static e f(b bVar) {
        return new e(bVar);
    }

    public synchronized void a() {
        o2.a.r(this.f62080d);
        this.f62080d = null;
        o2.a.q(this.f62081e);
        this.f62081e = null;
    }

    public h4.a c() {
        return null;
    }

    public b d() {
        return this.f62077a;
    }

    public String e() {
        return this.f62079c;
    }

    private d(b bVar) {
        this.f62077a = (b) h.g(bVar);
        this.f62078b = 0;
    }
}
