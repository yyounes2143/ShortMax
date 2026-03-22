package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RequestPolicyKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RequestPolicyKt {
    @NotNull
    public static final RequestPolicyKt INSTANCE = new RequestPolicyKt();

    /* compiled from: RequestPolicyKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final NativeConfigurationOuterClass.RequestPolicy.Builder _builder;

        /* compiled from: RequestPolicyKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.RequestPolicy.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.RequestPolicy.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ NativeConfigurationOuterClass.RequestPolicy _build() {
            NativeConfigurationOuterClass.RequestPolicy build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearRetryPolicy() {
            this._builder.clearRetryPolicy();
        }

        public final void clearTimeoutPolicy() {
            this._builder.clearTimeoutPolicy();
        }

        @NotNull
        public final NativeConfigurationOuterClass.RequestRetryPolicy getRetryPolicy() {
            NativeConfigurationOuterClass.RequestRetryPolicy retryPolicy = this._builder.getRetryPolicy();
            Intrinsics.checkNotNullExpressionValue(retryPolicy, "_builder.getRetryPolicy()");
            return retryPolicy;
        }

        @NotNull
        public final NativeConfigurationOuterClass.RequestTimeoutPolicy getTimeoutPolicy() {
            NativeConfigurationOuterClass.RequestTimeoutPolicy timeoutPolicy = this._builder.getTimeoutPolicy();
            Intrinsics.checkNotNullExpressionValue(timeoutPolicy, "_builder.getTimeoutPolicy()");
            return timeoutPolicy;
        }

        public final boolean hasRetryPolicy() {
            return this._builder.hasRetryPolicy();
        }

        public final boolean hasTimeoutPolicy() {
            return this._builder.hasTimeoutPolicy();
        }

        public final void setRetryPolicy(@NotNull NativeConfigurationOuterClass.RequestRetryPolicy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setRetryPolicy(value);
        }

        public final void setTimeoutPolicy(@NotNull NativeConfigurationOuterClass.RequestTimeoutPolicy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTimeoutPolicy(value);
        }

        private Dsl(NativeConfigurationOuterClass.RequestPolicy.Builder builder) {
            this._builder = builder;
        }
    }

    private RequestPolicyKt() {
    }
}
