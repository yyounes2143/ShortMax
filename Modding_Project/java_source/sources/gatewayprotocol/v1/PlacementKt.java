package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlacementKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PlacementKt {
    @NotNull
    public static final PlacementKt INSTANCE = new PlacementKt();

    /* compiled from: PlacementKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final InitializationResponseOuterClass.Placement.Builder _builder;

        /* compiled from: PlacementKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(InitializationResponseOuterClass.Placement.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(InitializationResponseOuterClass.Placement.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ InitializationResponseOuterClass.Placement _build() {
            InitializationResponseOuterClass.Placement build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearAdFormat() {
            this._builder.clearAdFormat();
        }

        @NotNull
        public final InitializationResponseOuterClass.AdFormat getAdFormat() {
            InitializationResponseOuterClass.AdFormat adFormat = this._builder.getAdFormat();
            Intrinsics.checkNotNullExpressionValue(adFormat, "_builder.getAdFormat()");
            return adFormat;
        }

        public final int getAdFormatValue() {
            return this._builder.getAdFormatValue();
        }

        public final void setAdFormat(@NotNull InitializationResponseOuterClass.AdFormat value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdFormat(value);
        }

        public final void setAdFormatValue(int i10) {
            this._builder.setAdFormatValue(i10);
        }

        private Dsl(InitializationResponseOuterClass.Placement.Builder builder) {
            this._builder = builder;
        }
    }

    private PlacementKt() {
    }
}
