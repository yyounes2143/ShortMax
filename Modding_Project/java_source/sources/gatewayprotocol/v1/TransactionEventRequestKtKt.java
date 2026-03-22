package gatewayprotocol.v1;

import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import gatewayprotocol.v1.TransactionEventRequestKt;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TransactionEventRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTransactionEventRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventRequestKt.kt\ngatewayprotocol/v1/TransactionEventRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1#2:273\n*E\n"})
/* loaded from: classes7.dex */
public final class TransactionEventRequestKtKt {
    @NotNull
    /* renamed from: -initializetransactionEventRequest  reason: not valid java name */
    public static final TransactionEventRequestOuterClass.TransactionEventRequest m4907initializetransactionEventRequest(@NotNull Function1<? super TransactionEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        TransactionEventRequestKt.Dsl.Companion companion = TransactionEventRequestKt.Dsl.Companion;
        TransactionEventRequestOuterClass.TransactionEventRequest.Builder newBuilder = TransactionEventRequestOuterClass.TransactionEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        TransactionEventRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final TransactionEventRequestOuterClass.TransactionEventRequest copy(@NotNull TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest, @NotNull Function1<? super TransactionEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(transactionEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        TransactionEventRequestKt.Dsl.Companion companion = TransactionEventRequestKt.Dsl.Companion;
        TransactionEventRequestOuterClass.TransactionEventRequest.Builder builder = transactionEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        TransactionEventRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(@NotNull TransactionEventRequestOuterClass.TransactionEventRequestOrBuilder transactionEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(transactionEventRequestOrBuilder, "<this>");
        if (transactionEventRequestOrBuilder.hasDynamicDeviceInfo()) {
            return transactionEventRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    @Nullable
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(@NotNull TransactionEventRequestOuterClass.TransactionEventRequestOrBuilder transactionEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(transactionEventRequestOrBuilder, "<this>");
        if (transactionEventRequestOrBuilder.hasStaticDeviceInfo()) {
            return transactionEventRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }
}
