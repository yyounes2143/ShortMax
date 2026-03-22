package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Locale;
/* compiled from: DefaultTrackNameProvider.java */
/* loaded from: classes4.dex */
public class f implements z0 {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f18819a;

    public f(Resources resources) {
        this.f18819a = (Resources) b7.a.e(resources);
    }

    private String b(com.google.android.exoplayer2.v0 v0Var) {
        int i10 = v0Var.f19170y;
        if (i10 != -1 && i10 >= 1) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 6 && i10 != 7) {
                        if (i10 != 8) {
                            return this.f18819a.getString(s.A);
                        }
                        return this.f18819a.getString(s.C);
                    }
                    return this.f18819a.getString(s.B);
                }
                return this.f18819a.getString(s.f18927z);
            }
            return this.f18819a.getString(s.f18918q);
        }
        return "";
    }

    private String c(com.google.android.exoplayer2.v0 v0Var) {
        int i10 = v0Var.f19153h;
        if (i10 == -1) {
            return "";
        }
        return this.f18819a.getString(s.f18917p, Float.valueOf(i10 / 1000000.0f));
    }

    private String d(com.google.android.exoplayer2.v0 v0Var) {
        if (TextUtils.isEmpty(v0Var.f19147b)) {
            return "";
        }
        return v0Var.f19147b;
    }

    private String e(com.google.android.exoplayer2.v0 v0Var) {
        String j10 = j(f(v0Var), h(v0Var));
        if (TextUtils.isEmpty(j10)) {
            return d(v0Var);
        }
        return j10;
    }

    private String f(com.google.android.exoplayer2.v0 v0Var) {
        Locale locale;
        String str = v0Var.f19148c;
        if (TextUtils.isEmpty(str) || C.LANGUAGE_UNDETERMINED.equals(str)) {
            return "";
        }
        if (b7.s0.f2506a >= 21) {
            locale = Locale.forLanguageTag(str);
        } else {
            locale = new Locale(str);
        }
        Locale L = b7.s0.L();
        String displayName = locale.getDisplayName(L);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int offsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            return displayName.substring(0, offsetByCodePoints).toUpperCase(L) + displayName.substring(offsetByCodePoints);
        } catch (IndexOutOfBoundsException unused) {
            return displayName;
        }
    }

    private String g(com.google.android.exoplayer2.v0 v0Var) {
        int i10 = v0Var.f19162q;
        int i11 = v0Var.f19163r;
        if (i10 != -1 && i11 != -1) {
            return this.f18819a.getString(s.f18919r, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        return "";
    }

    private String h(com.google.android.exoplayer2.v0 v0Var) {
        String str;
        if ((v0Var.f19150e & 2) != 0) {
            str = this.f18819a.getString(s.f18920s);
        } else {
            str = "";
        }
        if ((v0Var.f19150e & 4) != 0) {
            str = j(str, this.f18819a.getString(s.f18923v));
        }
        if ((v0Var.f19150e & 8) != 0) {
            str = j(str, this.f18819a.getString(s.f18922u));
        }
        if ((v0Var.f19150e & 1088) != 0) {
            return j(str, this.f18819a.getString(s.f18921t));
        }
        return str;
    }

    private static int i(com.google.android.exoplayer2.v0 v0Var) {
        int i10 = b7.u.i(v0Var.f19157l);
        if (i10 != -1) {
            return i10;
        }
        if (b7.u.k(v0Var.f19154i) != null) {
            return 2;
        }
        if (b7.u.b(v0Var.f19154i) != null) {
            return 1;
        }
        if (v0Var.f19162q != -1 || v0Var.f19163r != -1) {
            return 2;
        }
        if (v0Var.f19170y == -1 && v0Var.f19171z == -1) {
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
                    str = this.f18819a.getString(s.f18916o, str, str2);
                }
            }
        }
        return str;
    }

    @Override // com.google.android.exoplayer2.ui.z0
    public String a(com.google.android.exoplayer2.v0 v0Var) {
        String e10;
        int i10 = i(v0Var);
        if (i10 == 2) {
            e10 = j(h(v0Var), g(v0Var), c(v0Var));
        } else if (i10 == 1) {
            e10 = j(e(v0Var), b(v0Var), c(v0Var));
        } else {
            e10 = e(v0Var);
        }
        if (e10.length() == 0) {
            return this.f18819a.getString(s.D);
        }
        return e10;
    }
}
