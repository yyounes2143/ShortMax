package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
@Deprecated
/* loaded from: classes8.dex */
public final class AppExtension extends GeneratedMessageV3 implements AppExtensionOrBuilder {
    public static final int INSTALL_TIME_FIELD_NUMBER = 1;
    public static final int UPTIME_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Timestamp installTime_;
    private byte memoizedIsInitialized;
    private long uptime_;
    private static final AppExtension DEFAULT_INSTANCE = new AppExtension();
    private static final j1<AppExtension> PARSER = new b<AppExtension>() { // from class: io.bidmachine.protobuf.AppExtension.1
        @Override // com.explorestack.protobuf.j1
        public AppExtension parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new AppExtension(nVar, yVar);
        }
    };

    public static AppExtension getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_AppExtension_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AppExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AppExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AppExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<AppExtension> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AppExtension)) {
            return super.equals(obj);
        }
        AppExtension appExtension = (AppExtension) obj;
        if (hasInstallTime() != appExtension.hasInstallTime()) {
            return false;
        }
        if ((!hasInstallTime() || getInstallTime().equals(appExtension.getInstallTime())) && getUptime() == appExtension.getUptime() && this.unknownFields.equals(appExtension.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
    public Timestamp getInstallTime() {
        Timestamp timestamp = this.installTime_;
        if (timestamp == null) {
            return Timestamp.getDefaultInstance();
        }
        return timestamp;
    }

    @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
    public c2 getInstallTimeOrBuilder() {
        return getInstallTime();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<AppExtension> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.installTime_ != null) {
            i10 = CodedOutputStream.G(1, getInstallTime());
        } else {
            i10 = 0;
        }
        long j10 = this.uptime_;
        if (j10 != 0) {
            i10 += CodedOutputStream.a0(2, j10);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
    public long getUptime() {
        return this.uptime_;
    }

    @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
    public boolean hasInstallTime() {
        if (this.installTime_ != null) {
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
        if (hasInstallTime()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getInstallTime().hashCode();
        }
        int i11 = (((((hashCode * 37) + 2) * 53) + i0.i(getUptime())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = i11;
        return i11;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_AppExtension_fieldAccessorTable.d(AppExtension.class, Builder.class);
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
        return new AppExtension();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.installTime_ != null) {
            codedOutputStream.L0(1, getInstallTime());
        }
        long j10 = this.uptime_;
        if (j10 != 0) {
            codedOutputStream.e1(2, j10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements AppExtensionOrBuilder {
        private t1<Timestamp, Timestamp.Builder, c2> installTimeBuilder_;
        private Timestamp installTime_;
        private long uptime_;

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AppExtension_descriptor;
        }

        private t1<Timestamp, Timestamp.Builder, c2> getInstallTimeFieldBuilder() {
            if (this.installTimeBuilder_ == null) {
                this.installTimeBuilder_ = new t1<>(getInstallTime(), getParentForChildren(), isClean());
                this.installTime_ = null;
            }
            return this.installTimeBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearInstallTime() {
            if (this.installTimeBuilder_ == null) {
                this.installTime_ = null;
                onChanged();
            } else {
                this.installTime_ = null;
                this.installTimeBuilder_ = null;
            }
            return this;
        }

        public Builder clearUptime() {
            this.uptime_ = 0L;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AppExtension_descriptor;
        }

        @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
        public Timestamp getInstallTime() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp = this.installTime_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }
            return t1Var.e();
        }

        public Timestamp.Builder getInstallTimeBuilder() {
            onChanged();
            return getInstallTimeFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
        public c2 getInstallTimeOrBuilder() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Timestamp timestamp = this.installTime_;
            if (timestamp == null) {
                return Timestamp.getDefaultInstance();
            }
            return timestamp;
        }

        @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
        public long getUptime() {
            return this.uptime_;
        }

        @Override // io.bidmachine.protobuf.AppExtensionOrBuilder
        public boolean hasInstallTime() {
            if (this.installTimeBuilder_ == null && this.installTime_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AppExtension_fieldAccessorTable.d(AppExtension.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeInstallTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp2 = this.installTime_;
                if (timestamp2 != null) {
                    this.installTime_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                } else {
                    this.installTime_ = timestamp;
                }
                onChanged();
            } else {
                t1Var.g(timestamp);
            }
            return this;
        }

        public Builder setInstallTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                timestamp.getClass();
                this.installTime_ = timestamp;
                onChanged();
            } else {
                t1Var.i(timestamp);
            }
            return this;
        }

        public Builder setUptime(long j10) {
            this.uptime_ = j10;
            onChanged();
            return this;
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AppExtension build() {
            AppExtension buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AppExtension buildPartial() {
            AppExtension appExtension = new AppExtension(this);
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                appExtension.installTime_ = this.installTime_;
            } else {
                appExtension.installTime_ = t1Var.a();
            }
            appExtension.uptime_ = this.uptime_;
            onBuilt();
            return appExtension;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AppExtension mo4630getDefaultInstanceForType() {
            return AppExtension.getDefaultInstance();
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

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            if (this.installTimeBuilder_ == null) {
                this.installTime_ = null;
            } else {
                this.installTime_ = null;
                this.installTimeBuilder_ = null;
            }
            this.uptime_ = 0L;
            return this;
        }

        public Builder setInstallTime(Timestamp.Builder builder) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                this.installTime_ = builder.build();
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
            if (message instanceof AppExtension) {
                return mergeFrom((AppExtension) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(AppExtension appExtension) {
            if (appExtension == AppExtension.getDefaultInstance()) {
                return this;
            }
            if (appExtension.hasInstallTime()) {
                mergeInstallTime(appExtension.getInstallTime());
            }
            if (appExtension.getUptime() != 0) {
                setUptime(appExtension.getUptime());
            }
            mergeUnknownFields(((GeneratedMessageV3) appExtension).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.AppExtension.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.AppExtension.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.AppExtension r3 = (io.bidmachine.protobuf.AppExtension) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.AppExtension r4 = (io.bidmachine.protobuf.AppExtension) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.AppExtension.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.AppExtension$Builder");
        }
    }

    public static Builder newBuilder(AppExtension appExtension) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(appExtension);
    }

    public static AppExtension parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private AppExtension(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AppExtension parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (AppExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static AppExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public AppExtension mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static AppExtension parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private AppExtension() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AppExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static AppExtension parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    private AppExtension(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            Timestamp timestamp = this.installTime_;
                            Timestamp.Builder builder = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                            this.installTime_ = timestamp2;
                            if (builder != null) {
                                builder.mergeFrom(timestamp2);
                                this.installTime_ = builder.buildPartial();
                            }
                        } else if (K != 16) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            this.uptime_ = nVar.M();
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

    public static AppExtension parseFrom(InputStream inputStream) throws IOException {
        return (AppExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AppExtension parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (AppExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static AppExtension parseFrom(n nVar) throws IOException {
        return (AppExtension) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static AppExtension parseFrom(n nVar, y yVar) throws IOException {
        return (AppExtension) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
