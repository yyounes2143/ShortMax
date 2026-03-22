package com.google.protobuf;

import com.google.protobuf.Struct;
import com.google.protobuf.kotlin.DslMap;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StructKt.kt */
@Metadata
/* loaded from: classes5.dex */
public final class StructKt {
    @NotNull
    public static final StructKt INSTANCE = new StructKt();

    /* compiled from: StructKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes5.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final Struct.Builder _builder;

        /* compiled from: StructKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(Struct.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: StructKt.kt */
        @Metadata
        /* loaded from: classes5.dex */
        public static final class FieldsProxy extends DslProxy {
            private FieldsProxy() {
            }
        }

        public /* synthetic */ Dsl(Struct.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ Struct _build() {
            Struct build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void clearFields(DslMap dslMap) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            this._builder.clearFields();
        }

        public final /* synthetic */ DslMap getFieldsMap() {
            Map<String, Value> fieldsMap = this._builder.getFieldsMap();
            Intrinsics.checkNotNullExpressionValue(fieldsMap, "_builder.getFieldsMap()");
            return new DslMap(fieldsMap);
        }

        public final /* synthetic */ void putAllFields(DslMap dslMap, Map map) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            this._builder.putAllFields(map);
        }

        public final void putFields(@NotNull DslMap<String, Value, FieldsProxy> dslMap, @NotNull String key, @NotNull Value value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.putFields(key, value);
        }

        public final /* synthetic */ void removeFields(DslMap dslMap, String key) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            this._builder.removeFields(key);
        }

        public final /* synthetic */ void setFields(DslMap<String, Value, FieldsProxy> dslMap, String key, Value value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            putFields(dslMap, key, value);
        }

        private Dsl(Struct.Builder builder) {
            this._builder = builder;
        }
    }

    private StructKt() {
    }
}
