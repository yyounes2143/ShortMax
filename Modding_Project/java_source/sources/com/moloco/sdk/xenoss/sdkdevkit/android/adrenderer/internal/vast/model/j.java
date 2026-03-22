package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class j {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f35585a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Integer f35586b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f35587c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f35588d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final k f35589e;

    public j(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @NotNull k child) {
        Intrinsics.checkNotNullParameter(child, "child");
        this.f35585a = str;
        this.f35586b = num;
        this.f35587c = str2;
        this.f35588d = str3;
        this.f35589e = child;
    }

    @Nullable
    public final String a() {
        return this.f35588d;
    }

    @NotNull
    public final k b() {
        return this.f35589e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (Intrinsics.areEqual(this.f35585a, jVar.f35585a) && Intrinsics.areEqual(this.f35586b, jVar.f35586b) && Intrinsics.areEqual(this.f35587c, jVar.f35587c) && Intrinsics.areEqual(this.f35588d, jVar.f35588d) && Intrinsics.areEqual(this.f35589e, jVar.f35589e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String str = this.f35585a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num = this.f35586b;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.f35587c;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        String str3 = this.f35588d;
        if (str3 != null) {
            i10 = str3.hashCode();
        }
        return ((i13 + i10) * 31) + this.f35589e.hashCode();
    }

    @NotNull
    public String toString() {
        return "Creative(id=" + this.f35585a + ", sequence=" + this.f35586b + ", adId=" + this.f35587c + ", apiFramework=" + this.f35588d + ", child=" + this.f35589e + ')';
    }
}
