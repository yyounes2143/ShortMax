package l3;

import android.graphics.Bitmap;
import java.util.List;
/* compiled from: AnimatedImageResultBuilder.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final b f62082a;

    /* renamed from: b  reason: collision with root package name */
    private o2.a<Bitmap> f62083b;

    /* renamed from: c  reason: collision with root package name */
    private List<o2.a<Bitmap>> f62084c;

    /* renamed from: d  reason: collision with root package name */
    private int f62085d;

    /* renamed from: e  reason: collision with root package name */
    private String f62086e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar) {
        this.f62082a = bVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [o2.a<android.graphics.Bitmap>, java.util.List<o2.a<android.graphics.Bitmap>>] */
    public d a() {
        try {
            return new d(this);
        } finally {
            o2.a.r(this.f62083b);
            this.f62083b = null;
            o2.a.q(this.f62084c);
            this.f62084c = null;
        }
    }

    public h4.a b() {
        return null;
    }

    public List<o2.a<Bitmap>> c() {
        return o2.a.m(this.f62084c);
    }

    public int d() {
        return this.f62085d;
    }

    public b e() {
        return this.f62082a;
    }

    public o2.a<Bitmap> f() {
        return o2.a.p(this.f62083b);
    }

    public String g() {
        return this.f62086e;
    }

    public e i(List<o2.a<Bitmap>> list) {
        this.f62084c = o2.a.m(list);
        return this;
    }

    public e j(int i10) {
        this.f62085d = i10;
        return this;
    }

    public e k(o2.a<Bitmap> aVar) {
        this.f62083b = o2.a.p(aVar);
        return this;
    }

    public e l(String str) {
        this.f62086e = str;
        return this;
    }

    public e h(h4.a aVar) {
        return this;
    }
}
