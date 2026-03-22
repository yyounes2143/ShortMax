package com.moloco.sdk.internal.error;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f32100a;

    public a() {
        this(null, 1, null);
    }

    @Nullable
    public final String a() {
        return this.f32100a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof a) && Intrinsics.areEqual(this.f32100a, ((a) obj).f32100a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f32100a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        return "ErrorMetadata(mtid=" + this.f32100a + ')';
    }

    public a(@Nullable String str) {
        this.f32100a = str;
    }

    public /* synthetic */ a(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
