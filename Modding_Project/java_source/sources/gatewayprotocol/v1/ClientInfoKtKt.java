package gatewayprotocol.v1;

import gatewayprotocol.v1.ClientInfoKt;
import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClientInfoKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nClientInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientInfoKt.kt\ngatewayprotocol/v1/ClientInfoKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,490:1\n1#2:491\n*E\n"})
/* loaded from: classes7.dex */
public final class ClientInfoKtKt {
    @NotNull
    /* renamed from: -initializeclientInfo  reason: not valid java name */
    public static final ClientInfoOuterClass.ClientInfo m4866initializeclientInfo(@NotNull Function1<? super ClientInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ClientInfoKt.Dsl.Companion companion = ClientInfoKt.Dsl.Companion;
        ClientInfoOuterClass.ClientInfo.Builder newBuilder = ClientInfoOuterClass.ClientInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        ClientInfoKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final ClientInfoOuterClass.ClientInfo copy(@NotNull ClientInfoOuterClass.ClientInfo clientInfo, @NotNull Function1<? super ClientInfoKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(clientInfo, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ClientInfoKt.Dsl.Companion companion = ClientInfoKt.Dsl.Companion;
        ClientInfoOuterClass.ClientInfo.Builder builder = clientInfo.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        ClientInfoKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
