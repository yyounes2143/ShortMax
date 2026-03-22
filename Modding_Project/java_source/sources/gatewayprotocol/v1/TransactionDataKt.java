package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TransactionDataKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TransactionDataKt {
    @NotNull
    public static final TransactionDataKt INSTANCE = new TransactionDataKt();

    /* compiled from: TransactionDataKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final TransactionEventRequestOuterClass.TransactionData.Builder _builder;

        /* compiled from: TransactionDataKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(TransactionEventRequestOuterClass.TransactionData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(TransactionEventRequestOuterClass.TransactionData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ TransactionEventRequestOuterClass.TransactionData _build() {
            TransactionEventRequestOuterClass.TransactionData build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearEventId() {
            this._builder.clearEventId();
        }

        public final void clearProduct() {
            this._builder.clearProduct();
        }

        public final void clearProductId() {
            this._builder.clearProductId();
        }

        public final void clearReceipt() {
            this._builder.clearReceipt();
        }

        public final void clearTimestamp() {
            this._builder.clearTimestamp();
        }

        public final void clearTransaction() {
            this._builder.clearTransaction();
        }

        public final void clearTransactionId() {
            this._builder.clearTransactionId();
        }

        public final void clearTransactionState() {
            this._builder.clearTransactionState();
        }

        @NotNull
        public final ByteString getEventId() {
            ByteString eventId = this._builder.getEventId();
            Intrinsics.checkNotNullExpressionValue(eventId, "_builder.getEventId()");
            return eventId;
        }

        @NotNull
        public final String getProduct() {
            String product = this._builder.getProduct();
            Intrinsics.checkNotNullExpressionValue(product, "_builder.getProduct()");
            return product;
        }

        @NotNull
        public final String getProductId() {
            String productId = this._builder.getProductId();
            Intrinsics.checkNotNullExpressionValue(productId, "_builder.getProductId()");
            return productId;
        }

        @NotNull
        public final String getReceipt() {
            String receipt = this._builder.getReceipt();
            Intrinsics.checkNotNullExpressionValue(receipt, "_builder.getReceipt()");
            return receipt;
        }

        @NotNull
        public final Timestamp getTimestamp() {
            Timestamp timestamp = this._builder.getTimestamp();
            Intrinsics.checkNotNullExpressionValue(timestamp, "_builder.getTimestamp()");
            return timestamp;
        }

        @NotNull
        public final String getTransaction() {
            String transaction = this._builder.getTransaction();
            Intrinsics.checkNotNullExpressionValue(transaction, "_builder.getTransaction()");
            return transaction;
        }

        @NotNull
        public final String getTransactionId() {
            String transactionId = this._builder.getTransactionId();
            Intrinsics.checkNotNullExpressionValue(transactionId, "_builder.getTransactionId()");
            return transactionId;
        }

        @NotNull
        public final TransactionEventRequestOuterClass.TransactionState getTransactionState() {
            TransactionEventRequestOuterClass.TransactionState transactionState = this._builder.getTransactionState();
            Intrinsics.checkNotNullExpressionValue(transactionState, "_builder.getTransactionState()");
            return transactionState;
        }

        public final int getTransactionStateValue() {
            return this._builder.getTransactionStateValue();
        }

        public final boolean hasReceipt() {
            return this._builder.hasReceipt();
        }

        public final boolean hasTimestamp() {
            return this._builder.hasTimestamp();
        }

        public final void setEventId(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setEventId(value);
        }

        public final void setProduct(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setProduct(value);
        }

        public final void setProductId(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setProductId(value);
        }

        public final void setReceipt(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setReceipt(value);
        }

        public final void setTimestamp(@NotNull Timestamp value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTimestamp(value);
        }

        public final void setTransaction(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTransaction(value);
        }

        public final void setTransactionId(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTransactionId(value);
        }

        public final void setTransactionState(@NotNull TransactionEventRequestOuterClass.TransactionState value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTransactionState(value);
        }

        public final void setTransactionStateValue(int i10) {
            this._builder.setTransactionStateValue(i10);
        }

        private Dsl(TransactionEventRequestOuterClass.TransactionData.Builder builder) {
            this._builder = builder;
        }
    }

    private TransactionDataKt() {
    }
}
