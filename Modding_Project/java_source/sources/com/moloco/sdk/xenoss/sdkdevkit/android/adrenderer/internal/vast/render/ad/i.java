package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface i extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.d, q {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f35753a;

        @StabilityInferred(parameters = 0)
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0565a extends a {
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j f35754b;

            /* renamed from: c  reason: collision with root package name */
            public final boolean f35755c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0565a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j viewModel, boolean z10) {
                super(z10, null);
                Intrinsics.checkNotNullParameter(viewModel, "viewModel");
                this.f35754b = viewModel;
                this.f35755c = z10;
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.a
            public boolean a() {
                return this.f35755c;
            }

            @NotNull
            public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j b() {
                return this.f35754b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0565a)) {
                    return false;
                }
                C0565a c0565a = (C0565a) obj;
                if (Intrinsics.areEqual(this.f35754b, c0565a.f35754b) && this.f35755c == c0565a.f35755c) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f35754b.hashCode() * 31) + Boolean.hashCode(this.f35755c);
            }

            @NotNull
            public String toString() {
                return "Companion(viewModel=" + this.f35754b + ", isLastAdPart=" + this.f35755c + ')';
            }
        }

        @StabilityInferred(parameters = 0)
        /* loaded from: classes6.dex */
        public static final class b extends a {
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e f35756b;

            /* renamed from: c  reason: collision with root package name */
            public final boolean f35757c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e viewModel, boolean z10) {
                super(z10, null);
                Intrinsics.checkNotNullParameter(viewModel, "viewModel");
                this.f35756b = viewModel;
                this.f35757c = z10;
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.a
            public boolean a() {
                return this.f35757c;
            }

            @NotNull
            public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e b() {
                return this.f35756b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                if (Intrinsics.areEqual(this.f35756b, bVar.f35756b) && this.f35757c == bVar.f35757c) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f35756b.hashCode() * 31) + Boolean.hashCode(this.f35757c);
            }

            @NotNull
            public String toString() {
                return "DEC(viewModel=" + this.f35756b + ", isLastAdPart=" + this.f35757c + ')';
            }
        }

        @StabilityInferred(parameters = 0)
        /* loaded from: classes6.dex */
        public static final class c extends a {
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public final m f35758b;

            /* renamed from: c  reason: collision with root package name */
            public final boolean f35759c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@NotNull m viewModel, boolean z10) {
                super(z10, null);
                Intrinsics.checkNotNullParameter(viewModel, "viewModel");
                this.f35758b = viewModel;
                this.f35759c = z10;
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.a
            public boolean a() {
                return this.f35759c;
            }

            @NotNull
            public final m b() {
                return this.f35758b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                if (Intrinsics.areEqual(this.f35758b, cVar.f35758b) && this.f35759c == cVar.f35759c) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f35758b.hashCode() * 31) + Boolean.hashCode(this.f35759c);
            }

            @NotNull
            public String toString() {
                return "Linear(viewModel=" + this.f35758b + ", isLastAdPart=" + this.f35759c + ')';
            }
        }

        @StabilityInferred(parameters = 0)
        /* loaded from: classes6.dex */
        public static final class d extends a {
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.q f35760b;

            /* renamed from: c  reason: collision with root package name */
            public final boolean f35761c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.q viewModel, boolean z10) {
                super(z10, null);
                Intrinsics.checkNotNullParameter(viewModel, "viewModel");
                this.f35760b = viewModel;
                this.f35761c = z10;
            }

            @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.a
            public boolean a() {
                return this.f35761c;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                if (Intrinsics.areEqual(this.f35760b, dVar.f35760b) && this.f35761c == dVar.f35761c) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f35760b.hashCode() * 31) + Boolean.hashCode(this.f35761c);
            }

            @NotNull
            public String toString() {
                return "Mraid(viewModel=" + this.f35760b + ", isLastAdPart=" + this.f35761c + ')';
            }
        }

        public /* synthetic */ a(boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
            this(z10);
        }

        public boolean a() {
            return this.f35753a;
        }

        public a(boolean z10) {
            this.f35753a = z10;
        }
    }

    void G();

    void L();

    void M();

    @NotNull
    kt.i<a> k();

    @NotNull
    kt.i<Boolean> r();
}
