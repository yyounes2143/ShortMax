package com.mbridge.msdk.mbbid.out;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.l0;
/* loaded from: classes5.dex */
public class SplashBidRequestParams extends BannerBidRequestParams {

    /* renamed from: g  reason: collision with root package name */
    private static int f27925g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static int f27926h;

    /* renamed from: i  reason: collision with root package name */
    private static int f27927i;

    /* renamed from: f  reason: collision with root package name */
    private boolean f27928f;

    public SplashBidRequestParams(String str, String str2) {
        this(str, str2, "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a() {
        return this.f27928f;
    }

    public int getOrientation() {
        return f27925g;
    }

    public SplashBidRequestParams(String str, String str2, String str3) {
        this(str, str2, str3, false, f27925g, f27927i, f27926h);
    }

    private void a(int i10, int i11) {
        int n10 = l0.n(c.m().d());
        int m10 = l0.m(c.m().d());
        int i12 = f27925g;
        if (i12 == 1) {
            if (m10 > i11 * 4) {
                setHeight(m10 - i11);
                setWidth(n10);
                return;
            }
            setHeight(0);
            setWidth(0);
        } else if (i12 == 2) {
            if (n10 > i10 * 4) {
                setWidth(n10 - i10);
                setHeight(m10);
                return;
            }
            setHeight(0);
            setWidth(0);
        }
    }

    public SplashBidRequestParams(String str, String str2, boolean z10, int i10, int i11, int i12) {
        this(str, str2, "", z10, i10, i12, i11);
    }

    public SplashBidRequestParams(String str, String str2, String str3, boolean z10, int i10, int i11, int i12) {
        super(str, str2, str3, 0, 0);
        this.f27928f = false;
        f27925g = i10;
        a(i11, i12);
        this.f27928f = z10;
    }
}
