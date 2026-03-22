package com.startshorts.androidplayer.utils;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TimeUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTimeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeUtil.kt\ncom/startshorts/androidplayer/utils/TimeUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1#2:247\n*E\n"})
/* loaded from: classes7.dex */
public final class TimeUtil {
    @NotNull

    /* renamed from: a */
    public static final TimeUtil f48175a = new TimeUtil();
    @NotNull

    /* renamed from: b */
    private static final i f48176b = c.b(new Function0() { // from class: fk.f0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SimpleDateFormat p10;
            p10 = TimeUtil.p();
            return p10;
        }
    });

    /* compiled from: TimeUtil.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Template {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ Template[] $VALUES;
        @NotNull
        private final String template;
        public static final Template FULL_TIME_CHINESE = new Template("FULL_TIME_CHINESE", 0, "yyyy/MM/dd HH:mm:ss");
        public static final Template FULL_TIME_AR = new Template("FULL_TIME_AR", 1, "dd/MM/yyyy HH:mm:ss");
        public static final Template FULL_TIME_EN = new Template("FULL_TIME_EN", 2, "MM/d/yyyy hh:mm a");
        public static final Template FULL_TIME_IN = new Template("FULL_TIME_IN", 3, "dd/MM/yyyy HH:mm");
        public static final Template FULL_TIME_VI = new Template("FULL_TIME_VI", 4, "dd/MM/yyyy HH:mm");
        public static final Template FULL_TIME_DE = new Template("FULL_TIME_DE", 5, "YYYY/MM/dd HH:MM:SS");
        public static final Template FULL_TIME_FR = new Template("FULL_TIME_FR", 6, "dd/MM/yyyy HH:mm:ss");
        public static final Template FULL_TIME_MS = new Template("FULL_TIME_MS", 7, "dd/MM/yyyy HH:mm:ss");
        public static final Template FULL_TIME_RU = new Template("FULL_TIME_RU", 8, "dd.MM.yyyy HH:mm:ss");
        public static final Template FULL_TIME_IT = new Template("FULL_TIME_IT", 9, "dd/MM/yyyy HH:mm:ss");
        public static final Template MONTH_DAY_YEAR_HH_MM_SS = new Template("MONTH_DAY_YEAR_HH_MM_SS", 10, "MM/dd/yyyy HH:mm:ss");
        public static final Template MONTH_DAY_YEAR = new Template("MONTH_DAY_YEAR", 11, "MM/dd/yyyy");
        public static final Template YEAR_MONTH_DAY = new Template("YEAR_MONTH_DAY", 12, "yyyyMMdd");

        private static final /* synthetic */ Template[] $values() {
            return new Template[]{FULL_TIME_CHINESE, FULL_TIME_AR, FULL_TIME_EN, FULL_TIME_IN, FULL_TIME_VI, FULL_TIME_DE, FULL_TIME_FR, FULL_TIME_MS, FULL_TIME_RU, FULL_TIME_IT, MONTH_DAY_YEAR_HH_MM_SS, MONTH_DAY_YEAR, YEAR_MONTH_DAY};
        }

        static {
            Template[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Template(String str, int i10, String str2) {
            super(str, i10);
            this.template = str2;
        }

        @NotNull
        public static ss.a<Template> getEntries() {
            return $ENTRIES;
        }

        public static Template valueOf(String str) {
            return (Template) Enum.valueOf(Template.class, str);
        }

        public static Template[] values() {
            return (Template[]) $VALUES.clone();
        }

        @NotNull
        public final String get() {
            return this.template;
        }
    }

    private TimeUtil() {
    }

    public static /* synthetic */ String e(TimeUtil timeUtil, long j10, String str, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        return timeUtil.d(j10, str, str2);
    }

    private final SimpleDateFormat j() {
        return (SimpleDateFormat) f48176b.getValue();
    }

    public static /* synthetic */ long l(TimeUtil timeUtil, Date date, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        return timeUtil.k(date, str);
    }

    public static final SimpleDateFormat p() {
        return new SimpleDateFormat(Template.MONTH_DAY_YEAR.get(), Locale.ENGLISH);
    }

    public final int b() {
        return (int) TimeUnit.MILLISECONDS.toDays(DeviceUtil.f48146a.K());
    }

    @NotNull
    public final String c(long j10, boolean z10) {
        Object valueOf;
        Object valueOf2;
        Object valueOf3;
        Object valueOf4;
        Object valueOf5;
        Object valueOf6;
        String valueOf7;
        Object valueOf8;
        Object valueOf9;
        long j11 = 60;
        try {
            long j12 = j10 / j11;
            long j13 = j10 - (j12 * j11);
            long j14 = j12 / j11;
            long j15 = j12 - (j11 * j14);
            if (z10) {
                StringBuilder sb2 = new StringBuilder();
                if (j14 < 10) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append('0');
                    sb3.append(j14);
                    valueOf7 = sb3.toString();
                } else {
                    valueOf7 = String.valueOf(j14);
                }
                sb2.append(valueOf7);
                sb2.append(':');
                if (j15 < 10) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append('0');
                    sb4.append(j15);
                    valueOf8 = sb4.toString();
                } else {
                    valueOf8 = Long.valueOf(j15);
                }
                sb2.append(valueOf8);
                sb2.append(':');
                if (j13 < 10) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append('0');
                    sb5.append(j13);
                    valueOf9 = sb5.toString();
                } else {
                    valueOf9 = Long.valueOf(j13);
                }
                sb2.append(valueOf9);
                return sb2.toString();
            } else if (j14 < 10) {
                if (j14 == 0) {
                    StringBuilder sb6 = new StringBuilder();
                    if (j15 < 10) {
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append('0');
                        sb7.append(j15);
                        valueOf5 = sb7.toString();
                    } else {
                        valueOf5 = Long.valueOf(j15);
                    }
                    sb6.append(valueOf5);
                    sb6.append(':');
                    if (j13 < 10) {
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append('0');
                        sb8.append(j13);
                        valueOf6 = sb8.toString();
                    } else {
                        valueOf6 = Long.valueOf(j13);
                    }
                    sb6.append(valueOf6);
                    return sb6.toString();
                }
                StringBuilder sb9 = new StringBuilder();
                sb9.append('0');
                sb9.append(j14);
                sb9.append(':');
                if (j15 < 10) {
                    StringBuilder sb10 = new StringBuilder();
                    sb10.append('0');
                    sb10.append(j15);
                    valueOf3 = sb10.toString();
                } else {
                    valueOf3 = Long.valueOf(j15);
                }
                sb9.append(valueOf3);
                sb9.append(':');
                if (j13 < 10) {
                    StringBuilder sb11 = new StringBuilder();
                    sb11.append('0');
                    sb11.append(j13);
                    valueOf4 = sb11.toString();
                } else {
                    valueOf4 = Long.valueOf(j13);
                }
                sb9.append(valueOf4);
                return sb9.toString();
            } else {
                StringBuilder sb12 = new StringBuilder();
                sb12.append(j14);
                sb12.append(':');
                if (j15 < 10) {
                    StringBuilder sb13 = new StringBuilder();
                    sb13.append('0');
                    sb13.append(j15);
                    valueOf = sb13.toString();
                } else {
                    valueOf = Long.valueOf(j15);
                }
                sb12.append(valueOf);
                sb12.append(':');
                if (j13 < 10) {
                    StringBuilder sb14 = new StringBuilder();
                    sb14.append('0');
                    sb14.append(j13);
                    valueOf2 = sb14.toString();
                } else {
                    valueOf2 = Long.valueOf(j13);
                }
                sb12.append(valueOf2);
                return sb12.toString();
            }
        } catch (Exception e10) {
            Logger.f41511a.e("TimeUtil", "format exception -> " + e10.getMessage());
            return "";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0088, code lost:
        if (r11.equals("es") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x008b, code lost:
        r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_VI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x001f, code lost:
        if (r11.equals("zh_cn") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0029, code lost:
        if (r11.equals("zh") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x002d, code lost:
        r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_CHINESE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0037, code lost:
        if (r11.equals("vi") == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x004f, code lost:
        if (r11.equals("pt") == false) goto L51;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String d(long r9, @org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.Nullable java.lang.String r12) {
        /*
            r8 = this;
            java.lang.String r0 = "language"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            r0 = 0
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 > 0) goto Le
            java.lang.String r9 = ""
            return r9
        Le:
            int r0 = r11.hashCode()
            java.lang.String r1 = "de"
            switch(r0) {
                case 3121: goto L98;
                case 3201: goto L8e;
                case 3246: goto L82;
                case 3276: goto L76;
                case 3365: goto L6a;
                case 3371: goto L5e;
                case 3494: goto L52;
                case 3588: goto L49;
                case 3651: goto L3b;
                case 3763: goto L31;
                case 3886: goto L23;
                case 115862300: goto L19;
                default: goto L17;
            }
        L17:
            goto La0
        L19:
            java.lang.String r0 = "zh_cn"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L2d
            goto La0
        L23:
            java.lang.String r0 = "zh"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L2d
            goto La0
        L2d:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_CHINESE
            goto La5
        L31:
            java.lang.String r0 = "vi"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L8b
            goto La0
        L3b:
            java.lang.String r0 = "ru"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L45
            goto La0
        L45:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_RU
            goto La5
        L49:
            java.lang.String r0 = "pt"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L8b
            goto La0
        L52:
            java.lang.String r0 = "ms"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L5b
            goto La0
        L5b:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_MS
            goto La5
        L5e:
            java.lang.String r0 = "it"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L67
            goto La0
        L67:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_IT
            goto La5
        L6a:
            java.lang.String r0 = "in"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L73
            goto La0
        L73:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_IN
            goto La5
        L76:
            java.lang.String r0 = "fr"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L7f
            goto La0
        L7f:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_FR
            goto La5
        L82:
            java.lang.String r0 = "es"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto L8b
            goto La0
        L8b:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_VI
            goto La5
        L8e:
            boolean r0 = r11.equals(r1)
            if (r0 != 0) goto L95
            goto La0
        L95:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_DE
            goto La5
        L98:
            java.lang.String r0 = "ar"
            boolean r0 = r11.equals(r0)
            if (r0 != 0) goto La3
        La0:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_EN
            goto La5
        La3:
            com.startshorts.androidplayer.utils.TimeUtil$Template r0 = com.startshorts.androidplayer.utils.TimeUtil.Template.FULL_TIME_AR
        La5:
            if (r12 == 0) goto Lb9
            int r2 = r12.length()
            if (r2 != 0) goto Lae
            goto Lb9
        Lae:
            java.util.Date r2 = new java.util.Date
            r2.<init>(r9)
            java.lang.String r9 = r8.h(r2, r12, r0)
        Lb7:
            r2 = r9
            goto Lc3
        Lb9:
            java.util.Date r12 = new java.util.Date
            r12.<init>(r9)
            java.lang.String r9 = r8.g(r12, r0)
            goto Lb7
        Lc3:
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r11, r1)
            if (r9 == 0) goto Ld4
            r6 = 4
            r7 = 0
            java.lang.String r3 = " "
            java.lang.String r4 = "T"
            r5 = 0
            java.lang.String r2 = kotlin.text.StringsKt.P(r2, r3, r4, r5, r6, r7)
        Ld4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.utils.TimeUtil.d(long, java.lang.String, java.lang.String):java.lang.String");
    }

    @NotNull
    public final String f(@NotNull Date date) {
        Intrinsics.checkNotNullParameter(date, "date");
        String format = j().format(date);
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @NotNull
    public final String g(@NotNull Date date, @NotNull Template template) {
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(template, "template");
        String format = new SimpleDateFormat(template.get(), Locale.ENGLISH).format(date);
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @NotNull
    public final String h(@NotNull Date date, @NotNull String timeZone, @NotNull Template template) {
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(timeZone, "timeZone");
        Intrinsics.checkNotNullParameter(template, "template");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(template.get(), Locale.ENGLISH);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(timeZone));
        String format = simpleDateFormat.format(date);
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    @NotNull
    public final String i(long j10) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(calendar.get(1));
        sb2.append('-');
        sb2.append(calendar.get(2));
        sb2.append('-');
        sb2.append(calendar.get(5));
        return sb2.toString();
    }

    public final long k(@NotNull Date date, @Nullable String str) {
        Calendar calendar;
        Intrinsics.checkNotNullParameter(date, "date");
        if (str != null && str.length() != 0) {
            calendar = Calendar.getInstance(TimeZone.getTimeZone(str));
        } else {
            calendar = Calendar.getInstance();
        }
        calendar.setTime(date);
        calendar.add(6, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        return calendar.getTimeInMillis();
    }

    public final boolean m(long j10, long j11, int i10) {
        if (j10 > 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j10);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j11);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar2.set(11, 0);
            calendar2.set(12, 0);
            calendar2.set(13, 0);
            calendar2.set(14, 0);
            if (TimeUnit.MILLISECONDS.toDays(calendar2.getTimeInMillis() - calendar.getTimeInMillis()) < i10) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final boolean n(long j10, long j11, int i10) {
        if (j10 > 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j10);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j11);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            calendar2.set(11, 0);
            calendar2.set(12, 0);
            calendar2.set(13, 0);
            calendar2.set(14, 0);
            if (((int) Math.abs(TimeUnit.MILLISECONDS.toDays(calendar2.getTimeInMillis() - calendar.getTimeInMillis()))) != i10) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final boolean o(long j10, long j11) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j11);
        if (calendar.get(1) == calendar2.get(1) && calendar.get(2) == calendar2.get(2) && calendar.get(5) == calendar2.get(5)) {
            return true;
        }
        return false;
    }

    public final int q(long j10) {
        return (int) TimeUnit.MILLISECONDS.toDays(j10);
    }

    public final long r(@NotNull String formatTime, @NotNull Template template) {
        Intrinsics.checkNotNullParameter(formatTime, "formatTime");
        Intrinsics.checkNotNullParameter(template, "template");
        Date parse = new SimpleDateFormat(template.get(), Locale.ENGLISH).parse(formatTime);
        if (parse != null) {
            return parse.getTime();
        }
        return 0L;
    }
}
