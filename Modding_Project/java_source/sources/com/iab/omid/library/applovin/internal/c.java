package com.iab.omid.library.applovin.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f22472c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.applovin.adsession.a> f22473a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.applovin.adsession.a> f22474b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f22472c;
    }

    public Collection<com.iab.omid.library.applovin.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f22474b);
    }

    public Collection<com.iab.omid.library.applovin.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f22473a);
    }

    public boolean d() {
        if (this.f22474b.size() > 0) {
            return true;
        }
        return false;
    }

    public void a(com.iab.omid.library.applovin.adsession.a aVar) {
        this.f22473a.add(aVar);
    }

    public void b(com.iab.omid.library.applovin.adsession.a aVar) {
        boolean d10 = d();
        this.f22473a.remove(aVar);
        this.f22474b.remove(aVar);
        if (!d10 || d()) {
            return;
        }
        i.c().e();
    }

    public void c(com.iab.omid.library.applovin.adsession.a aVar) {
        boolean d10 = d();
        this.f22474b.add(aVar);
        if (d10) {
            return;
        }
        i.c().d();
    }
}
