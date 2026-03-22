package com.moloco.sdk.internal.services.init;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class i {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends i {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final com.moloco.sdk.internal.services.init.b f33465a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull com.moloco.sdk.internal.services.init.b type) {
            super(null);
            Intrinsics.checkNotNullParameter(type, "type");
            this.f33465a = type;
        }

        @NotNull
        public final com.moloco.sdk.internal.services.init.b a() {
            return this.f33465a;
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends i {

        /* renamed from: a  reason: collision with root package name */
        public final int f33466a;

        public b(int i10) {
            super(null);
            this.f33466a = i10;
        }

        public final int a() {
            return this.f33466a;
        }
    }

    public /* synthetic */ i(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public i() {
    }
}
