package rl;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
/* compiled from: ScarAdBase.java */
/* loaded from: classes7.dex */
public abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    protected T f65875a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f65876b;

    /* renamed from: c  reason: collision with root package name */
    protected nl.c f65877c;

    /* renamed from: d  reason: collision with root package name */
    protected ql.a f65878d;

    /* renamed from: e  reason: collision with root package name */
    protected b f65879e;

    /* renamed from: f  reason: collision with root package name */
    protected com.unity3d.scar.adapter.common.c f65880f;

    public a(Context context, nl.c cVar, ql.a aVar, com.unity3d.scar.adapter.common.c cVar2) {
        this.f65876b = context;
        this.f65877c = cVar;
        this.f65878d = aVar;
        this.f65880f = cVar2;
    }

    public void b(nl.b bVar) {
        AdRequest b10 = this.f65878d.b(this.f65877c.a());
        if (bVar != null) {
            this.f65879e.a(bVar);
        }
        c(b10, bVar);
    }

    protected abstract void c(AdRequest adRequest, nl.b bVar);

    public void d(T t10) {
        this.f65875a = t10;
    }
}
