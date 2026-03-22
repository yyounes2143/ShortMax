package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class z {

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends z {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f35003a;

        /* renamed from: b  reason: collision with root package name */
        public final int f35004b;

        /* renamed from: c  reason: collision with root package name */
        public final int f35005c;

        public /* synthetic */ a(boolean z10, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(z10, i10, i11);
        }

        public final int a() {
            return this.f35005c;
        }

        public final boolean b() {
            return this.f35003a;
        }

        public final int c() {
            return this.f35004b;
        }

        public a(boolean z10, int i10, int i11) {
            super(null);
            this.f35003a = z10;
            this.f35004b = i10;
            this.f35005c = i11;
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class b extends z {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final Painter f35006a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f35007b;

        /* renamed from: c  reason: collision with root package name */
        public final long f35008c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final Shape f35009d;

        /* renamed from: e  reason: collision with root package name */
        public final long f35010e;

        public /* synthetic */ b(Painter painter, String str, long j10, Shape shape, long j11, DefaultConstructorMarker defaultConstructorMarker) {
            this(painter, str, j10, shape, j11);
        }

        public final long a() {
            return this.f35010e;
        }

        @NotNull
        public final Shape b() {
            return this.f35009d;
        }

        @Nullable
        public final String c() {
            return this.f35007b;
        }

        public final long d() {
            return this.f35008c;
        }

        @NotNull
        public final Painter e() {
            return this.f35006a;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Painter painter, String str, long j10, Shape backgroundShape, long j11) {
            super(null);
            Intrinsics.checkNotNullParameter(painter, "painter");
            Intrinsics.checkNotNullParameter(backgroundShape, "backgroundShape");
            this.f35006a = painter;
            this.f35007b = str;
            this.f35008c = j10;
            this.f35009d = backgroundShape;
            this.f35010e = j11;
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends z {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f35011a;

        @NotNull
        public final String a() {
            return this.f35011a;
        }
    }

    public /* synthetic */ z(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public z() {
    }
}
