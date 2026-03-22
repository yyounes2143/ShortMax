package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.mmadbridge.internal.d;
import com.iab.omid.library.mmadbridge.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements d.a, com.iab.omid.library.mmadbridge.devicevolume.c {

    /* renamed from: f  reason: collision with root package name */
    private static i f23026f;

    /* renamed from: a  reason: collision with root package name */
    private float f23027a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.mmadbridge.devicevolume.e f23028b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.mmadbridge.devicevolume.b f23029c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.mmadbridge.devicevolume.d f23030d;

    /* renamed from: e  reason: collision with root package name */
    private c f23031e;

    public i(com.iab.omid.library.mmadbridge.devicevolume.e eVar, com.iab.omid.library.mmadbridge.devicevolume.b bVar) {
        this.f23028b = eVar;
        this.f23029c = bVar;
    }

    private c a() {
        if (this.f23031e == null) {
            this.f23031e = c.c();
        }
        return this.f23031e;
    }

    public static i c() {
        if (f23026f == null) {
            f23026f = new i(new com.iab.omid.library.mmadbridge.devicevolume.e(), new com.iab.omid.library.mmadbridge.devicevolume.b());
        }
        return f23026f;
    }

    public float b() {
        return this.f23027a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f23030d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f23030d.d();
    }

    @Override // com.iab.omid.library.mmadbridge.devicevolume.c
    public void a(float f10) {
        this.f23027a = f10;
        for (com.iab.omid.library.mmadbridge.adsession.a aVar : a().a()) {
            aVar.getAdSessionStatePublisher().a(f10);
        }
    }

    public void a(Context context) {
        this.f23030d = this.f23028b.a(new Handler(), context, this.f23029c.a(), this);
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
