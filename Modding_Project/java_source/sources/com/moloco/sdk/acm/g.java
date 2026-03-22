package com.moloco.sdk.acm;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes6.dex */
public final class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f31937a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Long f31938b;

    public g() {
        this(null, null, 3, null);
    }

    @Nullable
    public final String a() {
        return this.f31937a;
    }

    @Nullable
    public final Long b() {
        return this.f31938b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (Intrinsics.areEqual(this.f31937a, gVar.f31937a) && Intrinsics.areEqual(this.f31938b, gVar.f31938b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f31937a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        Long l10 = this.f31938b;
        if (l10 != null) {
            i10 = l10.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "UpdateConfig(postAnalyticsUrl=" + this.f31937a + ", requestPeriodSeconds=" + this.f31938b + ')';
    }

    public g(@Nullable String str, @Nullable Long l10) {
        this.f31937a = str;
        this.f31938b = l10;
    }

    public /* synthetic */ g(String str, Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : l10);
    }
}
