package io.bidmachine.analytics.internal;

import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes7.dex */
public final class Q {

    /* renamed from: g  reason: collision with root package name */
    public static final a f53995g = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f53996a;

    /* renamed from: b  reason: collision with root package name */
    private final String f53997b;

    /* renamed from: c  reason: collision with root package name */
    private final String f53998c;

    /* renamed from: d  reason: collision with root package name */
    private final long f53999d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f54000e;

    /* renamed from: f  reason: collision with root package name */
    private final q0 f54001f;

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public Q(String str, String str2, String str3, long j10, Map map, q0 q0Var) {
        this.f53996a = str;
        this.f53997b = str2;
        this.f53998c = str3;
        this.f53999d = j10;
        this.f54000e = map;
        this.f54001f = q0Var;
    }

    public final Q a(String str, String str2, String str3, long j10, Map map, q0 q0Var) {
        return new Q(str, str2, str3, j10, map, q0Var);
    }

    public final q0 b() {
        return this.f54001f;
    }

    public final String c() {
        return this.f53996a;
    }

    public final String d() {
        return this.f53997b;
    }

    public final String e() {
        return this.f53998c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Q)) {
            return false;
        }
        Q q10 = (Q) obj;
        if (Intrinsics.areEqual(this.f53996a, q10.f53996a) && Intrinsics.areEqual(this.f53997b, q10.f53997b) && Intrinsics.areEqual(this.f53998c, q10.f53998c) && this.f53999d == q10.f53999d && Intrinsics.areEqual(this.f54000e, q10.f54000e) && Intrinsics.areEqual(this.f54001f, q10.f54001f)) {
            return true;
        }
        return false;
    }

    public final long f() {
        return this.f53999d;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((((((this.f53996a.hashCode() * 31) + this.f53997b.hashCode()) * 31) + this.f53998c.hashCode()) * 31) + Long.hashCode(this.f53999d)) * 31) + this.f54000e.hashCode()) * 31;
        q0 q0Var = this.f54001f;
        if (q0Var == null) {
            hashCode = 0;
        } else {
            hashCode = q0Var.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public String toString() {
        return "MonitorRecord(id=" + this.f53996a + ", name=" + this.f53997b + ", sessionId=" + this.f53998c + ", timestamp=" + this.f53999d + ", data=" + this.f54000e + ", error=" + this.f54001f + ')';
    }

    public static /* synthetic */ Q a(Q q10, String str, String str2, String str3, long j10, Map map, q0 q0Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = q10.f53996a;
        }
        if ((i10 & 2) != 0) {
            str2 = q10.f53997b;
        }
        String str4 = str2;
        if ((i10 & 4) != 0) {
            str3 = q10.f53998c;
        }
        String str5 = str3;
        if ((i10 & 8) != 0) {
            j10 = q10.f53999d;
        }
        long j11 = j10;
        if ((i10 & 16) != 0) {
            map = q10.f54000e;
        }
        Map map2 = map;
        if ((i10 & 32) != 0) {
            q0Var = q10.f54001f;
        }
        return q10.a(str, str4, str5, j11, map2, q0Var);
    }

    public final Map a() {
        return this.f54000e;
    }

    public /* synthetic */ Q(String str, String str2, String str3, long j10, Map map, q0 q0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? UUID.randomUUID().toString() : str, str2, str3, (i10 & 8) != 0 ? System.currentTimeMillis() : j10, (i10 & 16) != 0 ? kotlin.collections.p0.i() : map, (i10 & 32) != 0 ? null : q0Var);
    }
}
