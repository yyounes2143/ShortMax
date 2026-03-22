package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import com.applovin.impl.sdk.ad.b;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes2.dex */
public class k4 {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f8233a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8234b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8235c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f8236d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f8237e;

    public k4(Activity activity) {
        boolean z10;
        this.f8233a = activity;
        int d10 = k7.d(activity);
        this.f8235c = d10;
        boolean isTablet = AppLovinSdkUtils.isTablet(activity);
        this.f8236d = isTablet;
        this.f8234b = a(d10, isTablet);
        if (isTablet && 2 == a(activity)) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f8237e = z10;
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        int i10;
        if (bVar.J0() && (i10 = this.f8234b) != -1) {
            a(i10);
        } else {
            a(bVar.g0());
        }
    }

    private int a(int i10, boolean z10) {
        if (z10 && this.f8237e) {
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 1) {
                return 9;
            }
            if (i10 == 2) {
                return 8;
            }
            return i10 == 3 ? 1 : -1;
        } else if (i10 == 0) {
            return 1;
        } else {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 2) {
                return 9;
            }
            return i10 == 3 ? 8 : -1;
        }
    }

    private void a(b.c cVar) {
        if (cVar == b.c.ACTIVITY_PORTRAIT) {
            if (this.f8236d && this.f8237e) {
                int i10 = this.f8235c;
                if (i10 != 1 && i10 != 3) {
                    a(1);
                    return;
                } else if (i10 == 1) {
                    a(9);
                    return;
                } else {
                    a(1);
                    return;
                }
            }
            int i11 = this.f8235c;
            if (i11 != 0 && i11 != 2) {
                a(1);
            } else {
                a(i11 != 0 ? 9 : 1);
            }
        } else if (cVar == b.c.ACTIVITY_LANDSCAPE) {
            if (this.f8236d && this.f8237e) {
                int i12 = this.f8235c;
                if (i12 != 0 && i12 != 2) {
                    a(0);
                    return;
                } else {
                    a(i12 != 2 ? 0 : 8);
                    return;
                }
            }
            int i13 = this.f8235c;
            if (i13 != 1 && i13 != 3) {
                a(0);
            } else {
                a(i13 == 1 ? 0 : 8);
            }
        }
    }

    private static int a(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        int rotation = k7.f(context).getDefaultDisplay().getRotation();
        return (((rotation == 0 || rotation == 2) && configuration.orientation == 2) || ((rotation == 1 || rotation == 3) && configuration.orientation == 1)) ? 2 : 1;
    }

    private void a(int i10) {
        try {
            this.f8233a.setRequestedOrientation(i10);
        } catch (Throwable unused) {
        }
    }
}
