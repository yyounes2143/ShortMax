package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.m0;
import com.explorestack.protobuf.m1;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.n0;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes8.dex */
public final class TokenConfiguration extends GeneratedMessageV3 implements TokenConfigurationOrBuilder {
    public static final int AD_NETWORKS_FIELD_NUMBER = 3;
    public static final int EXPIRATION_TIME_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private n0 adNetworks_;
    private int expirationTime_;
    private byte memoizedIsInitialized;
    private volatile Object type_;
    private static final TokenConfiguration DEFAULT_INSTANCE = new TokenConfiguration();
    private static final j1<TokenConfiguration> PARSER = new b<TokenConfiguration>() { // from class: io.bidmachine.protobuf.TokenConfiguration.1
        @Override // com.explorestack.protobuf.j1
        public TokenConfiguration parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new TokenConfiguration(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements TokenConfigurationOrBuilder {
        private n0 adNetworks_;
        private int bitField0_;
        private int expirationTime_;
        private Object type_;

        private void ensureAdNetworksIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.adNetworks_ = new m0(this.adNetworks_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_TokenConfiguration_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder addAdNetworks(String str) {
            str.getClass();
            ensureAdNetworksIsMutable();
            this.adNetworks_.add(str);
            onChanged();
            return this;
        }

        public Builder addAdNetworksBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            ensureAdNetworksIsMutable();
            this.adNetworks_.b(byteString);
            onChanged();
            return this;
        }

        public Builder addAllAdNetworks(Iterable<String> iterable) {
            ensureAdNetworksIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.adNetworks_);
            onChanged();
            return this;
        }

        public Builder clearAdNetworks() {
            this.adNetworks_ = m0.f14459d;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public Builder clearExpirationTime() {
            this.expirationTime_ = 0;
            onChanged();
            return this;
        }

        public Builder clearType() {
            this.type_ = TokenConfiguration.getDefaultInstance().getType();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
        public String getAdNetworks(int i10) {
            return this.adNetworks_.get(i10);
        }

        @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
        public ByteString getAdNetworksBytes(int i10) {
            return this.adNetworks_.getByteString(i10);
        }

        @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
        public int getAdNetworksCount() {
            return this.adNetworks_.size();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_TokenConfiguration_descriptor;
        }

        @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
        public int getExpirationTime() {
            return this.expirationTime_;
        }

        @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
        public String getType() {
            Object obj = this.type_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.type_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
        public ByteString getTypeBytes() {
            Object obj = this.type_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.type_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_TokenConfiguration_fieldAccessorTable.d(TokenConfiguration.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setAdNetworks(int i10, String str) {
            str.getClass();
            ensureAdNetworksIsMutable();
            this.adNetworks_.set(i10, str);
            onChanged();
            return this;
        }

        public Builder setExpirationTime(int i10) {
            this.expirationTime_ = i10;
            onChanged();
            return this;
        }

        public Builder setType(String str) {
            str.getClass();
            this.type_ = str;
            onChanged();
            return this;
        }

        public Builder setTypeBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.type_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
        public m1 getAdNetworksList() {
            return this.adNetworks_.getUnmodifiableView();
        }

        private Builder() {
            this.type_ = "";
            this.adNetworks_ = m0.f14459d;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public TokenConfiguration build() {
            TokenConfiguration buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public TokenConfiguration buildPartial() {
            TokenConfiguration tokenConfiguration = new TokenConfiguration(this);
            tokenConfiguration.type_ = this.type_;
            tokenConfiguration.expirationTime_ = this.expirationTime_;
            if ((this.bitField0_ & 1) != 0) {
                this.adNetworks_ = this.adNetworks_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            tokenConfiguration.adNetworks_ = this.adNetworks_;
            onBuilt();
            return tokenConfiguration;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public TokenConfiguration mo4630getDefaultInstanceForType() {
            return TokenConfiguration.getDefaultInstance();
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
            this.type_ = "";
            this.expirationTime_ = 0;
            this.adNetworks_ = m0.f14459d;
            this.bitField0_ &= -2;
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.type_ = "";
            this.adNetworks_ = m0.f14459d;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof TokenConfiguration) {
                return mergeFrom((TokenConfiguration) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(TokenConfiguration tokenConfiguration) {
            if (tokenConfiguration == TokenConfiguration.getDefaultInstance()) {
                return this;
            }
            if (!tokenConfiguration.getType().isEmpty()) {
                this.type_ = tokenConfiguration.type_;
                onChanged();
            }
            if (tokenConfiguration.getExpirationTime() != 0) {
                setExpirationTime(tokenConfiguration.getExpirationTime());
            }
            if (!tokenConfiguration.adNetworks_.isEmpty()) {
                if (this.adNetworks_.isEmpty()) {
                    this.adNetworks_ = tokenConfiguration.adNetworks_;
                    this.bitField0_ &= -2;
                } else {
                    ensureAdNetworksIsMutable();
                    this.adNetworks_.addAll(tokenConfiguration.adNetworks_);
                }
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) tokenConfiguration).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.TokenConfiguration.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.TokenConfiguration.access$800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.TokenConfiguration r3 = (io.bidmachine.protobuf.TokenConfiguration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.TokenConfiguration r4 = (io.bidmachine.protobuf.TokenConfiguration) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.TokenConfiguration.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.TokenConfiguration$Builder");
        }
    }

    public static TokenConfiguration getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_TokenConfiguration_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TokenConfiguration parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TokenConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TokenConfiguration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<TokenConfiguration> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenConfiguration)) {
            return super.equals(obj);
        }
        TokenConfiguration tokenConfiguration = (TokenConfiguration) obj;
        if (getType().equals(tokenConfiguration.getType()) && getExpirationTime() == tokenConfiguration.getExpirationTime() && getAdNetworksList().equals(tokenConfiguration.getAdNetworksList()) && this.unknownFields.equals(tokenConfiguration.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
    public String getAdNetworks(int i10) {
        return this.adNetworks_.get(i10);
    }

    @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
    public ByteString getAdNetworksBytes(int i10) {
        return this.adNetworks_.getByteString(i10);
    }

    @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
    public int getAdNetworksCount() {
        return this.adNetworks_.size();
    }

    @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
    public int getExpirationTime() {
        return this.expirationTime_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<TokenConfiguration> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getTypeBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.type_);
        } else {
            i10 = 0;
        }
        int i12 = this.expirationTime_;
        if (i12 != 0) {
            i10 += CodedOutputStream.x(2, i12);
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.adNetworks_.size(); i14++) {
            i13 += GeneratedMessageV3.computeStringSizeNoTag(this.adNetworks_.getRaw(i14));
        }
        int size = i10 + i13 + getAdNetworksList().size() + this.unknownFields.getSerializedSize();
        this.memoizedSize = size;
        return size;
    }

    @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
    public String getType() {
        Object obj = this.type_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.type_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
    public ByteString getTypeBytes() {
        Object obj = this.type_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.type_ = copyFromUtf8;
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + getExpirationTime();
        if (getAdNetworksCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getAdNetworksList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_TokenConfiguration_fieldAccessorTable.d(TokenConfiguration.class, Builder.class);
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
        return new TokenConfiguration();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getTypeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
        }
        int i10 = this.expirationTime_;
        if (i10 != 0) {
            codedOutputStream.H0(2, i10);
        }
        for (int i11 = 0; i11 < this.adNetworks_.size(); i11++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.adNetworks_.getRaw(i11));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static Builder newBuilder(TokenConfiguration tokenConfiguration) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(tokenConfiguration);
    }

    public static TokenConfiguration parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    @Override // io.bidmachine.protobuf.TokenConfigurationOrBuilder
    public m1 getAdNetworksList() {
        return this.adNetworks_;
    }

    private TokenConfiguration(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TokenConfiguration parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (TokenConfiguration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static TokenConfiguration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public TokenConfiguration mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static TokenConfiguration parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private TokenConfiguration() {
        this.memoizedIsInitialized = (byte) -1;
        this.type_ = "";
        this.adNetworks_ = m0.f14459d;
    }

    public static TokenConfiguration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static TokenConfiguration parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static TokenConfiguration parseFrom(InputStream inputStream) throws IOException {
        return (TokenConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private TokenConfiguration(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.type_ = nVar.J();
                            } else if (K == 16) {
                                this.expirationTime_ = nVar.y();
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                String J = nVar.J();
                                if (!z11) {
                                    this.adNetworks_ = new m0();
                                    z11 = true;
                                }
                                this.adNetworks_.add(J);
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
                    this.adNetworks_ = this.adNetworks_.getUnmodifiableView();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.adNetworks_ = this.adNetworks_.getUnmodifiableView();
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static TokenConfiguration parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (TokenConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static TokenConfiguration parseFrom(n nVar) throws IOException {
        return (TokenConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static TokenConfiguration parseFrom(n nVar, y yVar) throws IOException {
        return (TokenConfiguration) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
