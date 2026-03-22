package com.iab.omid.library.vungle.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.vungle.internal.d;
import com.iab.omid.library.vungle.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements d.a, com.iab.omid.library.vungle.devicevolume.c {

    /* renamed from: f  reason: collision with root package name */
    private static i f23289f;

    /* renamed from: a  reason: collision with root package name */
    private float f23290a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.vungle.devicevolume.e f23291b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.vungle.devicevolume.b f23292c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.vungle.devicevolume.d f23293d;

    /* renamed from: e  reason: collision with root package name */
    private c f23294e;

    public i(com.iab.omid.library.vungle.devicevolume.e eVar, com.iab.omid.library.vungle.devicevolume.b bVar) {
        this.f23291b = eVar;
        this.f23292c = bVar;
    }

    private c a() {
        if (this.f23294e == null) {
            this.f23294e = c.c();
        }
        return this.f23294e;
    }

    public static i c() {
        if (f23289f == null) {
            f23289f = new i(new com.iab.omid.library.vungle.devicevolume.e(), new com.iab.omid.library.vungle.devicevolume.b());
        }
        return f23289f;
    }

    public float b() {
        return this.f23290a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f23293d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f23293d.d();
    }

    @Override // com.iab.omid.library.vungle.devicevolume.c
    public void a(float f10) {
        this.f23290a = f10;
        for (com.iab.omid.library.vungle.adsession.a aVar : a().a()) {
            aVar.d().a(f10);
        }
    }

    public void a(Context context) {
        this.f23293d = this.f23291b.a(new Handler(), context, this.f23292c.a(), this);
    }

    @Override // com.iab.omid.library.vungle.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
