package com.iab.omid.library.inmobi.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f22873c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.inmobi.adsession.a> f22874a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.inmobi.adsession.a> f22875b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f22873c;
    }

    public Collection<com.iab.omid.library.inmobi.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f22875b);
    }

    public Collection<com.iab.omid.library.inmobi.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f22874a);
    }

    public boolean d() {
        if (this.f22875b.size() > 0) {
            return true;
        }
        return false;
    }

    public void a(com.iab.omid.library.inmobi.adsession.a aVar) {
        this.f22874a.add(aVar);
    }

    public void b(com.iab.omid.library.inmobi.adsession.a aVar) {
        boolean d10 = d();
        this.f22874a.remove(aVar);
        this.f22875b.remove(aVar);
        if (!d10 || d()) {
            return;
        }
        i.c().e();
    }

    public void c(com.iab.omid.library.inmobi.adsession.a aVar) {
        boolean d10 = d();
        this.f22875b.add(aVar);
        if (d10) {
            return;
        }
        i.c().d();
    }
}
