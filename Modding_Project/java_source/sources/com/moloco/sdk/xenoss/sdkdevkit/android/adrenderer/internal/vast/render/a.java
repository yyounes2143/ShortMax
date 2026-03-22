package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.k0;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final f f35679a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final c f35680b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f35681c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final List<String> f35682d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final k0 f35683e;

    public a(@NotNull f linear, @Nullable c cVar, @NotNull List<String> impressionTracking, @NotNull List<String> errorTracking, @Nullable k0 k0Var) {
        Intrinsics.checkNotNullParameter(linear, "linear");
        Intrinsics.checkNotNullParameter(impressionTracking, "impressionTracking");
        Intrinsics.checkNotNullParameter(errorTracking, "errorTracking");
        this.f35679a = linear;
        this.f35680b = cVar;
        this.f35681c = impressionTracking;
        this.f35682d = errorTracking;
        this.f35683e = k0Var;
    }

    public static /* synthetic */ a a(a aVar, f fVar, c cVar, List list, List list2, k0 k0Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fVar = aVar.f35679a;
        }
        if ((i10 & 2) != 0) {
            cVar = aVar.f35680b;
        }
        c cVar2 = cVar;
        List<String> list3 = list;
        if ((i10 & 4) != 0) {
            list3 = aVar.f35681c;
        }
        List list4 = list3;
        List<String> list5 = list2;
        if ((i10 & 8) != 0) {
            list5 = aVar.f35682d;
        }
        List list6 = list5;
        if ((i10 & 16) != 0) {
            k0Var = aVar.f35683e;
        }
        return aVar.b(fVar, cVar2, list4, list6, k0Var);
    }

    @NotNull
    public final a b(@NotNull f linear, @Nullable c cVar, @NotNull List<String> impressionTracking, @NotNull List<String> errorTracking, @Nullable k0 k0Var) {
        Intrinsics.checkNotNullParameter(linear, "linear");
        Intrinsics.checkNotNullParameter(impressionTracking, "impressionTracking");
        Intrinsics.checkNotNullParameter(errorTracking, "errorTracking");
        return new a(linear, cVar, impressionTracking, errorTracking, k0Var);
    }

    @Nullable
    public final c c() {
        return this.f35680b;
    }

    @Nullable
    public final k0 d() {
        return this.f35683e;
    }

    @NotNull
    public final List<String> e() {
        return this.f35682d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f35679a, aVar.f35679a) && Intrinsics.areEqual(this.f35680b, aVar.f35680b) && Intrinsics.areEqual(this.f35681c, aVar.f35681c) && Intrinsics.areEqual(this.f35682d, aVar.f35682d) && Intrinsics.areEqual(this.f35683e, aVar.f35683e)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<String> f() {
        return this.f35681c;
    }

    @NotNull
    public final f g() {
        return this.f35679a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f35679a.hashCode() * 31;
        c cVar = this.f35680b;
        int i10 = 0;
        if (cVar == null) {
            hashCode = 0;
        } else {
            hashCode = cVar.hashCode();
        }
        int hashCode3 = (((((hashCode2 + hashCode) * 31) + this.f35681c.hashCode()) * 31) + this.f35682d.hashCode()) * 31;
        k0 k0Var = this.f35683e;
        if (k0Var != null) {
            i10 = k0Var.hashCode();
        }
        return hashCode3 + i10;
    }

    @NotNull
    public String toString() {
        return "Ad(linear=" + this.f35679a + ", companion=" + this.f35680b + ", impressionTracking=" + this.f35681c + ", errorTracking=" + this.f35682d + ", dec=" + this.f35683e + ')';
    }

    public /* synthetic */ a(f fVar, c cVar, List list, List list2, k0 k0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar, cVar, list, list2, (i10 & 16) != 0 ? null : k0Var);
    }
}
