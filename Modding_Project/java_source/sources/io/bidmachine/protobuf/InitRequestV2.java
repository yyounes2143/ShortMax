package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.c;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class InitRequestV2 extends GeneratedMessageV3 implements InitRequestV2OrBuilder {
    public static final int CONTEXT_FIELD_NUMBER = 1;
    public static final int EXT_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Context context_;
    private Struct ext_;
    private byte memoizedIsInitialized;
    private static final InitRequestV2 DEFAULT_INSTANCE = new InitRequestV2();
    private static final j1<InitRequestV2> PARSER = new b<InitRequestV2>() { // from class: io.bidmachine.protobuf.InitRequestV2.1
        @Override // com.explorestack.protobuf.j1
        public InitRequestV2 parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new InitRequestV2(nVar, yVar);
        }
    };

    public static InitRequestV2 getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_InitRequestV2_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static InitRequestV2 parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (InitRequestV2) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static InitRequestV2 parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<InitRequestV2> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InitRequestV2)) {
            return super.equals(obj);
        }
        InitRequestV2 initRequestV2 = (InitRequestV2) obj;
        if (hasContext() != initRequestV2.hasContext()) {
            return false;
        }
        if ((hasContext() && !getContext().equals(initRequestV2.getContext())) || hasExt() != initRequestV2.hasExt()) {
            return false;
        }
        if ((!hasExt() || getExt().equals(initRequestV2.getExt())) && this.unknownFields.equals(initRequestV2.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
    public Context getContext() {
        Context context = this.context_;
        if (context == null) {
            return Context.getDefaultInstance();
        }
        return context;
    }

    @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
    public c getContextOrBuilder() {
        return getContext();
    }

    @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
    public Struct getExt() {
        Struct struct = this.ext_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
    public x1 getExtOrBuilder() {
        return getExt();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<InitRequestV2> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.context_ != null) {
            i10 = CodedOutputStream.G(1, getContext());
        } else {
            i10 = 0;
        }
        if (this.ext_ != null) {
            i10 += CodedOutputStream.G(2, getExt());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
    public boolean hasContext() {
        if (this.context_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
    public boolean hasExt() {
        if (this.ext_ != null) {
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
        if (hasContext()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getContext().hashCode();
        }
        if (hasExt()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getExt().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_InitRequestV2_fieldAccessorTable.d(InitRequestV2.class, Builder.class);
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
        return new InitRequestV2();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.context_ != null) {
            codedOutputStream.L0(1, getContext());
        }
        if (this.ext_ != null) {
            codedOutputStream.L0(2, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements InitRequestV2OrBuilder {
        private t1<Context, Context.Builder, c> contextBuilder_;
        private Context context_;
        private t1<Struct, Struct.Builder, x1> extBuilder_;
        private Struct ext_;

        private t1<Context, Context.Builder, c> getContextFieldBuilder() {
            if (this.contextBuilder_ == null) {
                this.contextBuilder_ = new t1<>(getContext(), getParentForChildren(), isClean());
                this.context_ = null;
            }
            return this.contextBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequestV2_descriptor;
        }

        private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
            if (this.extBuilder_ == null) {
                this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                this.ext_ = null;
            }
            return this.extBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
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

        @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
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

        @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
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

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequestV2_descriptor;
        }

        @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
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

        @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
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

        @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
        public boolean hasContext() {
            if (this.contextBuilder_ == null && this.context_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.InitRequestV2OrBuilder
        public boolean hasExt() {
            if (this.extBuilder_ == null && this.ext_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_InitRequestV2_fieldAccessorTable.d(InitRequestV2.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
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

        private Builder() {
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public InitRequestV2 build() {
            InitRequestV2 buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public InitRequestV2 buildPartial() {
            InitRequestV2 initRequestV2 = new InitRequestV2(this);
            t1<Context, Context.Builder, c> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                initRequestV2.context_ = this.context_;
            } else {
                initRequestV2.context_ = t1Var.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
            if (t1Var2 == null) {
                initRequestV2.ext_ = this.ext_;
            } else {
                initRequestV2.ext_ = t1Var2.a();
            }
            onBuilt();
            return initRequestV2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public InitRequestV2 mo4630getDefaultInstanceForType() {
            return InitRequestV2.getDefaultInstance();
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
            if (this.contextBuilder_ == null) {
                this.context_ = null;
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
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

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof InitRequestV2) {
                return mergeFrom((InitRequestV2) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(InitRequestV2 initRequestV2) {
            if (initRequestV2 == InitRequestV2.getDefaultInstance()) {
                return this;
            }
            if (initRequestV2.hasContext()) {
                mergeContext(initRequestV2.getContext());
            }
            if (initRequestV2.hasExt()) {
                mergeExt(initRequestV2.getExt());
            }
            mergeUnknownFields(((GeneratedMessageV3) initRequestV2).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.InitRequestV2.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.InitRequestV2.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.InitRequestV2 r3 = (io.bidmachine.protobuf.InitRequestV2) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.InitRequestV2 r4 = (io.bidmachine.protobuf.InitRequestV2) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.InitRequestV2.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.InitRequestV2$Builder");
        }
    }

    public static Builder newBuilder(InitRequestV2 initRequestV2) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(initRequestV2);
    }

    public static InitRequestV2 parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private InitRequestV2(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static InitRequestV2 parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (InitRequestV2) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static InitRequestV2 parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public InitRequestV2 mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static InitRequestV2 parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private InitRequestV2() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static InitRequestV2 parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static InitRequestV2 parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    private InitRequestV2(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            Context context = this.context_;
                            Context.Builder builder = context != null ? context.toBuilder() : null;
                            Context context2 = (Context) nVar.A(Context.parser(), yVar);
                            this.context_ = context2;
                            if (builder != null) {
                                builder.mergeFrom(context2);
                                this.context_ = builder.buildPartial();
                            }
                        } else if (K != 18) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            Struct struct = this.ext_;
                            Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                            this.ext_ = struct2;
                            if (builder2 != null) {
                                builder2.mergeFrom(struct2);
                                this.ext_ = builder2.buildPartial();
                            }
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

    public static InitRequestV2 parseFrom(InputStream inputStream) throws IOException {
        return (InitRequestV2) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static InitRequestV2 parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (InitRequestV2) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static InitRequestV2 parseFrom(n nVar) throws IOException {
        return (InitRequestV2) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static InitRequestV2 parseFrom(n nVar, y yVar) throws IOException {
        return (InitRequestV2) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
