package com.iab.omid.library.appodeal.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.appodeal.internal.d;
import com.iab.omid.library.appodeal.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements d.a, com.iab.omid.library.appodeal.devicevolume.c {

    /* renamed from: f  reason: collision with root package name */
    private static i f22626f;

    /* renamed from: a  reason: collision with root package name */
    private float f22627a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.devicevolume.e f22628b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.devicevolume.b f22629c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.appodeal.devicevolume.d f22630d;

    /* renamed from: e  reason: collision with root package name */
    private c f22631e;

    public i(com.iab.omid.library.appodeal.devicevolume.e eVar, com.iab.omid.library.appodeal.devicevolume.b bVar) {
        this.f22628b = eVar;
        this.f22629c = bVar;
    }

    private c a() {
        if (this.f22631e == null) {
            this.f22631e = c.c();
        }
        return this.f22631e;
    }

    public static i c() {
        if (f22626f == null) {
            f22626f = new i(new com.iab.omid.library.appodeal.devicevolume.e(), new com.iab.omid.library.appodeal.devicevolume.b());
        }
        return f22626f;
    }

    public float b() {
        return this.f22627a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f22630d.b();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f22630d.c();
    }

    @Override // com.iab.omid.library.appodeal.devicevolume.c
    public void a(float f10) {
        this.f22627a = f10;
        for (com.iab.omid.library.appodeal.adsession.a aVar : a().a()) {
            aVar.d().a(f10);
        }
    }

    public void a(Context context) {
        this.f22630d = this.f22628b.a(new Handler(), context, this.f22629c.a(), this);
    }

    @Override // com.iab.omid.library.appodeal.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
