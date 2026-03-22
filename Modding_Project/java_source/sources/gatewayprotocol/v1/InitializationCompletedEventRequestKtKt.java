package gatewayprotocol.v1;

import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.InitializationCompletedEventRequestKt;
import gatewayprotocol.v1.InitializationCompletedEventRequestOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InitializationCompletedEventRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInitializationCompletedEventRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializationCompletedEventRequestKt.kt\ngatewayprotocol/v1/InitializationCompletedEventRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializationCompletedEventRequestKtKt {
    @NotNull
    /* renamed from: -initializeinitializationCompletedEventRequest  reason: not valid java name */
    public static final InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest m4881initializeinitializationCompletedEventRequest(@NotNull Function1<? super InitializationCompletedEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationCompletedEventRequestKt.Dsl.Companion companion = InitializationCompletedEventRequestKt.Dsl.Companion;
        InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.Builder newBuilder = InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        InitializationCompletedEventRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest copy(@NotNull InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest initializationCompletedEventRequest, @NotNull Function1<? super InitializationCompletedEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(initializationCompletedEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationCompletedEventRequestKt.Dsl.Companion companion = InitializationCompletedEventRequestKt.Dsl.Companion;
        InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest.Builder builder = initializationCompletedEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        InitializationCompletedEventRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(@NotNull InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequestOrBuilder initializationCompletedEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationCompletedEventRequestOrBuilder, "<this>");
        if (initializationCompletedEventRequestOrBuilder.hasDynamicDeviceInfo()) {
            return initializationCompletedEventRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    @Nullable
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(@NotNull InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequestOrBuilder initializationCompletedEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationCompletedEventRequestOrBuilder, "<this>");
        if (initializationCompletedEventRequestOrBuilder.hasStaticDeviceInfo()) {
            return initializationCompletedEventRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }
}
