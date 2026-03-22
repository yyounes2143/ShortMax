package io.bidmachine.protobuf.sdk;

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
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class SDK extends GeneratedMessageV3 implements SDKOrBuilder {
    public static final int OMIDPN_FIELD_NUMBER = 3;
    public static final int OMIDPV_FIELD_NUMBER = 4;
    public static final int SDKVER_FIELD_NUMBER = 2;
    public static final int SDK_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object omidpn_;
    private volatile Object omidpv_;
    private volatile Object sdk_;
    private volatile Object sdkver_;
    private static final SDK DEFAULT_INSTANCE = new SDK();
    private static final j1<SDK> PARSER = new b<SDK>() { // from class: io.bidmachine.protobuf.sdk.SDK.1
        @Override // com.explorestack.protobuf.j1
        public SDK parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new SDK(nVar, yVar);
        }
    };

    public static SDK getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SDK parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SDK) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SDK parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<SDK> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SDK)) {
            return super.equals(obj);
        }
        SDK sdk = (SDK) obj;
        if (getSdk().equals(sdk.getSdk()) && getSdkver().equals(sdk.getSdkver()) && getOmidpn().equals(sdk.getOmidpn()) && getOmidpv().equals(sdk.getOmidpv()) && this.unknownFields.equals(sdk.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public String getOmidpn() {
        Object obj = this.omidpn_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.omidpn_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public ByteString getOmidpnBytes() {
        Object obj = this.omidpn_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.omidpn_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public String getOmidpv() {
        Object obj = this.omidpv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.omidpv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public ByteString getOmidpvBytes() {
        Object obj = this.omidpv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.omidpv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<SDK> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public String getSdk() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdk_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public ByteString getSdkBytes() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdk_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public String getSdkver() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdkver_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
    public ByteString getSdkverBytes() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdkver_ = copyFromUtf8;
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
        if (!getSdkBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.sdk_);
        } else {
            i10 = 0;
        }
        if (!getSdkverBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.sdkver_);
        }
        if (!getOmidpnBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(3, this.omidpn_);
        }
        if (!getOmidpvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.omidpv_);
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
        int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSdk().hashCode()) * 37) + 2) * 53) + getSdkver().hashCode()) * 37) + 3) * 53) + getOmidpn().hashCode()) * 37) + 4) * 53) + getOmidpv().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable.d(SDK.class, Builder.class);
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
        return new SDK();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getSdkBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.sdkver_);
        }
        if (!getOmidpnBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.omidpn_);
        }
        if (!getOmidpvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.omidpv_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements SDKOrBuilder {
        private Object omidpn_;
        private Object omidpv_;
        private Object sdk_;
        private Object sdkver_;

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearOmidpn() {
            this.omidpn_ = SDK.getDefaultInstance().getOmidpn();
            onChanged();
            return this;
        }

        public Builder clearOmidpv() {
            this.omidpv_ = SDK.getDefaultInstance().getOmidpv();
            onChanged();
            return this;
        }

        public Builder clearSdk() {
            this.sdk_ = SDK.getDefaultInstance().getSdk();
            onChanged();
            return this;
        }

        public Builder clearSdkver() {
            this.sdkver_ = SDK.getDefaultInstance().getSdkver();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public String getOmidpn() {
            Object obj = this.omidpn_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.omidpn_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public ByteString getOmidpnBytes() {
            Object obj = this.omidpn_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.omidpn_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public String getOmidpv() {
            Object obj = this.omidpv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.omidpv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public ByteString getOmidpvBytes() {
            Object obj = this.omidpv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.omidpv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public String getSdk() {
            Object obj = this.sdk_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdk_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public ByteString getSdkBytes() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdk_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public String getSdkver() {
            Object obj = this.sdkver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdkver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SDKOrBuilder
        public ByteString getSdkverBytes() {
            Object obj = this.sdkver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdkver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable.d(SDK.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setOmidpn(String str) {
            str.getClass();
            this.omidpn_ = str;
            onChanged();
            return this;
        }

        public Builder setOmidpnBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.omidpn_ = byteString;
            onChanged();
            return this;
        }

        public Builder setOmidpv(String str) {
            str.getClass();
            this.omidpv_ = str;
            onChanged();
            return this;
        }

        public Builder setOmidpvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.omidpv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSdk(String str) {
            str.getClass();
            this.sdk_ = str;
            onChanged();
            return this;
        }

        public Builder setSdkBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sdk_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSdkver(String str) {
            str.getClass();
            this.sdkver_ = str;
            onChanged();
            return this;
        }

        public Builder setSdkverBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sdkver_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.sdk_ = "";
            this.sdkver_ = "";
            this.omidpn_ = "";
            this.omidpv_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SDK build() {
            SDK buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SDK buildPartial() {
            SDK sdk = new SDK(this);
            sdk.sdk_ = this.sdk_;
            sdk.sdkver_ = this.sdkver_;
            sdk.omidpn_ = this.omidpn_;
            sdk.omidpv_ = this.omidpv_;
            onBuilt();
            return sdk;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public SDK mo4630getDefaultInstanceForType() {
            return SDK.getDefaultInstance();
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
            this.sdk_ = "";
            this.sdkver_ = "";
            this.omidpn_ = "";
            this.omidpv_ = "";
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof SDK) {
                return mergeFrom((SDK) message);
            }
            super.mergeFrom(message);
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.sdk_ = "";
            this.sdkver_ = "";
            this.omidpn_ = "";
            this.omidpv_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(SDK sdk) {
            if (sdk == SDK.getDefaultInstance()) {
                return this;
            }
            if (!sdk.getSdk().isEmpty()) {
                this.sdk_ = sdk.sdk_;
                onChanged();
            }
            if (!sdk.getSdkver().isEmpty()) {
                this.sdkver_ = sdk.sdkver_;
                onChanged();
            }
            if (!sdk.getOmidpn().isEmpty()) {
                this.omidpn_ = sdk.omidpn_;
                onChanged();
            }
            if (!sdk.getOmidpv().isEmpty()) {
                this.omidpv_ = sdk.omidpv_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) sdk).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.SDK.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.SDK.access$900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.SDK r3 = (io.bidmachine.protobuf.sdk.SDK) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.SDK r4 = (io.bidmachine.protobuf.sdk.SDK) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.SDK.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.SDK$Builder");
        }
    }

    public static Builder newBuilder(SDK sdk) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(sdk);
    }

    public static SDK parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private SDK(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SDK parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (SDK) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static SDK parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public SDK mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static SDK parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private SDK() {
        this.memoizedIsInitialized = (byte) -1;
        this.sdk_ = "";
        this.sdkver_ = "";
        this.omidpn_ = "";
        this.omidpv_ = "";
    }

    public static SDK parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static SDK parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static SDK parseFrom(InputStream inputStream) throws IOException {
        return (SDK) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SDK parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (SDK) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    private SDK(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int K = nVar.K();
                    if (K != 0) {
                        if (K == 10) {
                            this.sdk_ = nVar.J();
                        } else if (K == 18) {
                            this.sdkver_ = nVar.J();
                        } else if (K == 26) {
                            this.omidpn_ = nVar.J();
                        } else if (K != 34) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            this.omidpv_ = nVar.J();
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

    public static SDK parseFrom(n nVar) throws IOException {
        return (SDK) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static SDK parseFrom(n nVar, y yVar) throws IOException {
        return (SDK) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
