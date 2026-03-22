package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.c0;
import vt.c2;
import vt.g1;
import vt.i;
import vt.r2;
import vt.v0;
/* compiled from: SessionConfigs.kt */
@k
@Metadata
/* loaded from: classes5.dex */
public final class a {
    @NotNull
    public static final a$$b Companion = new a$$b(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f21681a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Double f21682b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Integer f21683c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Integer f21684d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Long f21685e;

    public /* synthetic */ a(int i10, Boolean bool, Double d10, Integer num, Integer num2, Long l10, r2 r2Var) {
        if (31 != (i10 & 31)) {
            c2.a(i10, 31, a$$a.f21686a.getDescriptor());
        }
        this.f21681a = bool;
        this.f21682b = d10;
        this.f21683c = num;
        this.f21684d = num2;
        this.f21685e = l10;
    }

    public static final /* synthetic */ void f(a aVar, d dVar, SerialDescriptor serialDescriptor) {
        dVar.encodeNullableSerializableElement(serialDescriptor, 0, i.f69441a, aVar.f21681a);
        dVar.encodeNullableSerializableElement(serialDescriptor, 1, c0.f69382a, aVar.f21682b);
        v0 v0Var = v0.f69529a;
        dVar.encodeNullableSerializableElement(serialDescriptor, 2, v0Var, aVar.f21683c);
        dVar.encodeNullableSerializableElement(serialDescriptor, 3, v0Var, aVar.f21684d);
        dVar.encodeNullableSerializableElement(serialDescriptor, 4, g1.f69417a, aVar.f21685e);
    }

    @Nullable
    public final Integer a() {
        return this.f21684d;
    }

    @Nullable
    public final Long b() {
        return this.f21685e;
    }

    @Nullable
    public final Double c() {
        return this.f21682b;
    }

    @Nullable
    public final Integer d() {
        return this.f21683c;
    }

    @Nullable
    public final Boolean e() {
        return this.f21681a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f21681a, aVar.f21681a) && Intrinsics.areEqual((Object) this.f21682b, (Object) aVar.f21682b) && Intrinsics.areEqual(this.f21683c, aVar.f21683c) && Intrinsics.areEqual(this.f21684d, aVar.f21684d) && Intrinsics.areEqual(this.f21685e, aVar.f21685e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        Boolean bool = this.f21681a;
        int i10 = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i11 = hashCode * 31;
        Double d10 = this.f21682b;
        if (d10 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = d10.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Integer num = this.f21683c;
        if (num == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = num.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Integer num2 = this.f21684d;
        if (num2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num2.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        Long l10 = this.f21685e;
        if (l10 != null) {
            i10 = l10.hashCode();
        }
        return i14 + i10;
    }

    @NotNull
    public String toString() {
        return "SessionConfigs(sessionsEnabled=" + this.f21681a + ", sessionSamplingRate=" + this.f21682b + ", sessionTimeoutSeconds=" + this.f21683c + ", cacheDurationSeconds=" + this.f21684d + ", cacheUpdatedTimeSeconds=" + this.f21685e + ')';
    }

    public a(@Nullable Boolean bool, @Nullable Double d10, @Nullable Integer num, @Nullable Integer num2, @Nullable Long l10) {
        this.f21681a = bool;
        this.f21682b = d10;
        this.f21683c = num;
        this.f21684d = num2;
        this.f21685e = l10;
    }
}
