package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.s0;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
/* loaded from: classes8.dex */
public final class RequestExtension extends GeneratedMessageV3 implements RequestExtensionOrBuilder {
    public static final int BM_IFV_FIELD_NUMBER = 5;
    public static final int HEADER_BIDDING_TYPE_FIELD_NUMBER = 3;
    public static final int IFV_FIELD_NUMBER = 4;
    public static final int INTEGRATION_TYPE_FIELD_NUMBER = 7;
    public static final int SELLER_DATA_FIELD_NUMBER = 2;
    public static final int SELLER_ID_FIELD_NUMBER = 1;
    public static final int SESSION_ID_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private volatile Object bmIfv_;
    private int headerBiddingType_;
    private volatile Object ifv_;
    private volatile Object integrationType_;
    private byte memoizedIsInitialized;
    private MapField<String, String> sellerData_;
    private volatile Object sellerId_;
    private volatile Object sessionId_;
    private static final RequestExtension DEFAULT_INSTANCE = new RequestExtension();
    private static final j1<RequestExtension> PARSER = new b<RequestExtension>() { // from class: io.bidmachine.protobuf.RequestExtension.1
        @Override // com.explorestack.protobuf.j1
        public RequestExtension parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new RequestExtension(nVar, yVar);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class SellerDataDefaultEntryHolder {
        static final s0<String, String> defaultEntry;

        static {
            Descriptors.Descriptor descriptor = ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_descriptor;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            defaultEntry = s0.q(descriptor, fieldType, "", fieldType, "");
        }

        private SellerDataDefaultEntryHolder() {
        }
    }

    public static RequestExtension getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetSellerData() {
        MapField<String, String> mapField = this.sellerData_;
        if (mapField == null) {
            return MapField.g(SellerDataDefaultEntryHolder.defaultEntry);
        }
        return mapField;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RequestExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RequestExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<RequestExtension> parser() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public boolean containsSellerData(String str) {
        str.getClass();
        return internalGetSellerData().i().containsKey(str);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RequestExtension)) {
            return super.equals(obj);
        }
        RequestExtension requestExtension = (RequestExtension) obj;
        if (getSellerId().equals(requestExtension.getSellerId()) && internalGetSellerData().equals(requestExtension.internalGetSellerData()) && this.headerBiddingType_ == requestExtension.headerBiddingType_ && getIfv().equals(requestExtension.getIfv()) && getBmIfv().equals(requestExtension.getBmIfv()) && getSessionId().equals(requestExtension.getSessionId()) && getIntegrationType().equals(requestExtension.getIntegrationType()) && this.unknownFields.equals(requestExtension.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public String getBmIfv() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bmIfv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public ByteString getBmIfvBytes() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bmIfv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public HeaderBiddingType getHeaderBiddingType() {
        HeaderBiddingType valueOf = HeaderBiddingType.valueOf(this.headerBiddingType_);
        if (valueOf == null) {
            return HeaderBiddingType.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public int getHeaderBiddingTypeValue() {
        return this.headerBiddingType_;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public String getIfv() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public ByteString getIfvBytes() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public String getIntegrationType() {
        Object obj = this.integrationType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.integrationType_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public ByteString getIntegrationTypeBytes() {
        Object obj = this.integrationType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.integrationType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<RequestExtension> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    @Deprecated
    public Map<String, String> getSellerData() {
        return getSellerDataMap();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public int getSellerDataCount() {
        return internalGetSellerData().i().size();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public Map<String, String> getSellerDataMap() {
        return internalGetSellerData().i();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public String getSellerDataOrDefault(String str, String str2) {
        str.getClass();
        Map<String, String> i10 = internalGetSellerData().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        return str2;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public String getSellerDataOrThrow(String str) {
        str.getClass();
        Map<String, String> i10 = internalGetSellerData().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public String getSellerId() {
        Object obj = this.sellerId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sellerId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public ByteString getSellerIdBytes() {
        Object obj = this.sellerId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sellerId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getSellerIdBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.sellerId_);
        } else {
            i10 = 0;
        }
        for (Map.Entry<String, String> entry : internalGetSellerData().i().entrySet()) {
            i10 += CodedOutputStream.G(2, SellerDataDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
        }
        if (this.headerBiddingType_ != HeaderBiddingType.HEADER_BIDDING_TYPE_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(3, this.headerBiddingType_);
        }
        if (!getIfvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(5, this.bmIfv_);
        }
        if (!getSessionIdBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(6, this.sessionId_);
        }
        if (!getIntegrationTypeBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(7, this.integrationType_);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public String getSessionId() {
        Object obj = this.sessionId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sessionId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public ByteString getSessionIdBytes() {
        Object obj = this.sessionId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sessionId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSellerId().hashCode();
        if (!internalGetSellerData().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetSellerData().hashCode();
        }
        int hashCode2 = (((((((((((((((((((((hashCode * 37) + 3) * 53) + this.headerBiddingType_) * 37) + 4) * 53) + getIfv().hashCode()) * 37) + 5) * 53) + getBmIfv().hashCode()) * 37) + 6) * 53) + getSessionId().hashCode()) * 37) + 7) * 53) + getIntegrationType().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable.d(RequestExtension.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected MapField internalGetMapField(int i10) {
        if (i10 == 2) {
            return internalGetSellerData();
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
        return new RequestExtension();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getSellerIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.sellerId_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetSellerData(), SellerDataDefaultEntryHolder.defaultEntry, 2);
        if (this.headerBiddingType_ != HeaderBiddingType.HEADER_BIDDING_TYPE_INVALID.getNumber()) {
            codedOutputStream.v0(3, this.headerBiddingType_);
        }
        if (!getIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.bmIfv_);
        }
        if (!getSessionIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.sessionId_);
        }
        if (!getIntegrationTypeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.integrationType_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements RequestExtensionOrBuilder {
        private int bitField0_;
        private Object bmIfv_;
        private int headerBiddingType_;
        private Object ifv_;
        private Object integrationType_;
        private MapField<String, String> sellerData_;
        private Object sellerId_;
        private Object sessionId_;

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_descriptor;
        }

        private MapField<String, String> internalGetMutableSellerData() {
            onChanged();
            if (this.sellerData_ == null) {
                this.sellerData_ = MapField.p(SellerDataDefaultEntryHolder.defaultEntry);
            }
            if (!this.sellerData_.m()) {
                this.sellerData_ = this.sellerData_.f();
            }
            return this.sellerData_;
        }

        private MapField<String, String> internalGetSellerData() {
            MapField<String, String> mapField = this.sellerData_;
            if (mapField == null) {
                return MapField.g(SellerDataDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearBmIfv() {
            this.bmIfv_ = RequestExtension.getDefaultInstance().getBmIfv();
            onChanged();
            return this;
        }

        public Builder clearHeaderBiddingType() {
            this.headerBiddingType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearIfv() {
            this.ifv_ = RequestExtension.getDefaultInstance().getIfv();
            onChanged();
            return this;
        }

        public Builder clearIntegrationType() {
            this.integrationType_ = RequestExtension.getDefaultInstance().getIntegrationType();
            onChanged();
            return this;
        }

        public Builder clearSellerData() {
            internalGetMutableSellerData().l().clear();
            return this;
        }

        public Builder clearSellerId() {
            this.sellerId_ = RequestExtension.getDefaultInstance().getSellerId();
            onChanged();
            return this;
        }

        public Builder clearSessionId() {
            this.sessionId_ = RequestExtension.getDefaultInstance().getSessionId();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public boolean containsSellerData(String str) {
            str.getClass();
            return internalGetSellerData().i().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public String getBmIfv() {
            Object obj = this.bmIfv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bmIfv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public ByteString getBmIfvBytes() {
            Object obj = this.bmIfv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bmIfv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_descriptor;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public HeaderBiddingType getHeaderBiddingType() {
            HeaderBiddingType valueOf = HeaderBiddingType.valueOf(this.headerBiddingType_);
            if (valueOf == null) {
                return HeaderBiddingType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public int getHeaderBiddingTypeValue() {
            return this.headerBiddingType_;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public String getIfv() {
            Object obj = this.ifv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ifv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public ByteString getIfvBytes() {
            Object obj = this.ifv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public String getIntegrationType() {
            Object obj = this.integrationType_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.integrationType_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public ByteString getIntegrationTypeBytes() {
            Object obj = this.integrationType_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.integrationType_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Deprecated
        public Map<String, String> getMutableSellerData() {
            return internalGetMutableSellerData().l();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        @Deprecated
        public Map<String, String> getSellerData() {
            return getSellerDataMap();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public int getSellerDataCount() {
            return internalGetSellerData().i().size();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public Map<String, String> getSellerDataMap() {
            return internalGetSellerData().i();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public String getSellerDataOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> i10 = internalGetSellerData().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            return str2;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public String getSellerDataOrThrow(String str) {
            str.getClass();
            Map<String, String> i10 = internalGetSellerData().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public String getSellerId() {
            Object obj = this.sellerId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sellerId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public ByteString getSellerIdBytes() {
            Object obj = this.sellerId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sellerId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public String getSessionId() {
            Object obj = this.sessionId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sessionId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public ByteString getSessionIdBytes() {
            Object obj = this.sessionId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable.d(RequestExtension.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected MapField internalGetMapField(int i10) {
            if (i10 == 2) {
                return internalGetSellerData();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected MapField internalGetMutableMapField(int i10) {
            if (i10 == 2) {
                return internalGetMutableSellerData();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder putAllSellerData(Map<String, String> map) {
            internalGetMutableSellerData().l().putAll(map);
            return this;
        }

        public Builder putSellerData(String str, String str2) {
            str.getClass();
            str2.getClass();
            internalGetMutableSellerData().l().put(str, str2);
            return this;
        }

        public Builder removeSellerData(String str) {
            str.getClass();
            internalGetMutableSellerData().l().remove(str);
            return this;
        }

        public Builder setBmIfv(String str) {
            str.getClass();
            this.bmIfv_ = str;
            onChanged();
            return this;
        }

        public Builder setBmIfvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.bmIfv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setHeaderBiddingType(HeaderBiddingType headerBiddingType) {
            headerBiddingType.getClass();
            this.headerBiddingType_ = headerBiddingType.getNumber();
            onChanged();
            return this;
        }

        public Builder setHeaderBiddingTypeValue(int i10) {
            this.headerBiddingType_ = i10;
            onChanged();
            return this;
        }

        public Builder setIfv(String str) {
            str.getClass();
            this.ifv_ = str;
            onChanged();
            return this;
        }

        public Builder setIfvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.ifv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setIntegrationType(String str) {
            str.getClass();
            this.integrationType_ = str;
            onChanged();
            return this;
        }

        public Builder setIntegrationTypeBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.integrationType_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSellerId(String str) {
            str.getClass();
            this.sellerId_ = str;
            onChanged();
            return this;
        }

        public Builder setSellerIdBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sellerId_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSessionId(String str) {
            str.getClass();
            this.sessionId_ = str;
            onChanged();
            return this;
        }

        public Builder setSessionIdBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sessionId_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.sellerId_ = "";
            this.headerBiddingType_ = 0;
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.sessionId_ = "";
            this.integrationType_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RequestExtension build() {
            RequestExtension buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RequestExtension buildPartial() {
            RequestExtension requestExtension = new RequestExtension(this);
            requestExtension.sellerId_ = this.sellerId_;
            requestExtension.sellerData_ = internalGetSellerData();
            requestExtension.sellerData_.n();
            requestExtension.headerBiddingType_ = this.headerBiddingType_;
            requestExtension.ifv_ = this.ifv_;
            requestExtension.bmIfv_ = this.bmIfv_;
            requestExtension.sessionId_ = this.sessionId_;
            requestExtension.integrationType_ = this.integrationType_;
            onBuilt();
            return requestExtension;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public RequestExtension mo4630getDefaultInstanceForType() {
            return RequestExtension.getDefaultInstance();
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
            this.sellerId_ = "";
            internalGetMutableSellerData().a();
            this.headerBiddingType_ = 0;
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.sessionId_ = "";
            this.integrationType_ = "";
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof RequestExtension) {
                return mergeFrom((RequestExtension) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(RequestExtension requestExtension) {
            if (requestExtension == RequestExtension.getDefaultInstance()) {
                return this;
            }
            if (!requestExtension.getSellerId().isEmpty()) {
                this.sellerId_ = requestExtension.sellerId_;
                onChanged();
            }
            internalGetMutableSellerData().o(requestExtension.internalGetSellerData());
            if (requestExtension.headerBiddingType_ != 0) {
                setHeaderBiddingTypeValue(requestExtension.getHeaderBiddingTypeValue());
            }
            if (!requestExtension.getIfv().isEmpty()) {
                this.ifv_ = requestExtension.ifv_;
                onChanged();
            }
            if (!requestExtension.getBmIfv().isEmpty()) {
                this.bmIfv_ = requestExtension.bmIfv_;
                onChanged();
            }
            if (!requestExtension.getSessionId().isEmpty()) {
                this.sessionId_ = requestExtension.sessionId_;
                onChanged();
            }
            if (!requestExtension.getIntegrationType().isEmpty()) {
                this.integrationType_ = requestExtension.integrationType_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) requestExtension).unknownFields);
            onChanged();
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.sellerId_ = "";
            this.headerBiddingType_ = 0;
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.sessionId_ = "";
            this.integrationType_ = "";
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.RequestExtension.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.RequestExtension.access$1300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.RequestExtension r3 = (io.bidmachine.protobuf.RequestExtension) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.RequestExtension r4 = (io.bidmachine.protobuf.RequestExtension) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestExtension.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.RequestExtension$Builder");
        }
    }

    public static Builder newBuilder(RequestExtension requestExtension) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(requestExtension);
    }

    public static RequestExtension parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private RequestExtension(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RequestExtension parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static RequestExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public RequestExtension mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static RequestExtension parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private RequestExtension() {
        this.memoizedIsInitialized = (byte) -1;
        this.sellerId_ = "";
        this.headerBiddingType_ = 0;
        this.ifv_ = "";
        this.bmIfv_ = "";
        this.sessionId_ = "";
        this.integrationType_ = "";
    }

    public static RequestExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static RequestExtension parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static RequestExtension parseFrom(InputStream inputStream) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RequestExtension parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static RequestExtension parseFrom(n nVar) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object] */
    private RequestExtension(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            if (K == 10) {
                                this.sellerId_ = nVar.J();
                            } else if (K == 18) {
                                if (!z11) {
                                    this.sellerData_ = MapField.p(SellerDataDefaultEntryHolder.defaultEntry);
                                    z11 = true;
                                }
                                s0 s0Var = (s0) nVar.A(SellerDataDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                this.sellerData_.l().put(s0Var.h(), s0Var.j());
                            } else if (K == 24) {
                                this.headerBiddingType_ = nVar.t();
                            } else if (K == 34) {
                                this.ifv_ = nVar.J();
                            } else if (K == 42) {
                                this.bmIfv_ = nVar.J();
                            } else if (K == 50) {
                                this.sessionId_ = nVar.J();
                            } else if (K != 58) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.integrationType_ = nVar.J();
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
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static RequestExtension parseFrom(n nVar, y yVar) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
