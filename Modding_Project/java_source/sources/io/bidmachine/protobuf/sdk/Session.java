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
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.sdk.ContextualData;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class Session extends GeneratedMessageV3 implements SessionOrBuilder {
    public static final int CONTEXT_FIELD_NUMBER = 2;
    private static final Session DEFAULT_INSTANCE = new Session();
    private static final j1<Session> PARSER = new b<Session>() { // from class: io.bidmachine.protobuf.sdk.Session.1
        @Override // com.explorestack.protobuf.j1
        public Session parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Session(nVar, yVar);
        }
    };
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Context context_;
    private byte memoizedIsInitialized;
    private volatile Object sessionId_;

    /* loaded from: classes8.dex */
    public static final class Context extends GeneratedMessageV3 implements ContextOrBuilder {
        public static final int DATA_FIELD_NUMBER = 4;
        public static final int LAST_SESSION_DURATION_FIELD_NUMBER = 5;
        public static final int RETENTION_FIELD_NUMBER = 3;
        public static final int SC_FIELD_NUMBER = 2;
        public static final int SESSIONDURATION_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<ContextualData> data_;
        private long lastSessionDuration_;
        private byte memoizedIsInitialized;
        private int retention_;
        private int sc_;
        private long sessionduration_;
        private static final Context DEFAULT_INSTANCE = new Context();
        private static final j1<Context> PARSER = new b<Context>() { // from class: io.bidmachine.protobuf.sdk.Session.Context.1
            @Override // com.explorestack.protobuf.j1
            public Context parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Context(nVar, yVar);
            }
        };

        public static Context getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Context parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Context) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Context parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Context> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Context)) {
                return super.equals(obj);
            }
            Context context = (Context) obj;
            if (getSessionduration() == context.getSessionduration() && getSc() == context.getSc() && getRetention() == context.getRetention() && getDataList().equals(context.getDataList()) && getLastSessionDuration() == context.getLastSessionDuration() && this.unknownFields.equals(context.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public ContextualData getData(int i10) {
            return this.data_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public List<ContextualData> getDataList() {
            return this.data_;
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public ContextualDataOrBuilder getDataOrBuilder(int i10) {
            return this.data_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public List<? extends ContextualDataOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public long getLastSessionDuration() {
            return this.lastSessionDuration_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Context> getParserForType() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public int getRetention() {
            return this.retention_;
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public int getSc() {
            return this.sc_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            long j10 = this.sessionduration_;
            if (j10 != 0) {
                i10 = CodedOutputStream.a0(1, j10);
            } else {
                i10 = 0;
            }
            int i12 = this.sc_;
            if (i12 != 0) {
                i10 += CodedOutputStream.Y(2, i12);
            }
            int i13 = this.retention_;
            if (i13 != 0) {
                i10 += CodedOutputStream.Y(3, i13);
            }
            for (int i14 = 0; i14 < this.data_.size(); i14++) {
                i10 += CodedOutputStream.G(4, this.data_.get(i14));
            }
            long j11 = this.lastSessionDuration_;
            if (j11 != 0) {
                i10 += CodedOutputStream.a0(5, j11);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
        public long getSessionduration() {
            return this.sessionduration_;
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
            int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.i(getSessionduration())) * 37) + 2) * 53) + getSc()) * 37) + 3) * 53) + getRetention();
            if (getDataCount() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + getDataList().hashCode();
            }
            int i11 = (((((hashCode * 37) + 5) * 53) + i0.i(getLastSessionDuration())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = i11;
            return i11;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable.d(Context.class, Builder.class);
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
            return new Context();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            long j10 = this.sessionduration_;
            if (j10 != 0) {
                codedOutputStream.e1(1, j10);
            }
            int i10 = this.sc_;
            if (i10 != 0) {
                codedOutputStream.c1(2, i10);
            }
            int i11 = this.retention_;
            if (i11 != 0) {
                codedOutputStream.c1(3, i11);
            }
            for (int i12 = 0; i12 < this.data_.size(); i12++) {
                codedOutputStream.L0(4, this.data_.get(i12));
            }
            long j11 = this.lastSessionDuration_;
            if (j11 != 0) {
                codedOutputStream.e1(5, j11);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements ContextOrBuilder {
            private int bitField0_;
            private p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> dataBuilder_;
            private List<ContextualData> data_;
            private long lastSessionDuration_;
            private int retention_;
            private int sc_;
            private long sessionduration_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    List<ContextualData> list = this.data_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.dataBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.data_ = null;
                }
                return this.dataBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends ContextualData> iterable) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.data_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addData(ContextualData contextualData) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    contextualData.getClass();
                    ensureDataIsMutable();
                    this.data_.add(contextualData);
                    onChanged();
                } else {
                    p1Var.e(contextualData);
                }
                return this;
            }

            public ContextualData.Builder addDataBuilder() {
                return getDataFieldBuilder().c(ContextualData.getDefaultInstance());
            }

            public Builder clearData() {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearLastSessionDuration() {
                this.lastSessionDuration_ = 0L;
                onChanged();
                return this;
            }

            public Builder clearRetention() {
                this.retention_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSc() {
                this.sc_ = 0;
                onChanged();
                return this;
            }

            public Builder clearSessionduration() {
                this.sessionduration_ = 0L;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public ContextualData getData(int i10) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.get(i10);
                }
                return p1Var.n(i10);
            }

            public ContextualData.Builder getDataBuilder(int i10) {
                return getDataFieldBuilder().k(i10);
            }

            public List<ContextualData.Builder> getDataBuilderList() {
                return getDataFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public int getDataCount() {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public List<ContextualData> getDataList() {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.data_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public ContextualDataOrBuilder getDataOrBuilder(int i10) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public List<? extends ContextualDataOrBuilder> getDataOrBuilderList() {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.data_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor;
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public long getLastSessionDuration() {
                return this.lastSessionDuration_;
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public int getRetention() {
                return this.retention_;
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public int getSc() {
                return this.sc_;
            }

            @Override // io.bidmachine.protobuf.sdk.Session.ContextOrBuilder
            public long getSessionduration() {
                return this.sessionduration_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable.d(Context.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeData(int i10) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
                }
                return this;
            }

            public Builder setData(int i10, ContextualData contextualData) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    contextualData.getClass();
                    ensureDataIsMutable();
                    this.data_.set(i10, contextualData);
                    onChanged();
                } else {
                    p1Var.w(i10, contextualData);
                }
                return this;
            }

            public Builder setLastSessionDuration(long j10) {
                this.lastSessionDuration_ = j10;
                onChanged();
                return this;
            }

            public Builder setRetention(int i10) {
                this.retention_ = i10;
                onChanged();
                return this;
            }

            public Builder setSc(int i10) {
                this.sc_ = i10;
                onChanged();
                return this;
            }

            public Builder setSessionduration(long j10) {
                this.sessionduration_ = j10;
                onChanged();
                return this;
            }

            private Builder() {
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Context build() {
                Context buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Context buildPartial() {
                Context context = new Context(this);
                context.sessionduration_ = this.sessionduration_;
                context.sc_ = this.sc_;
                context.retention_ = this.retention_;
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var != null) {
                    context.data_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    context.data_ = this.data_;
                }
                context.lastSessionDuration_ = this.lastSessionDuration_;
                onBuilt();
                return context;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Context mo4630getDefaultInstanceForType() {
                return Context.getDefaultInstance();
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

            public ContextualData.Builder addDataBuilder(int i10) {
                return getDataFieldBuilder().b(i10, ContextualData.getDefaultInstance());
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
                this.sessionduration_ = 0L;
                this.sc_ = 0;
                this.retention_ = 0;
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                this.lastSessionDuration_ = 0L;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addData(int i10, ContextualData contextualData) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    contextualData.getClass();
                    ensureDataIsMutable();
                    this.data_.add(i10, contextualData);
                    onChanged();
                } else {
                    p1Var.d(i10, contextualData);
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
                if (message instanceof Context) {
                    return mergeFrom((Context) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i10, ContextualData.Builder builder) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(Context context) {
                if (context == Context.getDefaultInstance()) {
                    return this;
                }
                if (context.getSessionduration() != 0) {
                    setSessionduration(context.getSessionduration());
                }
                if (context.getSc() != 0) {
                    setSc(context.getSc());
                }
                if (context.getRetention() != 0) {
                    setRetention(context.getRetention());
                }
                if (this.dataBuilder_ == null) {
                    if (!context.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = context.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(context.data_);
                        }
                        onChanged();
                    }
                } else if (!context.data_.isEmpty()) {
                    if (!this.dataBuilder_.t()) {
                        this.dataBuilder_.a(context.data_);
                    } else {
                        this.dataBuilder_.h();
                        this.dataBuilder_ = null;
                        this.data_ = context.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                if (context.getLastSessionDuration() != 0) {
                    setLastSessionDuration(context.getLastSessionDuration());
                }
                mergeUnknownFields(((GeneratedMessageV3) context).unknownFields);
                onChanged();
                return this;
            }

            public Builder addData(ContextualData.Builder builder) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addData(int i10, ContextualData.Builder builder) {
                p1<ContextualData, ContextualData.Builder, ContextualDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.d(i10, builder.build());
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sdk.Session.Context.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Session.Context.access$1100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Session$Context r3 = (io.bidmachine.protobuf.sdk.Session.Context) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Session$Context r4 = (io.bidmachine.protobuf.sdk.Session.Context) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Session.Context.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Session$Context$Builder");
            }
        }

        public static Builder newBuilder(Context context) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(context);
        }

        public static Context parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Context(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Context parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Context) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Context parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Context mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Context parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Context() {
            this.memoizedIsInitialized = (byte) -1;
            this.data_ = Collections.emptyList();
        }

        public static Context parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Context parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Context parseFrom(InputStream inputStream) throws IOException {
            return (Context) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Context(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                if (K == 8) {
                                    this.sessionduration_ = nVar.M();
                                } else if (K == 16) {
                                    this.sc_ = nVar.L();
                                } else if (K == 24) {
                                    this.retention_ = nVar.L();
                                } else if (K == 34) {
                                    if (!z11) {
                                        this.data_ = new ArrayList();
                                        z11 = true;
                                    }
                                    this.data_.add(nVar.A(ContextualData.parser(), yVar));
                                } else if (K != 40) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.lastSessionDuration_ = nVar.M();
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
                        this.data_ = Collections.unmodifiableList(this.data_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.data_ = Collections.unmodifiableList(this.data_);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static Context parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Context) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Context parseFrom(n nVar) throws IOException {
            return (Context) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Context parseFrom(n nVar, y yVar) throws IOException {
            return (Context) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface ContextOrBuilder extends MessageOrBuilder {
        ContextualData getData(int i10);

        int getDataCount();

        List<ContextualData> getDataList();

        ContextualDataOrBuilder getDataOrBuilder(int i10);

        List<? extends ContextualDataOrBuilder> getDataOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        long getLastSessionDuration();

        int getRetention();

        int getSc();

        long getSessionduration();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static Session getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Session parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Session) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Session parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Session> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Session)) {
            return super.equals(obj);
        }
        Session session = (Session) obj;
        if (!getSessionId().equals(session.getSessionId()) || hasContext() != session.hasContext()) {
            return false;
        }
        if ((!hasContext() || getContext().equals(session.getContext())) && this.unknownFields.equals(session.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
    public Context getContext() {
        Context context = this.context_;
        if (context == null) {
            return Context.getDefaultInstance();
        }
        return context;
    }

    @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
    public ContextOrBuilder getContextOrBuilder() {
        return getContext();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Session> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getSessionIdBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.sessionId_);
        } else {
            i10 = 0;
        }
        if (this.context_ != null) {
            i10 += CodedOutputStream.G(2, getContext());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
    public String getSessionId() {
        Object obj = this.sessionId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sessionId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
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

    @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
    public boolean hasContext() {
        if (this.context_ != null) {
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSessionId().hashCode();
        if (hasContext()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getContext().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable.d(Session.class, Builder.class);
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
        return new Session();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getSessionIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.sessionId_);
        }
        if (this.context_ != null) {
            codedOutputStream.L0(2, getContext());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements SessionOrBuilder {
        private t1<Context, Context.Builder, ContextOrBuilder> contextBuilder_;
        private Context context_;
        private Object sessionId_;

        private t1<Context, Context.Builder, ContextOrBuilder> getContextFieldBuilder() {
            if (this.contextBuilder_ == null) {
                this.contextBuilder_ = new t1<>(getContext(), getParentForChildren(), isClean());
                this.context_ = null;
            }
            return this.contextBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_descriptor;
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

        public Builder clearSessionId() {
            this.sessionId_ = Session.getDefaultInstance().getSessionId();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
        public Context getContext() {
            t1<Context, Context.Builder, ContextOrBuilder> t1Var = this.contextBuilder_;
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

        @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
        public ContextOrBuilder getContextOrBuilder() {
            t1<Context, Context.Builder, ContextOrBuilder> t1Var = this.contextBuilder_;
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
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
        public String getSessionId() {
            Object obj = this.sessionId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sessionId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
        public ByteString getSessionIdBytes() {
            Object obj = this.sessionId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.SessionOrBuilder
        public boolean hasContext() {
            if (this.contextBuilder_ == null && this.context_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable.d(Session.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeContext(Context context) {
            t1<Context, Context.Builder, ContextOrBuilder> t1Var = this.contextBuilder_;
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

        public Builder setContext(Context context) {
            t1<Context, Context.Builder, ContextOrBuilder> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                context.getClass();
                this.context_ = context;
                onChanged();
            } else {
                t1Var.i(context);
            }
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
            this.sessionId_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Session build() {
            Session buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Session buildPartial() {
            Session session = new Session(this);
            session.sessionId_ = this.sessionId_;
            t1<Context, Context.Builder, ContextOrBuilder> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                session.context_ = this.context_;
            } else {
                session.context_ = t1Var.a();
            }
            onBuilt();
            return session;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Session mo4630getDefaultInstanceForType() {
            return Session.getDefaultInstance();
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
            this.sessionId_ = "";
            if (this.contextBuilder_ == null) {
                this.context_ = null;
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.sessionId_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder setContext(Context.Builder builder) {
            t1<Context, Context.Builder, ContextOrBuilder> t1Var = this.contextBuilder_;
            if (t1Var == null) {
                this.context_ = builder.build();
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
            if (message instanceof Session) {
                return mergeFrom((Session) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Session session) {
            if (session == Session.getDefaultInstance()) {
                return this;
            }
            if (!session.getSessionId().isEmpty()) {
                this.sessionId_ = session.sessionId_;
                onChanged();
            }
            if (session.hasContext()) {
                mergeContext(session.getContext());
            }
            mergeUnknownFields(((GeneratedMessageV3) session).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.Session.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Session.access$2000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Session r3 = (io.bidmachine.protobuf.sdk.Session) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Session r4 = (io.bidmachine.protobuf.sdk.Session) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Session.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Session$Builder");
        }
    }

    public static Builder newBuilder(Session session) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(session);
    }

    public static Session parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Session(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Session parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Session) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Session parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Session mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Session parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Session() {
        this.memoizedIsInitialized = (byte) -1;
        this.sessionId_ = "";
    }

    public static Session parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Session parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Session parseFrom(InputStream inputStream) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Session(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.sessionId_ = nVar.J();
                        } else if (K != 18) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            Context context = this.context_;
                            Context.Builder builder = context != null ? context.toBuilder() : null;
                            Context context2 = (Context) nVar.A(Context.parser(), yVar);
                            this.context_ = context2;
                            if (builder != null) {
                                builder.mergeFrom(context2);
                                this.context_ = builder.buildPartial();
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

    public static Session parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Session parseFrom(n nVar) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Session parseFrom(n nVar, y yVar) throws IOException {
        return (Session) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
