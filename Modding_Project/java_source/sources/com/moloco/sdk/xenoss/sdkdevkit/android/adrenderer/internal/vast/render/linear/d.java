package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class d {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f36265a = new a();

        public a() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f36266a = new b();

        public b() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f36267a = new c();

        public c() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.d$d  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0584d extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l f36268a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0584d(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l error) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.f36268a = error;
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l a() {
            return this.f36268a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0584d) && this.f36268a == ((C0584d) obj).f36268a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f36268a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(error=" + this.f36268a + ')';
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class e extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final e f36269a = new e();

        public e() {
            super(null);
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public d() {
    }
}
