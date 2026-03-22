package jq;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import io.bidmachine.rendering.model.EventTaskType;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import rq.v;
import sq.g;
import tp.s;
@Metadata
/* loaded from: classes8.dex */
public final class a implements c {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final C0838a f60532c = new C0838a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final e f60533a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f60534b;

    @Metadata
    /* renamed from: jq.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0838a {
        public /* synthetic */ C0838a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0838a() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f60535a;

        static {
            int[] iArr = new int[EventTaskType.values().length];
            try {
                iArr[EventTaskType.Track.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EventTaskType.Open.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EventTaskType.NotifyOpen.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EventTaskType.Skip.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EventTaskType.Close.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EventTaskType.Mute.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EventTaskType.UnMute.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[EventTaskType.Repeat.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[EventTaskType.Show.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[EventTaskType.Hide.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[EventTaskType.Progress.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[EventTaskType.Schedule.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[EventTaskType.Start.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[EventTaskType.LockVisibility.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[EventTaskType.UnlockVisibility.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[EventTaskType.SimulateClick.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[EventTaskType.OpenPrivacySheet.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[EventTaskType.ToggleStateGroups.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            f60535a = iArr;
        }
    }

    public a(@NotNull e eventTaskExecutor, @NotNull String sourceName) {
        Intrinsics.checkNotNullParameter(eventTaskExecutor, "eventTaskExecutor");
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        this.f60533a = eventTaskExecutor;
        this.f60534b = sourceName;
    }

    private final String b(Object obj, Object... objArr) {
        String str;
        if (obj != null) {
            str = obj.toString();
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str) && objArr.length != 0) {
            Object obj2 = objArr[0];
            if (obj2 == null) {
                return null;
            }
            return obj2.toString();
        }
        return str;
    }

    private final void c(EventType eventType, EventTaskType eventTaskType) {
        j(eventType, eventTaskType);
        this.f60533a.b();
    }

    private final void d(EventType eventType, EventTaskType eventTaskType, Object obj) {
        String str;
        if (obj != null) {
            str = obj.toString();
        } else {
            str = null;
        }
        if (str != null && !StringsKt.t0(str)) {
            PrivacySheetParams c10 = g.c(str);
            if (c10 == null) {
                f(eventType, eventTaskType, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                return;
            }
            p(eventType, eventTaskType, "%s", str);
            this.f60533a.b(c10);
            return;
        }
        f(eventType, eventTaskType, AppMeasurementSdk.ConditionalUserProperty.VALUE);
    }

    private final void e(EventType eventType, EventTaskType eventTaskType, Object obj, Object... objArr) {
        String b10 = b(obj, Arrays.copyOf(objArr, objArr.length));
        if (b10 != null && !StringsKt.t0(b10)) {
            p(eventType, eventTaskType, "%s", b10);
            this.f60533a.e(b10);
            return;
        }
        f(eventType, eventTaskType, "notify open url");
    }

    private final void f(EventType eventType, EventTaskType eventTaskType, String str) {
        s.b("Event", "Could not find required params (" + str + ") for execute task (" + eventType + ", " + eventTaskType + ')', new Object[0]);
    }

    private final void g(EventType eventType, EventTaskType eventTaskType, String str, Object obj) {
        long j10;
        Long H;
        if (obj != null && (H = yq.s.H(obj, null, 1, null)) != null) {
            j10 = H.longValue();
        } else {
            j10 = Long.MIN_VALUE;
        }
        if (j10 < 0) {
            f(eventType, eventTaskType, "schedule time");
            return;
        }
        p(eventType, eventTaskType, "target - %s, timeMs - %s", str, Long.valueOf(j10));
        this.f60533a.m(str, j10);
    }

    private final void h(EventType eventType, EventTaskType eventTaskType, String str, Object obj, Object... objArr) {
        Boolean B = yq.s.B(obj, null, 1, null);
        if (B == null && objArr.length != 0) {
            B = yq.s.B(objArr[0], null, 1, null);
        }
        if (B == null) {
            f(eventType, eventTaskType, "visibility value");
            return;
        }
        p(eventType, eventTaskType, "target - %s, lockVisibility - %s", str, B);
        this.f60533a.a(str, B.booleanValue());
    }

    private final void i(EventType eventType, EventTaskType eventTaskType, String str, Object... objArr) {
        p(eventType, eventTaskType, "target - %s", str);
        e eVar = this.f60533a;
        Object l02 = n.l0(objArr);
        Integer num = null;
        if (l02 != null) {
            num = yq.s.F(l02, null, 1, null);
        }
        eVar.k(str, num);
    }

    private final void j(EventType eventType, EventTaskType eventTaskType) {
        p(eventType, eventTaskType, null, new Object[0]);
    }

    private final void k(EventType eventType, EventTaskType eventTaskType, Object obj) {
        String str;
        if (obj != null) {
            str = obj.toString();
        } else {
            str = null;
        }
        if (str != null && !StringsKt.t0(str)) {
            p(eventType, eventTaskType, "%s", str);
            this.f60533a.a(str);
            return;
        }
        f(eventType, eventTaskType, "state groups value");
    }

    private final void l(EventType eventType, EventTaskType eventTaskType, Object obj, Object... objArr) {
        String b10 = b(obj, Arrays.copyOf(objArr, objArr.length));
        if (b10 != null && !StringsKt.t0(b10)) {
            p(eventType, eventTaskType, "%s", b10);
            this.f60533a.b(b10);
            return;
        }
        f(eventType, eventTaskType, "open url");
    }

    private final void m(EventType eventType, EventTaskType eventTaskType, String str) {
        p(eventType, eventTaskType, "target - %s", str);
        this.f60533a.c(str);
    }

    private final void n(EventType eventType, EventTaskType eventTaskType, String str, Object obj) {
        String obj2;
        if (obj != null && (obj2 = obj.toString()) != null) {
            p(eventType, eventTaskType, "target - %s, value - %s", str, obj2);
            this.f60533a.a(str, obj2);
        }
    }

    private final void o(EventType eventType, EventTaskType eventTaskType, String str, Object obj, Object... objArr) {
        try {
            switch (b.f60535a[eventTaskType.ordinal()]) {
                case 1:
                    r(eventType, eventTaskType, obj);
                    break;
                case 2:
                    l(eventType, eventTaskType, obj, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 3:
                    e(eventType, eventTaskType, obj, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 4:
                    q(eventType, eventTaskType);
                    break;
                case 5:
                    c(eventType, eventTaskType);
                    break;
                case 6:
                    t(eventType, eventTaskType, str, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 7:
                    x(eventType, eventTaskType, str, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 8:
                    m(eventType, eventTaskType, str);
                    break;
                case 9:
                    w(eventType, eventTaskType, str, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 10:
                    i(eventType, eventTaskType, str, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 11:
                    v(eventType, eventTaskType, str, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 12:
                    g(eventType, eventTaskType, str, obj);
                    break;
                case 13:
                    n(eventType, eventTaskType, str, obj);
                    break;
                case 14:
                    h(eventType, eventTaskType, str, obj, Arrays.copyOf(objArr, objArr.length));
                    break;
                case 15:
                    u(eventType, eventTaskType, str);
                    break;
                case 16:
                    s(eventType, eventTaskType, str);
                    break;
                case 17:
                    d(eventType, eventTaskType, obj);
                    break;
                case 18:
                    k(eventType, eventTaskType, obj);
                    break;
            }
        } catch (Throwable th2) {
            s.h(th2);
        }
    }

    private final void p(EventType eventType, EventTaskType eventTaskType, String str, Object... objArr) {
        if (!s.f()) {
            return;
        }
        if (str == null) {
            s.g("Event", "Event - " + eventType.getKey() + " (source - " + this.f60534b + "), Task - " + eventTaskType.getKey(), new Object[0]);
            return;
        }
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            String format = String.format(str, Arrays.copyOf(copyOf, copyOf.length));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            s.g("Event", "Event - " + eventType.getKey() + " (source - " + this.f60534b + "), Task - " + eventTaskType.getKey() + " (" + format + ')', new Object[0]);
        } catch (Throwable th2) {
            s.h(th2);
        }
    }

    private final void q(EventType eventType, EventTaskType eventTaskType) {
        j(eventType, eventTaskType);
        this.f60533a.e();
    }

    private final void r(EventType eventType, EventTaskType eventTaskType, Object obj) {
        String str;
        if (obj != null) {
            str = obj.toString();
        } else {
            str = null;
        }
        if (str != null && !StringsKt.t0(str)) {
            p(eventType, eventTaskType, "%s", str);
            this.f60533a.f(str);
            return;
        }
        f(eventType, eventTaskType, "track url");
    }

    private final void s(EventType eventType, EventTaskType eventTaskType, String str) {
        p(eventType, eventTaskType, "target - %s", str);
        this.f60533a.g(str);
    }

    private final void t(EventType eventType, EventTaskType eventTaskType, String str, Object... objArr) {
        p(eventType, eventTaskType, "target - %s", str);
        e eVar = this.f60533a;
        Object l02 = n.l0(objArr);
        Integer num = null;
        if (l02 != null) {
            num = yq.s.F(l02, null, 1, null);
        }
        eVar.i(str, num);
    }

    private final void u(EventType eventType, EventTaskType eventTaskType, String str) {
        p(eventType, eventTaskType, "target - %s", str);
        this.f60533a.d(str);
    }

    private final void v(EventType eventType, EventTaskType eventTaskType, String str, Object... objArr) {
        long j10;
        if (objArr.length < 2) {
            f(eventType, eventTaskType, "progress parameters");
            return;
        }
        Long H = yq.s.H(objArr[0], null, 1, null);
        long j11 = Long.MIN_VALUE;
        if (H != null) {
            j10 = H.longValue();
        } else {
            j10 = Long.MIN_VALUE;
        }
        Long H2 = yq.s.H(objArr[1], null, 1, null);
        if (H2 != null) {
            j11 = H2.longValue();
        }
        if (j10 >= 1 && j11 >= 0) {
            this.f60533a.l(str, j10, j11, (((float) j11) * 100.0f) / ((float) j10));
            return;
        }
        f(eventType, eventTaskType, "maxProgressMs, currentProgressMs");
    }

    private final void w(EventType eventType, EventTaskType eventTaskType, String str, Object... objArr) {
        p(eventType, eventTaskType, "target - %s", str);
        e eVar = this.f60533a;
        Object l02 = n.l0(objArr);
        Integer num = null;
        if (l02 != null) {
            num = yq.s.F(l02, null, 1, null);
        }
        eVar.j(str, num);
    }

    private final void x(EventType eventType, EventTaskType eventTaskType, String str, Object... objArr) {
        p(eventType, eventTaskType, "target - %s", str);
        e eVar = this.f60533a;
        Object l02 = n.l0(objArr);
        Integer num = null;
        if (l02 != null) {
            num = yq.s.F(l02, null, 1, null);
        }
        eVar.h(str, num);
    }

    @Override // jq.c
    public void a(@NotNull EventType eventType, @NotNull v eventTaskParams, @NotNull Object... params) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventTaskParams, "eventTaskParams");
        Intrinsics.checkNotNullParameter(params, "params");
        o(eventType, eventTaskParams.a(), eventTaskParams.c(), eventTaskParams.d(), Arrays.copyOf(params, params.length));
    }
}
