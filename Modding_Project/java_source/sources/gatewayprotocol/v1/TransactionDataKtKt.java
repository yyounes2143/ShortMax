package gatewayprotocol.v1;

import com.google.protobuf.Timestamp;
import gatewayprotocol.v1.TransactionDataKt;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TransactionDataKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTransactionDataKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionDataKt.kt\ngatewayprotocol/v1/TransactionDataKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n1#2:231\n*E\n"})
/* loaded from: classes7.dex */
public final class TransactionDataKtKt {
    @NotNull
    /* renamed from: -initializetransactionData  reason: not valid java name */
    public static final TransactionEventRequestOuterClass.TransactionData m4906initializetransactionData(@NotNull Function1<? super TransactionDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        TransactionDataKt.Dsl.Companion companion = TransactionDataKt.Dsl.Companion;
        TransactionEventRequestOuterClass.TransactionData.Builder newBuilder = TransactionEventRequestOuterClass.TransactionData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        TransactionDataKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final TransactionEventRequestOuterClass.TransactionData copy(@NotNull TransactionEventRequestOuterClass.TransactionData transactionData, @NotNull Function1<? super TransactionDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(transactionData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        TransactionDataKt.Dsl.Companion companion = TransactionDataKt.Dsl.Companion;
        TransactionEventRequestOuterClass.TransactionData.Builder builder = transactionData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        TransactionDataKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final Timestamp getTimestampOrNull(@NotNull TransactionEventRequestOuterClass.TransactionDataOrBuilder transactionDataOrBuilder) {
        Intrinsics.checkNotNullParameter(transactionDataOrBuilder, "<this>");
        if (transactionDataOrBuilder.hasTimestamp()) {
            return transactionDataOrBuilder.getTimestamp();
        }
        return null;
    }
}
