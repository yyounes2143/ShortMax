package io.bidmachine.media3.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Locale;
/* compiled from: DefaultTrackNameProvider.java */
/* loaded from: classes8.dex */
public class e implements k1 {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f57790a;

    public e(Resources resources) {
        this.f57790a = (Resources) cn.a.e(resources);
    }

    private String b(io.bidmachine.media3.common.a aVar) {
        int i10 = aVar.E;
        if (i10 != -1 && i10 >= 1) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 6 && i10 != 7) {
                        if (i10 != 8) {
                            return this.f57790a.getString(z0.A);
                        }
                        return this.f57790a.getString(z0.C);
                    }
                    return this.f57790a.getString(z0.B);
                }
                return this.f57790a.getString(z0.f57941z);
            }
            return this.f57790a.getString(z0.f57932q);
        }
        return "";
    }

    private String c(io.bidmachine.media3.common.a aVar) {
        int i10 = aVar.f55169j;
        if (i10 == -1) {
            return "";
        }
        return this.f57790a.getString(z0.f57931p, Float.valueOf(i10 / 1000000.0f));
    }

    private String d(io.bidmachine.media3.common.a aVar) {
        if (TextUtils.isEmpty(aVar.f55161b)) {
            return "";
        }
        return aVar.f55161b;
    }

    private String e(io.bidmachine.media3.common.a aVar) {
        String j10 = j(f(aVar), h(aVar));
        if (TextUtils.isEmpty(j10)) {
            return d(aVar);
        }
        return j10;
    }

    private String f(io.bidmachine.media3.common.a aVar) {
        String str = aVar.f55163d;
        if (TextUtils.isEmpty(str) || C.LANGUAGE_UNDETERMINED.equals(str)) {
            return "";
        }
        Locale forLanguageTag = Locale.forLanguageTag(str);
        Locale Y = cn.m0.Y();
        String displayName = forLanguageTag.getDisplayName(Y);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int offsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            return displayName.substring(0, offsetByCodePoints).toUpperCase(Y) + displayName.substring(offsetByCodePoints);
        } catch (IndexOutOfBoundsException unused) {
            return displayName;
        }
    }

    private String g(io.bidmachine.media3.common.a aVar) {
        int i10 = aVar.f55181v;
        int i11 = aVar.f55182w;
        if (i10 != -1 && i11 != -1) {
            return this.f57790a.getString(z0.f57933r, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        return "";
    }

    private String h(io.bidmachine.media3.common.a aVar) {
        String str;
        if ((aVar.f55165f & 2) != 0) {
            str = this.f57790a.getString(z0.f57934s);
        } else {
            str = "";
        }
        if ((aVar.f55165f & 4) != 0) {
            str = j(str, this.f57790a.getString(z0.f57937v));
        }
        if ((aVar.f55165f & 8) != 0) {
            str = j(str, this.f57790a.getString(z0.f57936u));
        }
        if ((aVar.f55165f & 1088) != 0) {
            return j(str, this.f57790a.getString(z0.f57935t));
        }
        return str;
    }

    private static int i(io.bidmachine.media3.common.a aVar) {
        int k10 = zm.u.k(aVar.f55174o);
        if (k10 != -1) {
            return k10;
        }
        if (zm.u.n(aVar.f55170k) != null) {
            return 2;
        }
        if (zm.u.c(aVar.f55170k) != null) {
            return 1;
        }
        if (aVar.f55181v != -1 || aVar.f55182w != -1) {
            return 2;
        }
        if (aVar.E == -1 && aVar.F == -1) {
            return -1;
        }
        return 1;
    }

    private String j(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (str2.length() > 0) {
                if (TextUtils.isEmpty(str)) {
                    str = str2;
                } else {
                    str = this.f57790a.getString(z0.f57930o, str, str2);
                }
            }
        }
        return str;
    }

    @Override // io.bidmachine.media3.ui.k1
    public String a(io.bidmachine.media3.common.a aVar) {
        String e10;
        int i10 = i(aVar);
        if (i10 == 2) {
            e10 = j(h(aVar), g(aVar), c(aVar));
        } else if (i10 == 1) {
            e10 = j(e(aVar), b(aVar), c(aVar));
        } else {
            e10 = e(aVar);
        }
        if (e10.length() != 0) {
            return e10;
        }
        String str = aVar.f55163d;
        if (str != null && !str.trim().isEmpty()) {
            return this.f57790a.getString(z0.E, str);
        }
        return this.f57790a.getString(z0.D);
    }
}
