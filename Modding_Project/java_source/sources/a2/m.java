package a2;

import android.os.Bundle;
import androidx.work.PeriodicWorkRequest;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.h0;
import com.facebook.internal.i0;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SessionLogger.kt */
@Metadata
/* loaded from: classes3.dex */
public final class m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final m f96a = new m();

    /* renamed from: b  reason: collision with root package name */
    private static final String f97b = m.class.getCanonicalName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final long[] f98c = {PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS, 1800000, 3600000, 21600000, 43200000, SignalManager.TWENTY_FOUR_HOURS_MILLIS, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    private m() {
    }

    public static final int a(long j10) {
        if (o4.a.d(m.class)) {
            return 0;
        }
        int i10 = 0;
        while (true) {
            try {
                long[] jArr = f98c;
                if (i10 >= jArr.length || jArr[i10] >= j10) {
                    break;
                }
                i10++;
            } catch (Throwable th2) {
                o4.a.b(th2, m.class);
                return 0;
            }
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003e A[Catch: all -> 0x001c, TRY_LEAVE, TryCatch #0 {all -> 0x001c, blocks: (B:5:0x0009, B:7:0x0015, B:13:0x0020, B:15:0x003e), top: B:19:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(@org.jetbrains.annotations.NotNull java.lang.String r2, @org.jetbrains.annotations.Nullable a2.n r3, @org.jetbrains.annotations.Nullable java.lang.String r4, @org.jetbrains.annotations.NotNull android.content.Context r5) {
        /*
            java.lang.Class<a2.m> r0 = a2.m.class
            boolean r1 = o4.a.d(r0)
            if (r1 == 0) goto L9
            return
        L9:
            java.lang.String r1 = "activityName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r1 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r1)     // Catch: java.lang.Throwable -> L1c
            if (r3 == 0) goto L1e
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L1c
            if (r3 != 0) goto L20
            goto L1e
        L1c:
            r2 = move-exception
            goto L42
        L1e:
            java.lang.String r3 = "Unclassified"
        L20:
            android.os.Bundle r5 = new android.os.Bundle     // Catch: java.lang.Throwable -> L1c
            r5.<init>()     // Catch: java.lang.Throwable -> L1c
            java.lang.String r1 = "fb_mobile_launch_source"
            r5.putString(r1, r3)     // Catch: java.lang.Throwable -> L1c
            com.facebook.appevents.h0$a r3 = com.facebook.appevents.h0.f15017b     // Catch: java.lang.Throwable -> L1c
            r1 = 0
            com.facebook.appevents.h0 r2 = r3.b(r2, r4, r1)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r4 = "fb_mobile_activate_app"
            r2.d(r4, r5)     // Catch: java.lang.Throwable -> L1c
            com.facebook.appevents.AppEventsLogger$FlushBehavior r3 = r3.d()     // Catch: java.lang.Throwable -> L1c
            com.facebook.appevents.AppEventsLogger$FlushBehavior r4 = com.facebook.appevents.AppEventsLogger.FlushBehavior.EXPLICIT_ONLY     // Catch: java.lang.Throwable -> L1c
            if (r3 == r4) goto L41
            r2.a()     // Catch: java.lang.Throwable -> L1c
        L41:
            return
        L42:
            o4.a.b(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a2.m.b(java.lang.String, a2.n, java.lang.String, android.content.Context):void");
    }

    private final void c() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            i0.a aVar = i0.f16209e;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = f97b;
            Intrinsics.checkNotNull(str);
            aVar.b(loggingBehavior, str, "Clock skew detected");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final void d(@NotNull String activityName, @Nullable l lVar, @Nullable String str) {
        long j10;
        long j11;
        if (o4.a.d(m.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            if (lVar == null) {
                return;
            }
            Long b10 = lVar.b();
            long j12 = 0;
            if (b10 != null) {
                j11 = b10.longValue();
            } else {
                Long e10 = lVar.e();
                if (e10 != null) {
                    j10 = e10.longValue();
                } else {
                    j10 = 0;
                }
                j11 = 0 - j10;
            }
            if (j11 < 0) {
                f96a.c();
                j11 = 0;
            }
            long f10 = lVar.f();
            if (f10 < 0) {
                f96a.c();
                f10 = 0;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("fb_mobile_app_interruptions", lVar.c());
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.ROOT, "session_quanta_%d", Arrays.copyOf(new Object[]{Integer.valueOf(a(j11))}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            bundle.putString("fb_mobile_time_between_sessions", format);
            n g10 = lVar.g();
            bundle.putString("fb_mobile_launch_source", (g10 == null || (r4 = g10.toString()) == null) ? "Unclassified" : "Unclassified");
            Long e11 = lVar.e();
            if (e11 != null) {
                j12 = e11.longValue();
            }
            bundle.putLong("_logTime", j12 / 1000);
            h0.f15017b.b(activityName, str, null).c("fb_mobile_deactivate_app", f10 / 1000, bundle);
        } catch (Throwable th2) {
            o4.a.b(th2, m.class);
        }
    }
}
