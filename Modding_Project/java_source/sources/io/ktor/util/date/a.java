package io.ktor.util.date;

import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DateJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDateJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateJvm.kt\nio/ktor/util/date/DateJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"})
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f59303a = TimeZone.getTimeZone("GMT");

    @NotNull
    public static final bs.a a(@Nullable Long l10) {
        Calendar calendar = Calendar.getInstance(f59303a, Locale.ROOT);
        Intrinsics.checkNotNull(calendar);
        return c(calendar, l10);
    }

    public static /* synthetic */ bs.a b(Long l10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = null;
        }
        return a(l10);
    }

    @NotNull
    public static final bs.a c(@NotNull Calendar calendar, @Nullable Long l10) {
        Intrinsics.checkNotNullParameter(calendar, "<this>");
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        int i10 = calendar.get(15) + calendar.get(16);
        return new bs.a(calendar.get(13), calendar.get(12), calendar.get(11), WeekDay.Companion.a((calendar.get(7) + 5) % 7), calendar.get(5), calendar.get(6), Month.Companion.a(calendar.get(2)), calendar.get(1), calendar.getTimeInMillis() + i10);
    }
}
