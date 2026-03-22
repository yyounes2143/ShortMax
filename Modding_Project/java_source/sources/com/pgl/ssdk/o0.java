package com.pgl.ssdk;

import android.content.Context;
/* loaded from: classes6.dex */
public class o0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Context f36810a;

    /* renamed from: b  reason: collision with root package name */
    private int f36811b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f36812c;

    public o0(Context context, int i10, Object[] objArr) {
        this.f36810a = context;
        this.f36811b = i10;
        this.f36812c = objArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f36811b == 222) {
                k0.a(this.f36810a).a();
            }
            byte[] bArr = (byte[]) com.pgl.ssdk.ces.a.meta(this.f36811b, this.f36810a, this.f36812c);
            if (bArr != null && bArr.length > 0) {
                new p0(this.f36810a, this.f36811b).a(1, 2, bArr);
            }
        } catch (Throwable unused) {
        }
    }
}
