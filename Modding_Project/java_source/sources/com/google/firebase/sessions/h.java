package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.c2;
import vt.r2;
/* compiled from: SessionData.kt */
@st.k
@Metadata
/* loaded from: classes5.dex */
public final class h {
    @NotNull
    public static final h$$b Companion = new h$$b(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f21614a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f21615b;

    public /* synthetic */ h(int i10, int i11, String str, r2 r2Var) {
        if (3 != (i10 & 3)) {
            c2.a(i10, 3, h$$a.f21616a.getDescriptor());
        }
        this.f21614a = i11;
        this.f21615b = str;
    }

    public static final /* synthetic */ void c(h hVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeIntElement(serialDescriptor, 0, hVar.f21614a);
        dVar.encodeStringElement(serialDescriptor, 1, hVar.f21615b);
    }

    public final int a() {
        return this.f21614a;
    }

    @NotNull
    public final String b() {
        return this.f21615b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f21614a == hVar.f21614a && Intrinsics.areEqual(this.f21615b, hVar.f21615b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Integer.hashCode(this.f21614a) * 31) + this.f21615b.hashCode();
    }

    @NotNull
    public String toString() {
        return "ProcessData(pid=" + this.f21614a + ", uuid=" + this.f21615b + ')';
    }

    public h(int i10, @NotNull String uuid) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        this.f21614a = i10;
        this.f21615b = uuid;
    }
}
