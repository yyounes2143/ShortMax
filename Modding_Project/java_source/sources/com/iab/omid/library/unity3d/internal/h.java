package com.iab.omid.library.unity3d.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.unity3d.internal.d;
import com.iab.omid.library.unity3d.walking.TreeWalker;
/* loaded from: classes5.dex */
public class h implements d.a, com.iab.omid.library.unity3d.devicevolume.c {

    /* renamed from: f  reason: collision with root package name */
    private static h f23160f;

    /* renamed from: a  reason: collision with root package name */
    private float f23161a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.unity3d.devicevolume.e f23162b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.unity3d.devicevolume.b f23163c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.unity3d.devicevolume.d f23164d;

    /* renamed from: e  reason: collision with root package name */
    private c f23165e;

    public h(com.iab.omid.library.unity3d.devicevolume.e eVar, com.iab.omid.library.unity3d.devicevolume.b bVar) {
        this.f23162b = eVar;
        this.f23163c = bVar;
    }

    private c a() {
        if (this.f23165e == null) {
            this.f23165e = c.c();
        }
        return this.f23165e;
    }

    public static h c() {
        if (f23160f == null) {
            f23160f = new h(new com.iab.omid.library.unity3d.devicevolume.e(), new com.iab.omid.library.unity3d.devicevolume.b());
        }
        return f23160f;
    }

    public float b() {
        return this.f23161a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f23164d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f23164d.d();
    }

    @Override // com.iab.omid.library.unity3d.devicevolume.c
    public void a(float f10) {
        this.f23161a = f10;
        for (com.iab.omid.library.unity3d.adsession.a aVar : a().a()) {
            aVar.getAdSessionStatePublisher().a(f10);
        }
    }

    public void a(Context context) {
        this.f23164d = this.f23162b.a(new Handler(), context, this.f23163c.a(), this);
    }

    @Override // com.iab.omid.library.unity3d.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
