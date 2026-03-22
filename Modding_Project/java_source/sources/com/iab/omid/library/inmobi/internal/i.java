package com.iab.omid.library.inmobi.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.inmobi.internal.d;
import com.iab.omid.library.inmobi.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements d.a, com.iab.omid.library.inmobi.devicevolume.c {

    /* renamed from: f  reason: collision with root package name */
    private static i f22891f;

    /* renamed from: a  reason: collision with root package name */
    private float f22892a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.inmobi.devicevolume.e f22893b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.inmobi.devicevolume.b f22894c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.inmobi.devicevolume.d f22895d;

    /* renamed from: e  reason: collision with root package name */
    private c f22896e;

    public i(com.iab.omid.library.inmobi.devicevolume.e eVar, com.iab.omid.library.inmobi.devicevolume.b bVar) {
        this.f22893b = eVar;
        this.f22894c = bVar;
    }

    private c a() {
        if (this.f22896e == null) {
            this.f22896e = c.c();
        }
        return this.f22896e;
    }

    public static i c() {
        if (f22891f == null) {
            f22891f = new i(new com.iab.omid.library.inmobi.devicevolume.e(), new com.iab.omid.library.inmobi.devicevolume.b());
        }
        return f22891f;
    }

    public float b() {
        return this.f22892a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f22895d.b();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f22895d.c();
    }

    @Override // com.iab.omid.library.inmobi.devicevolume.c
    public void a(float f10) {
        this.f22892a = f10;
        for (com.iab.omid.library.inmobi.adsession.a aVar : a().a()) {
            aVar.d().a(f10);
        }
    }

    public void a(Context context) {
        this.f22895d = this.f22893b.a(new Handler(), context, this.f22894c.a(), this);
    }

    @Override // com.iab.omid.library.inmobi.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
