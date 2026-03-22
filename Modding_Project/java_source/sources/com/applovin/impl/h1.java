package com.applovin.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2.dex */
public abstract class h1 {

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleDateFormat f8016a;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        f8016a = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public static synchronized String a(long j10) {
        String format;
        synchronized (h1.class) {
            format = f8016a.format(new Date(j10));
        }
        return format;
    }
}
