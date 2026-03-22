package gatewayprotocol.v1;

import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestPolicyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RequestPolicyKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRequestPolicyKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestPolicyKt.kt\ngatewayprotocol/v1/RequestPolicyKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"})
/* loaded from: classes7.dex */
public final class RequestPolicyKtKt {
    @NotNull
    /* renamed from: -initializerequestPolicy  reason: not valid java name */
    public static final NativeConfigurationOuterClass.RequestPolicy m4896initializerequestPolicy(@NotNull Function1<? super RequestPolicyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RequestPolicyKt.Dsl.Companion companion = RequestPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestPolicy.Builder newBuilder = NativeConfigurationOuterClass.RequestPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        RequestPolicyKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NativeConfigurationOuterClass.RequestPolicy copy(@NotNull NativeConfigurationOuterClass.RequestPolicy requestPolicy, @NotNull Function1<? super RequestPolicyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(requestPolicy, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        RequestPolicyKt.Dsl.Companion companion = RequestPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestPolicy.Builder builder = requestPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        RequestPolicyKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final NativeConfigurationOuterClass.RequestRetryPolicy getRetryPolicyOrNull(@NotNull NativeConfigurationOuterClass.RequestPolicyOrBuilder requestPolicyOrBuilder) {
        Intrinsics.checkNotNullParameter(requestPolicyOrBuilder, "<this>");
        if (requestPolicyOrBuilder.hasRetryPolicy()) {
            return requestPolicyOrBuilder.getRetryPolicy();
        }
        return null;
    }

    @Nullable
    public static final NativeConfigurationOuterClass.RequestTimeoutPolicy getTimeoutPolicyOrNull(@NotNull NativeConfigurationOuterClass.RequestPolicyOrBuilder requestPolicyOrBuilder) {
        Intrinsics.checkNotNullParameter(requestPolicyOrBuilder, "<this>");
        if (requestPolicyOrBuilder.hasTimeoutPolicy()) {
            return requestPolicyOrBuilder.getTimeoutPolicy();
        }
        return null;
    }
}
