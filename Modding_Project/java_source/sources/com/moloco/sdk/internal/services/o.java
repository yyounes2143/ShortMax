package com.moloco.sdk.internal.services;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class o {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends o {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f33508a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull String id2) {
            super(null);
            Intrinsics.checkNotNullParameter(id2, "id");
            this.f33508a = id2;
        }

        @NotNull
        public final String a() {
            return this.f33508a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f33508a, ((a) obj).f33508a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f33508a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Available(id=" + this.f33508a + ')';
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends o {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f33509a = new b();

        public b() {
            super(null);
        }
    }

    public /* synthetic */ o(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public o() {
    }
}
