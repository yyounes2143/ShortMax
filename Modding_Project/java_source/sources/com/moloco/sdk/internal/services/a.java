package com.moloco.sdk.internal.services;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class a {

    @StabilityInferred(parameters = 1)
    /* renamed from: com.moloco.sdk.internal.services.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0488a extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f33094a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0488a(@NotNull String carrier) {
            super(null);
            Intrinsics.checkNotNullParameter(carrier, "carrier");
            this.f33094a = carrier;
        }

        @NotNull
        public final String a() {
            return this.f33094a;
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f33095a = new b();

        public b() {
            super(null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f33096a = new c();

        public c() {
            super(null);
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public a() {
    }
}
