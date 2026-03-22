package com.iab.omid.library.mmadbridge.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f23008c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.mmadbridge.adsession.a> f23009a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.mmadbridge.adsession.a> f23010b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f23008c;
    }

    public Collection<com.iab.omid.library.mmadbridge.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f23010b);
    }

    public Collection<com.iab.omid.library.mmadbridge.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f23009a);
    }

    public boolean d() {
        if (this.f23010b.size() > 0) {
            return true;
        }
        return false;
    }

    public void a(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.f23009a.add(aVar);
    }

    public void b(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        boolean d10 = d();
        this.f23009a.remove(aVar);
        this.f23010b.remove(aVar);
        if (!d10 || d()) {
            return;
        }
        i.c().e();
    }

    public void c(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        boolean d10 = d();
        this.f23010b.add(aVar);
        if (d10) {
            return;
        }
        i.c().d();
    }
}
