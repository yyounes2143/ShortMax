package vl;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
/* compiled from: ScarAdBase.java */
/* loaded from: classes7.dex */
public abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    protected T f68994a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f68995b;

    /* renamed from: c  reason: collision with root package name */
    protected nl.c f68996c;

    /* renamed from: d  reason: collision with root package name */
    protected ul.a f68997d;

    /* renamed from: e  reason: collision with root package name */
    protected b f68998e;

    /* renamed from: f  reason: collision with root package name */
    protected com.unity3d.scar.adapter.common.c f68999f;

    public a(Context context, nl.c cVar, ul.a aVar, com.unity3d.scar.adapter.common.c cVar2) {
        this.f68995b = context;
        this.f68996c = cVar;
        this.f68997d = aVar;
        this.f68999f = cVar2;
    }

    public void b(nl.b bVar) {
        AdRequest b10 = this.f68997d.b(this.f68996c.a());
        if (bVar != null) {
            this.f68998e.a(bVar);
        }
        c(b10, bVar);
    }

    protected abstract void c(AdRequest adRequest, nl.b bVar);

    public void d(T t10) {
        this.f68994a = t10;
    }
}
