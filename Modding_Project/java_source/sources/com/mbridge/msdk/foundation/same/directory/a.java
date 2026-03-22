package com.mbridge.msdk.foundation.same.directory;

import java.util.ArrayList;
import java.util.List;
/* compiled from: Directory.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private List<a> f27065a;

    /* renamed from: b  reason: collision with root package name */
    private String f27066b;

    /* renamed from: c  reason: collision with root package name */
    private a f27067c;

    /* renamed from: d  reason: collision with root package name */
    private c f27068d;

    public void a(c cVar, String str) {
        a aVar = new a();
        aVar.a(cVar);
        aVar.a(str);
        a(aVar);
    }

    public String b() {
        return this.f27066b;
    }

    public a c() {
        return this.f27067c;
    }

    public c d() {
        return this.f27068d;
    }

    public void b(a aVar) {
        this.f27067c = aVar;
    }

    public void a(a aVar) {
        if (this.f27065a == null) {
            this.f27065a = new ArrayList();
        }
        aVar.b(this);
        this.f27065a.add(aVar);
    }

    public void a(List<a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (a aVar : list) {
            a(aVar);
        }
    }

    public List<a> a() {
        return this.f27065a;
    }

    public void a(String str) {
        this.f27066b = str;
    }

    public void a(c cVar) {
        this.f27068d = cVar;
    }
}
