package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class d {

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class a extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final q f35564a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull q inline) {
            super(null);
            Intrinsics.checkNotNullParameter(inline, "inline");
            this.f35564a = inline;
        }

        @NotNull
        public final q a() {
            return this.f35564a;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class b extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b f35565a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b wrapper) {
            super(null);
            Intrinsics.checkNotNullParameter(wrapper, "wrapper");
            this.f35565a = wrapper;
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b a() {
            return this.f35565a;
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public d() {
    }
}
