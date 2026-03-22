package com.iab.omid.library.applovin.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.applovin.internal.d;
import com.iab.omid.library.applovin.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements d.a, com.iab.omid.library.applovin.devicevolume.c {

    /* renamed from: f  reason: collision with root package name */
    private static i f22490f;

    /* renamed from: a  reason: collision with root package name */
    private float f22491a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.applovin.devicevolume.e f22492b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.applovin.devicevolume.b f22493c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.applovin.devicevolume.d f22494d;

    /* renamed from: e  reason: collision with root package name */
    private c f22495e;

    public i(com.iab.omid.library.applovin.devicevolume.e eVar, com.iab.omid.library.applovin.devicevolume.b bVar) {
        this.f22492b = eVar;
        this.f22493c = bVar;
    }

    private c a() {
        if (this.f22495e == null) {
            this.f22495e = c.c();
        }
        return this.f22495e;
    }

    public static i c() {
        if (f22490f == null) {
            f22490f = new i(new com.iab.omid.library.applovin.devicevolume.e(), new com.iab.omid.library.applovin.devicevolume.b());
        }
        return f22490f;
    }

    public float b() {
        return this.f22491a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f22494d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f22494d.d();
    }

    @Override // com.iab.omid.library.applovin.devicevolume.c
    public void a(float f10) {
        this.f22491a = f10;
        for (com.iab.omid.library.applovin.adsession.a aVar : a().a()) {
            aVar.d().a(f10);
        }
    }

    public void a(Context context) {
        this.f22494d = this.f22492b.a(new Handler(), context, this.f22493c.a(), this);
    }

    @Override // com.iab.omid.library.applovin.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
