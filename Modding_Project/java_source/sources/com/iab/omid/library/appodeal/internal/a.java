package com.iab.omid.library.appodeal.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.appodeal.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f22601f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.appodeal.utils.f f22602a = new com.iab.omid.library.appodeal.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f22603b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22604c;

    /* renamed from: d  reason: collision with root package name */
    private d f22605d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22606e;

    private a(d dVar) {
        this.f22605d = dVar;
    }

    public static a a() {
        return f22601f;
    }

    private void c() {
        if (this.f22604c && this.f22603b != null) {
            for (com.iab.omid.library.appodeal.adsession.a aVar : c.c().a()) {
                aVar.d().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.f22603b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a10 = this.f22602a.a();
        Date date = this.f22603b;
        if (date == null || a10.after(date)) {
            this.f22603b = a10;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f22604c) {
            return;
        }
        this.f22605d.a(context);
        this.f22605d.a(this);
        this.f22605d.e();
        this.f22606e = this.f22605d.c();
        this.f22604c = true;
    }

    @Override // com.iab.omid.library.appodeal.internal.d.a
    public void a(boolean z10) {
        if (!this.f22606e && z10) {
            d();
        }
        this.f22606e = z10;
    }
}
