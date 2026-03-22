package com.google.ads.mediation.bidmachine.common;

import java.text.NumberFormat;
import java.util.Locale;
import kotlin.text.StringsKt;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f16960a = new f();

    private f() {
    }

    public static final Double a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Integer) {
            return Double.valueOf(((Number) obj).intValue());
        }
        if (obj instanceof String) {
            return f16960a.a((String) obj);
        }
        return null;
    }

    private final Double a(String str) {
        if (str != null && !StringsKt.t0(str)) {
            try {
                Number parse = NumberFormat.getInstance(StringsKt.x0(str, '.', 0, false, 6, null) > StringsKt.x0(str, ',', 0, false, 6, null) ? Locale.TAIWAN : Locale.US).parse(str);
                if (parse != null) {
                    return Double.valueOf(parse.doubleValue());
                }
                return null;
            } catch (Exception unused) {
            }
        }
        return Double.valueOf(-1.0d);
    }
}
