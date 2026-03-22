package com.google.protobuf;

import com.google.protobuf.BytesValue;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BytesValueKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class BytesValueKt {
    @NotNull
    public static final BytesValueKt INSTANCE = new BytesValueKt();

    /* compiled from: BytesValueKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final BytesValue.Builder _builder;

        /* compiled from: BytesValueKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(BytesValue.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(BytesValue.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ BytesValue _build() {
            BytesValue build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final ByteString getValue() {
            ByteString value = this._builder.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "_builder.getValue()");
            return value;
        }

        public final void setValue(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setValue(value);
        }

        private Dsl(BytesValue.Builder builder) {
            this._builder = builder;
        }
    }

    private BytesValueKt() {
    }
}
