package com.pgl.ssdk;

import android.content.Context;
/* loaded from: classes6.dex */
public class p0 extends m0 {

    /* renamed from: n  reason: collision with root package name */
    private Context f36813n;

    /* renamed from: o  reason: collision with root package name */
    private final int f36814o;

    public p0(Context context, int i10) {
        super(context);
        this.f36813n = context;
        this.f36814o = i10;
    }

    @Override // com.pgl.ssdk.m0
    public String a() {
        int i10 = this.f36814o;
        if (i10 == 222) {
            return "/ssdk/v2/r?os=0&ver=7.5.0.0.overseas-rc.1&mode=1&app_ver=" + b0.h(this.f36813n) + "&region=" + d0.a() + "&did=" + com.pgl.ssdk.ces.b.d() + "&aid=" + com.pgl.ssdk.ces.b.c();
        } else if (i10 == 301) {
            return "/ssdk/sd/token?os=android&app_id=" + com.pgl.ssdk.ces.b.c() + "&did=" + com.pgl.ssdk.ces.b.d() + "&app_ver=" + b0.h(this.f36813n) + "&platform=android&ver=7.5.0.0.overseas-rc.1&mode=1";
        } else {
            return null;
        }
    }

    @Override // com.pgl.ssdk.m0
    public void a(int i10, byte[] bArr) {
        try {
            if (i10 == 200) {
                int i11 = this.f36814o;
                if (i11 == 222) {
                    ((Integer) com.pgl.ssdk.ces.a.meta(223, null, bArr)).intValue();
                    return;
                } else if (i11 == 301) {
                    Object a10 = f1.a(bArr);
                    u0.b("write token result = ".concat(String.valueOf(a10)));
                    if ((a10 instanceof Integer) && ((Integer) a10).intValue() == 0) {
                        u0.b("write token succ");
                        f1.f36755a = 200;
                        return;
                    } else if (a10 instanceof String) {
                        f1.f36757c = (String) a10;
                        f1.f36755a = 200;
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            n0.b(this.f36813n);
        } catch (Throwable unused) {
        }
    }
}
