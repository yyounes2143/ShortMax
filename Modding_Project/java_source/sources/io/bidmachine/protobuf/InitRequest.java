package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.OS;
import com.explorestack.protobuf.adcom.c;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.w1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class InitRequest extends GeneratedMessageV3 implements InitRequestOrBuilder {
    public static final int ANDROID_FIELD_NUMBER = 20;
    public static final int APP_VER_FIELD_NUMBER = 13;
    public static final int BM_IFV_FIELD_NUMBER = 12;
    public static final int BUNDLE_FIELD_NUMBER = 2;
    public static final int CONTEXT_FIELD_NUMBER = 19;
    public static final int CONTYPE_FIELD_NUMBER = 10;
    public static final int DEVICE_TYPE_FIELD_NUMBER = 9;
    public static final int EXT_FIELD_NUMBER = 15;
    public static final int GEO_FIELD_NUMBER = 5;
    public static final int HWV_FIELD_NUMBER = 18;
    public static final int IFA_FIELD_NUMBER = 8;
    public static final int IFV_FIELD_NUMBER = 11;
    public static final int IOS_FIELD_NUMBER = 21;
    public static final int MAKE_FIELD_NUMBER = 16;
    public static final int MODEL_FIELD_NUMBER = 17;
    public static final int OSV_FIELD_NUMBER = 4;
    public static final int OS_FIELD_NUMBER = 3;
    public static final int SDKVER_FIELD_NUMBER = 7;
    public static final int SDK_FIELD_NUMBER = 6;
    public static final int SELLER_ID_FIELD_NUMBER = 1;
    public static final int SESSION_ID_FIELD_NUMBER = 14;
    private static final long serialVersionUID = 0;
    private volatile Object appVer_;
    private volatile Object bmIfv_;
    private volatile Object bundle_;
    private Context context_;
    private int contype_;
    private int deviceType_;
    private Struct ext_;
    private Context.Geo geo_;
    private volatile Object hwv_;
    private volatile Object ifa_;
    private volatile Object ifv_;
    private volatile Object make_;
    private byte memoizedIsInitialized;
    private volatile Object model_;
    private int os_;
    private volatile Object osv_;
    private int platformDataCase_;
    private Object platformData_;
    private volatile Object sdk_;
    private volatile Object sdkver_;
    private volatile Object sellerId_;
    private volatile Object sessionId_;
    private static final InitRequest DEFAULT_INSTANCE = new InitRequest();
    private static final j1<InitRequest> PARSER = new b<InitRequest>() { // from class: io.bidmachine.protobuf.InitRequest.1
        @Override // com.explorestack.protobuf.j1
        public InitRequest parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new InitRequest(nVar, yVar);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.protobuf.InitRequest$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase;

        static {
            int[] iArr = new int[PlatformDataCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase = iArr;
            try {
                iArr[PlatformDataCase.ANDROID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase[PlatformDataCase.IOS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase[PlatformDataCase.PLATFORMDATA_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public static final class AndroidPlatformData extends GeneratedMessageV3 implements AndroidPlatformDataOrBuilder {
        public static final int KOTLIN_VERSION_FIELD_NUMBER = 2;
        public static final int MIN_API_LEVEL_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object kotlinVersion_;
        private byte memoizedIsInitialized;
        private int minApiLevel_;
        private static final AndroidPlatformData DEFAULT_INSTANCE = new AndroidPlatformData();
        private static final j1<AndroidPlatformData> PARSER = new b<AndroidPlatformData>() { // from class: io.bidmachine.protobuf.InitRequest.AndroidPlatformData.1
            @Override // com.explorestack.protobuf.j1
            public AndroidPlatformData parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new AndroidPlatformData(nVar, yVar);
            }
        };

        public static AndroidPlatformData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AndroidPlatformData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AndroidPlatformData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AndroidPlatformData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<AndroidPlatformData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AndroidPlatformData)) {
                return super.equals(obj);
            }
            AndroidPlatformData androidPlatformData = (AndroidPlatformData) obj;
            if (getMinApiLevel() == androidPlatformData.getMinApiLevel() && getKotlinVersion().equals(androidPlatformData.getKotlinVersion()) && this.unknownFields.equals(androidPlatformData.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.InitRequest.AndroidPlatformDataOrBuilder
        public String getKotlinVersion() {
            Object obj = this.kotlinVersion_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.kotlinVersion_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.InitRequest.AndroidPlatformDataOrBuilder
        public ByteString getKotlinVersionBytes() {
            Object obj = this.kotlinVersion_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.kotlinVersion_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequest.AndroidPlatformDataOrBuilder
        public int getMinApiLevel() {
            return this.minApiLevel_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<AndroidPlatformData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            int i12 = this.minApiLevel_;
            if (i12 != 0) {
                i10 = CodedOutputStream.Y(1, i12);
            } else {
                i10 = 0;
            }
            if (!getKotlinVersionBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.kotlinVersion_);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getMinApiLevel()) * 37) + 2) * 53) + getKotlinVersion().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_fieldAccessorTable.d(AndroidPlatformData.class, Builder.class);
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
            return new AndroidPlatformData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i10 = this.minApiLevel_;
            if (i10 != 0) {
                codedOutputStream.c1(1, i10);
            }
            if (!getKotlinVersionBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.kotlinVersion_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements AndroidPlatformDataOrBuilder {
            private Object kotlinVersion_;
            private int minApiLevel_;

            public static final Descriptors.Descriptor getDescriptor() {
                return InitProto.internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearKotlinVersion() {
                this.kotlinVersion_ = AndroidPlatformData.getDefaultInstance().getKotlinVersion();
                onChanged();
                return this;
            }

            public Builder clearMinApiLevel() {
                this.minApiLevel_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return InitProto.internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_descriptor;
            }

            @Override // io.bidmachine.protobuf.InitRequest.AndroidPlatformDataOrBuilder
            public String getKotlinVersion() {
                Object obj = this.kotlinVersion_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.kotlinVersion_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.InitRequest.AndroidPlatformDataOrBuilder
            public ByteString getKotlinVersionBytes() {
                Object obj = this.kotlinVersion_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.kotlinVersion_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.InitRequest.AndroidPlatformDataOrBuilder
            public int getMinApiLevel() {
                return this.minApiLevel_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return InitProto.internal_static_bidmachine_protobuf_InitRequest_AndroidPlatformData_fieldAccessorTable.d(AndroidPlatformData.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setKotlinVersion(String str) {
                str.getClass();
                this.kotlinVersion_ = str;
                onChanged();
                return this;
            }

            public Builder setKotlinVersionBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.kotlinVersion_ = byteString;
                onChanged();
                return this;
            }

            public Builder setMinApiLevel(int i10) {
                this.minApiLevel_ = i10;
                onChanged();
                return this;
            }

            private Builder() {
                this.kotlinVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AndroidPlatformData build() {
                AndroidPlatformData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AndroidPlatformData buildPartial() {
                AndroidPlatformData androidPlatformData = new AndroidPlatformData(this);
                androidPlatformData.minApiLevel_ = this.minApiLevel_;
                androidPlatformData.kotlinVersion_ = this.kotlinVersion_;
                onBuilt();
                return androidPlatformData;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AndroidPlatformData mo4630getDefaultInstanceForType() {
                return AndroidPlatformData.getDefaultInstance();
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
                this.minApiLevel_ = 0;
                this.kotlinVersion_ = "";
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.kotlinVersion_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof AndroidPlatformData) {
                    return mergeFrom((AndroidPlatformData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AndroidPlatformData androidPlatformData) {
                if (androidPlatformData == AndroidPlatformData.getDefaultInstance()) {
                    return this;
                }
                if (androidPlatformData.getMinApiLevel() != 0) {
                    setMinApiLevel(androidPlatformData.getMinApiLevel());
                }
                if (!androidPlatformData.getKotlinVersion().isEmpty()) {
                    this.kotlinVersion_ = androidPlatformData.kotlinVersion_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) androidPlatformData).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.InitRequest.AndroidPlatformData.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.InitRequest.AndroidPlatformData.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.InitRequest$AndroidPlatformData r3 = (io.bidmachine.protobuf.InitRequest.AndroidPlatformData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.InitRequest$AndroidPlatformData r4 = (io.bidmachine.protobuf.InitRequest.AndroidPlatformData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.InitRequest.AndroidPlatformData.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.InitRequest$AndroidPlatformData$Builder");
            }
        }

        public static Builder newBuilder(AndroidPlatformData androidPlatformData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(androidPlatformData);
        }

        public static AndroidPlatformData parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private AndroidPlatformData(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AndroidPlatformData parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (AndroidPlatformData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static AndroidPlatformData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AndroidPlatformData mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static AndroidPlatformData parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private AndroidPlatformData() {
            this.memoizedIsInitialized = (byte) -1;
            this.kotlinVersion_ = "";
        }

        public static AndroidPlatformData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static AndroidPlatformData parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static AndroidPlatformData parseFrom(InputStream inputStream) throws IOException {
            return (AndroidPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private AndroidPlatformData(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.minApiLevel_ = nVar.L();
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.kotlinVersion_ = nVar.J();
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

        public static AndroidPlatformData parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (AndroidPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static AndroidPlatformData parseFrom(n nVar) throws IOException {
            return (AndroidPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static AndroidPlatformData parseFrom(n nVar, y yVar) throws IOException {
            return (AndroidPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface AndroidPlatformDataOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        String getKotlinVersion();

        ByteString getKotlinVersionBytes();

        int getMinApiLevel();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public enum PlatformDataCase implements i0.c {
        ANDROID(20),
        IOS(21),
        PLATFORMDATA_NOT_SET(0);
        
        private final int value;

        PlatformDataCase(int i10) {
            this.value = i10;
        }

        public static PlatformDataCase forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 20) {
                    if (i10 != 21) {
                        return null;
                    }
                    return IOS;
                }
                return ANDROID;
            }
            return PLATFORMDATA_NOT_SET;
        }

        @Override // com.explorestack.protobuf.i0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PlatformDataCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    /* loaded from: classes8.dex */
    public static final class iOSPlatformData extends GeneratedMessageV3 implements iOSPlatformDataOrBuilder {
        public static final int MIN_OS_VERSION_FIELD_NUMBER = 1;
        public static final int OS_EXECUTION_ENV_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private StringValue minOsVersion_;
        private int osExecutionEnv_;
        private static final iOSPlatformData DEFAULT_INSTANCE = new iOSPlatformData();
        private static final j1<iOSPlatformData> PARSER = new b<iOSPlatformData>() { // from class: io.bidmachine.protobuf.InitRequest.iOSPlatformData.1
            @Override // com.explorestack.protobuf.j1
            public iOSPlatformData parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new iOSPlatformData(nVar, yVar);
            }
        };

        public static iOSPlatformData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static iOSPlatformData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (iOSPlatformData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static iOSPlatformData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<iOSPlatformData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof iOSPlatformData)) {
                return super.equals(obj);
            }
            iOSPlatformData iosplatformdata = (iOSPlatformData) obj;
            if (hasMinOsVersion() != iosplatformdata.hasMinOsVersion()) {
                return false;
            }
            if ((!hasMinOsVersion() || getMinOsVersion().equals(iosplatformdata.getMinOsVersion())) && this.osExecutionEnv_ == iosplatformdata.osExecutionEnv_ && this.unknownFields.equals(iosplatformdata.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
        public StringValue getMinOsVersion() {
            StringValue stringValue = this.minOsVersion_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
        public w1 getMinOsVersionOrBuilder() {
            return getMinOsVersion();
        }

        @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
        public OSExecutionEnvironment getOsExecutionEnv() {
            OSExecutionEnvironment valueOf = OSExecutionEnvironment.valueOf(this.osExecutionEnv_);
            if (valueOf == null) {
                return OSExecutionEnvironment.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
        public int getOsExecutionEnvValue() {
            return this.osExecutionEnv_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<iOSPlatformData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.minOsVersion_ != null) {
                i10 = CodedOutputStream.G(1, getMinOsVersion());
            } else {
                i10 = 0;
            }
            if (this.osExecutionEnv_ != OSExecutionEnvironment.OS_EXECUTION_ENVIRONMENT_UNKNOWN.getNumber()) {
                i10 += CodedOutputStream.l(2, this.osExecutionEnv_);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
        public boolean hasMinOsVersion() {
            if (this.minOsVersion_ != null) {
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
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasMinOsVersion()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getMinOsVersion().hashCode();
            }
            int hashCode2 = (((((hashCode * 37) + 2) * 53) + this.osExecutionEnv_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_fieldAccessorTable.d(iOSPlatformData.class, Builder.class);
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
            return new iOSPlatformData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.minOsVersion_ != null) {
                codedOutputStream.L0(1, getMinOsVersion());
            }
            if (this.osExecutionEnv_ != OSExecutionEnvironment.OS_EXECUTION_ENVIRONMENT_UNKNOWN.getNumber()) {
                codedOutputStream.v0(2, this.osExecutionEnv_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements iOSPlatformDataOrBuilder {
            private t1<StringValue, StringValue.Builder, w1> minOsVersionBuilder_;
            private StringValue minOsVersion_;
            private int osExecutionEnv_;

            public static final Descriptors.Descriptor getDescriptor() {
                return InitProto.internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_descriptor;
            }

            private t1<StringValue, StringValue.Builder, w1> getMinOsVersionFieldBuilder() {
                if (this.minOsVersionBuilder_ == null) {
                    this.minOsVersionBuilder_ = new t1<>(getMinOsVersion(), getParentForChildren(), isClean());
                    this.minOsVersion_ = null;
                }
                return this.minOsVersionBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearMinOsVersion() {
                if (this.minOsVersionBuilder_ == null) {
                    this.minOsVersion_ = null;
                    onChanged();
                } else {
                    this.minOsVersion_ = null;
                    this.minOsVersionBuilder_ = null;
                }
                return this;
            }

            public Builder clearOsExecutionEnv() {
                this.osExecutionEnv_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return InitProto.internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_descriptor;
            }

            @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
            public StringValue getMinOsVersion() {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.minOsVersionBuilder_;
                if (t1Var == null) {
                    StringValue stringValue = this.minOsVersion_;
                    if (stringValue == null) {
                        return StringValue.getDefaultInstance();
                    }
                    return stringValue;
                }
                return t1Var.e();
            }

            public StringValue.Builder getMinOsVersionBuilder() {
                onChanged();
                return getMinOsVersionFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
            public w1 getMinOsVersionOrBuilder() {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.minOsVersionBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                StringValue stringValue = this.minOsVersion_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }

            @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
            public OSExecutionEnvironment getOsExecutionEnv() {
                OSExecutionEnvironment valueOf = OSExecutionEnvironment.valueOf(this.osExecutionEnv_);
                if (valueOf == null) {
                    return OSExecutionEnvironment.UNRECOGNIZED;
                }
                return valueOf;
            }

            @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
            public int getOsExecutionEnvValue() {
                return this.osExecutionEnv_;
            }

            @Override // io.bidmachine.protobuf.InitRequest.iOSPlatformDataOrBuilder
            public boolean hasMinOsVersion() {
                if (this.minOsVersionBuilder_ == null && this.minOsVersion_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return InitProto.internal_static_bidmachine_protobuf_InitRequest_iOSPlatformData_fieldAccessorTable.d(iOSPlatformData.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeMinOsVersion(StringValue stringValue) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.minOsVersionBuilder_;
                if (t1Var == null) {
                    StringValue stringValue2 = this.minOsVersion_;
                    if (stringValue2 != null) {
                        this.minOsVersion_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                    } else {
                        this.minOsVersion_ = stringValue;
                    }
                    onChanged();
                } else {
                    t1Var.g(stringValue);
                }
                return this;
            }

            public Builder setMinOsVersion(StringValue stringValue) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.minOsVersionBuilder_;
                if (t1Var == null) {
                    stringValue.getClass();
                    this.minOsVersion_ = stringValue;
                    onChanged();
                } else {
                    t1Var.i(stringValue);
                }
                return this;
            }

            public Builder setOsExecutionEnv(OSExecutionEnvironment oSExecutionEnvironment) {
                oSExecutionEnvironment.getClass();
                this.osExecutionEnv_ = oSExecutionEnvironment.getNumber();
                onChanged();
                return this;
            }

            public Builder setOsExecutionEnvValue(int i10) {
                this.osExecutionEnv_ = i10;
                onChanged();
                return this;
            }

            private Builder() {
                this.osExecutionEnv_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public iOSPlatformData build() {
                iOSPlatformData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public iOSPlatformData buildPartial() {
                iOSPlatformData iosplatformdata = new iOSPlatformData(this);
                t1<StringValue, StringValue.Builder, w1> t1Var = this.minOsVersionBuilder_;
                if (t1Var == null) {
                    iosplatformdata.minOsVersion_ = this.minOsVersion_;
                } else {
                    iosplatformdata.minOsVersion_ = t1Var.a();
                }
                iosplatformdata.osExecutionEnv_ = this.osExecutionEnv_;
                onBuilt();
                return iosplatformdata;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public iOSPlatformData mo4630getDefaultInstanceForType() {
                return iOSPlatformData.getDefaultInstance();
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
                if (this.minOsVersionBuilder_ == null) {
                    this.minOsVersion_ = null;
                } else {
                    this.minOsVersion_ = null;
                    this.minOsVersionBuilder_ = null;
                }
                this.osExecutionEnv_ = 0;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.osExecutionEnv_ = 0;
                maybeForceBuilderInitialization();
            }

            public Builder setMinOsVersion(StringValue.Builder builder) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.minOsVersionBuilder_;
                if (t1Var == null) {
                    this.minOsVersion_ = builder.build();
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
                if (message instanceof iOSPlatformData) {
                    return mergeFrom((iOSPlatformData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(iOSPlatformData iosplatformdata) {
                if (iosplatformdata == iOSPlatformData.getDefaultInstance()) {
                    return this;
                }
                if (iosplatformdata.hasMinOsVersion()) {
                    mergeMinOsVersion(iosplatformdata.getMinOsVersion());
                }
                if (iosplatformdata.osExecutionEnv_ != 0) {
                    setOsExecutionEnvValue(iosplatformdata.getOsExecutionEnvValue());
                }
                mergeUnknownFields(((GeneratedMessageV3) iosplatformdata).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.InitRequest.iOSPlatformData.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.InitRequest.iOSPlatformData.access$1700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.InitRequest$iOSPlatformData r3 = (io.bidmachine.protobuf.InitRequest.iOSPlatformData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.InitRequest$iOSPlatformData r4 = (io.bidmachine.protobuf.InitRequest.iOSPlatformData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.InitRequest.iOSPlatformData.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.InitRequest$iOSPlatformData$Builder");
            }
        }

        public static Builder newBuilder(iOSPlatformData iosplatformdata) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(iosplatformdata);
        }

        public static iOSPlatformData parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private iOSPlatformData(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static iOSPlatformData parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (iOSPlatformData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static iOSPlatformData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public iOSPlatformData mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static iOSPlatformData parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private iOSPlatformData() {
            this.memoizedIsInitialized = (byte) -1;
            this.osExecutionEnv_ = 0;
        }

        public static iOSPlatformData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static iOSPlatformData parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static iOSPlatformData parseFrom(InputStream inputStream) throws IOException {
            return (iOSPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private iOSPlatformData(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                StringValue stringValue = this.minOsVersion_;
                                StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                StringValue stringValue2 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                this.minOsVersion_ = stringValue2;
                                if (builder != null) {
                                    builder.mergeFrom(stringValue2);
                                    this.minOsVersion_ = builder.buildPartial();
                                }
                            } else if (K != 16) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.osExecutionEnv_ = nVar.t();
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

        public static iOSPlatformData parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (iOSPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static iOSPlatformData parseFrom(n nVar) throws IOException {
            return (iOSPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static iOSPlatformData parseFrom(n nVar, y yVar) throws IOException {
            return (iOSPlatformData) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface iOSPlatformDataOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        StringValue getMinOsVersion();

        w1 getMinOsVersionOrBuilder();

        OSExecutionEnvironment getOsExecutionEnv();

        int getOsExecutionEnvValue();

        boolean hasMinOsVersion();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static InitRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_InitRequest_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static InitRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (InitRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static InitRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<InitRequest> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InitRequest)) {
            return super.equals(obj);
        }
        InitRequest initRequest = (InitRequest) obj;
        if (!getSellerId().equals(initRequest.getSellerId()) || !getBundle().equals(initRequest.getBundle()) || this.os_ != initRequest.os_ || !getOsv().equals(initRequest.getOsv()) || hasGeo() != initRequest.hasGeo()) {
            return false;
        }
        if ((hasGeo() && !getGeo().equals(initRequest.getGeo())) || !getSdk().equals(initRequest.getSdk()) || !getSdkver().equals(initRequest.getSdkver()) || !getIfa().equals(initRequest.getIfa()) || !getIfv().equals(initRequest.getIfv()) || !getBmIfv().equals(initRequest.getBmIfv()) || this.deviceType_ != initRequest.deviceType_ || this.contype_ != initRequest.contype_ || !getAppVer().equals(initRequest.getAppVer()) || !getSessionId().equals(initRequest.getSessionId()) || hasExt() != initRequest.hasExt()) {
            return false;
        }
        if ((hasExt() && !getExt().equals(initRequest.getExt())) || !getMake().equals(initRequest.getMake()) || !getModel().equals(initRequest.getModel()) || !getHwv().equals(initRequest.getHwv()) || hasContext() != initRequest.hasContext()) {
            return false;
        }
        if ((hasContext() && !getContext().equals(initRequest.getContext())) || !getPlatformDataCase().equals(initRequest.getPlatformDataCase())) {
            return false;
        }
        int i10 = this.platformDataCase_;
        if (i10 != 20) {
            if (i10 == 21 && !getIos().equals(initRequest.getIos())) {
                return false;
            }
        } else if (!getAndroid().equals(initRequest.getAndroid())) {
            return false;
        }
        if (this.unknownFields.equals(initRequest.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public AndroidPlatformData getAndroid() {
        if (this.platformDataCase_ == 20) {
            return (AndroidPlatformData) this.platformData_;
        }
        return AndroidPlatformData.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public AndroidPlatformDataOrBuilder getAndroidOrBuilder() {
        if (this.platformDataCase_ == 20) {
            return (AndroidPlatformData) this.platformData_;
        }
        return AndroidPlatformData.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getAppVer() {
        Object obj = this.appVer_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appVer_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getAppVerBytes() {
        Object obj = this.appVer_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVer_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getBmIfv() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bmIfv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getBmIfvBytes() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bmIfv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getBundle() {
        Object obj = this.bundle_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bundle_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getBundleBytes() {
        Object obj = this.bundle_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bundle_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public Context getContext() {
        Context context = this.context_;
        if (context == null) {
            return Context.getDefaultInstance();
        }
        return context;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public c getContextOrBuilder() {
        return getContext();
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ConnectionType getContype() {
        ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
        if (valueOf == null) {
            return ConnectionType.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public int getContypeValue() {
        return this.contype_;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public DeviceType getDeviceType() {
        DeviceType valueOf = DeviceType.valueOf(this.deviceType_);
        if (valueOf == null) {
            return DeviceType.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public int getDeviceTypeValue() {
        return this.deviceType_;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public Struct getExt() {
        Struct struct = this.ext_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public x1 getExtOrBuilder() {
        return getExt();
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public Context.Geo getGeo() {
        Context.Geo geo = this.geo_;
        if (geo == null) {
            return Context.Geo.getDefaultInstance();
        }
        return geo;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public Context.GeoOrBuilder getGeoOrBuilder() {
        return getGeo();
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getHwv() {
        Object obj = this.hwv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.hwv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getHwvBytes() {
        Object obj = this.hwv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.hwv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getIfa() {
        Object obj = this.ifa_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifa_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getIfaBytes() {
        Object obj = this.ifa_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifa_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getIfv() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getIfvBytes() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public iOSPlatformData getIos() {
        if (this.platformDataCase_ == 21) {
            return (iOSPlatformData) this.platformData_;
        }
        return iOSPlatformData.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public iOSPlatformDataOrBuilder getIosOrBuilder() {
        if (this.platformDataCase_ == 21) {
            return (iOSPlatformData) this.platformData_;
        }
        return iOSPlatformData.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getMake() {
        Object obj = this.make_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.make_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getMakeBytes() {
        Object obj = this.make_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.make_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getModel() {
        Object obj = this.model_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.model_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getModelBytes() {
        Object obj = this.model_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.model_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public OS getOs() {
        OS valueOf = OS.valueOf(this.os_);
        if (valueOf == null) {
            return OS.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public int getOsValue() {
        return this.os_;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getOsv() {
        Object obj = this.osv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.osv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getOsvBytes() {
        Object obj = this.osv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.osv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<InitRequest> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public PlatformDataCase getPlatformDataCase() {
        return PlatformDataCase.forNumber(this.platformDataCase_);
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getSdk() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdk_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getSdkBytes() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdk_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getSdkver() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdkver_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public ByteString getSdkverBytes() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdkver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getSellerId() {
        Object obj = this.sellerId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sellerId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
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
        if (!getBundleBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.bundle_);
        }
        if (this.os_ != OS.OS_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(3, this.os_);
        }
        if (!getOsvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.osv_);
        }
        if (this.geo_ != null) {
            i10 += CodedOutputStream.G(5, getGeo());
        }
        if (!getSdkBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(6, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(7, this.sdkver_);
        }
        if (!getIfaBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(8, this.ifa_);
        }
        if (this.deviceType_ != DeviceType.DEVICE_TYPE_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(9, this.deviceType_);
        }
        if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(10, this.contype_);
        }
        if (!getIfvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(11, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(12, this.bmIfv_);
        }
        if (!getAppVerBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(13, this.appVer_);
        }
        if (!getSessionIdBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(14, this.sessionId_);
        }
        if (this.ext_ != null) {
            i10 += CodedOutputStream.G(15, getExt());
        }
        if (!getMakeBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(16, this.make_);
        }
        if (!getModelBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(17, this.model_);
        }
        if (!getHwvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(18, this.hwv_);
        }
        if (this.context_ != null) {
            i10 += CodedOutputStream.G(19, getContext());
        }
        if (this.platformDataCase_ == 20) {
            i10 += CodedOutputStream.G(20, (AndroidPlatformData) this.platformData_);
        }
        if (this.platformDataCase_ == 21) {
            i10 += CodedOutputStream.G(21, (iOSPlatformData) this.platformData_);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public String getSessionId() {
        Object obj = this.sessionId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sessionId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
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

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public boolean hasAndroid() {
        if (this.platformDataCase_ == 20) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public boolean hasContext() {
        if (this.context_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public boolean hasExt() {
        if (this.ext_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public boolean hasGeo() {
        if (this.geo_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.InitRequestOrBuilder
    public boolean hasIos() {
        if (this.platformDataCase_ == 21) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10;
        int hashCode;
        int i11 = this.memoizedHashCode;
        if (i11 != 0) {
            return i11;
        }
        int hashCode2 = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSellerId().hashCode()) * 37) + 2) * 53) + getBundle().hashCode()) * 37) + 3) * 53) + this.os_) * 37) + 4) * 53) + getOsv().hashCode();
        if (hasGeo()) {
            hashCode2 = (((hashCode2 * 37) + 5) * 53) + getGeo().hashCode();
        }
        int hashCode3 = (((((((((((((((((((((((((((((((((((hashCode2 * 37) + 6) * 53) + getSdk().hashCode()) * 37) + 7) * 53) + getSdkver().hashCode()) * 37) + 8) * 53) + getIfa().hashCode()) * 37) + 11) * 53) + getIfv().hashCode()) * 37) + 12) * 53) + getBmIfv().hashCode()) * 37) + 9) * 53) + this.deviceType_) * 37) + 10) * 53) + this.contype_) * 37) + 13) * 53) + getAppVer().hashCode()) * 37) + 14) * 53) + getSessionId().hashCode();
        if (hasExt()) {
            hashCode3 = (((hashCode3 * 37) + 15) * 53) + getExt().hashCode();
        }
        int hashCode4 = (((((((((((hashCode3 * 37) + 16) * 53) + getMake().hashCode()) * 37) + 17) * 53) + getModel().hashCode()) * 37) + 18) * 53) + getHwv().hashCode();
        if (hasContext()) {
            hashCode4 = (((hashCode4 * 37) + 19) * 53) + getContext().hashCode();
        }
        int i12 = this.platformDataCase_;
        if (i12 != 20) {
            if (i12 == 21) {
                i10 = ((hashCode4 * 37) + 21) * 53;
                hashCode = getIos().hashCode();
            }
            int hashCode5 = (hashCode4 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode5;
            return hashCode5;
        }
        i10 = ((hashCode4 * 37) + 20) * 53;
        hashCode = getAndroid().hashCode();
        hashCode4 = i10 + hashCode;
        int hashCode52 = (hashCode4 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode52;
        return hashCode52;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_InitRequest_fieldAccessorTable.d(InitRequest.class, Builder.class);
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
        return new InitRequest();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getSellerIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.sellerId_);
        }
        if (!getBundleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.bundle_);
        }
        if (this.os_ != OS.OS_INVALID.getNumber()) {
            codedOutputStream.v0(3, this.os_);
        }
        if (!getOsvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.osv_);
        }
        if (this.geo_ != null) {
            codedOutputStream.L0(5, getGeo());
        }
        if (!getSdkBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.sdkver_);
        }
        if (!getIfaBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.ifa_);
        }
        if (this.deviceType_ != DeviceType.DEVICE_TYPE_INVALID.getNumber()) {
            codedOutputStream.v0(9, this.deviceType_);
        }
        if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
            codedOutputStream.v0(10, this.contype_);
        }
        if (!getIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.bmIfv_);
        }
        if (!getAppVerBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.appVer_);
        }
        if (!getSessionIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 14, this.sessionId_);
        }
        if (this.ext_ != null) {
            codedOutputStream.L0(15, getExt());
        }
        if (!getMakeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 16, this.make_);
        }
        if (!getModelBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 17, this.model_);
        }
        if (!getHwvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 18, this.hwv_);
        }
        if (this.context_ != null) {
            codedOutputStream.L0(19, getContext());
        }
        if (this.platformDataCase_ == 20) {
            codedOutputStream.L0(20, (AndroidPlatformData) this.platformData_);
        }
        if (this.platformDataCase_ == 21) {
            codedOutputStream.L0(21, (iOSPlatformData) this.platformData_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements InitRequestOrBuilder {
        private t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> androidBuilder_;
        private Object appVer_;
        private Object bmIfv_;
        private Object bundle_;
        private t1<Context, Context.Builder, c> contextBuilder_;
        private Context context_;
        private int contype_;
        private int deviceType_;
        private t1<Struct, Struct.Builder, x1> extBuilder_;
        private Struct ext_;
        private t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> geoBuilder_;
        private Context.Geo geo_;
        private Object hwv_;
        private Object ifa_;
        private Object ifv_;
        private t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> iosBuilder_;
        private Object make_;
        private Object model_;
        private int os_;
        private Object osv_;
        private int platformDataCase_;
        private Object platformData_;
        private Object sdk_;
        private Object sdkver_;
        private Object sellerId_;
        private Object sessionId_;

        private t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> getAndroidFieldBuilder() {
            if (this.androidBuilder_ == null) {
                if (this.platformDataCase_ != 20) {
                    this.platformData_ = AndroidPlatformData.getDefaultInstance();
                }
                this.androidBuilder_ = new t1<>((AndroidPlatformData) this.platformData_, getParentForChildren(), isClean());
                this.platformData_ = null;
            }
            this.platformDataCase_ = 20;
            onChanged();
            return this.androidBuilder_;
        }

        private t1<Context, Context.Builder, c> getContextFieldBuilder() {
            if (this.contextBuilder_ == null) {
                this.contextBuilder_ = new t1<>(getContext(), getParentForChildren(), isClean());
                this.context_ = null;
            }
            return this.contextBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequest_descriptor;
        }

        private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
            if (this.extBuilder_ == null) {
                this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                this.ext_ = null;
            }
            return this.extBuilder_;
        }

        private t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> getGeoFieldBuilder() {
            if (this.geoBuilder_ == null) {
                this.geoBuilder_ = new t1<>(getGeo(), getParentForChildren(), isClean());
                this.geo_ = null;
            }
            return this.geoBuilder_;
        }

        private t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> getIosFieldBuilder() {
            if (this.iosBuilder_ == null) {
                if (this.platformDataCase_ != 21) {
                    this.platformData_ = iOSPlatformData.getDefaultInstance();
                }
                this.iosBuilder_ = new t1<>((iOSPlatformData) this.platformData_, getParentForChildren(), isClean());
                this.platformData_ = null;
            }
            this.platformDataCase_ = 21;
            onChanged();
            return this.iosBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAndroid() {
            t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> t1Var = this.androidBuilder_;
            if (t1Var == null) {
                if (this.platformDataCase_ == 20) {
                    this.platformDataCase_ = 0;
                    this.platformData_ = null;
                    onChanged();
                }
            } else {
                if (this.platformDataCase_ == 20) {
                    this.platformDataCase_ = 0;
                    this.platformData_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearAppVer() {
            this.appVer_ = InitRequest.getDefaultInstance().getAppVer();
            onChanged();
            return this;
        }

        public Builder clearBmIfv() {
            this.bmIfv_ = InitRequest.getDefaultInstance().getBmIfv();
            onChanged();
            return this;
        }

        public Builder clearBundle() {
            this.bundle_ = InitRequest.getDefaultInstance().getBundle();
            onChanged();
            return this;
        }

        public Builder clearContext() {
            if (this.contextBuilder_ == null) {
                this.context_ = null;
                onChanged();
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            return this;
        }

        public Builder clearContype() {
            this.contype_ = 0;
            onChanged();
            return this;
        }

        public Builder clearDeviceType() {
            this.deviceType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearExt() {
            if (this.extBuilder_ == null) {
                this.ext_ = null;
                onChanged();
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            return this;
        }

        public Builder clearGeo() {
            if (this.geoBuilder_ == null) {
                this.geo_ = null;
                onChanged();
            } else {
                this.geo_ = null;
                this.geoBuilder_ = null;
            }
            return this;
        }

        public Builder clearHwv() {
            this.hwv_ = InitRequest.getDefaultInstance().getHwv();
            onChanged();
            return this;
        }

        public Builder clearIfa() {
            this.ifa_ = InitRequest.getDefaultInstance().getIfa();
            onChanged();
            return this;
        }

        public Builder clearIfv() {
            this.ifv_ = InitRequest.getDefaultInstance().getIfv();
            onChanged();
            return this;
        }

        public Builder clearIos() {
            t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> t1Var = this.iosBuilder_;
            if (t1Var == null) {
                if (this.platformDataCase_ == 21) {
                    this.platformDataCase_ = 0;
                    this.platformData_ = null;
                    onChanged();
                }
            } else {
                if (this.platformDataCase_ == 21) {
                    this.platformDataCase_ = 0;
                    this.platformData_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearMake() {
            this.make_ = InitRequest.getDefaultInstance().getMake();
            onChanged();
            return this;
        }

        public Builder clearModel() {
            this.model_ = InitRequest.getDefaultInstance().getModel();
            onChanged();
            return this;
        }

        public Builder clearOs() {
            this.os_ = 0;
            onChanged();
            return this;
        }

        public Builder clearOsv() {
            this.osv_ = InitRequest.getDefaultInstance().getOsv();
            onChanged();
            return this;
        }

        public Builder clearPlatformData() {
            this.platformDataCase_ = 0;
            this.platformData_ = null;
            onChanged();
            return this;
        }

        public Builder clearSdk() {
            this.sdk_ = InitRequest.getDefaultInstance().getSdk();
            onChanged();
            return this;
        }

        public Builder clearSdkver() {
            this.sdkver_ = InitRequest.getDefaultInstance().getSdkver();
            onChanged();
            return this;
        }

        public Builder clearSellerId() {
            this.sellerId_ = InitRequest.getDefaultInstance().getSellerId();
            onChanged();
            return this;
        }

        public Builder clearSessionId() {
            this.sessionId_ = InitRequest.getDefaultInstance().getSessionId();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public AndroidPlatformData getAndroid() {
            t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> t1Var = this.androidBuilder_;
            if (t1Var == null) {
                if (this.platformDataCase_ == 20) {
                    return (AndroidPlatformData) this.platformData_;
                }
                return AndroidPlatformData.getDefaultInstance();
            } else if (this.platformDataCase_ == 20) {
                return t1Var.e();
            } else {
                return AndroidPlatformData.getDefaultInstance();
            }
        }

        public AndroidPlatformData.Builder getAndroidBuilder() {
            return getAndroidFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public AndroidPlatformDataOrBuilder getAndroidOrBuilder() {
            t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> t1Var;
            int i10 = this.platformDataCase_;
            if (i10 == 20 && (t1Var = this.androidBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 20) {
                return (AndroidPlatformData) this.platformData_;
            }
            return AndroidPlatformData.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getAppVer() {
            Object obj = this.appVer_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVer_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getAppVerBytes() {
            Object obj = this.appVer_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVer_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getBmIfv() {
            Object obj = this.bmIfv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bmIfv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getBmIfvBytes() {
            Object obj = this.bmIfv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bmIfv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getBundle() {
            Object obj = this.bundle_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bundle_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getBundleBytes() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bundle_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public Context getContext() {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                Context context = this.context_;
                if (context == null) {
                    return Context.getDefaultInstance();
                }
                return context;
            }
            return t1Var.e();
        }

        public Context.Builder getContextBuilder() {
            onChanged();
            return getContextFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public c getContextOrBuilder() {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Context context = this.context_;
            if (context == null) {
                return Context.getDefaultInstance();
            }
            return context;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ConnectionType getContype() {
            ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
            if (valueOf == null) {
                return ConnectionType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public int getContypeValue() {
            return this.contype_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequest_descriptor;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public DeviceType getDeviceType() {
            DeviceType valueOf = DeviceType.valueOf(this.deviceType_);
            if (valueOf == null) {
                return DeviceType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public int getDeviceTypeValue() {
            return this.deviceType_;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public Struct getExt() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getExtBuilder() {
            onChanged();
            return getExtFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public x1 getExtOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public Context.Geo getGeo() {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                Context.Geo geo = this.geo_;
                if (geo == null) {
                    return Context.Geo.getDefaultInstance();
                }
                return geo;
            }
            return t1Var.e();
        }

        public Context.Geo.Builder getGeoBuilder() {
            onChanged();
            return getGeoFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public Context.GeoOrBuilder getGeoOrBuilder() {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Context.Geo geo = this.geo_;
            if (geo == null) {
                return Context.Geo.getDefaultInstance();
            }
            return geo;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getHwv() {
            Object obj = this.hwv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.hwv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getHwvBytes() {
            Object obj = this.hwv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hwv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getIfa() {
            Object obj = this.ifa_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ifa_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getIfaBytes() {
            Object obj = this.ifa_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifa_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getIfv() {
            Object obj = this.ifv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ifv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getIfvBytes() {
            Object obj = this.ifv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public iOSPlatformData getIos() {
            t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> t1Var = this.iosBuilder_;
            if (t1Var == null) {
                if (this.platformDataCase_ == 21) {
                    return (iOSPlatformData) this.platformData_;
                }
                return iOSPlatformData.getDefaultInstance();
            } else if (this.platformDataCase_ == 21) {
                return t1Var.e();
            } else {
                return iOSPlatformData.getDefaultInstance();
            }
        }

        public iOSPlatformData.Builder getIosBuilder() {
            return getIosFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public iOSPlatformDataOrBuilder getIosOrBuilder() {
            t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> t1Var;
            int i10 = this.platformDataCase_;
            if (i10 == 21 && (t1Var = this.iosBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 21) {
                return (iOSPlatformData) this.platformData_;
            }
            return iOSPlatformData.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getMake() {
            Object obj = this.make_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.make_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getMakeBytes() {
            Object obj = this.make_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.make_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getModel() {
            Object obj = this.model_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.model_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getModelBytes() {
            Object obj = this.model_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.model_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public OS getOs() {
            OS valueOf = OS.valueOf(this.os_);
            if (valueOf == null) {
                return OS.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public int getOsValue() {
            return this.os_;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getOsv() {
            Object obj = this.osv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.osv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getOsvBytes() {
            Object obj = this.osv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.osv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public PlatformDataCase getPlatformDataCase() {
            return PlatformDataCase.forNumber(this.platformDataCase_);
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getSdk() {
            Object obj = this.sdk_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdk_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getSdkBytes() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdk_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getSdkver() {
            Object obj = this.sdkver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdkver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getSdkverBytes() {
            Object obj = this.sdkver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdkver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getSellerId() {
            Object obj = this.sellerId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sellerId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getSellerIdBytes() {
            Object obj = this.sellerId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sellerId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public String getSessionId() {
            Object obj = this.sessionId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sessionId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public ByteString getSessionIdBytes() {
            Object obj = this.sessionId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public boolean hasAndroid() {
            if (this.platformDataCase_ == 20) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public boolean hasContext() {
            if (this.contextBuilder_ == null && this.context_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public boolean hasExt() {
            if (this.extBuilder_ == null && this.ext_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public boolean hasGeo() {
            if (this.geoBuilder_ == null && this.geo_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.InitRequestOrBuilder
        public boolean hasIos() {
            if (this.platformDataCase_ == 21) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequest_fieldAccessorTable.d(InitRequest.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeAndroid(AndroidPlatformData androidPlatformData) {
            t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> t1Var = this.androidBuilder_;
            if (t1Var == null) {
                if (this.platformDataCase_ == 20 && this.platformData_ != AndroidPlatformData.getDefaultInstance()) {
                    this.platformData_ = AndroidPlatformData.newBuilder((AndroidPlatformData) this.platformData_).mergeFrom(androidPlatformData).buildPartial();
                } else {
                    this.platformData_ = androidPlatformData;
                }
                onChanged();
            } else {
                if (this.platformDataCase_ == 20) {
                    t1Var.g(androidPlatformData);
                }
                this.androidBuilder_.i(androidPlatformData);
            }
            this.platformDataCase_ = 20;
            return this;
        }

        public Builder mergeContext(Context context) {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                Context context2 = this.context_;
                if (context2 != null) {
                    this.context_ = Context.newBuilder(context2).mergeFrom(context).buildPartial();
                } else {
                    this.context_ = context;
                }
                onChanged();
            } else {
                t1Var.g(context);
            }
            return this;
        }

        public Builder mergeExt(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.ext_;
                if (struct2 != null) {
                    this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.ext_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder mergeGeo(Context.Geo geo) {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                Context.Geo geo2 = this.geo_;
                if (geo2 != null) {
                    this.geo_ = Context.Geo.newBuilder(geo2).mergeFrom(geo).buildPartial();
                } else {
                    this.geo_ = geo;
                }
                onChanged();
            } else {
                t1Var.g(geo);
            }
            return this;
        }

        public Builder mergeIos(iOSPlatformData iosplatformdata) {
            t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> t1Var = this.iosBuilder_;
            if (t1Var == null) {
                if (this.platformDataCase_ == 21 && this.platformData_ != iOSPlatformData.getDefaultInstance()) {
                    this.platformData_ = iOSPlatformData.newBuilder((iOSPlatformData) this.platformData_).mergeFrom(iosplatformdata).buildPartial();
                } else {
                    this.platformData_ = iosplatformdata;
                }
                onChanged();
            } else {
                if (this.platformDataCase_ == 21) {
                    t1Var.g(iosplatformdata);
                }
                this.iosBuilder_.i(iosplatformdata);
            }
            this.platformDataCase_ = 21;
            return this;
        }

        public Builder setAndroid(AndroidPlatformData androidPlatformData) {
            t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> t1Var = this.androidBuilder_;
            if (t1Var == null) {
                androidPlatformData.getClass();
                this.platformData_ = androidPlatformData;
                onChanged();
            } else {
                t1Var.i(androidPlatformData);
            }
            this.platformDataCase_ = 20;
            return this;
        }

        public Builder setAppVer(String str) {
            str.getClass();
            this.appVer_ = str;
            onChanged();
            return this;
        }

        public Builder setAppVerBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.appVer_ = byteString;
            onChanged();
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

        public Builder setBundle(String str) {
            str.getClass();
            this.bundle_ = str;
            onChanged();
            return this;
        }

        public Builder setBundleBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.bundle_ = byteString;
            onChanged();
            return this;
        }

        public Builder setContext(Context context) {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                context.getClass();
                this.context_ = context;
                onChanged();
            } else {
                t1Var.i(context);
            }
            return this;
        }

        public Builder setContype(ConnectionType connectionType) {
            connectionType.getClass();
            this.contype_ = connectionType.getNumber();
            onChanged();
            return this;
        }

        public Builder setContypeValue(int i10) {
            this.contype_ = i10;
            onChanged();
            return this;
        }

        public Builder setDeviceType(DeviceType deviceType) {
            deviceType.getClass();
            this.deviceType_ = deviceType.getNumber();
            onChanged();
            return this;
        }

        public Builder setDeviceTypeValue(int i10) {
            this.deviceType_ = i10;
            onChanged();
            return this;
        }

        public Builder setExt(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.ext_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            return this;
        }

        public Builder setGeo(Context.Geo geo) {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                geo.getClass();
                this.geo_ = geo;
                onChanged();
            } else {
                t1Var.i(geo);
            }
            return this;
        }

        public Builder setHwv(String str) {
            str.getClass();
            this.hwv_ = str;
            onChanged();
            return this;
        }

        public Builder setHwvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.hwv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setIfa(String str) {
            str.getClass();
            this.ifa_ = str;
            onChanged();
            return this;
        }

        public Builder setIfaBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.ifa_ = byteString;
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

        public Builder setIos(iOSPlatformData iosplatformdata) {
            t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> t1Var = this.iosBuilder_;
            if (t1Var == null) {
                iosplatformdata.getClass();
                this.platformData_ = iosplatformdata;
                onChanged();
            } else {
                t1Var.i(iosplatformdata);
            }
            this.platformDataCase_ = 21;
            return this;
        }

        public Builder setMake(String str) {
            str.getClass();
            this.make_ = str;
            onChanged();
            return this;
        }

        public Builder setMakeBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.make_ = byteString;
            onChanged();
            return this;
        }

        public Builder setModel(String str) {
            str.getClass();
            this.model_ = str;
            onChanged();
            return this;
        }

        public Builder setModelBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.model_ = byteString;
            onChanged();
            return this;
        }

        public Builder setOs(OS os2) {
            os2.getClass();
            this.os_ = os2.getNumber();
            onChanged();
            return this;
        }

        public Builder setOsValue(int i10) {
            this.os_ = i10;
            onChanged();
            return this;
        }

        public Builder setOsv(String str) {
            str.getClass();
            this.osv_ = str;
            onChanged();
            return this;
        }

        public Builder setOsvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.osv_ = byteString;
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
            this.platformDataCase_ = 0;
            this.sellerId_ = "";
            this.bundle_ = "";
            this.os_ = 0;
            this.osv_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            this.ifa_ = "";
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.deviceType_ = 0;
            this.contype_ = 0;
            this.appVer_ = "";
            this.sessionId_ = "";
            this.make_ = "";
            this.model_ = "";
            this.hwv_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public InitRequest build() {
            InitRequest buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public InitRequest buildPartial() {
            InitRequest initRequest = new InitRequest(this);
            initRequest.sellerId_ = this.sellerId_;
            initRequest.bundle_ = this.bundle_;
            initRequest.os_ = this.os_;
            initRequest.osv_ = this.osv_;
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                initRequest.geo_ = this.geo_;
            } else {
                initRequest.geo_ = t1Var.a();
            }
            initRequest.sdk_ = this.sdk_;
            initRequest.sdkver_ = this.sdkver_;
            initRequest.ifa_ = this.ifa_;
            initRequest.ifv_ = this.ifv_;
            initRequest.bmIfv_ = this.bmIfv_;
            initRequest.deviceType_ = this.deviceType_;
            initRequest.contype_ = this.contype_;
            initRequest.appVer_ = this.appVer_;
            initRequest.sessionId_ = this.sessionId_;
            t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
            if (t1Var2 == null) {
                initRequest.ext_ = this.ext_;
            } else {
                initRequest.ext_ = t1Var2.a();
            }
            initRequest.make_ = this.make_;
            initRequest.model_ = this.model_;
            initRequest.hwv_ = this.hwv_;
            t1<Context, Context.Builder, c> t1Var3 = this.contextBuilder_;
            if (t1Var3 == null) {
                initRequest.context_ = this.context_;
            } else {
                initRequest.context_ = t1Var3.a();
            }
            if (this.platformDataCase_ == 20) {
                t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> t1Var4 = this.androidBuilder_;
                if (t1Var4 == null) {
                    initRequest.platformData_ = this.platformData_;
                } else {
                    initRequest.platformData_ = t1Var4.a();
                }
            }
            if (this.platformDataCase_ == 21) {
                t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> t1Var5 = this.iosBuilder_;
                if (t1Var5 == null) {
                    initRequest.platformData_ = this.platformData_;
                } else {
                    initRequest.platformData_ = t1Var5.a();
                }
            }
            initRequest.platformDataCase_ = this.platformDataCase_;
            onBuilt();
            return initRequest;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public InitRequest mo4630getDefaultInstanceForType() {
            return InitRequest.getDefaultInstance();
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
            this.bundle_ = "";
            this.os_ = 0;
            this.osv_ = "";
            if (this.geoBuilder_ == null) {
                this.geo_ = null;
            } else {
                this.geo_ = null;
                this.geoBuilder_ = null;
            }
            this.sdk_ = "";
            this.sdkver_ = "";
            this.ifa_ = "";
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.deviceType_ = 0;
            this.contype_ = 0;
            this.appVer_ = "";
            this.sessionId_ = "";
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            this.make_ = "";
            this.model_ = "";
            this.hwv_ = "";
            if (this.contextBuilder_ == null) {
                this.context_ = null;
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            this.platformDataCase_ = 0;
            this.platformData_ = null;
            return this;
        }

        public Builder setContext(Context.Builder builder) {
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                this.context_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setExt(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                this.ext_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setGeo(Context.Geo.Builder builder) {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                this.geo_ = builder.build();
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
            if (message instanceof InitRequest) {
                return mergeFrom((InitRequest) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setAndroid(AndroidPlatformData.Builder builder) {
            t1<AndroidPlatformData, AndroidPlatformData.Builder, AndroidPlatformDataOrBuilder> t1Var = this.androidBuilder_;
            if (t1Var == null) {
                this.platformData_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.platformDataCase_ = 20;
            return this;
        }

        public Builder setIos(iOSPlatformData.Builder builder) {
            t1<iOSPlatformData, iOSPlatformData.Builder, iOSPlatformDataOrBuilder> t1Var = this.iosBuilder_;
            if (t1Var == null) {
                this.platformData_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.platformDataCase_ = 21;
            return this;
        }

        public Builder mergeFrom(InitRequest initRequest) {
            if (initRequest == InitRequest.getDefaultInstance()) {
                return this;
            }
            if (!initRequest.getSellerId().isEmpty()) {
                this.sellerId_ = initRequest.sellerId_;
                onChanged();
            }
            if (!initRequest.getBundle().isEmpty()) {
                this.bundle_ = initRequest.bundle_;
                onChanged();
            }
            if (initRequest.os_ != 0) {
                setOsValue(initRequest.getOsValue());
            }
            if (!initRequest.getOsv().isEmpty()) {
                this.osv_ = initRequest.osv_;
                onChanged();
            }
            if (initRequest.hasGeo()) {
                mergeGeo(initRequest.getGeo());
            }
            if (!initRequest.getSdk().isEmpty()) {
                this.sdk_ = initRequest.sdk_;
                onChanged();
            }
            if (!initRequest.getSdkver().isEmpty()) {
                this.sdkver_ = initRequest.sdkver_;
                onChanged();
            }
            if (!initRequest.getIfa().isEmpty()) {
                this.ifa_ = initRequest.ifa_;
                onChanged();
            }
            if (!initRequest.getIfv().isEmpty()) {
                this.ifv_ = initRequest.ifv_;
                onChanged();
            }
            if (!initRequest.getBmIfv().isEmpty()) {
                this.bmIfv_ = initRequest.bmIfv_;
                onChanged();
            }
            if (initRequest.deviceType_ != 0) {
                setDeviceTypeValue(initRequest.getDeviceTypeValue());
            }
            if (initRequest.contype_ != 0) {
                setContypeValue(initRequest.getContypeValue());
            }
            if (!initRequest.getAppVer().isEmpty()) {
                this.appVer_ = initRequest.appVer_;
                onChanged();
            }
            if (!initRequest.getSessionId().isEmpty()) {
                this.sessionId_ = initRequest.sessionId_;
                onChanged();
            }
            if (initRequest.hasExt()) {
                mergeExt(initRequest.getExt());
            }
            if (!initRequest.getMake().isEmpty()) {
                this.make_ = initRequest.make_;
                onChanged();
            }
            if (!initRequest.getModel().isEmpty()) {
                this.model_ = initRequest.model_;
                onChanged();
            }
            if (!initRequest.getHwv().isEmpty()) {
                this.hwv_ = initRequest.hwv_;
                onChanged();
            }
            if (initRequest.hasContext()) {
                mergeContext(initRequest.getContext());
            }
            int i10 = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$InitRequest$PlatformDataCase[initRequest.getPlatformDataCase().ordinal()];
            if (i10 == 1) {
                mergeAndroid(initRequest.getAndroid());
            } else if (i10 == 2) {
                mergeIos(initRequest.getIos());
            }
            mergeUnknownFields(((GeneratedMessageV3) initRequest).unknownFields);
            onChanged();
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.platformDataCase_ = 0;
            this.sellerId_ = "";
            this.bundle_ = "";
            this.os_ = 0;
            this.osv_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            this.ifa_ = "";
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.deviceType_ = 0;
            this.contype_ = 0;
            this.appVer_ = "";
            this.sessionId_ = "";
            this.make_ = "";
            this.model_ = "";
            this.hwv_ = "";
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.InitRequest.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.InitRequest.access$4500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.InitRequest r3 = (io.bidmachine.protobuf.InitRequest) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.InitRequest r4 = (io.bidmachine.protobuf.InitRequest) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.InitRequest.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.InitRequest$Builder");
        }
    }

    public static Builder newBuilder(InitRequest initRequest) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(initRequest);
    }

    public static InitRequest parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private InitRequest(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.platformDataCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static InitRequest parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (InitRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static InitRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public InitRequest mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static InitRequest parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static InitRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    private InitRequest() {
        this.platformDataCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.sellerId_ = "";
        this.bundle_ = "";
        this.os_ = 0;
        this.osv_ = "";
        this.sdk_ = "";
        this.sdkver_ = "";
        this.ifa_ = "";
        this.ifv_ = "";
        this.bmIfv_ = "";
        this.deviceType_ = 0;
        this.contype_ = 0;
        this.appVer_ = "";
        this.sessionId_ = "";
        this.make_ = "";
        this.model_ = "";
        this.hwv_ = "";
    }

    public static InitRequest parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static InitRequest parseFrom(InputStream inputStream) throws IOException {
        return (InitRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static InitRequest parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (InitRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static InitRequest parseFrom(n nVar) throws IOException {
        return (InitRequest) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static InitRequest parseFrom(n nVar, y yVar) throws IOException {
        return (InitRequest) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }

    private InitRequest(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int K = nVar.K();
                    switch (K) {
                        case 0:
                            break;
                        case 10:
                            this.sellerId_ = nVar.J();
                            continue;
                        case 18:
                            this.bundle_ = nVar.J();
                            continue;
                        case 24:
                            this.os_ = nVar.t();
                            continue;
                        case 34:
                            this.osv_ = nVar.J();
                            continue;
                        case 42:
                            Context.Geo geo = this.geo_;
                            Context.Geo.Builder builder = geo != null ? geo.toBuilder() : null;
                            Context.Geo geo2 = (Context.Geo) nVar.A(Context.Geo.parser(), yVar);
                            this.geo_ = geo2;
                            if (builder != null) {
                                builder.mergeFrom(geo2);
                                this.geo_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 50:
                            this.sdk_ = nVar.J();
                            continue;
                        case 58:
                            this.sdkver_ = nVar.J();
                            continue;
                        case 66:
                            this.ifa_ = nVar.J();
                            continue;
                        case 72:
                            this.deviceType_ = nVar.t();
                            continue;
                        case 80:
                            this.contype_ = nVar.t();
                            continue;
                        case 90:
                            this.ifv_ = nVar.J();
                            continue;
                        case 98:
                            this.bmIfv_ = nVar.J();
                            continue;
                        case 106:
                            this.appVer_ = nVar.J();
                            continue;
                        case 114:
                            this.sessionId_ = nVar.J();
                            continue;
                        case 122:
                            Struct struct = this.ext_;
                            Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                            this.ext_ = struct2;
                            if (builder2 != null) {
                                builder2.mergeFrom(struct2);
                                this.ext_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 130:
                            this.make_ = nVar.J();
                            continue;
                        case 138:
                            this.model_ = nVar.J();
                            continue;
                        case 146:
                            this.hwv_ = nVar.J();
                            continue;
                        case 154:
                            Context context = this.context_;
                            Context.Builder builder3 = context != null ? context.toBuilder() : null;
                            Context context2 = (Context) nVar.A(Context.parser(), yVar);
                            this.context_ = context2;
                            if (builder3 != null) {
                                builder3.mergeFrom(context2);
                                this.context_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
                        case 162:
                            AndroidPlatformData.Builder builder4 = this.platformDataCase_ == 20 ? ((AndroidPlatformData) this.platformData_).toBuilder() : null;
                            MessageLite A = nVar.A(AndroidPlatformData.parser(), yVar);
                            this.platformData_ = A;
                            if (builder4 != null) {
                                builder4.mergeFrom((AndroidPlatformData) A);
                                this.platformData_ = builder4.buildPartial();
                            }
                            this.platformDataCase_ = 20;
                            continue;
                        case 170:
                            iOSPlatformData.Builder builder5 = this.platformDataCase_ == 21 ? ((iOSPlatformData) this.platformData_).toBuilder() : null;
                            MessageLite A2 = nVar.A(iOSPlatformData.parser(), yVar);
                            this.platformData_ = A2;
                            if (builder5 != null) {
                                builder5.mergeFrom((iOSPlatformData) A2);
                                this.platformData_ = builder5.buildPartial();
                            }
                            this.platformDataCase_ = 21;
                            continue;
                        default:
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                                break;
                            } else {
                                continue;
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
}
