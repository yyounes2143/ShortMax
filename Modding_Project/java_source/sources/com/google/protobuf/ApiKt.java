package com.google.protobuf;

import com.google.protobuf.Api;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ApiKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class ApiKt {
    @NotNull
    public static final ApiKt INSTANCE = new ApiKt();

    /* compiled from: ApiKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Api.Builder _builder;

        /* compiled from: ApiKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Api.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: ApiKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class MethodsProxy extends DslProxy {
            private MethodsProxy() {
            }
        }

        /* compiled from: ApiKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class MixinsProxy extends DslProxy {
            private MixinsProxy() {
            }
        }

        /* compiled from: ApiKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public /* synthetic */ Dsl(Api.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Api _build() {
            Api build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllMethods(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllMethods(values);
        }

        public final /* synthetic */ void addAllMixins(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllMixins(values);
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void addMethods(DslList dslList, Method value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addMethods(value);
        }

        public final /* synthetic */ void addMixins(DslList dslList, Mixin value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addMixins(value);
        }

        public final /* synthetic */ void addOptions(DslList dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addOptions(value);
        }

        public final /* synthetic */ void clearMethods(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearMethods();
        }

        public final /* synthetic */ void clearMixins(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearMixins();
        }

        public final void clearName() {
            this._builder.clearName();
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

        public final void clearVersion() {
            this._builder.clearVersion();
        }

        public final /* synthetic */ DslList getMethods() {
            List<Method> methodsList = this._builder.getMethodsList();
            Intrinsics.checkNotNullExpressionValue(methodsList, "_builder.getMethodsList()");
            return new DslList(methodsList);
        }

        public final /* synthetic */ DslList getMixins() {
            List<Mixin> mixinsList = this._builder.getMixinsList();
            Intrinsics.checkNotNullExpressionValue(mixinsList, "_builder.getMixinsList()");
            return new DslList(mixinsList);
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "_builder.getName()");
            return name;
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

        @NotNull
        public final String getVersion() {
            String version = this._builder.getVersion();
            Intrinsics.checkNotNullExpressionValue(version, "_builder.getVersion()");
            return version;
        }

        public final boolean hasSourceContext() {
            return this._builder.hasSourceContext();
        }

        public final /* synthetic */ void plusAssignAllMethods(DslList<Method, MethodsProxy> dslList, Iterable<Method> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllMethods(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllMixins(DslList<Mixin, MixinsProxy> dslList, Iterable<Mixin> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllMixins(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList<Option, OptionsProxy> dslList, Iterable<Option> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void plusAssignMethods(DslList<Method, MethodsProxy> dslList, Method value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addMethods(dslList, value);
        }

        public final /* synthetic */ void plusAssignMixins(DslList<Mixin, MixinsProxy> dslList, Mixin value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addMixins(dslList, value);
        }

        public final /* synthetic */ void plusAssignOptions(DslList<Option, OptionsProxy> dslList, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addOptions(dslList, value);
        }

        public final /* synthetic */ void setMethods(DslList dslList, int i10, Method value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMethods(i10, value);
        }

        public final /* synthetic */ void setMixins(DslList dslList, int i10, Mixin value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMixins(i10, value);
        }

        public final void setName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
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

        public final void setVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setVersion(value);
        }

        private Dsl(Api.Builder builder) {
            this._builder = builder;
        }
    }

    private ApiKt() {
    }
}
