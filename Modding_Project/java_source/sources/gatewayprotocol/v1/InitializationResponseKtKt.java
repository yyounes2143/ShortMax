package gatewayprotocol.v1;

import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.InitializationResponseKt;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InitializationResponseKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInitializationResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializationResponseKt.kt\ngatewayprotocol/v1/InitializationResponseKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,378:1\n1#2:379\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializationResponseKtKt {
    @NotNull
    /* renamed from: -initializeinitializationResponse  reason: not valid java name */
    public static final InitializationResponseOuterClass.InitializationResponse m4885initializeinitializationResponse(@NotNull Function1<? super InitializationResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationResponseKt.Dsl.Companion companion = InitializationResponseKt.Dsl.Companion;
        InitializationResponseOuterClass.InitializationResponse.Builder newBuilder = InitializationResponseOuterClass.InitializationResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        InitializationResponseKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final InitializationResponseOuterClass.InitializationResponse copy(@NotNull InitializationResponseOuterClass.InitializationResponse initializationResponse, @NotNull Function1<? super InitializationResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(initializationResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        InitializationResponseKt.Dsl.Companion companion = InitializationResponseKt.Dsl.Companion;
        InitializationResponseOuterClass.InitializationResponse.Builder builder = initializationResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        InitializationResponseKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final ErrorOuterClass.Error getErrorOrNull(@NotNull InitializationResponseOuterClass.InitializationResponseOrBuilder initializationResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationResponseOrBuilder, "<this>");
        if (initializationResponseOrBuilder.hasError()) {
            return initializationResponseOrBuilder.getError();
        }
        return null;
    }

    @Nullable
    public static final NativeConfigurationOuterClass.NativeConfiguration getNativeConfigurationOrNull(@NotNull InitializationResponseOuterClass.InitializationResponseOrBuilder initializationResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(initializationResponseOrBuilder, "<this>");
        if (initializationResponseOrBuilder.hasNativeConfiguration()) {
            return initializationResponseOrBuilder.getNativeConfiguration();
        }
        return null;
    }
}
