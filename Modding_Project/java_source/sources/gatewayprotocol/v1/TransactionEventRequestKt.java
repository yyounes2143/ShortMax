package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TransactionEventRequestKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TransactionEventRequestKt {
    @NotNull
    public static final TransactionEventRequestKt INSTANCE = new TransactionEventRequestKt();

    /* compiled from: TransactionEventRequestKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final TransactionEventRequestOuterClass.TransactionEventRequest.Builder _builder;

        /* compiled from: TransactionEventRequestKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(TransactionEventRequestOuterClass.TransactionEventRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: TransactionEventRequestKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class TransactionDataProxy extends DslProxy {
            private TransactionDataProxy() {
            }
        }

        public /* synthetic */ Dsl(TransactionEventRequestOuterClass.TransactionEventRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ TransactionEventRequestOuterClass.TransactionEventRequest _build() {
            TransactionEventRequestOuterClass.TransactionEventRequest build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllTransactionData(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllTransactionData(values);
        }

        public final /* synthetic */ void addTransactionData(DslList dslList, TransactionEventRequestOuterClass.TransactionData value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addTransactionData(value);
        }

        public final void clearAppStore() {
            this._builder.clearAppStore();
        }

        public final void clearCustomStore() {
            this._builder.clearCustomStore();
        }

        public final void clearDynamicDeviceInfo() {
            this._builder.clearDynamicDeviceInfo();
        }

        public final void clearStaticDeviceInfo() {
            this._builder.clearStaticDeviceInfo();
        }

        public final /* synthetic */ void clearTransactionData(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearTransactionData();
        }

        @NotNull
        public final TransactionEventRequestOuterClass.StoreType getAppStore() {
            TransactionEventRequestOuterClass.StoreType appStore = this._builder.getAppStore();
            Intrinsics.checkNotNullExpressionValue(appStore, "_builder.getAppStore()");
            return appStore;
        }

        public final int getAppStoreValue() {
            return this._builder.getAppStoreValue();
        }

        @NotNull
        public final String getCustomStore() {
            String customStore = this._builder.getCustomStore();
            Intrinsics.checkNotNullExpressionValue(customStore, "_builder.getCustomStore()");
            return customStore;
        }

        @NotNull
        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo = this._builder.getDynamicDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(dynamicDeviceInfo, "_builder.getDynamicDeviceInfo()");
            return dynamicDeviceInfo;
        }

        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo = this._builder.getStaticDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(staticDeviceInfo, "_builder.getStaticDeviceInfo()");
            return staticDeviceInfo;
        }

        public final /* synthetic */ DslList getTransactionData() {
            List<TransactionEventRequestOuterClass.TransactionData> transactionDataList = this._builder.getTransactionDataList();
            Intrinsics.checkNotNullExpressionValue(transactionDataList, "_builder.getTransactionDataList()");
            return new DslList(transactionDataList);
        }

        public final boolean hasDynamicDeviceInfo() {
            return this._builder.hasDynamicDeviceInfo();
        }

        public final boolean hasStaticDeviceInfo() {
            return this._builder.hasStaticDeviceInfo();
        }

        public final /* synthetic */ void plusAssignAllTransactionData(DslList<TransactionEventRequestOuterClass.TransactionData, TransactionDataProxy> dslList, Iterable<TransactionEventRequestOuterClass.TransactionData> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllTransactionData(dslList, values);
        }

        public final /* synthetic */ void plusAssignTransactionData(DslList<TransactionEventRequestOuterClass.TransactionData, TransactionDataProxy> dslList, TransactionEventRequestOuterClass.TransactionData value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addTransactionData(dslList, value);
        }

        public final void setAppStore(@NotNull TransactionEventRequestOuterClass.StoreType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAppStore(value);
        }

        public final void setAppStoreValue(int i10) {
            this._builder.setAppStoreValue(i10);
        }

        public final void setCustomStore(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomStore(value);
        }

        public final void setDynamicDeviceInfo(@NotNull DynamicDeviceInfoOuterClass.DynamicDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDynamicDeviceInfo(value);
        }

        public final void setStaticDeviceInfo(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStaticDeviceInfo(value);
        }

        public final /* synthetic */ void setTransactionData(DslList dslList, int i10, TransactionEventRequestOuterClass.TransactionData value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTransactionData(i10, value);
        }

        private Dsl(TransactionEventRequestOuterClass.TransactionEventRequest.Builder builder) {
            this._builder = builder;
        }
    }

    private TransactionEventRequestKt() {
    }
}
