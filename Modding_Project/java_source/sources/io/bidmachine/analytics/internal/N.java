package io.bidmachine.analytics.internal;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes7.dex */
public final class N {

    /* renamed from: a  reason: collision with root package name */
    private final SimpleDateFormat f53981a = new SimpleDateFormat("yyyy-dd-MM HH:mm:ss.SSS", Locale.getDefault());

    public final Long a(String str) {
        int i10 = Calendar.getInstance().get(1);
        SimpleDateFormat simpleDateFormat = this.f53981a;
        Date parse = simpleDateFormat.parse(i10 + '-' + str);
        if (parse != null) {
            return Long.valueOf(parse.getTime());
        }
        return null;
    }
}
