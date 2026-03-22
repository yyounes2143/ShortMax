package com.unity3d.ads.datastore;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ByteStringStoreKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ByteStringStoreKt {
    @NotNull
    public static final ByteStringStoreKt INSTANCE = new ByteStringStoreKt();

    /* compiled from: ByteStringStoreKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final ByteStringStoreOuterClass.ByteStringStore.Builder _builder;

        /* compiled from: ByteStringStoreKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(ByteStringStoreOuterClass.ByteStringStore.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(ByteStringStoreOuterClass.ByteStringStore.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ ByteStringStoreOuterClass.ByteStringStore _build() {
            ByteStringStoreOuterClass.ByteStringStore build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearData() {
            this._builder.clearData();
        }

        @NotNull
        public final ByteString getData() {
            ByteString data = this._builder.getData();
            Intrinsics.checkNotNullExpressionValue(data, "_builder.getData()");
            return data;
        }

        public final void setData(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setData(value);
        }

        private Dsl(ByteStringStoreOuterClass.ByteStringStore.Builder builder) {
            this._builder = builder;
        }
    }

    private ByteStringStoreKt() {
    }
}
