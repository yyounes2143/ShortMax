package com.iab.omid.library.vungle.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f23271c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.vungle.adsession.a> f23272a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.vungle.adsession.a> f23273b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f23271c;
    }

    public Collection<com.iab.omid.library.vungle.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f23273b);
    }

    public Collection<com.iab.omid.library.vungle.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f23272a);
    }

    public boolean d() {
        if (this.f23273b.size() > 0) {
            return true;
        }
        return false;
    }

    public void a(com.iab.omid.library.vungle.adsession.a aVar) {
        this.f23272a.add(aVar);
    }

    public void b(com.iab.omid.library.vungle.adsession.a aVar) {
        boolean d10 = d();
        this.f23272a.remove(aVar);
        this.f23273b.remove(aVar);
        if (!d10 || d()) {
            return;
        }
        i.c().e();
    }

    public void c(com.iab.omid.library.vungle.adsession.a aVar) {
        boolean d10 = d();
        this.f23273b.add(aVar);
        if (d10) {
            return;
        }
        i.c().d();
    }
}
