package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class c1 extends p2 {

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.sdk.k f7625e;

    /* renamed from: f  reason: collision with root package name */
    private List f7626f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicBoolean f7627g;

    /* renamed from: h  reason: collision with root package name */
    private List f7628h;

    /* loaded from: classes2.dex */
    public enum a {
        RECENT_ADS,
        COUNT
    }

    public c1(Context context) {
        super(context);
        this.f7627g = new AtomicBoolean();
        this.f7628h = new ArrayList();
    }

    public void a(List list, com.applovin.impl.sdk.k kVar) {
        Activity v02;
        this.f7625e = kVar;
        this.f7626f = list;
        if (!(this.f9196a instanceof Activity) && (v02 = kVar.v0()) != null) {
            this.f9196a = v02;
        }
        if (list != null && this.f7627g.compareAndSet(false, true)) {
            this.f7628h = a(this.f7626f);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.w8
            @Override // java.lang.Runnable
            public final void run() {
                c1.this.notifyDataSetChanged();
            }
        });
    }

    @Override // com.applovin.impl.p2
    protected int b() {
        return a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.p2
    protected List c(int i10) {
        return this.f7628h;
    }

    public List d() {
        return this.f7626f;
    }

    public com.applovin.impl.sdk.k e() {
        return this.f7625e;
    }

    public boolean f() {
        if (this.f7628h.size() == 0) {
            return true;
        }
        return false;
    }

    public void g() {
        this.f7627g.compareAndSet(true, false);
    }

    public String toString() {
        return "CreativeDebuggerListAdapter{isInitialized=" + this.f7627g.get() + "}";
    }

    @Override // com.applovin.impl.p2
    protected int d(int i10) {
        return this.f7628h.size();
    }

    @Override // com.applovin.impl.p2
    protected o2 e(int i10) {
        return new t4("RECENT ADS");
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new o1((p1) it.next(), this.f9196a));
        }
        return arrayList;
    }
}
