package gatewayprotocol.v1;

import gatewayprotocol.v1.InitializationDataKt;
import gatewayprotocol.v1.InitializationDataOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InitializationDataKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInitializationDataKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializationDataKt.kt\ngatewayprotocol/v1/InitializationDataKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializationDataKtKt {
    @NotNull
    /* renamed from: -initializeinitializationData  reason: not valid java name */
    public static final InitializationDataOuterClass.InitializationData m4882initializeinitializationData(@NotNull Function1<? super InitializationDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationDataKt.Dsl.Companion companion = InitializationDataKt.Dsl.Companion;
        InitializationDataOuterClass.InitializationData.Builder newBuilder = InitializationDataOuterClass.InitializationData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        InitializationDataKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final InitializationDataOuterClass.InitializationData copy(@NotNull InitializationDataOuterClass.InitializationData initializationData, @NotNull Function1<? super InitializationDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(initializationData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationDataKt.Dsl.Companion companion = InitializationDataKt.Dsl.Companion;
        InitializationDataOuterClass.InitializationData.Builder builder = initializationData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        InitializationDataKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final InitializationRequestOuterClass.InitializationRequest getInitializationRequestOrNull(@NotNull InitializationDataOuterClass.InitializationDataOrBuilder initializationDataOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationDataOrBuilder, "<this>");
        if (initializationDataOrBuilder.hasInitializationRequest()) {
            return initializationDataOrBuilder.getInitializationRequest();
        }
        return null;
    }

    @Nullable
    public static final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedDataOrNull(@NotNull InitializationDataOuterClass.InitializationDataOrBuilder initializationDataOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationDataOrBuilder, "<this>");
        if (initializationDataOrBuilder.hasSharedData()) {
            return initializationDataOrBuilder.getSharedData();
        }
        return null;
    }
}
