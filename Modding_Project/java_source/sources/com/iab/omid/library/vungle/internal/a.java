package com.iab.omid.library.vungle.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.vungle.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f23264f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.vungle.utils.f f23265a = new com.iab.omid.library.vungle.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f23266b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23267c;

    /* renamed from: d  reason: collision with root package name */
    private d f23268d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23269e;

    private a(d dVar) {
        this.f23268d = dVar;
    }

    public static a a() {
        return f23264f;
    }

    private void c() {
        if (this.f23267c && this.f23266b != null) {
            for (com.iab.omid.library.vungle.adsession.a aVar : c.c().a()) {
                aVar.d().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.f23266b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a10 = this.f23265a.a();
        Date date = this.f23266b;
        if (date == null || a10.after(date)) {
            this.f23266b = a10;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f23267c) {
            return;
        }
        this.f23268d.a(context);
        this.f23268d.a(this);
        this.f23268d.e();
        this.f23269e = this.f23268d.c();
        this.f23267c = true;
    }

    @Override // com.iab.omid.library.vungle.internal.d.a
    public void a(boolean z10) {
        if (!this.f23269e && z10) {
            d();
        }
        this.f23269e = z10;
    }
}
