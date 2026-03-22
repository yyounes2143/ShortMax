package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import kotlin.time.b;
import kotlin.time.c;
import m9.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: SessionsSettings.kt */
@Metadata
/* loaded from: classes5.dex */
public final class SessionsSettings {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f21660c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f21661a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f21662b;

    /* compiled from: SessionsSettings.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SessionsSettings(@NotNull i localOverrideSettings, @NotNull i remoteSettings) {
        Intrinsics.checkNotNullParameter(localOverrideSettings, "localOverrideSettings");
        Intrinsics.checkNotNullParameter(remoteSettings, "remoteSettings");
        this.f21661a = localOverrideSettings;
        this.f21662b = remoteSettings;
    }

    private final boolean d(double d10) {
        if (0.0d > d10 || d10 > 1.0d) {
            return false;
        }
        return true;
    }

    private final boolean e(long j10) {
        if (b.E(j10) && b.z(j10)) {
            return true;
        }
        return false;
    }

    public final double a() {
        Double a10 = this.f21661a.a();
        if (a10 != null) {
            double doubleValue = a10.doubleValue();
            if (d(doubleValue)) {
                return doubleValue;
            }
        }
        Double a11 = this.f21662b.a();
        if (a11 != null) {
            double doubleValue2 = a11.doubleValue();
            if (d(doubleValue2)) {
                return doubleValue2;
            }
            return 1.0d;
        }
        return 1.0d;
    }

    public final long b() {
        b d10 = this.f21661a.d();
        if (d10 != null) {
            long M = d10.M();
            if (e(M)) {
                return M;
            }
        }
        b d11 = this.f21662b.d();
        if (d11 != null) {
            long M2 = d11.M();
            if (e(M2)) {
                return M2;
            }
        }
        b.a aVar = b.f61250b;
        return c.s(30, DurationUnit.MINUTES);
    }

    public final boolean c() {
        Boolean b10 = this.f21661a.b();
        if (b10 != null) {
            return b10.booleanValue();
        }
        Boolean b11 = this.f21662b.b();
        if (b11 != null) {
            return b11.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1
            if (r0 == 0) goto L13
            r0 = r6
            com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1 r0 = (com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1) r0
            int r1 = r0.f21666k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f21666k = r1
            goto L18
        L13:
            com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1 r0 = new com.google.firebase.sessions.settings.SessionsSettings$updateSettings$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f21664i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f21666k
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r6)
            goto L5b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.f21663h
            com.google.firebase.sessions.settings.SessionsSettings r2 = (com.google.firebase.sessions.settings.SessionsSettings) r2
            kotlin.f.b(r6)
            goto L4d
        L3c:
            kotlin.f.b(r6)
            m9.i r6 = r5.f21661a
            r0.f21663h = r5
            r0.f21666k = r4
            java.lang.Object r6 = r6.c(r0)
            if (r6 != r1) goto L4c
            return r1
        L4c:
            r2 = r5
        L4d:
            m9.i r6 = r2.f21662b
            r2 = 0
            r0.f21663h = r2
            r0.f21666k = r3
            java.lang.Object r6 = r6.c(r0)
            if (r6 != r1) goto L5b
            return r1
        L5b:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.SessionsSettings.f(rs.c):java.lang.Object");
    }
}
