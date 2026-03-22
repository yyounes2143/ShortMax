package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class Error extends GeneratedMessageV3 implements ErrorOrBuilder {
    public static final int ERROR_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int REASON_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private Data error_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private Data reason_;
    private static final Error DEFAULT_INSTANCE = new Error();
    private static final j1<Error> PARSER = new b<Error>() { // from class: io.bidmachine.protobuf.sdk.Error.1
        @Override // com.explorestack.protobuf.j1
        public Error parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Error(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class Data extends GeneratedMessageV3 implements DataOrBuilder {
        public static final int CODE_FIELD_NUMBER = 1;
        public static final int DESCRIPTION_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int code_;
        private volatile Object description_;
        private byte memoizedIsInitialized;
        private static final Data DEFAULT_INSTANCE = new Data();
        private static final j1<Data> PARSER = new b<Data>() { // from class: io.bidmachine.protobuf.sdk.Error.Data.1
            @Override // com.explorestack.protobuf.j1
            public Data parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Data(nVar, yVar);
            }
        };

        public static Data getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_Data_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Data parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Data) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Data parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Data> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Data)) {
                return super.equals(obj);
            }
            Data data = (Data) obj;
            if (getCode() == data.getCode() && getDescription().equals(data.getDescription()) && this.unknownFields.equals(data.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Error.DataOrBuilder
        public int getCode() {
            return this.code_;
        }

        @Override // io.bidmachine.protobuf.sdk.Error.DataOrBuilder
        public String getDescription() {
            Object obj = this.description_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.description_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sdk.Error.DataOrBuilder
        public ByteString getDescriptionBytes() {
            Object obj = this.description_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.description_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Data> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            int i12 = this.code_;
            if (i12 != 0) {
                i10 = CodedOutputStream.R(1, i12);
            } else {
                i10 = 0;
            }
            if (!getDescriptionBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.description_);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getCode()) * 37) + 2) * 53) + getDescription().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_Data_fieldAccessorTable.d(Data.class, Builder.class);
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
            return new Data();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i10 = this.code_;
            if (i10 != 0) {
                codedOutputStream.V0(1, i10);
            }
            if (!getDescriptionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.description_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements DataOrBuilder {
            private int code_;
            private Object description_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_Data_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearCode() {
                this.code_ = 0;
                onChanged();
                return this;
            }

            public Builder clearDescription() {
                this.description_ = Data.getDefaultInstance().getDescription();
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Error.DataOrBuilder
            public int getCode() {
                return this.code_;
            }

            @Override // io.bidmachine.protobuf.sdk.Error.DataOrBuilder
            public String getDescription() {
                Object obj = this.description_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.description_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.Error.DataOrBuilder
            public ByteString getDescriptionBytes() {
                Object obj = this.description_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.description_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_Data_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_Data_fieldAccessorTable.d(Data.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setCode(int i10) {
                this.code_ = i10;
                onChanged();
                return this;
            }

            public Builder setDescription(String str) {
                str.getClass();
                this.description_ = str;
                onChanged();
                return this;
            }

            public Builder setDescriptionBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.description_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.description_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Data build() {
                Data buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Data buildPartial() {
                Data data = new Data(this);
                data.code_ = this.code_;
                data.description_ = this.description_;
                onBuilt();
                return data;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Data mo4630getDefaultInstanceForType() {
                return Data.getDefaultInstance();
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
                this.code_ = 0;
                this.description_ = "";
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.description_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Data) {
                    return mergeFrom((Data) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Data data) {
                if (data == Data.getDefaultInstance()) {
                    return this;
                }
                if (data.getCode() != 0) {
                    setCode(data.getCode());
                }
                if (!data.getDescription().isEmpty()) {
                    this.description_ = data.description_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) data).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sdk.Error.Data.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Error.Data.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Error$Data r3 = (io.bidmachine.protobuf.sdk.Error.Data) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Error$Data r4 = (io.bidmachine.protobuf.sdk.Error.Data) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Error.Data.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Error$Data$Builder");
            }
        }

        public static Builder newBuilder(Data data) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(data);
        }

        public static Data parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Data(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Data parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Data) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Data parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Data mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Data parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Data() {
            this.memoizedIsInitialized = (byte) -1;
            this.description_ = "";
        }

        public static Data parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Data parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Data parseFrom(InputStream inputStream) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Data(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 8) {
                                this.code_ = nVar.G();
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.description_ = nVar.J();
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

        public static Data parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Data parseFrom(n nVar) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Data parseFrom(n nVar, y yVar) throws IOException {
            return (Data) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface DataOrBuilder extends MessageOrBuilder {
        int getCode();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        String getDescription();

        ByteString getDescriptionBytes();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static Error getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Error parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Error) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Error parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Error> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Error)) {
            return super.equals(obj);
        }
        Error error = (Error) obj;
        if (!getName().equals(error.getName()) || hasError() != error.hasError()) {
            return false;
        }
        if ((hasError() && !getError().equals(error.getError())) || hasReason() != error.hasReason()) {
            return false;
        }
        if ((!hasReason() || getReason().equals(error.getReason())) && this.unknownFields.equals(error.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public Data getError() {
        Data data = this.error_;
        if (data == null) {
            return Data.getDefaultInstance();
        }
        return data;
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public DataOrBuilder getErrorOrBuilder() {
        return getError();
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Error> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public Data getReason() {
        Data data = this.reason_;
        if (data == null) {
            return Data.getDefaultInstance();
        }
        return data;
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public DataOrBuilder getReasonOrBuilder() {
        return getReason();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getNameBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.name_);
        } else {
            i10 = 0;
        }
        if (this.error_ != null) {
            i10 += CodedOutputStream.G(2, getError());
        }
        if (this.reason_ != null) {
            i10 += CodedOutputStream.G(3, getReason());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public boolean hasError() {
        if (this.error_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
    public boolean hasReason() {
        if (this.reason_ != null) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasError()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getError().hashCode();
        }
        if (hasReason()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getReason().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_fieldAccessorTable.d(Error.class, Builder.class);
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
        return new Error();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.error_ != null) {
            codedOutputStream.L0(2, getError());
        }
        if (this.reason_ != null) {
            codedOutputStream.L0(3, getReason());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements ErrorOrBuilder {
        private t1<Data, Data.Builder, DataOrBuilder> errorBuilder_;
        private Data error_;
        private Object name_;
        private t1<Data, Data.Builder, DataOrBuilder> reasonBuilder_;
        private Data reason_;

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_descriptor;
        }

        private t1<Data, Data.Builder, DataOrBuilder> getErrorFieldBuilder() {
            if (this.errorBuilder_ == null) {
                this.errorBuilder_ = new t1<>(getError(), getParentForChildren(), isClean());
                this.error_ = null;
            }
            return this.errorBuilder_;
        }

        private t1<Data, Data.Builder, DataOrBuilder> getReasonFieldBuilder() {
            if (this.reasonBuilder_ == null) {
                this.reasonBuilder_ = new t1<>(getReason(), getParentForChildren(), isClean());
                this.reason_ = null;
            }
            return this.reasonBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearError() {
            if (this.errorBuilder_ == null) {
                this.error_ = null;
                onChanged();
            } else {
                this.error_ = null;
                this.errorBuilder_ = null;
            }
            return this;
        }

        public Builder clearName() {
            this.name_ = Error.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearReason() {
            if (this.reasonBuilder_ == null) {
                this.reason_ = null;
                onChanged();
            } else {
                this.reason_ = null;
                this.reasonBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public Data getError() {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.errorBuilder_;
            if (t1Var == null) {
                Data data = this.error_;
                if (data == null) {
                    return Data.getDefaultInstance();
                }
                return data;
            }
            return t1Var.e();
        }

        public Data.Builder getErrorBuilder() {
            onChanged();
            return getErrorFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public DataOrBuilder getErrorOrBuilder() {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.errorBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Data data = this.error_;
            if (data == null) {
                return Data.getDefaultInstance();
            }
            return data;
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public Data getReason() {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.reasonBuilder_;
            if (t1Var == null) {
                Data data = this.reason_;
                if (data == null) {
                    return Data.getDefaultInstance();
                }
                return data;
            }
            return t1Var.e();
        }

        public Data.Builder getReasonBuilder() {
            onChanged();
            return getReasonFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public DataOrBuilder getReasonOrBuilder() {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.reasonBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Data data = this.reason_;
            if (data == null) {
                return Data.getDefaultInstance();
            }
            return data;
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public boolean hasError() {
            if (this.errorBuilder_ == null && this.error_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.sdk.ErrorOrBuilder
        public boolean hasReason() {
            if (this.reasonBuilder_ == null && this.reason_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKErrorsProto.internal_static_bidmachine_protobuf_sdk_errors_Error_fieldAccessorTable.d(Error.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeError(Data data) {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.errorBuilder_;
            if (t1Var == null) {
                Data data2 = this.error_;
                if (data2 != null) {
                    this.error_ = Data.newBuilder(data2).mergeFrom(data).buildPartial();
                } else {
                    this.error_ = data;
                }
                onChanged();
            } else {
                t1Var.g(data);
            }
            return this;
        }

        public Builder mergeReason(Data data) {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.reasonBuilder_;
            if (t1Var == null) {
                Data data2 = this.reason_;
                if (data2 != null) {
                    this.reason_ = Data.newBuilder(data2).mergeFrom(data).buildPartial();
                } else {
                    this.reason_ = data;
                }
                onChanged();
            } else {
                t1Var.g(data);
            }
            return this;
        }

        public Builder setError(Data data) {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.errorBuilder_;
            if (t1Var == null) {
                data.getClass();
                this.error_ = data;
                onChanged();
            } else {
                t1Var.i(data);
            }
            return this;
        }

        public Builder setName(String str) {
            str.getClass();
            this.name_ = str;
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.name_ = byteString;
            onChanged();
            return this;
        }

        public Builder setReason(Data data) {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.reasonBuilder_;
            if (t1Var == null) {
                data.getClass();
                this.reason_ = data;
                onChanged();
            } else {
                t1Var.i(data);
            }
            return this;
        }

        private Builder() {
            this.name_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Error build() {
            Error buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Error buildPartial() {
            Error error = new Error(this);
            error.name_ = this.name_;
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.errorBuilder_;
            if (t1Var == null) {
                error.error_ = this.error_;
            } else {
                error.error_ = t1Var.a();
            }
            t1<Data, Data.Builder, DataOrBuilder> t1Var2 = this.reasonBuilder_;
            if (t1Var2 == null) {
                error.reason_ = this.reason_;
            } else {
                error.reason_ = t1Var2.a();
            }
            onBuilt();
            return error;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Error mo4630getDefaultInstanceForType() {
            return Error.getDefaultInstance();
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
            this.name_ = "";
            if (this.errorBuilder_ == null) {
                this.error_ = null;
            } else {
                this.error_ = null;
                this.errorBuilder_ = null;
            }
            if (this.reasonBuilder_ == null) {
                this.reason_ = null;
            } else {
                this.reason_ = null;
                this.reasonBuilder_ = null;
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.name_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder setError(Data.Builder builder) {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.errorBuilder_;
            if (t1Var == null) {
                this.error_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setReason(Data.Builder builder) {
            t1<Data, Data.Builder, DataOrBuilder> t1Var = this.reasonBuilder_;
            if (t1Var == null) {
                this.reason_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
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
            if (message instanceof Error) {
                return mergeFrom((Error) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Error error) {
            if (error == Error.getDefaultInstance()) {
                return this;
            }
            if (!error.getName().isEmpty()) {
                this.name_ = error.name_;
                onChanged();
            }
            if (error.hasError()) {
                mergeError(error.getError());
            }
            if (error.hasReason()) {
                mergeReason(error.getReason());
            }
            mergeUnknownFields(((GeneratedMessageV3) error).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.Error.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Error.access$1800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Error r3 = (io.bidmachine.protobuf.sdk.Error) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Error r4 = (io.bidmachine.protobuf.sdk.Error) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Error.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Error$Builder");
        }
    }

    public static Builder newBuilder(Error error) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(error);
    }

    public static Error parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Error(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Error parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Error) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Error parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Error mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Error parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Error() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
    }

    public static Error parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Error parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Error parseFrom(InputStream inputStream) throws IOException {
        return (Error) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Error(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        Data.Builder builder;
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
                                if (K == 18) {
                                    Data data = this.error_;
                                    builder = data != null ? data.toBuilder() : null;
                                    Data data2 = (Data) nVar.A(Data.parser(), yVar);
                                    this.error_ = data2;
                                    if (builder != null) {
                                        builder.mergeFrom(data2);
                                        this.error_ = builder.buildPartial();
                                    }
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    Data data3 = this.reason_;
                                    builder = data3 != null ? data3.toBuilder() : null;
                                    Data data4 = (Data) nVar.A(Data.parser(), yVar);
                                    this.reason_ = data4;
                                    if (builder != null) {
                                        builder.mergeFrom(data4);
                                        this.reason_ = builder.buildPartial();
                                    }
                                }
                            } else {
                                this.name_ = nVar.J();
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

    public static Error parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Error) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Error parseFrom(n nVar) throws IOException {
        return (Error) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Error parseFrom(n nVar, y yVar) throws IOException {
        return (Error) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
