package gatewayprotocol.v1;

import gatewayprotocol.v1.NetworkCapabilityTransportsKt;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: NetworkCapabilityTransportsKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNetworkCapabilityTransportsKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkCapabilityTransportsKt.kt\ngatewayprotocol/v1/NetworkCapabilityTransportsKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n1#2:279\n*E\n"})
/* loaded from: classes7.dex */
public final class NetworkCapabilityTransportsKtKt {
    @NotNull
    /* renamed from: -initializenetworkCapabilityTransports  reason: not valid java name */
    public static final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports m4889initializenetworkCapabilityTransports(@NotNull Function1<? super NetworkCapabilityTransportsKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        NetworkCapabilityTransportsKt.Dsl.Companion companion = NetworkCapabilityTransportsKt.Dsl.Companion;
        NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.Builder newBuilder = NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        NetworkCapabilityTransportsKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports copy(@NotNull NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransports, @NotNull Function1<? super NetworkCapabilityTransportsKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(networkCapabilityTransports, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        NetworkCapabilityTransportsKt.Dsl.Companion companion = NetworkCapabilityTransportsKt.Dsl.Companion;
        NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports.Builder builder = networkCapabilityTransports.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        NetworkCapabilityTransportsKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
