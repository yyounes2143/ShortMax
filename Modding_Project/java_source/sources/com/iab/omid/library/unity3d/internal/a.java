package com.iab.omid.library.unity3d.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.unity3d.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f23137f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.unity3d.utils.f f23138a = new com.iab.omid.library.unity3d.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f23139b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23140c;

    /* renamed from: d  reason: collision with root package name */
    private d f23141d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23142e;

    private a(d dVar) {
        this.f23141d = dVar;
    }

    public static a a() {
        return f23137f;
    }

    private void c() {
        if (this.f23140c && this.f23139b != null) {
            for (com.iab.omid.library.unity3d.adsession.a aVar : c.c().a()) {
                aVar.getAdSessionStatePublisher().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.f23139b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a10 = this.f23138a.a();
        Date date = this.f23139b;
        if (date == null || a10.after(date)) {
            this.f23139b = a10;
            c();
        }
    }

    public void a(@NonNull Context context) {
        if (this.f23140c) {
            return;
        }
        this.f23141d.a(context);
        this.f23141d.a(this);
        this.f23141d.e();
        this.f23142e = this.f23141d.c();
        this.f23140c = true;
    }

    @Override // com.iab.omid.library.unity3d.internal.d.a
    public void a(boolean z10) {
        if (!this.f23142e && z10) {
            d();
        }
        this.f23142e = z10;
    }
}
