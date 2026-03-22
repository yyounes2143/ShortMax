package gatewayprotocol.v1;

import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.InitializationRequestKt;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InitializationRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInitializationRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializationRequestKt.kt\ngatewayprotocol/v1/InitializationRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,450:1\n1#2:451\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializationRequestKtKt {
    @NotNull
    /* renamed from: -initializeinitializationRequest  reason: not valid java name */
    public static final InitializationRequestOuterClass.InitializationRequest m4884initializeinitializationRequest(@NotNull Function1<? super InitializationRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationRequestKt.Dsl.Companion companion = InitializationRequestKt.Dsl.Companion;
        InitializationRequestOuterClass.InitializationRequest.Builder newBuilder = InitializationRequestOuterClass.InitializationRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        InitializationRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final InitializationRequestOuterClass.InitializationRequest copy(@NotNull InitializationRequestOuterClass.InitializationRequest initializationRequest, @NotNull Function1<? super InitializationRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(initializationRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationRequestKt.Dsl.Companion companion = InitializationRequestKt.Dsl.Companion;
        InitializationRequestOuterClass.InitializationRequest.Builder builder = initializationRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        InitializationRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final ClientInfoOuterClass.ClientInfo getClientInfoOrNull(@NotNull InitializationRequestOuterClass.InitializationRequestOrBuilder initializationRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationRequestOrBuilder, "<this>");
        if (initializationRequestOrBuilder.hasClientInfo()) {
            return initializationRequestOrBuilder.getClientInfo();
        }
        return null;
    }

    @Nullable
    public static final InitializationRequestOuterClass.InitializationDeviceInfo getDeviceInfoOrNull(@NotNull InitializationRequestOuterClass.InitializationRequestOrBuilder initializationRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationRequestOrBuilder, "<this>");
        if (initializationRequestOrBuilder.hasDeviceInfo()) {
            return initializationRequestOrBuilder.getDeviceInfo();
        }
        return null;
    }
}
