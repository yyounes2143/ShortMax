package com.google.protobuf;

import com.google.protobuf.Any;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnyKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class AnyKt {
    @NotNull
    public static final AnyKt INSTANCE = new AnyKt();

    /* compiled from: AnyKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Any.Builder _builder;

        /* compiled from: AnyKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Any.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(Any.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Any _build() {
            Any build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearTypeUrl() {
            this._builder.clearTypeUrl();
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final String getTypeUrl() {
            String typeUrl = this._builder.getTypeUrl();
            Intrinsics.checkNotNullExpressionValue(typeUrl, "_builder.getTypeUrl()");
            return typeUrl;
        }

        @NotNull
        public final ByteString getValue() {
            ByteString value = this._builder.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "_builder.getValue()");
            return value;
        }

        public final void setTypeUrl(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTypeUrl(value);
        }

        public final void setValue(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setValue(value);
        }

        private Dsl(Any.Builder builder) {
            this._builder = builder;
        }
    }

    private AnyKt() {
    }
}
