package com.google.protobuf;

import com.google.protobuf.Field;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FieldKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class FieldKt {
    @NotNull
    public static final FieldKt INSTANCE = new FieldKt();

    /* compiled from: FieldKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Field.Builder _builder;

        /* compiled from: FieldKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Field.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: FieldKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public /* synthetic */ Dsl(Field.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Field _build() {
            Field build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void addOptions(DslList dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addOptions(value);
        }

        public final void clearCardinality() {
            this._builder.clearCardinality();
        }

        public final void clearDefaultValue() {
            this._builder.clearDefaultValue();
        }

        public final void clearJsonName() {
            this._builder.clearJsonName();
        }

        public final void clearKind() {
            this._builder.clearKind();
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final void clearNumber() {
            this._builder.clearNumber();
        }

        public final void clearOneofIndex() {
            this._builder.clearOneofIndex();
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final void clearPacked() {
            this._builder.clearPacked();
        }

        public final void clearTypeUrl() {
            this._builder.clearTypeUrl();
        }

        @NotNull
        public final Field.Cardinality getCardinality() {
            Field.Cardinality cardinality = this._builder.getCardinality();
            Intrinsics.checkNotNullExpressionValue(cardinality, "_builder.getCardinality()");
            return cardinality;
        }

        public final int getCardinalityValue() {
            return this._builder.getCardinalityValue();
        }

        @NotNull
        public final String getDefaultValue() {
            String defaultValue = this._builder.getDefaultValue();
            Intrinsics.checkNotNullExpressionValue(defaultValue, "_builder.getDefaultValue()");
            return defaultValue;
        }

        @NotNull
        public final String getJsonName() {
            String jsonName = this._builder.getJsonName();
            Intrinsics.checkNotNullExpressionValue(jsonName, "_builder.getJsonName()");
            return jsonName;
        }

        @NotNull
        public final Field.Kind getKind() {
            Field.Kind kind = this._builder.getKind();
            Intrinsics.checkNotNullExpressionValue(kind, "_builder.getKind()");
            return kind;
        }

        public final int getKindValue() {
            return this._builder.getKindValue();
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "_builder.getName()");
            return name;
        }

        public final int getNumber() {
            return this._builder.getNumber();
        }

        public final int getOneofIndex() {
            return this._builder.getOneofIndex();
        }

        public final /* synthetic */ DslList getOptions() {
            List<Option> optionsList = this._builder.getOptionsList();
            Intrinsics.checkNotNullExpressionValue(optionsList, "_builder.getOptionsList()");
            return new DslList(optionsList);
        }

        public final boolean getPacked() {
            return this._builder.getPacked();
        }

        @NotNull
        public final String getTypeUrl() {
            String typeUrl = this._builder.getTypeUrl();
            Intrinsics.checkNotNullExpressionValue(typeUrl, "_builder.getTypeUrl()");
            return typeUrl;
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList<Option, OptionsProxy> dslList, Iterable<Option> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void plusAssignOptions(DslList<Option, OptionsProxy> dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addOptions(dslList, value);
        }

        public final void setCardinality(@NotNull Field.Cardinality value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCardinality(value);
        }

        public final void setCardinalityValue(int i10) {
            this._builder.setCardinalityValue(i10);
        }

        public final void setDefaultValue(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDefaultValue(value);
        }

        public final void setJsonName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setJsonName(value);
        }

        public final void setKind(@NotNull Field.Kind value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setKind(value);
        }

        public final void setKindValue(int i10) {
            this._builder.setKindValue(i10);
        }

        public final void setName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }

        public final void setNumber(int i10) {
            this._builder.setNumber(i10);
        }

        public final void setOneofIndex(int i10) {
            this._builder.setOneofIndex(i10);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i10, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOptions(i10, value);
        }

        public final void setPacked(boolean z10) {
            this._builder.setPacked(z10);
        }

        public final void setTypeUrl(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTypeUrl(value);
        }

        private Dsl(Field.Builder builder) {
            this._builder = builder;
        }
    }

    private FieldKt() {
    }
}
