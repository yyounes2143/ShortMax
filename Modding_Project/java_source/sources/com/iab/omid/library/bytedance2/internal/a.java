package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f22736f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.bytedance2.utils.f f22737a = new com.iab.omid.library.bytedance2.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f22738b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22739c;

    /* renamed from: d  reason: collision with root package name */
    private d f22740d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22741e;

    private a(d dVar) {
        this.f22740d = dVar;
    }

    public static a a() {
        return f22736f;
    }

    private void c() {
        if (this.f22739c && this.f22738b != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : c.c().a()) {
                aVar.getAdSessionStatePublisher().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.f22738b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a10 = this.f22737a.a();
        Date date = this.f22738b;
        if (date == null || a10.after(date)) {
            this.f22738b = a10;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f22739c) {
            return;
        }
        this.f22740d.a(context);
        this.f22740d.a(this);
        this.f22740d.e();
        this.f22741e = this.f22740d.c();
        this.f22739c = true;
    }

    @Override // com.iab.omid.library.bytedance2.internal.d.a
    public void a(boolean z10) {
        if (!this.f22741e && z10) {
            d();
        }
        this.f22741e = z10;
    }
}
