package gatewayprotocol.v1;

import gatewayprotocol.v1.InitializationDeviceInfoKt;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: InitializationDeviceInfoKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInitializationDeviceInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializationDeviceInfoKt.kt\ngatewayprotocol/v1/InitializationDeviceInfoKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,318:1\n1#2:319\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializationDeviceInfoKtKt {
    @NotNull
    /* renamed from: -initializeinitializationDeviceInfo  reason: not valid java name */
    public static final InitializationRequestOuterClass.InitializationDeviceInfo m4883initializeinitializationDeviceInfo(@NotNull Function1<? super InitializationDeviceInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationDeviceInfoKt.Dsl.Companion companion = InitializationDeviceInfoKt.Dsl.Companion;
        InitializationRequestOuterClass.InitializationDeviceInfo.Builder newBuilder = InitializationRequestOuterClass.InitializationDeviceInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        InitializationDeviceInfoKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final InitializationRequestOuterClass.InitializationDeviceInfo copy(@NotNull InitializationRequestOuterClass.InitializationDeviceInfo initializationDeviceInfo, @NotNull Function1<? super InitializationDeviceInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(initializationDeviceInfo, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationDeviceInfoKt.Dsl.Companion companion = InitializationDeviceInfoKt.Dsl.Companion;
        InitializationRequestOuterClass.InitializationDeviceInfo.Builder builder = initializationDeviceInfo.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        InitializationDeviceInfoKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
