package com.google.protobuf;

import com.google.protobuf.Method;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MethodKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class MethodKt {
    @NotNull
    public static final MethodKt INSTANCE = new MethodKt();

    /* compiled from: MethodKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Method.Builder _builder;

        /* compiled from: MethodKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Method.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: MethodKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        public /* synthetic */ Dsl(Method.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Method _build() {
            Method build = this._builder.build();
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

        public final void clearName() {
            this._builder.clearName();
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final void clearRequestStreaming() {
            this._builder.clearRequestStreaming();
        }

        public final void clearRequestTypeUrl() {
            this._builder.clearRequestTypeUrl();
        }

        public final void clearResponseStreaming() {
            this._builder.clearResponseStreaming();
        }

        public final void clearResponseTypeUrl() {
            this._builder.clearResponseTypeUrl();
        }

        public final void clearSyntax() {
            this._builder.clearSyntax();
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

        public final boolean getRequestStreaming() {
            return this._builder.getRequestStreaming();
        }

        @NotNull
        public final String getRequestTypeUrl() {
            String requestTypeUrl = this._builder.getRequestTypeUrl();
            Intrinsics.checkNotNullExpressionValue(requestTypeUrl, "_builder.getRequestTypeUrl()");
            return requestTypeUrl;
        }

        public final boolean getResponseStreaming() {
            return this._builder.getResponseStreaming();
        }

        @NotNull
        public final String getResponseTypeUrl() {
            String responseTypeUrl = this._builder.getResponseTypeUrl();
            Intrinsics.checkNotNullExpressionValue(responseTypeUrl, "_builder.getResponseTypeUrl()");
            return responseTypeUrl;
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

        public final void setName(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i10, Option value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOptions(i10, value);
        }

        public final void setRequestStreaming(boolean z10) {
            this._builder.setRequestStreaming(z10);
        }

        public final void setRequestTypeUrl(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setRequestTypeUrl(value);
        }

        public final void setResponseStreaming(boolean z10) {
            this._builder.setResponseStreaming(z10);
        }

        public final void setResponseTypeUrl(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setResponseTypeUrl(value);
        }

        public final void setSyntax(@NotNull Syntax value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSyntax(value);
        }

        public final void setSyntaxValue(int i10) {
            this._builder.setSyntaxValue(i10);
        }

        private Dsl(Method.Builder builder) {
            this._builder = builder;
        }
    }

    private MethodKt() {
    }
}
