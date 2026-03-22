package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.PiiOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PiiKt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PiiKt {
    @NotNull
    public static final PiiKt INSTANCE = new PiiKt();

    /* compiled from: PiiKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final PiiOuterClass.Pii.Builder _builder;

        /* compiled from: PiiKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(PiiOuterClass.Pii.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(PiiOuterClass.Pii.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ PiiOuterClass.Pii _build() {
            PiiOuterClass.Pii build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final void clearAdvertisingId() {
            this._builder.clearAdvertisingId();
        }

        public final void clearFid() {
            this._builder.clearFid();
        }

        public final void clearOpenAdvertisingTrackingId() {
            this._builder.clearOpenAdvertisingTrackingId();
        }

        public final void clearVendorId() {
            this._builder.clearVendorId();
        }

        @NotNull
        public final ByteString getAdvertisingId() {
            ByteString advertisingId = this._builder.getAdvertisingId();
            Intrinsics.checkNotNullExpressionValue(advertisingId, "_builder.getAdvertisingId()");
            return advertisingId;
        }

        @NotNull
        public final String getFid() {
            String fid = this._builder.getFid();
            Intrinsics.checkNotNullExpressionValue(fid, "_builder.getFid()");
            return fid;
        }

        @NotNull
        public final ByteString getOpenAdvertisingTrackingId() {
            ByteString openAdvertisingTrackingId = this._builder.getOpenAdvertisingTrackingId();
            Intrinsics.checkNotNullExpressionValue(openAdvertisingTrackingId, "_builder.getOpenAdvertisingTrackingId()");
            return openAdvertisingTrackingId;
        }

        @NotNull
        public final ByteString getVendorId() {
            ByteString vendorId = this._builder.getVendorId();
            Intrinsics.checkNotNullExpressionValue(vendorId, "_builder.getVendorId()");
            return vendorId;
        }

        public final boolean hasFid() {
            return this._builder.hasFid();
        }

        public final void setAdvertisingId(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdvertisingId(value);
        }

        public final void setFid(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setFid(value);
        }

        public final void setOpenAdvertisingTrackingId(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOpenAdvertisingTrackingId(value);
        }

        public final void setVendorId(@NotNull ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setVendorId(value);
        }

        private Dsl(PiiOuterClass.Pii.Builder builder) {
            this._builder = builder;
        }
    }

    private PiiKt() {
    }
}
