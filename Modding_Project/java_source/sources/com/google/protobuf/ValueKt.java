package com.google.protobuf;

import com.google.protobuf.Value;
import com.google.protobuf.kotlin.ProtoDslMarker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ValueKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class ValueKt {
    @NotNull
    public static final ValueKt INSTANCE = new ValueKt();

    /* compiled from: ValueKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Value.Builder _builder;

        /* compiled from: ValueKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Value.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(Value.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Value _build() {
            Value build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearBoolValue() {
            this._builder.clearBoolValue();
        }

        public final void clearKind() {
            this._builder.clearKind();
        }

        public final void clearListValue() {
            this._builder.clearListValue();
        }

        public final void clearNullValue() {
            this._builder.clearNullValue();
        }

        public final void clearNumberValue() {
            this._builder.clearNumberValue();
        }

        public final void clearStringValue() {
            this._builder.clearStringValue();
        }

        public final void clearStructValue() {
            this._builder.clearStructValue();
        }

        public final boolean getBoolValue() {
            return this._builder.getBoolValue();
        }

        @NotNull
        public final Value.KindCase getKindCase() {
            Value.KindCase kindCase = this._builder.getKindCase();
            Intrinsics.checkNotNullExpressionValue(kindCase, "_builder.getKindCase()");
            return kindCase;
        }

        @NotNull
        public final ListValue getListValue() {
            ListValue listValue = this._builder.getListValue();
            Intrinsics.checkNotNullExpressionValue(listValue, "_builder.getListValue()");
            return listValue;
        }

        @NotNull
        public final NullValue getNullValue() {
            NullValue nullValue = this._builder.getNullValue();
            Intrinsics.checkNotNullExpressionValue(nullValue, "_builder.getNullValue()");
            return nullValue;
        }

        public final int getNullValueValue() {
            return this._builder.getNullValueValue();
        }

        public final double getNumberValue() {
            return this._builder.getNumberValue();
        }

        @NotNull
        public final String getStringValue() {
            String stringValue = this._builder.getStringValue();
            Intrinsics.checkNotNullExpressionValue(stringValue, "_builder.getStringValue()");
            return stringValue;
        }

        @NotNull
        public final Struct getStructValue() {
            Struct structValue = this._builder.getStructValue();
            Intrinsics.checkNotNullExpressionValue(structValue, "_builder.getStructValue()");
            return structValue;
        }

        public final boolean hasBoolValue() {
            return this._builder.hasBoolValue();
        }

        public final boolean hasListValue() {
            return this._builder.hasListValue();
        }

        public final boolean hasNullValue() {
            return this._builder.hasNullValue();
        }

        public final boolean hasNumberValue() {
            return this._builder.hasNumberValue();
        }

        public final boolean hasStringValue() {
            return this._builder.hasStringValue();
        }

        public final boolean hasStructValue() {
            return this._builder.hasStructValue();
        }

        public final void setBoolValue(boolean z10) {
            this._builder.setBoolValue(z10);
        }

        public final void setListValue(@NotNull ListValue value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setListValue(value);
        }

        public final void setNullValue(@NotNull NullValue value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setNullValue(value);
        }

        public final void setNullValueValue(int i10) {
            this._builder.setNullValueValue(i10);
        }

        public final void setNumberValue(double d10) {
            this._builder.setNumberValue(d10);
        }

        public final void setStringValue(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStringValue(value);
        }

        public final void setStructValue(@NotNull Struct value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStructValue(value);
        }

        private Dsl(Value.Builder builder) {
            this._builder = builder;
        }
    }

    private ValueKt() {
    }
}
