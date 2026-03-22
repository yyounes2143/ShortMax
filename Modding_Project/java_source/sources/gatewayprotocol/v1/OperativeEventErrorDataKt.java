package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: OperativeEventErrorDataKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OperativeEventErrorDataKt {
    @NotNull
    public static final OperativeEventErrorDataKt INSTANCE = new OperativeEventErrorDataKt();

    /* compiled from: OperativeEventErrorDataKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final OperativeEventRequestOuterClass.OperativeEventErrorData.Builder _builder;

        /* compiled from: OperativeEventErrorDataKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ OperativeEventRequestOuterClass.OperativeEventErrorData _build() {
            OperativeEventRequestOuterClass.OperativeEventErrorData build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearErrorType() {
            this._builder.clearErrorType();
        }

        public final void clearMessage() {
            this._builder.clearMessage();
        }

        @NotNull
        public final OperativeEventRequestOuterClass.OperativeEventErrorType getErrorType() {
            OperativeEventRequestOuterClass.OperativeEventErrorType errorType = this._builder.getErrorType();
            Intrinsics.checkNotNullExpressionValue(errorType, "_builder.getErrorType()");
            return errorType;
        }

        public final int getErrorTypeValue() {
            return this._builder.getErrorTypeValue();
        }

        @NotNull
        public final String getMessage() {
            String message = this._builder.getMessage();
            Intrinsics.checkNotNullExpressionValue(message, "_builder.getMessage()");
            return message;
        }

        public final void setErrorType(@NotNull OperativeEventRequestOuterClass.OperativeEventErrorType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setErrorType(value);
        }

        public final void setErrorTypeValue(int i10) {
            this._builder.setErrorTypeValue(i10);
        }

        public final void setMessage(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMessage(value);
        }

        private Dsl(OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builder) {
            this._builder = builder;
        }
    }

    private OperativeEventErrorDataKt() {
    }
}
