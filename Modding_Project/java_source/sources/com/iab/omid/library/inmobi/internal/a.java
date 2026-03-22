package com.iab.omid.library.inmobi.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.inmobi.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f22866f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.inmobi.utils.f f22867a = new com.iab.omid.library.inmobi.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f22868b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22869c;

    /* renamed from: d  reason: collision with root package name */
    private d f22870d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22871e;

    private a(d dVar) {
        this.f22870d = dVar;
    }

    public static a a() {
        return f22866f;
    }

    private void c() {
        if (this.f22869c && this.f22868b != null) {
            for (com.iab.omid.library.inmobi.adsession.a aVar : c.c().a()) {
                aVar.d().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.f22868b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a10 = this.f22867a.a();
        Date date = this.f22868b;
        if (date == null || a10.after(date)) {
            this.f22868b = a10;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f22869c) {
            return;
        }
        this.f22870d.a(context);
        this.f22870d.a(this);
        this.f22870d.e();
        this.f22871e = this.f22870d.c();
        this.f22869c = true;
    }

    @Override // com.iab.omid.library.inmobi.internal.d.a
    public void a(boolean z10) {
        if (!this.f22871e && z10) {
            d();
        }
        this.f22871e = z10;
    }
}
