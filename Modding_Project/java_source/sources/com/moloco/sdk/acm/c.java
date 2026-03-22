package com.moloco.sdk.acm;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f31828a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f31829b;

    public c(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f31828a = key;
        this.f31829b = value;
    }

    @NotNull
    public final String a() {
        return this.f31828a;
    }

    @NotNull
    public final String b() {
        return this.f31829b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (Intrinsics.areEqual(this.f31828a, cVar.f31828a) && Intrinsics.areEqual(this.f31829b, cVar.f31829b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f31828a.hashCode() * 31) + this.f31829b.hashCode();
    }

    @NotNull
    public String toString() {
        return "EventTag(key=" + this.f31828a + ", value=" + this.f31829b + ')';
    }
}
