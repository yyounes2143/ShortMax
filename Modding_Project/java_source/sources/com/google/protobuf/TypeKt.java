package com.google.protobuf;

import com.google.protobuf.Type;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TypeKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class TypeKt {
    @NotNull
    public static final TypeKt INSTANCE = new TypeKt();

    /* compiled from: TypeKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Type.Builder _builder;

        /* compiled from: TypeKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Type.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: TypeKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class FieldsProxy extends DslProxy {
            private FieldsProxy() {
            }
        }

        /* compiled from: TypeKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class OneofsProxy extends DslProxy {
            private OneofsProxy() {
            }
        }

        /* compiled from: TypeKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public /* synthetic */ Dsl(Type.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Type _build() {
            Type build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllFields(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllFields(values);
        }

        public final /* synthetic */ void addAllOneofs(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllOneofs(values);
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void addFields(DslList dslList, Field value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addFields(value);
        }

        public final /* synthetic */ void addOneofs(DslList dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addOneofs(value);
        }

        public final /* synthetic */ void addOptions(DslList dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addOptions(value);
        }

        public final void clearEdition() {
            this._builder.clearEdition();
        }

        public final /* synthetic */ void clearFields(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearFields();
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final /* synthetic */ void clearOneofs(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearOneofs();
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final void clearSourceContext() {
            this._builder.clearSourceContext();
        }

        public final void clearSyntax() {
            this._builder.clearSyntax();
        }

        @NotNull
        public final String getEdition() {
            String edition = this._builder.getEdition();
            Intrinsics.checkNotNullExpressionValue(edition, "_builder.getEdition()");
            return edition;
        }

        public final /* synthetic */ DslList getFields() {
            List<Field> fieldsList = this._builder.getFieldsList();
            Intrinsics.checkNotNullExpressionValue(fieldsList, "_builder.getFieldsList()");
            return new DslList(fieldsList);
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "_builder.getName()");
            return name;
        }

        @NotNull
        public final DslList<String, OneofsProxy> getOneofs() {
            List<String> oneofsList = this._builder.getOneofsList();
            Intrinsics.checkNotNullExpressionValue(oneofsList, "_builder.getOneofsList()");
            return new DslList<>(oneofsList);
        }

        public final /* synthetic */ DslList getOptions() {
            List<Option> optionsList = this._builder.getOptionsList();
            Intrinsics.checkNotNullExpressionValue(optionsList, "_builder.getOptionsList()");
            return new DslList(optionsList);
        }

        @NotNull
        public final SourceContext getSourceContext() {
            SourceContext sourceContext = this._builder.getSourceContext();
            Intrinsics.checkNotNullExpressionValue(sourceContext, "_builder.getSourceContext()");
            return sourceContext;
        }

        @NotNull
        public final Syntax getSyntax() {
            Syntax syntax = this._builder.getSyntax();
            Intrinsics.checkNotNullExpressionValue(syntax, "_builder.getSyntax()");
            return syntax;
        }

        public final int getSyntaxValue() {
            return this._builder.getSyntaxValue();
        }

        public final boolean hasSourceContext() {
            return this._builder.hasSourceContext();
        }

        public final /* synthetic */ void plusAssignAllFields(DslList<Field, FieldsProxy> dslList, Iterable<Field> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllFields(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllOneofs(DslList<String, OneofsProxy> dslList, Iterable<String> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllOneofs(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList<Option, OptionsProxy> dslList, Iterable<Option> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void plusAssignFields(DslList<Field, FieldsProxy> dslList, Field value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addFields(dslList, value);
        }

        public final /* synthetic */ void plusAssignOneofs(DslList<String, OneofsProxy> dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addOneofs(dslList, value);
        }

        public final /* synthetic */ void plusAssignOptions(DslList<Option, OptionsProxy> dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addOptions(dslList, value);
        }

        public final void setEdition(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setEdition(value);
        }

        public final /* synthetic */ void setFields(DslList dslList, int i10, Field value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setFields(i10, value);
        }

        public final void setName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }

        public final /* synthetic */ void setOneofs(DslList dslList, int i10, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOneofs(i10, value);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i10, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOptions(i10, value);
        }

        public final void setSourceContext(@NotNull SourceContext value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSourceContext(value);
        }

        public final void setSyntax(@NotNull Syntax value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSyntax(value);
        }

        public final void setSyntaxValue(int i10) {
            this._builder.setSyntaxValue(i10);
        }

        private Dsl(Type.Builder builder) {
            this._builder = builder;
        }
    }

    private TypeKt() {
    }
}
