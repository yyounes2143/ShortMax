package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class b {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f35772a = new a();

        public a() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0566b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0566b f35773a = new C0566b();

        public C0566b() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f35774a = new c();

        public c() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c f35775a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c error) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.f35775a = error;
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c a() {
            return this.f35775a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && Intrinsics.areEqual(this.f35775a, ((d) obj).f35775a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f35775a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(error=" + this.f35775a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public b() {
    }
}
