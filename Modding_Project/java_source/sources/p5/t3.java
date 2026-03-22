package p5;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* compiled from: PlayerId.java */
/* loaded from: classes4.dex */
public final class t3 {

    /* renamed from: b  reason: collision with root package name */
    public static final t3 f64700b;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f64701a;

    /* compiled from: PlayerId.java */
    @RequiresApi(31)
    /* loaded from: classes4.dex */
    private static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f64702b;

        /* renamed from: a  reason: collision with root package name */
        public final LogSessionId f64703a;

        static {
            LogSessionId logSessionId;
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            f64702b = new a(logSessionId);
        }

        public a(LogSessionId logSessionId) {
            this.f64703a = logSessionId;
        }
    }

    static {
        t3 t3Var;
        if (b7.s0.f2506a < 31) {
            t3Var = new t3();
        } else {
            t3Var = new t3(a.f64702b);
        }
        f64700b = t3Var;
    }

    public t3() {
        this((a) null);
        b7.a.g(b7.s0.f2506a < 31);
    }

    @RequiresApi(31)
    public LogSessionId a() {
        return ((a) b7.a.e(this.f64701a)).f64703a;
    }

    @RequiresApi(31)
    public t3(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    private t3(@Nullable a aVar) {
        this.f64701a = aVar;
    }
}
