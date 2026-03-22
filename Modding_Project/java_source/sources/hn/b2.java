package hn;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Objects;
/* compiled from: PlayerId.java */
/* loaded from: classes8.dex */
public final class b2 {

    /* renamed from: d  reason: collision with root package name */
    public static final b2 f52943d = new b2("");

    /* renamed from: a  reason: collision with root package name */
    public final String f52944a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final a f52945b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Object f52946c;

    /* compiled from: PlayerId.java */
    @RequiresApi(31)
    /* loaded from: classes8.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public LogSessionId f52947a;

        public a() {
            LogSessionId logSessionId;
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            this.f52947a = logSessionId;
        }

        public void a(LogSessionId logSessionId) {
            LogSessionId logSessionId2;
            boolean equals;
            LogSessionId logSessionId3 = this.f52947a;
            logSessionId2 = LogSessionId.LOG_SESSION_ID_NONE;
            equals = logSessionId3.equals(logSessionId2);
            cn.a.g(equals);
            this.f52947a = logSessionId;
        }
    }

    public b2(String str) {
        a aVar;
        this.f52944a = str;
        if (cn.m0.f3614a >= 31) {
            aVar = new a();
        } else {
            aVar = null;
        }
        this.f52945b = aVar;
        this.f52946c = new Object();
    }

    @RequiresApi(31)
    public synchronized LogSessionId a() {
        return ((a) cn.a.e(this.f52945b)).f52947a;
    }

    @RequiresApi(31)
    public synchronized void b(LogSessionId logSessionId) {
        ((a) cn.a.e(this.f52945b)).a(logSessionId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b2)) {
            return false;
        }
        b2 b2Var = (b2) obj;
        if (Objects.equals(this.f52944a, b2Var.f52944a) && Objects.equals(this.f52945b, b2Var.f52945b) && Objects.equals(this.f52946c, b2Var.f52946c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f52944a, this.f52945b, this.f52946c);
    }
}
