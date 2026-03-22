package io.bidmachine.protobuf.headerbidding;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.s0;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public final class HeaderBiddingPlacement extends GeneratedMessageV3 implements HeaderBiddingPlacementOrBuilder {
    public static final int AD_UNITS_FIELD_NUMBER = 1;
    private static final HeaderBiddingPlacement DEFAULT_INSTANCE = new HeaderBiddingPlacement();
    private static final j1<HeaderBiddingPlacement> PARSER = new b<HeaderBiddingPlacement>() { // from class: io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.1
        @Override // com.explorestack.protobuf.j1
        public HeaderBiddingPlacement parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new HeaderBiddingPlacement(nVar, yVar);
        }
    };
    private static final long serialVersionUID = 0;
    private List<AdUnit> adUnits_;
    private byte memoizedIsInitialized;

    /* loaded from: classes8.dex */
    public static final class AdUnit extends GeneratedMessageV3 implements AdUnitOrBuilder {
        public static final int BIDDER_FIELD_NUMBER = 1;
        public static final int BIDDER_SDKVER_FIELD_NUMBER = 2;
        public static final int CLIENT_PARAMS_FIELD_NUMBER = 3;
        private static final AdUnit DEFAULT_INSTANCE = new AdUnit();
        private static final j1<AdUnit> PARSER = new b<AdUnit>() { // from class: io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit.1
            @Override // com.explorestack.protobuf.j1
            public AdUnit parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new AdUnit(nVar, yVar);
            }
        };
        public static final int PRICE_ESTIMATE_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object bidderSdkver_;
        private volatile Object bidder_;
        private MapField<String, String> clientParams_;
        private byte memoizedIsInitialized;
        private double priceEstimate_;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes8.dex */
        public static final class ClientParamsDefaultEntryHolder {
            static final s0<String, String> defaultEntry;

            static {
                Descriptors.Descriptor descriptor = HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_ClientParamsEntry_descriptor;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                defaultEntry = s0.q(descriptor, fieldType, "", fieldType, "");
            }

            private ClientParamsDefaultEntryHolder() {
            }
        }

        public static AdUnit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_descriptor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, String> internalGetClientParams() {
            MapField<String, String> mapField = this.clientParams_;
            if (mapField == null) {
                return MapField.g(ClientParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<AdUnit> parser() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public boolean containsClientParams(String str) {
            str.getClass();
            return internalGetClientParams().i().containsKey(str);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AdUnit)) {
                return super.equals(obj);
            }
            AdUnit adUnit = (AdUnit) obj;
            if (getBidder().equals(adUnit.getBidder()) && getBidderSdkver().equals(adUnit.getBidderSdkver()) && internalGetClientParams().equals(adUnit.internalGetClientParams()) && Double.doubleToLongBits(getPriceEstimate()) == Double.doubleToLongBits(adUnit.getPriceEstimate()) && this.unknownFields.equals(adUnit.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public String getBidder() {
            Object obj = this.bidder_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bidder_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public ByteString getBidderBytes() {
            Object obj = this.bidder_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bidder_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public String getBidderSdkver() {
            Object obj = this.bidderSdkver_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bidderSdkver_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public ByteString getBidderSdkverBytes() {
            Object obj = this.bidderSdkver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bidderSdkver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        @Deprecated
        public Map<String, String> getClientParams() {
            return getClientParamsMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public int getClientParamsCount() {
            return internalGetClientParams().i().size();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public Map<String, String> getClientParamsMap() {
            return internalGetClientParams().i();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public String getClientParamsOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> i10 = internalGetClientParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            return str2;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public String getClientParamsOrThrow(String str) {
            str.getClass();
            Map<String, String> i10 = internalGetClientParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<AdUnit> getParserForType() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
        public double getPriceEstimate() {
            return this.priceEstimate_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (!getBidderBytes().isEmpty()) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.bidder_);
            } else {
                i10 = 0;
            }
            if (!getBidderSdkverBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.bidderSdkver_);
            }
            for (Map.Entry<String, String> entry : internalGetClientParams().i().entrySet()) {
                i10 += CodedOutputStream.G(3, ClientParamsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
            }
            double d10 = this.priceEstimate_;
            if (d10 != 0.0d) {
                i10 += CodedOutputStream.j(4, d10);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getBidder().hashCode()) * 37) + 2) * 53) + getBidderSdkver().hashCode();
            if (!internalGetClientParams().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 3) * 53) + internalGetClientParams().hashCode();
            }
            int i11 = (((((hashCode * 37) + 4) * 53) + i0.i(Double.doubleToLongBits(getPriceEstimate()))) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = i11;
            return i11;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_fieldAccessorTable.d(AdUnit.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i10) {
            if (i10 == 3) {
                return internalGetClientParams();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.memoizedIsInitialized;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new AdUnit();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getBidderBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.bidder_);
            }
            if (!getBidderSdkverBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.bidderSdkver_);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetClientParams(), ClientParamsDefaultEntryHolder.defaultEntry, 3);
            double d10 = this.priceEstimate_;
            if (d10 != 0.0d) {
                codedOutputStream.t0(4, d10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements AdUnitOrBuilder {
            private Object bidderSdkver_;
            private Object bidder_;
            private int bitField0_;
            private MapField<String, String> clientParams_;
            private double priceEstimate_;

            public static final Descriptors.Descriptor getDescriptor() {
                return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_descriptor;
            }

            private MapField<String, String> internalGetClientParams() {
                MapField<String, String> mapField = this.clientParams_;
                if (mapField == null) {
                    return MapField.g(ClientParamsDefaultEntryHolder.defaultEntry);
                }
                return mapField;
            }

            private MapField<String, String> internalGetMutableClientParams() {
                onChanged();
                if (this.clientParams_ == null) {
                    this.clientParams_ = MapField.p(ClientParamsDefaultEntryHolder.defaultEntry);
                }
                if (!this.clientParams_.m()) {
                    this.clientParams_ = this.clientParams_.f();
                }
                return this.clientParams_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearBidder() {
                this.bidder_ = AdUnit.getDefaultInstance().getBidder();
                onChanged();
                return this;
            }

            public Builder clearBidderSdkver() {
                this.bidderSdkver_ = AdUnit.getDefaultInstance().getBidderSdkver();
                onChanged();
                return this;
            }

            public Builder clearClientParams() {
                internalGetMutableClientParams().l().clear();
                return this;
            }

            public Builder clearPriceEstimate() {
                this.priceEstimate_ = 0.0d;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public boolean containsClientParams(String str) {
                str.getClass();
                return internalGetClientParams().i().containsKey(str);
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public String getBidder() {
                Object obj = this.bidder_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.bidder_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public ByteString getBidderBytes() {
                Object obj = this.bidder_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.bidder_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public String getBidderSdkver() {
                Object obj = this.bidderSdkver_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.bidderSdkver_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public ByteString getBidderSdkverBytes() {
                Object obj = this.bidderSdkver_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.bidderSdkver_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            @Deprecated
            public Map<String, String> getClientParams() {
                return getClientParamsMap();
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public int getClientParamsCount() {
                return internalGetClientParams().i().size();
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public Map<String, String> getClientParamsMap() {
                return internalGetClientParams().i();
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public String getClientParamsOrDefault(String str, String str2) {
                str.getClass();
                Map<String, String> i10 = internalGetClientParams().i();
                if (i10.containsKey(str)) {
                    return i10.get(str);
                }
                return str2;
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public String getClientParamsOrThrow(String str) {
                str.getClass();
                Map<String, String> i10 = internalGetClientParams().i();
                if (i10.containsKey(str)) {
                    return i10.get(str);
                }
                throw new IllegalArgumentException();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_descriptor;
            }

            @Deprecated
            public Map<String, String> getMutableClientParams() {
                return internalGetMutableClientParams().l();
            }

            @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnitOrBuilder
            public double getPriceEstimate() {
                return this.priceEstimate_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_fieldAccessorTable.d(AdUnit.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMapField(int i10) {
                if (i10 == 3) {
                    return internalGetClientParams();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMutableMapField(int i10) {
                if (i10 == 3) {
                    return internalGetMutableClientParams();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder putAllClientParams(Map<String, String> map) {
                internalGetMutableClientParams().l().putAll(map);
                return this;
            }

            public Builder putClientParams(String str, String str2) {
                str.getClass();
                str2.getClass();
                internalGetMutableClientParams().l().put(str, str2);
                return this;
            }

            public Builder removeClientParams(String str) {
                str.getClass();
                internalGetMutableClientParams().l().remove(str);
                return this;
            }

            public Builder setBidder(String str) {
                str.getClass();
                this.bidder_ = str;
                onChanged();
                return this;
            }

            public Builder setBidderBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.bidder_ = byteString;
                onChanged();
                return this;
            }

            public Builder setBidderSdkver(String str) {
                str.getClass();
                this.bidderSdkver_ = str;
                onChanged();
                return this;
            }

            public Builder setBidderSdkverBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.bidderSdkver_ = byteString;
                onChanged();
                return this;
            }

            public Builder setPriceEstimate(double d10) {
                this.priceEstimate_ = d10;
                onChanged();
                return this;
            }

            private Builder() {
                this.bidder_ = "";
                this.bidderSdkver_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdUnit build() {
                AdUnit buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdUnit buildPartial() {
                AdUnit adUnit = new AdUnit(this);
                adUnit.bidder_ = this.bidder_;
                adUnit.bidderSdkver_ = this.bidderSdkver_;
                adUnit.clientParams_ = internalGetClientParams();
                adUnit.clientParams_.n();
                adUnit.priceEstimate_ = this.priceEstimate_;
                onBuilt();
                return adUnit;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AdUnit mo4630getDefaultInstanceForType() {
                return AdUnit.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(j2 j2Var) {
                return (Builder) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(j2 j2Var) {
                return (Builder) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Builder clear() {
                super.clear();
                this.bidder_ = "";
                this.bidderSdkver_ = "";
                internalGetMutableClientParams().a();
                this.priceEstimate_ = 0.0d;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.bidder_ = "";
                this.bidderSdkver_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof AdUnit) {
                    return mergeFrom((AdUnit) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AdUnit adUnit) {
                if (adUnit == AdUnit.getDefaultInstance()) {
                    return this;
                }
                if (!adUnit.getBidder().isEmpty()) {
                    this.bidder_ = adUnit.bidder_;
                    onChanged();
                }
                if (!adUnit.getBidderSdkver().isEmpty()) {
                    this.bidderSdkver_ = adUnit.bidderSdkver_;
                    onChanged();
                }
                internalGetMutableClientParams().o(adUnit.internalGetClientParams());
                if (adUnit.getPriceEstimate() != 0.0d) {
                    setPriceEstimate(adUnit.getPriceEstimate());
                }
                mergeUnknownFields(((GeneratedMessageV3) adUnit).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement$AdUnit r3 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.mergeFrom(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement$AdUnit r4 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.mergeFrom(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement$AdUnit$Builder");
            }
        }

        public static Builder newBuilder(AdUnit adUnit) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adUnit);
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private AdUnit(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static AdUnit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AdUnit mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static AdUnit parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private AdUnit() {
            this.memoizedIsInitialized = (byte) -1;
            this.bidder_ = "";
            this.bidderSdkver_ = "";
        }

        public static AdUnit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static AdUnit parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static AdUnit parseFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
        private AdUnit(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                this.bidder_ = nVar.J();
                            } else if (K == 18) {
                                this.bidderSdkver_ = nVar.J();
                            } else if (K == 26) {
                                if (!z11) {
                                    this.clientParams_ = MapField.p(ClientParamsDefaultEntryHolder.defaultEntry);
                                    z11 = true;
                                }
                                s0 s0Var = (s0) nVar.A(ClientParamsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                this.clientParams_.l().put(s0Var.h(), s0Var.j());
                            } else if (K != 33) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.priceEstimate_ = nVar.s();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static AdUnit parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static AdUnit parseFrom(n nVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static AdUnit parseFrom(n nVar, y yVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface AdUnitOrBuilder extends MessageOrBuilder {
        boolean containsClientParams(String str);

        String getBidder();

        ByteString getBidderBytes();

        String getBidderSdkver();

        ByteString getBidderSdkverBytes();

        @Deprecated
        Map<String, String> getClientParams();

        int getClientParamsCount();

        Map<String, String> getClientParamsMap();

        String getClientParamsOrDefault(String str, String str2);

        String getClientParamsOrThrow(String str);

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        double getPriceEstimate();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static HeaderBiddingPlacement getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HeaderBiddingPlacement parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HeaderBiddingPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HeaderBiddingPlacement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<HeaderBiddingPlacement> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeaderBiddingPlacement)) {
            return super.equals(obj);
        }
        HeaderBiddingPlacement headerBiddingPlacement = (HeaderBiddingPlacement) obj;
        if (getAdUnitsList().equals(headerBiddingPlacement.getAdUnitsList()) && this.unknownFields.equals(headerBiddingPlacement.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
    public AdUnit getAdUnits(int i10) {
        return this.adUnits_.get(i10);
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
    public int getAdUnitsCount() {
        return this.adUnits_.size();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
    public List<AdUnit> getAdUnitsList() {
        return this.adUnits_;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
    public AdUnitOrBuilder getAdUnitsOrBuilder(int i10) {
        return this.adUnits_.get(i10);
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
    public List<? extends AdUnitOrBuilder> getAdUnitsOrBuilderList() {
        return this.adUnits_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<HeaderBiddingPlacement> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.adUnits_.size(); i12++) {
            i11 += CodedOutputStream.G(1, this.adUnits_.get(i12));
        }
        int serializedSize = i11 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getAdUnitsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getAdUnitsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_fieldAccessorTable.d(HeaderBiddingPlacement.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new HeaderBiddingPlacement();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i10 = 0; i10 < this.adUnits_.size(); i10++) {
            codedOutputStream.L0(1, this.adUnits_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements HeaderBiddingPlacementOrBuilder {
        private p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> adUnitsBuilder_;
        private List<AdUnit> adUnits_;
        private int bitField0_;

        private void ensureAdUnitsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.adUnits_ = new ArrayList(this.adUnits_);
                this.bitField0_ |= 1;
            }
        }

        private p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> getAdUnitsFieldBuilder() {
            if (this.adUnitsBuilder_ == null) {
                List<AdUnit> list = this.adUnits_;
                boolean z10 = true;
                if ((this.bitField0_ & 1) == 0) {
                    z10 = false;
                }
                this.adUnitsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.adUnits_ = null;
            }
            return this.adUnitsBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getAdUnitsFieldBuilder();
            }
        }

        public Builder addAdUnits(AdUnit adUnit) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                adUnit.getClass();
                ensureAdUnitsIsMutable();
                this.adUnits_.add(adUnit);
                onChanged();
            } else {
                p1Var.e(adUnit);
            }
            return this;
        }

        public AdUnit.Builder addAdUnitsBuilder() {
            return getAdUnitsFieldBuilder().c(AdUnit.getDefaultInstance());
        }

        public Builder addAllAdUnits(Iterable<? extends AdUnit> iterable) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.adUnits_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder clearAdUnits() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                this.adUnits_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
        public AdUnit getAdUnits(int i10) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return this.adUnits_.get(i10);
            }
            return p1Var.n(i10);
        }

        public AdUnit.Builder getAdUnitsBuilder(int i10) {
            return getAdUnitsFieldBuilder().k(i10);
        }

        public List<AdUnit.Builder> getAdUnitsBuilderList() {
            return getAdUnitsFieldBuilder().l();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
        public int getAdUnitsCount() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return this.adUnits_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
        public List<AdUnit> getAdUnitsList() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.adUnits_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
        public AdUnitOrBuilder getAdUnitsOrBuilder(int i10) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return this.adUnits_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder
        public List<? extends AdUnitOrBuilder> getAdUnitsOrBuilderList() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.adUnits_);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_fieldAccessorTable.d(HeaderBiddingPlacement.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder removeAdUnits(int i10) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder setAdUnits(int i10, AdUnit adUnit) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                adUnit.getClass();
                ensureAdUnitsIsMutable();
                this.adUnits_.set(i10, adUnit);
                onChanged();
            } else {
                p1Var.w(i10, adUnit);
            }
            return this;
        }

        private Builder() {
            this.adUnits_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public HeaderBiddingPlacement build() {
            HeaderBiddingPlacement buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public HeaderBiddingPlacement buildPartial() {
            HeaderBiddingPlacement headerBiddingPlacement = new HeaderBiddingPlacement(this);
            int i10 = this.bitField0_;
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                if ((i10 & 1) != 0) {
                    this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
                    this.bitField0_ &= -2;
                }
                headerBiddingPlacement.adUnits_ = this.adUnits_;
            } else {
                headerBiddingPlacement.adUnits_ = p1Var.f();
            }
            onBuilt();
            return headerBiddingPlacement;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public HeaderBiddingPlacement mo4630getDefaultInstanceForType() {
            return HeaderBiddingPlacement.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(j2 j2Var) {
            return (Builder) super.setUnknownFields(j2Var);
        }

        public AdUnit.Builder addAdUnitsBuilder(int i10) {
            return getAdUnitsFieldBuilder().b(i10, AdUnit.getDefaultInstance());
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(j2 j2Var) {
            return (Builder) super.mergeUnknownFields(j2Var);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                this.adUnits_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                p1Var.g();
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.adUnits_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public Builder addAdUnits(int i10, AdUnit adUnit) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                adUnit.getClass();
                ensureAdUnitsIsMutable();
                this.adUnits_.add(i10, adUnit);
                onChanged();
            } else {
                p1Var.d(i10, adUnit);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof HeaderBiddingPlacement) {
                return mergeFrom((HeaderBiddingPlacement) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setAdUnits(int i10, AdUnit.Builder builder) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(HeaderBiddingPlacement headerBiddingPlacement) {
            if (headerBiddingPlacement == HeaderBiddingPlacement.getDefaultInstance()) {
                return this;
            }
            if (this.adUnitsBuilder_ == null) {
                if (!headerBiddingPlacement.adUnits_.isEmpty()) {
                    if (this.adUnits_.isEmpty()) {
                        this.adUnits_ = headerBiddingPlacement.adUnits_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureAdUnitsIsMutable();
                        this.adUnits_.addAll(headerBiddingPlacement.adUnits_);
                    }
                    onChanged();
                }
            } else if (!headerBiddingPlacement.adUnits_.isEmpty()) {
                if (!this.adUnitsBuilder_.t()) {
                    this.adUnitsBuilder_.a(headerBiddingPlacement.adUnits_);
                } else {
                    this.adUnitsBuilder_.h();
                    this.adUnitsBuilder_ = null;
                    this.adUnits_ = headerBiddingPlacement.adUnits_;
                    this.bitField0_ &= -2;
                    this.adUnitsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAdUnitsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) headerBiddingPlacement).unknownFields);
            onChanged();
            return this;
        }

        public Builder addAdUnits(AdUnit.Builder builder) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addAdUnits(int i10, AdUnit.Builder builder) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.add(i10, builder.build());
                onChanged();
            } else {
                p1Var.d(i10, builder.build());
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.access$2100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement r3 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement r4 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement$Builder");
        }
    }

    public static Builder newBuilder(HeaderBiddingPlacement headerBiddingPlacement) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(headerBiddingPlacement);
    }

    public static HeaderBiddingPlacement parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private HeaderBiddingPlacement(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HeaderBiddingPlacement parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (HeaderBiddingPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static HeaderBiddingPlacement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public HeaderBiddingPlacement mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static HeaderBiddingPlacement parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private HeaderBiddingPlacement() {
        this.memoizedIsInitialized = (byte) -1;
        this.adUnits_ = Collections.emptyList();
    }

    public static HeaderBiddingPlacement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static HeaderBiddingPlacement parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static HeaderBiddingPlacement parseFrom(InputStream inputStream) throws IOException {
        return (HeaderBiddingPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private HeaderBiddingPlacement(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K != 10) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!z11) {
                                    this.adUnits_ = new ArrayList();
                                    z11 = true;
                                }
                                this.adUnits_.add(nVar.A(AdUnit.parser(), yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    }
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } catch (Throwable th2) {
                if (z11) {
                    this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static HeaderBiddingPlacement parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (HeaderBiddingPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static HeaderBiddingPlacement parseFrom(n nVar) throws IOException {
        return (HeaderBiddingPlacement) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static HeaderBiddingPlacement parseFrom(n nVar, y yVar) throws IOException {
        return (HeaderBiddingPlacement) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
