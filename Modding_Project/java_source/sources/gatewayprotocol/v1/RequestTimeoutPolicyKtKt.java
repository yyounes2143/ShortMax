package gatewayprotocol.v1;

import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.RequestTimeoutPolicyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: RequestTimeoutPolicyKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRequestTimeoutPolicyKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestTimeoutPolicyKt.kt\ngatewayprotocol/v1/RequestTimeoutPolicyKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"})
/* loaded from: classes7.dex */
public final class RequestTimeoutPolicyKtKt {
    @NotNull
    /* renamed from: -initializerequestTimeoutPolicy  reason: not valid java name */
    public static final NativeConfigurationOuterClass.RequestTimeoutPolicy m4898initializerequestTimeoutPolicy(@NotNull Function1<? super RequestTimeoutPolicyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RequestTimeoutPolicyKt.Dsl.Companion companion = RequestTimeoutPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestTimeoutPolicy.Builder newBuilder = NativeConfigurationOuterClass.RequestTimeoutPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        RequestTimeoutPolicyKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NativeConfigurationOuterClass.RequestTimeoutPolicy copy(@NotNull NativeConfigurationOuterClass.RequestTimeoutPolicy requestTimeoutPolicy, @NotNull Function1<? super RequestTimeoutPolicyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(requestTimeoutPolicy, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        RequestTimeoutPolicyKt.Dsl.Companion companion = RequestTimeoutPolicyKt.Dsl.Companion;
        NativeConfigurationOuterClass.RequestTimeoutPolicy.Builder builder = requestTimeoutPolicy.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        RequestTimeoutPolicyKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
