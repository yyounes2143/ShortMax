package io.bidmachine.protobuf.headerbidding;

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
public final class HeaderBiddingAd extends GeneratedMessageV3 implements HeaderBiddingAdOrBuilder {
    public static final int BIDDER_FIELD_NUMBER = 1;
    public static final int CLIENT_PARAMS_FIELD_NUMBER = 2;
    private static final HeaderBiddingAd DEFAULT_INSTANCE = new HeaderBiddingAd();
    private static final j1<HeaderBiddingAd> PARSER = new b<HeaderBiddingAd>() { // from class: io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.1
        @Override // com.explorestack.protobuf.j1
        public HeaderBiddingAd parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new HeaderBiddingAd(nVar, yVar);
        }
    };
    public static final int SERVER_PARAMS_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object bidder_;
    private MapField<String, String> clientParams_;
    private byte memoizedIsInitialized;
    private MapField<String, String> serverParams_;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class ClientParamsDefaultEntryHolder {
        static final s0<String, String> defaultEntry;

        static {
            Descriptors.Descriptor descriptor = HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_descriptor;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            defaultEntry = s0.q(descriptor, fieldType, "", fieldType, "");
        }

        private ClientParamsDefaultEntryHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class ServerParamsDefaultEntryHolder {
        static final s0<String, String> defaultEntry;

        static {
            Descriptors.Descriptor descriptor = HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_descriptor;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            defaultEntry = s0.q(descriptor, fieldType, "", fieldType, "");
        }

        private ServerParamsDefaultEntryHolder() {
        }
    }

    public static HeaderBiddingAd getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetClientParams() {
        MapField<String, String> mapField = this.clientParams_;
        if (mapField == null) {
            return MapField.g(ClientParamsDefaultEntryHolder.defaultEntry);
        }
        return mapField;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetServerParams() {
        MapField<String, String> mapField = this.serverParams_;
        if (mapField == null) {
            return MapField.g(ServerParamsDefaultEntryHolder.defaultEntry);
        }
        return mapField;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static HeaderBiddingAd parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HeaderBiddingAd parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<HeaderBiddingAd> parser() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public boolean containsClientParams(String str) {
        str.getClass();
        return internalGetClientParams().i().containsKey(str);
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public boolean containsServerParams(String str) {
        str.getClass();
        return internalGetServerParams().i().containsKey(str);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeaderBiddingAd)) {
            return super.equals(obj);
        }
        HeaderBiddingAd headerBiddingAd = (HeaderBiddingAd) obj;
        if (getBidder().equals(headerBiddingAd.getBidder()) && internalGetClientParams().equals(headerBiddingAd.internalGetClientParams()) && internalGetServerParams().equals(headerBiddingAd.internalGetServerParams()) && this.unknownFields.equals(headerBiddingAd.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public String getBidder() {
        Object obj = this.bidder_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bidder_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public ByteString getBidderBytes() {
        Object obj = this.bidder_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bidder_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    @Deprecated
    public Map<String, String> getClientParams() {
        return getClientParamsMap();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public int getClientParamsCount() {
        return internalGetClientParams().i().size();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public Map<String, String> getClientParamsMap() {
        return internalGetClientParams().i();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public String getClientParamsOrDefault(String str, String str2) {
        str.getClass();
        Map<String, String> i10 = internalGetClientParams().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        return str2;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public String getClientParamsOrThrow(String str) {
        str.getClass();
        Map<String, String> i10 = internalGetClientParams().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<HeaderBiddingAd> getParserForType() {
        return PARSER;
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
        for (Map.Entry<String, String> entry : internalGetClientParams().i().entrySet()) {
            i10 += CodedOutputStream.G(2, ClientParamsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
        }
        for (Map.Entry<String, String> entry2 : internalGetServerParams().i().entrySet()) {
            i10 += CodedOutputStream.G(3, ServerParamsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry2.getKey()).r(entry2.getValue()).build());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    @Deprecated
    public Map<String, String> getServerParams() {
        return getServerParamsMap();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public int getServerParamsCount() {
        return internalGetServerParams().i().size();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public Map<String, String> getServerParamsMap() {
        return internalGetServerParams().i();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public String getServerParamsOrDefault(String str, String str2) {
        str.getClass();
        Map<String, String> i10 = internalGetServerParams().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        return str2;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public String getServerParamsOrThrow(String str) {
        str.getClass();
        Map<String, String> i10 = internalGetServerParams().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        throw new IllegalArgumentException();
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getBidder().hashCode();
        if (!internalGetClientParams().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 2) * 53) + internalGetClientParams().hashCode();
        }
        if (!internalGetServerParams().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 3) * 53) + internalGetServerParams().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable.d(HeaderBiddingAd.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected MapField internalGetMapField(int i10) {
        if (i10 != 2) {
            if (i10 == 3) {
                return internalGetServerParams();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
        }
        return internalGetClientParams();
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
        return new HeaderBiddingAd();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getBidderBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.bidder_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetClientParams(), ClientParamsDefaultEntryHolder.defaultEntry, 2);
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetServerParams(), ServerParamsDefaultEntryHolder.defaultEntry, 3);
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements HeaderBiddingAdOrBuilder {
        private Object bidder_;
        private int bitField0_;
        private MapField<String, String> clientParams_;
        private MapField<String, String> serverParams_;

        public static final Descriptors.Descriptor getDescriptor() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor;
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

        private MapField<String, String> internalGetMutableServerParams() {
            onChanged();
            if (this.serverParams_ == null) {
                this.serverParams_ = MapField.p(ServerParamsDefaultEntryHolder.defaultEntry);
            }
            if (!this.serverParams_.m()) {
                this.serverParams_ = this.serverParams_.f();
            }
            return this.serverParams_;
        }

        private MapField<String, String> internalGetServerParams() {
            MapField<String, String> mapField = this.serverParams_;
            if (mapField == null) {
                return MapField.g(ServerParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearBidder() {
            this.bidder_ = HeaderBiddingAd.getDefaultInstance().getBidder();
            onChanged();
            return this;
        }

        public Builder clearClientParams() {
            internalGetMutableClientParams().l().clear();
            return this;
        }

        public Builder clearServerParams() {
            internalGetMutableServerParams().l().clear();
            return this;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public boolean containsClientParams(String str) {
            str.getClass();
            return internalGetClientParams().i().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public boolean containsServerParams(String str) {
            str.getClass();
            return internalGetServerParams().i().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public String getBidder() {
            Object obj = this.bidder_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bidder_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public ByteString getBidderBytes() {
            Object obj = this.bidder_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bidder_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        @Deprecated
        public Map<String, String> getClientParams() {
            return getClientParamsMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public int getClientParamsCount() {
            return internalGetClientParams().i().size();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public Map<String, String> getClientParamsMap() {
            return internalGetClientParams().i();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public String getClientParamsOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> i10 = internalGetClientParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            return str2;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
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
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor;
        }

        @Deprecated
        public Map<String, String> getMutableClientParams() {
            return internalGetMutableClientParams().l();
        }

        @Deprecated
        public Map<String, String> getMutableServerParams() {
            return internalGetMutableServerParams().l();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        @Deprecated
        public Map<String, String> getServerParams() {
            return getServerParamsMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public int getServerParamsCount() {
            return internalGetServerParams().i().size();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public Map<String, String> getServerParamsMap() {
            return internalGetServerParams().i();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public String getServerParamsOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> i10 = internalGetServerParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            return str2;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public String getServerParamsOrThrow(String str) {
            str.getClass();
            Map<String, String> i10 = internalGetServerParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable.d(HeaderBiddingAd.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected MapField internalGetMapField(int i10) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return internalGetServerParams();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }
            return internalGetClientParams();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected MapField internalGetMutableMapField(int i10) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return internalGetMutableServerParams();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }
            return internalGetMutableClientParams();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder putAllClientParams(Map<String, String> map) {
            internalGetMutableClientParams().l().putAll(map);
            return this;
        }

        public Builder putAllServerParams(Map<String, String> map) {
            internalGetMutableServerParams().l().putAll(map);
            return this;
        }

        public Builder putClientParams(String str, String str2) {
            str.getClass();
            str2.getClass();
            internalGetMutableClientParams().l().put(str, str2);
            return this;
        }

        public Builder putServerParams(String str, String str2) {
            str.getClass();
            str2.getClass();
            internalGetMutableServerParams().l().put(str, str2);
            return this;
        }

        public Builder removeClientParams(String str) {
            str.getClass();
            internalGetMutableClientParams().l().remove(str);
            return this;
        }

        public Builder removeServerParams(String str) {
            str.getClass();
            internalGetMutableServerParams().l().remove(str);
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

        private Builder() {
            this.bidder_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public HeaderBiddingAd build() {
            HeaderBiddingAd buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public HeaderBiddingAd buildPartial() {
            HeaderBiddingAd headerBiddingAd = new HeaderBiddingAd(this);
            headerBiddingAd.bidder_ = this.bidder_;
            headerBiddingAd.clientParams_ = internalGetClientParams();
            headerBiddingAd.clientParams_.n();
            headerBiddingAd.serverParams_ = internalGetServerParams();
            headerBiddingAd.serverParams_.n();
            onBuilt();
            return headerBiddingAd;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public HeaderBiddingAd mo4630getDefaultInstanceForType() {
            return HeaderBiddingAd.getDefaultInstance();
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
            internalGetMutableClientParams().a();
            internalGetMutableServerParams().a();
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.bidder_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof HeaderBiddingAd) {
                return mergeFrom((HeaderBiddingAd) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(HeaderBiddingAd headerBiddingAd) {
            if (headerBiddingAd == HeaderBiddingAd.getDefaultInstance()) {
                return this;
            }
            if (!headerBiddingAd.getBidder().isEmpty()) {
                this.bidder_ = headerBiddingAd.bidder_;
                onChanged();
            }
            internalGetMutableClientParams().o(headerBiddingAd.internalGetClientParams());
            internalGetMutableServerParams().o(headerBiddingAd.internalGetServerParams());
            mergeUnknownFields(((GeneratedMessageV3) headerBiddingAd).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.headerbidding.HeaderBiddingAd r3 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.headerbidding.HeaderBiddingAd r4 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$Builder");
        }
    }

    public static Builder newBuilder(HeaderBiddingAd headerBiddingAd) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(headerBiddingAd);
    }

    public static HeaderBiddingAd parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private HeaderBiddingAd(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static HeaderBiddingAd parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static HeaderBiddingAd parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public HeaderBiddingAd mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static HeaderBiddingAd parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private HeaderBiddingAd() {
        this.memoizedIsInitialized = (byte) -1;
        this.bidder_ = "";
    }

    public static HeaderBiddingAd parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static HeaderBiddingAd parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static HeaderBiddingAd parseFrom(InputStream inputStream) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
    private HeaderBiddingAd(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.bidder_ = nVar.J();
                            } else if (K == 18) {
                                if (!(z11 & true)) {
                                    this.clientParams_ = MapField.p(ClientParamsDefaultEntryHolder.defaultEntry);
                                    z11 |= true;
                                }
                                s0 s0Var = (s0) nVar.A(ClientParamsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                this.clientParams_.l().put(s0Var.h(), s0Var.j());
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.serverParams_ = MapField.p(ServerParamsDefaultEntryHolder.defaultEntry);
                                    z11 |= true;
                                }
                                s0 s0Var2 = (s0) nVar.A(ServerParamsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                this.serverParams_.l().put(s0Var2.h(), s0Var2.j());
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

    public static HeaderBiddingAd parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static HeaderBiddingAd parseFrom(n nVar) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static HeaderBiddingAd parseFrom(n nVar, y yVar) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
