package kr;

import androidx.annotation.NonNull;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* compiled from: DateUtils.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final long f62037a = TimeUnit.DAYS.toMillis(1);

    @NonNull
    public static Calendar a(@NonNull Calendar calendar) {
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar;
    }

    @NonNull
    public static Calendar b(@NonNull Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static int c(@NonNull Date date, @NonNull Date date2) {
        return (int) (Math.abs(a(b(date2)).getTimeInMillis() - a(b(date)).getTimeInMillis()) / f62037a);
    }
}
