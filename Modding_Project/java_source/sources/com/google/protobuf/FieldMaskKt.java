package com.google.protobuf;

import com.google.protobuf.FieldMask;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FieldMaskKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class FieldMaskKt {
    @NotNull
    public static final FieldMaskKt INSTANCE = new FieldMaskKt();

    /* compiled from: FieldMaskKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final FieldMask.Builder _builder;

        /* compiled from: FieldMaskKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(FieldMask.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: FieldMaskKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class PathsProxy extends DslProxy {
            private PathsProxy() {
            }
        }

        public /* synthetic */ Dsl(FieldMask.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ FieldMask _build() {
            FieldMask build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllPaths(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllPaths(values);
        }

        public final /* synthetic */ void addPaths(DslList dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addPaths(value);
        }

        public final /* synthetic */ void clearPaths(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearPaths();
        }

        @NotNull
        public final DslList<String, PathsProxy> getPaths() {
            List<String> pathsList = this._builder.getPathsList();
            Intrinsics.checkNotNullExpressionValue(pathsList, "_builder.getPathsList()");
            return new DslList<>(pathsList);
        }

        public final /* synthetic */ void plusAssignAllPaths(DslList<String, PathsProxy> dslList, Iterable<String> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllPaths(dslList, values);
        }

        public final /* synthetic */ void plusAssignPaths(DslList<String, PathsProxy> dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addPaths(dslList, value);
        }

        public final /* synthetic */ void setPaths(DslList dslList, int i10, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPaths(i10, value);
        }

        private Dsl(FieldMask.Builder builder) {
            this._builder = builder;
        }
    }

    private FieldMaskKt() {
    }
}
