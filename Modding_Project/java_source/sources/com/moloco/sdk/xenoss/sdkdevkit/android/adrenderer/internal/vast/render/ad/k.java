package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class k {

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class a extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.a f35762a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.a companion) {
            super(null);
            Intrinsics.checkNotNullParameter(companion, "companion");
            this.f35762a = companion;
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.a a() {
            return this.f35762a;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class b extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a f35763a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a dec) {
            super(null);
            Intrinsics.checkNotNullParameter(dec, "dec");
            this.f35763a = dec;
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a a() {
            return this.f35763a;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class c extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c f35764a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c linear) {
            super(null);
            Intrinsics.checkNotNullParameter(linear, "linear");
            this.f35764a = linear;
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.c a() {
            return this.f35764a;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class d extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final s f35765a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull s mraid) {
            super(null);
            Intrinsics.checkNotNullParameter(mraid, "mraid");
            this.f35765a = mraid;
        }

        @NotNull
        public final s a() {
            return this.f35765a;
        }
    }

    public /* synthetic */ k(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public k() {
    }
}
