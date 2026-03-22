package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class s {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Boolean f33244a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Long f33245b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Long f33246c;

    public s() {
        this(null, null, null, 7, null);
    }

    @Nullable
    public final Boolean a() {
        return this.f33244a;
    }

    @Nullable
    public final Long b() {
        return this.f33245b;
    }

    @Nullable
    public final Long c() {
        return this.f33246c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (Intrinsics.areEqual(this.f33244a, sVar.f33244a) && Intrinsics.areEqual(this.f33245b, sVar.f33245b) && Intrinsics.areEqual(this.f33246c, sVar.f33246c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Boolean bool = this.f33244a;
        int i10 = 0;
        if (bool == null) {
            hashCode = 0;
        } else {
            hashCode = bool.hashCode();
        }
        int i11 = hashCode * 31;
        Long l10 = this.f33245b;
        if (l10 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = l10.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Long l11 = this.f33246c;
        if (l11 != null) {
            i10 = l11.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "MemoryInfoSignal(lowMemory=" + this.f33244a + ", threshold=" + this.f33245b + ", totalMem=" + this.f33246c + ')';
    }

    public s(@Nullable Boolean bool, @Nullable Long l10, @Nullable Long l11) {
        this.f33244a = bool;
        this.f33245b = l10;
        this.f33246c = l11;
    }

    public /* synthetic */ s(Boolean bool, Long l10, Long l11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : bool, (i10 & 2) != 0 ? null : l10, (i10 & 4) != 0 ? null : l11);
    }
}
