package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.bytedance2.internal.d;
import com.iab.omid.library.bytedance2.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements com.iab.omid.library.bytedance2.devicevolume.c, d.a {

    /* renamed from: f  reason: collision with root package name */
    private static i f22761f;

    /* renamed from: a  reason: collision with root package name */
    private float f22762a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.devicevolume.e f22763b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.devicevolume.b f22764c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.devicevolume.d f22765d;

    /* renamed from: e  reason: collision with root package name */
    private c f22766e;

    public i(com.iab.omid.library.bytedance2.devicevolume.e eVar, com.iab.omid.library.bytedance2.devicevolume.b bVar) {
        this.f22763b = eVar;
        this.f22764c = bVar;
    }

    private c a() {
        if (this.f22766e == null) {
            this.f22766e = c.c();
        }
        return this.f22766e;
    }

    public static i c() {
        if (f22761f == null) {
            f22761f = new i(new com.iab.omid.library.bytedance2.devicevolume.e(), new com.iab.omid.library.bytedance2.devicevolume.b());
        }
        return f22761f;
    }

    public float b() {
        return this.f22762a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f22765d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f22765d.d();
    }

    @Override // com.iab.omid.library.bytedance2.devicevolume.c
    public void a(float f10) {
        this.f22762a = f10;
        for (com.iab.omid.library.bytedance2.adsession.a aVar : a().a()) {
            aVar.getAdSessionStatePublisher().a(f10);
        }
    }

    public void a(Context context) {
        this.f22765d = this.f22763b.a(new Handler(), context, this.f22764c.a(), this);
    }

    @Override // com.iab.omid.library.bytedance2.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }
}
