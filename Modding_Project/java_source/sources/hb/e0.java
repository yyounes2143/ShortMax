package hb;

import android.util.Pair;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class e0 extends c1 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f52670a;

        static {
            int[] iArr = new int[com.huawei.hms.hatool.d0.values().length];
            f52670a = iArr;
            try {
                iArr[com.huawei.hms.hatool.d0.SN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f52670a[com.huawei.hms.hatool.d0.IMEI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f52670a[com.huawei.hms.hatool.d0.UDID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected static p a(String str, String str2, String str3, String str4) {
        p a10 = c1.a(str, str2, str3, str4);
        String c10 = b0.a().c(c.d(str2, str3));
        long currentTimeMillis = System.currentTimeMillis();
        String b10 = kb.b.b(v0.k() + c10 + currentTimeMillis);
        a10.f(String.valueOf(currentTimeMillis));
        a10.g(b10);
        return a10;
    }

    protected static j0 b(String str, String str2) {
        j0 b10 = c1.b(str, str2);
        a0 f10 = b0.a().f(str, str2);
        b10.g(b0.a().c(c.d(str, str2)));
        b10.f(c.p(str, str2));
        b10.c(b0.a().i(str, str2));
        int i10 = a.f52670a[f10.a().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    b10.e(f10.b());
                }
            } else {
                b10.b(f10.b());
            }
        } else {
            b10.d(f10.b());
        }
        return b10;
    }

    protected static j1 c(String str, String str2, String str3) {
        j1 c10 = c1.c(str, str2, str3);
        Pair<String, String> h10 = b0.a().h(str2, str);
        c10.f((String) h10.first);
        c10.g((String) h10.second);
        c10.h(com.huawei.hms.hatool.o.g());
        c10.d(b0.a().g(str2, str));
        return c10;
    }

    public static w f(List<f> list, String str, String str2, String str3, String str4) {
        f1.h("hmsSdk", "generate UploadData");
        w d10 = c1.d(str, str2);
        if (d10 == null) {
            return null;
        }
        d10.b(a(l0.f().b(), str, str2, str3));
        d10.c(b(str, str2));
        d10.d(c(str2, str, str4));
        d10.e(c.h(str, str2));
        d10.f(list);
        return d10;
    }

    public static Map<String, String> g(String str, String str2, String str3) {
        Map<String, String> e10 = c1.e(str, str3);
        Map<String, String> j10 = c.j(str, str2);
        if (j10 == null) {
            return e10;
        }
        e10.putAll(j10);
        return e10;
    }
}
