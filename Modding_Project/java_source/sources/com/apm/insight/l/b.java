package com.apm.insight.l;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* compiled from: DateUtils.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static DateFormat f7052a;

    public static DateFormat a() {
        if (f7052a == null) {
            f7052a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        }
        return f7052a;
    }
}
