package hb;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes5.dex */
public abstract class m {
    private a0 a(int i10) {
        String str;
        if (i10 != 0) {
            str = j();
            if (!TextUtils.isEmpty(str)) {
                return new a0(com.huawei.hms.hatool.d0.UDID, str);
            }
        } else {
            str = "";
        }
        return new a0(com.huawei.hms.hatool.d0.EMPTY, str);
    }

    private a0 e(int i10) {
        String str;
        if ((i10 & 4) != 0) {
            str = j();
            if (!TextUtils.isEmpty(str)) {
                return new a0(com.huawei.hms.hatool.d0.UDID, str);
            }
        } else {
            str = "";
        }
        return new a0(com.huawei.hms.hatool.d0.EMPTY, str);
    }

    private boolean i() {
        t d10 = z0.e().d();
        if (TextUtils.isEmpty(d10.x())) {
            d10.q(com.huawei.hms.hatool.o.c());
        }
        return !TextUtils.isEmpty(d10.x());
    }

    private String j() {
        t d10 = z0.e().d();
        if (TextUtils.isEmpty(d10.r())) {
            d10.k(h1.k());
        }
        return d10.r();
    }

    public a0 b(Context context) {
        String g10 = g();
        if (!TextUtils.isEmpty(g10)) {
            return new a0(com.huawei.hms.hatool.d0.UDID, g10);
        }
        String c10 = c();
        if (!TextUtils.isEmpty(c10)) {
            return new a0(com.huawei.hms.hatool.d0.IMEI, c10);
        }
        boolean i10 = i();
        String f10 = f();
        if (!TextUtils.isEmpty(f10)) {
            if (i10) {
                return new a0(com.huawei.hms.hatool.d0.SN, f10);
            }
            return new a0(com.huawei.hms.hatool.d0.UDID, d(f10));
        } else if (i10) {
            return a(h());
        } else {
            return e(h());
        }
    }

    public abstract String c();

    public abstract String d(String str);

    public abstract String f();

    public abstract String g();

    public abstract int h();
}
