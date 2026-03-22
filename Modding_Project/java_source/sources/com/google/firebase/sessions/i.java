package com.google.firebase.sessions;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.a1;
import vt.c2;
import vt.r2;
import vt.w2;
/* compiled from: SessionData.kt */
@st.k
@Metadata
/* loaded from: classes5.dex */
public final class i {
    @NotNull
    public static final i$$b Companion = new i$$b(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final KSerializer<Object>[] f21617d = {null, null, new a1(w2.f69539a, h$$a.f21616a)};
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final j f21618a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final k f21619b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, h> f21620c;

    public /* synthetic */ i(int i10, j jVar, k kVar, Map map, r2 r2Var) {
        if (1 != (i10 & 1)) {
            c2.a(i10, 1, i$$a.f21621a.getDescriptor());
        }
        this.f21618a = jVar;
        if ((i10 & 2) == 0) {
            this.f21619b = null;
        } else {
            this.f21619b = kVar;
        }
        if ((i10 & 4) == 0) {
            this.f21620c = null;
        } else {
            this.f21620c = map;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ i c(i iVar, j jVar, k kVar, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            jVar = iVar.f21618a;
        }
        if ((i10 & 2) != 0) {
            kVar = iVar.f21619b;
        }
        if ((i10 & 4) != 0) {
            map = iVar.f21620c;
        }
        return iVar.b(jVar, kVar, map);
    }

    public static final /* synthetic */ void g(i iVar, kotlinx.serialization.encoding.d dVar, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = f21617d;
        dVar.encodeSerializableElement(serialDescriptor, 0, j$$a.f21626a, iVar.f21618a);
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 1) || iVar.f21619b != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 1, k$$a.f21630a, iVar.f21619b);
        }
        if (dVar.shouldEncodeElementDefault(serialDescriptor, 2) || iVar.f21620c != null) {
            dVar.encodeNullableSerializableElement(serialDescriptor, 2, kSerializerArr[2], iVar.f21620c);
        }
    }

    @NotNull
    public final i b(@NotNull j sessionDetails, @Nullable k kVar, @Nullable Map<String, h> map) {
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        return new i(sessionDetails, kVar, map);
    }

    @Nullable
    public final k d() {
        return this.f21619b;
    }

    @Nullable
    public final Map<String, h> e() {
        return this.f21620c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (Intrinsics.areEqual(this.f21618a, iVar.f21618a) && Intrinsics.areEqual(this.f21619b, iVar.f21619b) && Intrinsics.areEqual(this.f21620c, iVar.f21620c)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final j f() {
        return this.f21618a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f21618a.hashCode() * 31;
        k kVar = this.f21619b;
        int i10 = 0;
        if (kVar == null) {
            hashCode = 0;
        } else {
            hashCode = kVar.hashCode();
        }
        int i11 = (hashCode2 + hashCode) * 31;
        Map<String, h> map = this.f21620c;
        if (map != null) {
            i10 = map.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "SessionData(sessionDetails=" + this.f21618a + ", backgroundTime=" + this.f21619b + ", processDataMap=" + this.f21620c + ')';
    }

    public i(@NotNull j sessionDetails, @Nullable k kVar, @Nullable Map<String, h> map) {
        Intrinsics.checkNotNullParameter(sessionDetails, "sessionDetails");
        this.f21618a = sessionDetails;
        this.f21619b = kVar;
        this.f21620c = map;
    }

    public /* synthetic */ i(j jVar, k kVar, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(jVar, (i10 & 2) != 0 ? null : kVar, (i10 & 4) != 0 ? null : map);
    }
}
