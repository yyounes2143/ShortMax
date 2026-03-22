package com.iab.omid.library.applovin.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.applovin.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f22465f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.applovin.utils.f f22466a = new com.iab.omid.library.applovin.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f22467b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22468c;

    /* renamed from: d  reason: collision with root package name */
    private d f22469d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22470e;

    private a(d dVar) {
        this.f22469d = dVar;
    }

    public static a a() {
        return f22465f;
    }

    private void c() {
        if (this.f22468c && this.f22467b != null) {
            for (com.iab.omid.library.applovin.adsession.a aVar : c.c().a()) {
                aVar.d().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.f22467b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a10 = this.f22466a.a();
        Date date = this.f22467b;
        if (date == null || a10.after(date)) {
            this.f22467b = a10;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f22468c) {
            return;
        }
        this.f22469d.a(context);
        this.f22469d.a(this);
        this.f22469d.e();
        this.f22470e = this.f22469d.c();
        this.f22468c = true;
    }

    @Override // com.iab.omid.library.applovin.internal.d.a
    public void a(boolean z10) {
        if (!this.f22470e && z10) {
            d();
        }
        this.f22470e = z10;
    }
}
