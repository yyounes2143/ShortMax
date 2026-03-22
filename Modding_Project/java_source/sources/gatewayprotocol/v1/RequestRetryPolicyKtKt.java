package gatewayprotocol.v1;

import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestRetryPolicyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: RequestRetryPolicyKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRequestRetryPolicyKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestRetryPolicyKt.kt\ngatewayprotocol/v1/RequestRetryPolicyKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"})
/* loaded from: classes7.dex */
public final class RequestRetryPolicyKtKt {
    @NotNull
    /* renamed from: -initializerequestRetryPolicy  reason: not valid java name */
    public static final NativeConfigurationOuterClass.RequestRetryPolicy m4897initializerequestRetryPolicy(@NotNull Function1<? super RequestRetryPolicyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RequestRetryPolicyKt.Dsl.Companion companion = RequestRetryPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestRetryPolicy.Builder newBuilder = NativeConfigurationOuterClass.RequestRetryPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        RequestRetryPolicyKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NativeConfigurationOuterClass.RequestRetryPolicy copy(@NotNull NativeConfigurationOuterClass.RequestRetryPolicy requestRetryPolicy, @NotNull Function1<? super RequestRetryPolicyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(requestRetryPolicy, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        RequestRetryPolicyKt.Dsl.Companion companion = RequestRetryPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestRetryPolicy.Builder builder = requestRetryPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        RequestRetryPolicyKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
