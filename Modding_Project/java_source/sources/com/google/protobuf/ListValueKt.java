package com.google.protobuf;

import com.google.protobuf.ListValue;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListValueKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class ListValueKt {
    @NotNull
    public static final ListValueKt INSTANCE = new ListValueKt();

    /* compiled from: ListValueKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final ListValue.Builder _builder;

        /* compiled from: ListValueKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(ListValue.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: ListValueKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class ValuesProxy extends DslProxy {
            private ValuesProxy() {
            }
        }

        public /* synthetic */ Dsl(ListValue.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ ListValue _build() {
            ListValue build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllValues(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllValues(values);
        }

        public final /* synthetic */ void addValues(DslList dslList, Value value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addValues(value);
        }

        public final /* synthetic */ void clearValues(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearValues();
        }

        public final /* synthetic */ DslList getValues() {
            List<Value> valuesList = this._builder.getValuesList();
            Intrinsics.checkNotNullExpressionValue(valuesList, "_builder.getValuesList()");
            return new DslList(valuesList);
        }

        public final /* synthetic */ void plusAssignAllValues(DslList<Value, ValuesProxy> dslList, Iterable<Value> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllValues(dslList, values);
        }

        public final /* synthetic */ void plusAssignValues(DslList<Value, ValuesProxy> dslList, Value value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addValues(dslList, value);
        }

        public final /* synthetic */ void setValues(DslList dslList, int i10, Value value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setValues(i10, value);
        }

        private Dsl(ListValue.Builder builder) {
            this._builder = builder;
        }
    }

    private ListValueKt() {
    }
}
