package com.google.protobuf;

import com.google.protobuf.Duration;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DurationKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class DurationKt {
    @NotNull
    public static final DurationKt INSTANCE = new DurationKt();

    /* compiled from: DurationKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Duration.Builder _builder;

        /* compiled from: DurationKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Duration.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(Duration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Duration _build() {
            Duration build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearNanos() {
            this._builder.clearNanos();
        }

        public final void clearSeconds() {
            this._builder.clearSeconds();
        }

        public final int getNanos() {
            return this._builder.getNanos();
        }

        public final long getSeconds() {
            return this._builder.getSeconds();
        }

        public final void setNanos(int i10) {
            this._builder.setNanos(i10);
        }

        public final void setSeconds(long j10) {
            this._builder.setSeconds(j10);
        }

        private Dsl(Duration.Builder builder) {
            this._builder = builder;
        }
    }

    private DurationKt() {
    }
}
