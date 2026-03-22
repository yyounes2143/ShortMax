package com.iab.omid.library.bytedance2.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f22743c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f22744a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f22745b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f22743c;
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f22745b);
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f22744a);
    }

    public boolean d() {
        if (this.f22745b.size() > 0) {
            return true;
        }
        return false;
    }

    public void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        this.f22744a.add(aVar);
    }

    public void b(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean d10 = d();
        this.f22744a.remove(aVar);
        this.f22745b.remove(aVar);
        if (!d10 || d()) {
            return;
        }
        i.c().e();
    }

    public void c(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean d10 = d();
        this.f22745b.add(aVar);
        if (d10) {
            return;
        }
        i.c().d();
    }
}
