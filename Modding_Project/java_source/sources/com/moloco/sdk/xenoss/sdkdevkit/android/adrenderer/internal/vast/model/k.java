package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
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
        public final List<g> f35590a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull List<g> companions) {
            super(null);
            Intrinsics.checkNotNullParameter(companions, "companions");
            this.f35590a = companions;
        }

        @NotNull
        public final List<g> a() {
            return this.f35590a;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class b extends k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final r f35591a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull r linear) {
            super(null);
            Intrinsics.checkNotNullParameter(linear, "linear");
            this.f35591a = linear;
        }

        @NotNull
        public final r a() {
            return this.f35591a;
        }
    }

    public /* synthetic */ k(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public k() {
    }
}
