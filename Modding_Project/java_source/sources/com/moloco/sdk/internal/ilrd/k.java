package com.moloco.sdk.internal.ilrd;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class k {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f32278a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull String reason) {
            super(null);
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.f32278a = reason;
        }

        @NotNull
        public final String a() {
            return this.f32278a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f32278a, ((a) obj).f32278a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f32278a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(reason=" + this.f32278a + ')';
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f32279a = new b();

        public b() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f32280a = new c();

        public c() {
            super(null);
        }
    }

    public /* synthetic */ k(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public k() {
    }
}
