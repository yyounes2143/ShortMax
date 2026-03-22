package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.InitializationDataOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InitializationDataKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InitializationDataKt {
    @NotNull
    public static final InitializationDataKt INSTANCE = new InitializationDataKt();

    /* compiled from: InitializationDataKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final InitializationDataOuterClass.InitializationData.Builder _builder;

        /* compiled from: InitializationDataKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(InitializationDataOuterClass.InitializationData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(InitializationDataOuterClass.InitializationData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ InitializationDataOuterClass.InitializationData _build() {
            InitializationDataOuterClass.InitializationData build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearInitializationRequest() {
            this._builder.clearInitializationRequest();
        }

        public final void clearSharedData() {
            this._builder.clearSharedData();
        }

        @NotNull
        public final InitializationRequestOuterClass.InitializationRequest getInitializationRequest() {
            InitializationRequestOuterClass.InitializationRequest initializationRequest = this._builder.getInitializationRequest();
            Intrinsics.checkNotNullExpressionValue(initializationRequest, "_builder.getInitializationRequest()");
            return initializationRequest;
        }

        @Nullable
        public final InitializationRequestOuterClass.InitializationRequest getInitializationRequestOrNull(@NotNull Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return InitializationDataKtKt.getInitializationRequestOrNull(dsl._builder);
        }

        @NotNull
        public final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedData() {
            UniversalRequestOuterClass.UniversalRequest.SharedData sharedData = this._builder.getSharedData();
            Intrinsics.checkNotNullExpressionValue(sharedData, "_builder.getSharedData()");
            return sharedData;
        }

        @Nullable
        public final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedDataOrNull(@NotNull Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return InitializationDataKtKt.getSharedDataOrNull(dsl._builder);
        }

        public final boolean hasInitializationRequest() {
            return this._builder.hasInitializationRequest();
        }

        public final boolean hasSharedData() {
            return this._builder.hasSharedData();
        }

        public final void setInitializationRequest(@NotNull InitializationRequestOuterClass.InitializationRequest value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setInitializationRequest(value);
        }

        public final void setSharedData(@NotNull UniversalRequestOuterClass.UniversalRequest.SharedData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSharedData(value);
        }

        private Dsl(InitializationDataOuterClass.InitializationData.Builder builder) {
            this._builder = builder;
        }
    }

    private InitializationDataKt() {
    }
}
