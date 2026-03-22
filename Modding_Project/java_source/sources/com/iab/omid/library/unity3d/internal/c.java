package com.iab.omid.library.unity3d.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f23144c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.unity3d.adsession.a> f23145a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.unity3d.adsession.a> f23146b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f23144c;
    }

    public Collection<com.iab.omid.library.unity3d.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f23146b);
    }

    public Collection<com.iab.omid.library.unity3d.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f23145a);
    }

    public boolean d() {
        if (this.f23146b.size() > 0) {
            return true;
        }
        return false;
    }

    public void a(com.iab.omid.library.unity3d.adsession.a aVar) {
        this.f23145a.add(aVar);
    }

    public void b(com.iab.omid.library.unity3d.adsession.a aVar) {
        boolean d10 = d();
        this.f23145a.remove(aVar);
        this.f23146b.remove(aVar);
        if (!d10 || d()) {
            return;
        }
        h.c().e();
    }

    public void c(com.iab.omid.library.unity3d.adsession.a aVar) {
        boolean d10 = d();
        this.f23146b.add(aVar);
        if (d10) {
            return;
        }
        h.c().d();
    }
}
