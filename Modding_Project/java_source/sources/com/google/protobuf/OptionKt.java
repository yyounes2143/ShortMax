package com.google.protobuf;

import com.google.protobuf.Option;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: OptionKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class OptionKt {
    @NotNull
    public static final OptionKt INSTANCE = new OptionKt();

    /* compiled from: OptionKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Option.Builder _builder;

        /* compiled from: OptionKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Option.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(Option.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Option _build() {
            Option build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "_builder.getName()");
            return name;
        }

        @NotNull
        public final Any getValue() {
            Any value = this._builder.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "_builder.getValue()");
            return value;
        }

        public final boolean hasValue() {
            return this._builder.hasValue();
        }

        public final void setName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }

        public final void setValue(@NotNull Any value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setValue(value);
        }

        private Dsl(Option.Builder builder) {
            this._builder = builder;
        }
    }

    private OptionKt() {
    }
}
