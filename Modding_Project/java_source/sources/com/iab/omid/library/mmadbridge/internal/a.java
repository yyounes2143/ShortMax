package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.mmadbridge.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f23001f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.mmadbridge.utils.f f23002a = new com.iab.omid.library.mmadbridge.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f23003b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23004c;

    /* renamed from: d  reason: collision with root package name */
    private d f23005d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23006e;

    private a(d dVar) {
        this.f23005d = dVar;
    }

    public static a a() {
        return f23001f;
    }

    private void c() {
        if (this.f23004c && this.f23003b != null) {
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.c().a()) {
                aVar.getAdSessionStatePublisher().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.f23003b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a10 = this.f23002a.a();
        Date date = this.f23003b;
        if (date == null || a10.after(date)) {
            this.f23003b = a10;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f23004c) {
            return;
        }
        this.f23005d.a(context);
        this.f23005d.a(this);
        this.f23005d.e();
        this.f23006e = this.f23005d.c();
        this.f23004c = true;
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d.a
    public void a(boolean z10) {
        if (!this.f23006e && z10) {
            d();
        }
        this.f23006e = z10;
    }
}
