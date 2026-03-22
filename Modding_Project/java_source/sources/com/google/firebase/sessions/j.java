package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.c2;
import vt.r2;
/* compiled from: SessionDetails.kt */
@st.k
@Metadata
/* loaded from: classes5.dex */
public final class j {
    @NotNull
    public static final j$$b Companion = new j$$b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f21622a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f21623b;

    /* renamed from: c  reason: collision with root package name */
    private final int f21624c;

    /* renamed from: d  reason: collision with root package name */
    private final long f21625d;

    public /* synthetic */ j(int i10, String str, String str2, int i11, long j10, r2 r2Var) {
        if (15 != (i10 & 15)) {
            c2.a(i10, 15, j$$a.f21626a.getDescriptor());
        }
        this.f21622a = str;
        this.f21623b = str2;
        this.f21624c = i11;
        this.f21625d = j10;
    }

    public static final /* synthetic */ void e(j jVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeStringElement(serialDescriptor, 0, jVar.f21622a);
        dVar.encodeStringElement(serialDescriptor, 1, jVar.f21623b);
        dVar.encodeIntElement(serialDescriptor, 2, jVar.f21624c);
        dVar.encodeLongElement(serialDescriptor, 3, jVar.f21625d);
    }

    @NotNull
    public final String a() {
        return this.f21623b;
    }

    @NotNull
    public final String b() {
        return this.f21622a;
    }

    public final int c() {
        return this.f21624c;
    }

    public final long d() {
        return this.f21625d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (Intrinsics.areEqual(this.f21622a, jVar.f21622a) && Intrinsics.areEqual(this.f21623b, jVar.f21623b) && this.f21624c == jVar.f21624c && this.f21625d == jVar.f21625d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f21622a.hashCode() * 31) + this.f21623b.hashCode()) * 31) + Integer.hashCode(this.f21624c)) * 31) + Long.hashCode(this.f21625d);
    }

    @NotNull
    public String toString() {
        return "SessionDetails(sessionId=" + this.f21622a + ", firstSessionId=" + this.f21623b + ", sessionIndex=" + this.f21624c + ", sessionStartTimestampUs=" + this.f21625d + ')';
    }

    public j(@NotNull String sessionId, @NotNull String firstSessionId, int i10, long j10) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(firstSessionId, "firstSessionId");
        this.f21622a = sessionId;
        this.f21623b = firstSessionId;
        this.f21624c = i10;
        this.f21625d = j10;
    }
}
