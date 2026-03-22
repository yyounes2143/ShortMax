package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Struct;
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
public final class Extras extends GeneratedMessageV3 implements ExtrasOrBuilder {
    public static final int INTERNAL_FIELD_NUMBER = 2;
    public static final int PRIVATE_FIELD_NUMBER = 1;
    public static final int PUBLIC_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private Struct internal_;
    private byte memoizedIsInitialized;
    private Struct private_;
    private Struct public_;
    private static final Extras DEFAULT_INSTANCE = new Extras();
    private static final j1<Extras> PARSER = new b<Extras>() { // from class: io.bidmachine.protobuf.Extras.1
        @Override // com.explorestack.protobuf.j1
        public Extras parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Extras(nVar, yVar);
        }
    };

    public static Extras getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_Extras_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Extras parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Extras) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Extras parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Extras> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Extras)) {
            return super.equals(obj);
        }
        Extras extras = (Extras) obj;
        if (hasPrivate() != extras.hasPrivate()) {
            return false;
        }
        if ((hasPrivate() && !getPrivate().equals(extras.getPrivate())) || hasInternal() != extras.hasInternal()) {
            return false;
        }
        if ((hasInternal() && !getInternal().equals(extras.getInternal())) || hasPublic() != extras.hasPublic()) {
            return false;
        }
        if ((!hasPublic() || getPublic().equals(extras.getPublic())) && this.unknownFields.equals(extras.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public Struct getInternal() {
        Struct struct = this.internal_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public x1 getInternalOrBuilder() {
        return getInternal();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Extras> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public Struct getPrivate() {
        Struct struct = this.private_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public x1 getPrivateOrBuilder() {
        return getPrivate();
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public Struct getPublic() {
        Struct struct = this.public_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public x1 getPublicOrBuilder() {
        return getPublic();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.private_ != null) {
            i10 = CodedOutputStream.G(1, getPrivate());
        } else {
            i10 = 0;
        }
        if (this.internal_ != null) {
            i10 += CodedOutputStream.G(2, getInternal());
        }
        if (this.public_ != null) {
            i10 += CodedOutputStream.G(3, getPublic());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public boolean hasInternal() {
        if (this.internal_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public boolean hasPrivate() {
        if (this.private_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.ExtrasOrBuilder
    public boolean hasPublic() {
        if (this.public_ != null) {
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
        if (hasPrivate()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPrivate().hashCode();
        }
        if (hasInternal()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getInternal().hashCode();
        }
        if (hasPublic()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getPublic().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_Extras_fieldAccessorTable.d(Extras.class, Builder.class);
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

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected Object newInstance(GeneratedMessageV3.f fVar) {
        return new Extras();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.private_ != null) {
            codedOutputStream.L0(1, getPrivate());
        }
        if (this.internal_ != null) {
            codedOutputStream.L0(2, getInternal());
        }
        if (this.public_ != null) {
            codedOutputStream.L0(3, getPublic());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements ExtrasOrBuilder {
        private t1<Struct, Struct.Builder, x1> internalBuilder_;
        private Struct internal_;
        private t1<Struct, Struct.Builder, x1> privateBuilder_;
        private Struct private_;
        private t1<Struct, Struct.Builder, x1> publicBuilder_;
        private Struct public_;

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_Extras_descriptor;
        }

        private t1<Struct, Struct.Builder, x1> getInternalFieldBuilder() {
            if (this.internalBuilder_ == null) {
                this.internalBuilder_ = new t1<>(getInternal(), getParentForChildren(), isClean());
                this.internal_ = null;
            }
            return this.internalBuilder_;
        }

        private t1<Struct, Struct.Builder, x1> getPrivateFieldBuilder() {
            if (this.privateBuilder_ == null) {
                this.privateBuilder_ = new t1<>(getPrivate(), getParentForChildren(), isClean());
                this.private_ = null;
            }
            return this.privateBuilder_;
        }

        private t1<Struct, Struct.Builder, x1> getPublicFieldBuilder() {
            if (this.publicBuilder_ == null) {
                this.publicBuilder_ = new t1<>(getPublic(), getParentForChildren(), isClean());
                this.public_ = null;
            }
            return this.publicBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearInternal() {
            if (this.internalBuilder_ == null) {
                this.internal_ = null;
                onChanged();
            } else {
                this.internal_ = null;
                this.internalBuilder_ = null;
            }
            return this;
        }

        public Builder clearPrivate() {
            if (this.privateBuilder_ == null) {
                this.private_ = null;
                onChanged();
            } else {
                this.private_ = null;
                this.privateBuilder_ = null;
            }
            return this;
        }

        public Builder clearPublic() {
            if (this.publicBuilder_ == null) {
                this.public_ = null;
                onChanged();
            } else {
                this.public_ = null;
                this.publicBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_Extras_descriptor;
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public Struct getInternal() {
            t1<Struct, Struct.Builder, x1> t1Var = this.internalBuilder_;
            if (t1Var == null) {
                Struct struct = this.internal_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getInternalBuilder() {
            onChanged();
            return getInternalFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public x1 getInternalOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.internalBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.internal_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public Struct getPrivate() {
            t1<Struct, Struct.Builder, x1> t1Var = this.privateBuilder_;
            if (t1Var == null) {
                Struct struct = this.private_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getPrivateBuilder() {
            onChanged();
            return getPrivateFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public x1 getPrivateOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.privateBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.private_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public Struct getPublic() {
            t1<Struct, Struct.Builder, x1> t1Var = this.publicBuilder_;
            if (t1Var == null) {
                Struct struct = this.public_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getPublicBuilder() {
            onChanged();
            return getPublicFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public x1 getPublicOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.publicBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.public_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public boolean hasInternal() {
            if (this.internalBuilder_ == null && this.internal_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public boolean hasPrivate() {
            if (this.privateBuilder_ == null && this.private_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.ExtrasOrBuilder
        public boolean hasPublic() {
            if (this.publicBuilder_ == null && this.public_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_Extras_fieldAccessorTable.d(Extras.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeInternal(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.internalBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.internal_;
                if (struct2 != null) {
                    this.internal_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.internal_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder mergePrivate(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.privateBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.private_;
                if (struct2 != null) {
                    this.private_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.private_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder mergePublic(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.publicBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.public_;
                if (struct2 != null) {
                    this.public_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.public_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder setInternal(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.internalBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.internal_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            return this;
        }

        public Builder setPrivate(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.privateBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.private_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            return this;
        }

        public Builder setPublic(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.publicBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.public_ = struct;
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
        public Extras build() {
            Extras buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Extras buildPartial() {
            Extras extras = new Extras(this);
            t1<Struct, Struct.Builder, x1> t1Var = this.privateBuilder_;
            if (t1Var == null) {
                extras.private_ = this.private_;
            } else {
                extras.private_ = t1Var.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var2 = this.internalBuilder_;
            if (t1Var2 == null) {
                extras.internal_ = this.internal_;
            } else {
                extras.internal_ = t1Var2.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var3 = this.publicBuilder_;
            if (t1Var3 == null) {
                extras.public_ = this.public_;
            } else {
                extras.public_ = t1Var3.a();
            }
            onBuilt();
            return extras;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Extras mo4630getDefaultInstanceForType() {
            return Extras.getDefaultInstance();
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
            if (this.privateBuilder_ == null) {
                this.private_ = null;
            } else {
                this.private_ = null;
                this.privateBuilder_ = null;
            }
            if (this.internalBuilder_ == null) {
                this.internal_ = null;
            } else {
                this.internal_ = null;
                this.internalBuilder_ = null;
            }
            if (this.publicBuilder_ == null) {
                this.public_ = null;
            } else {
                this.public_ = null;
                this.publicBuilder_ = null;
            }
            return this;
        }

        public Builder setInternal(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.internalBuilder_;
            if (t1Var == null) {
                this.internal_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setPrivate(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.privateBuilder_;
            if (t1Var == null) {
                this.private_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setPublic(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.publicBuilder_;
            if (t1Var == null) {
                this.public_ = builder.build();
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
            if (message instanceof Extras) {
                return mergeFrom((Extras) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Extras extras) {
            if (extras == Extras.getDefaultInstance()) {
                return this;
            }
            if (extras.hasPrivate()) {
                mergePrivate(extras.getPrivate());
            }
            if (extras.hasInternal()) {
                mergeInternal(extras.getInternal());
            }
            if (extras.hasPublic()) {
                mergePublic(extras.getPublic());
            }
            mergeUnknownFields(((GeneratedMessageV3) extras).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.Extras.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.Extras.access$800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.Extras r3 = (io.bidmachine.protobuf.Extras) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.Extras r4 = (io.bidmachine.protobuf.Extras) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.Extras.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.Extras$Builder");
        }
    }

    public static Builder newBuilder(Extras extras) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(extras);
    }

    public static Extras parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Extras(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Extras parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Extras) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Extras parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Extras mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Extras parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Extras() {
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Extras parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Extras parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    private Extras(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        Struct.Builder builder;
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                Struct struct = this.private_;
                                builder = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.private_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    this.private_ = builder.buildPartial();
                                }
                            } else if (K == 18) {
                                Struct struct3 = this.internal_;
                                builder = struct3 != null ? struct3.toBuilder() : null;
                                Struct struct4 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.internal_ = struct4;
                                if (builder != null) {
                                    builder.mergeFrom(struct4);
                                    this.internal_ = builder.buildPartial();
                                }
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                Struct struct5 = this.public_;
                                builder = struct5 != null ? struct5.toBuilder() : null;
                                Struct struct6 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.public_ = struct6;
                                if (builder != null) {
                                    builder.mergeFrom(struct6);
                                    this.public_ = builder.buildPartial();
                                }
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

    public static Extras parseFrom(InputStream inputStream) throws IOException {
        return (Extras) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Extras parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Extras) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Extras parseFrom(n nVar) throws IOException {
        return (Extras) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Extras parseFrom(n nVar, y yVar) throws IOException {
        return (Extras) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
