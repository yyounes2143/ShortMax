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
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
@Deprecated
/* loaded from: classes8.dex */
public final class RegsCcpaExtension extends GeneratedMessageV3 implements RegsCcpaExtensionOrBuilder {
    private static final RegsCcpaExtension DEFAULT_INSTANCE = new RegsCcpaExtension();
    private static final j1<RegsCcpaExtension> PARSER = new b<RegsCcpaExtension>() { // from class: io.bidmachine.protobuf.RegsCcpaExtension.1
        @Override // com.explorestack.protobuf.j1
        public RegsCcpaExtension parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new RegsCcpaExtension(nVar, yVar);
        }
    };
    public static final int US_PRIVACY_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object usPrivacy_;

    public static RegsCcpaExtension getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RegsCcpaExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RegsCcpaExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RegsCcpaExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<RegsCcpaExtension> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RegsCcpaExtension)) {
            return super.equals(obj);
        }
        RegsCcpaExtension regsCcpaExtension = (RegsCcpaExtension) obj;
        if (getUsPrivacy().equals(regsCcpaExtension.getUsPrivacy()) && this.unknownFields.equals(regsCcpaExtension.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<RegsCcpaExtension> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getUsPrivacyBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.usPrivacy_);
        } else {
            i10 = 0;
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.RegsCcpaExtensionOrBuilder
    public String getUsPrivacy() {
        Object obj = this.usPrivacy_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.usPrivacy_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RegsCcpaExtensionOrBuilder
    public ByteString getUsPrivacyBytes() {
        Object obj = this.usPrivacy_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.usPrivacy_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUsPrivacy().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable.d(RegsCcpaExtension.class, Builder.class);
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
        return new RegsCcpaExtension();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getUsPrivacyBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.usPrivacy_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements RegsCcpaExtensionOrBuilder {
        private Object usPrivacy_;

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearUsPrivacy() {
            this.usPrivacy_ = RegsCcpaExtension.getDefaultInstance().getUsPrivacy();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor;
        }

        @Override // io.bidmachine.protobuf.RegsCcpaExtensionOrBuilder
        public String getUsPrivacy() {
            Object obj = this.usPrivacy_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.usPrivacy_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.RegsCcpaExtensionOrBuilder
        public ByteString getUsPrivacyBytes() {
            Object obj = this.usPrivacy_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.usPrivacy_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable.d(RegsCcpaExtension.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setUsPrivacy(String str) {
            str.getClass();
            this.usPrivacy_ = str;
            onChanged();
            return this;
        }

        public Builder setUsPrivacyBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.usPrivacy_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.usPrivacy_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RegsCcpaExtension build() {
            RegsCcpaExtension buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RegsCcpaExtension buildPartial() {
            RegsCcpaExtension regsCcpaExtension = new RegsCcpaExtension(this);
            regsCcpaExtension.usPrivacy_ = this.usPrivacy_;
            onBuilt();
            return regsCcpaExtension;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public RegsCcpaExtension mo4630getDefaultInstanceForType() {
            return RegsCcpaExtension.getDefaultInstance();
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
            this.usPrivacy_ = "";
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.usPrivacy_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof RegsCcpaExtension) {
                return mergeFrom((RegsCcpaExtension) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(RegsCcpaExtension regsCcpaExtension) {
            if (regsCcpaExtension == RegsCcpaExtension.getDefaultInstance()) {
                return this;
            }
            if (!regsCcpaExtension.getUsPrivacy().isEmpty()) {
                this.usPrivacy_ = regsCcpaExtension.usPrivacy_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) regsCcpaExtension).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.RegsCcpaExtension.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.RegsCcpaExtension.access$600()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.RegsCcpaExtension r3 = (io.bidmachine.protobuf.RegsCcpaExtension) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.RegsCcpaExtension r4 = (io.bidmachine.protobuf.RegsCcpaExtension) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RegsCcpaExtension.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.RegsCcpaExtension$Builder");
        }
    }

    public static Builder newBuilder(RegsCcpaExtension regsCcpaExtension) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(regsCcpaExtension);
    }

    public static RegsCcpaExtension parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private RegsCcpaExtension(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RegsCcpaExtension parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (RegsCcpaExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static RegsCcpaExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public RegsCcpaExtension mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static RegsCcpaExtension parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private RegsCcpaExtension() {
        this.memoizedIsInitialized = (byte) -1;
        this.usPrivacy_ = "";
    }

    public static RegsCcpaExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static RegsCcpaExtension parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static RegsCcpaExtension parseFrom(InputStream inputStream) throws IOException {
        return (RegsCcpaExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RegsCcpaExtension(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
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
                                this.usPrivacy_ = nVar.J();
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
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

    public static RegsCcpaExtension parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (RegsCcpaExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static RegsCcpaExtension parseFrom(n nVar) throws IOException {
        return (RegsCcpaExtension) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static RegsCcpaExtension parseFrom(n nVar, y yVar) throws IOException {
        return (RegsCcpaExtension) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
