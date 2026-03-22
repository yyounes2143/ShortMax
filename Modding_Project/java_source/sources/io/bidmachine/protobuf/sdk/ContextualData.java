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
public final class ContextualData extends GeneratedMessageV3 implements ContextualDataOrBuilder {
    public static final int DATA_FIELD_NUMBER = 3;
    public static final int MEDIATOR_NAME_FIELD_NUMBER = 2;
    public static final int PLACEMENT_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private ImpressionData data_;
    private volatile Object mediatorName_;
    private byte memoizedIsInitialized;
    private volatile Object placement_;
    private static final ContextualData DEFAULT_INSTANCE = new ContextualData();
    private static final j1<ContextualData> PARSER = new b<ContextualData>() { // from class: io.bidmachine.protobuf.sdk.ContextualData.1
        @Override // com.explorestack.protobuf.j1
        public ContextualData parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new ContextualData(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class ImpressionData extends GeneratedMessageV3 implements ImpressionDataOrBuilder {
        public static final int AGENCY_FIELD_NUMBER = 8;
        public static final int BUNDLE_FIELD_NUMBER = 6;
        public static final int IMAGENCY_FIELD_NUMBER = 7;
        public static final int IMBUNDLE_FIELD_NUMBER = 5;
        public static final int IMD_FIELD_NUMBER = 2;
        public static final int IMIMD_FIELD_NUMBER = 1;
        public static final int IMWP_FIELD_NUMBER = 3;
        public static final int WP_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object agency_;
        private volatile Object bundle_;
        private volatile Object imagency_;
        private volatile Object imbundle_;
        private int imd_;
        private int imimd_;
        private float imwp_;
        private byte memoizedIsInitialized;
        private float wp_;
        private static final ImpressionData DEFAULT_INSTANCE = new ImpressionData();
        private static final j1<ImpressionData> PARSER = new b<ImpressionData>() { // from class: io.bidmachine.protobuf.sdk.ContextualData.ImpressionData.1
            @Override // com.explorestack.protobuf.j1
            public ImpressionData parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new ImpressionData(nVar, yVar);
            }
        };

        public static ImpressionData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static ImpressionData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ImpressionData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ImpressionData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<ImpressionData> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ImpressionData)) {
                return super.equals(obj);
            }
            ImpressionData impressionData = (ImpressionData) obj;
            if (getImimd() == impressionData.getImimd() && getImd() == impressionData.getImd() && Float.floatToIntBits(getImwp()) == Float.floatToIntBits(impressionData.getImwp()) && Float.floatToIntBits(getWp()) == Float.floatToIntBits(impressionData.getWp()) && getImbundle().equals(impressionData.getImbundle()) && getBundle().equals(impressionData.getBundle()) && getImagency().equals(impressionData.getImagency()) && getAgency().equals(impressionData.getAgency()) && this.unknownFields.equals(impressionData.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public String getAgency() {
            Object obj = this.agency_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.agency_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public ByteString getAgencyBytes() {
            Object obj = this.agency_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.agency_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public String getBundle() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bundle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public ByteString getBundleBytes() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bundle_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public String getImagency() {
            Object obj = this.imagency_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.imagency_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public ByteString getImagencyBytes() {
            Object obj = this.imagency_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.imagency_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public String getImbundle() {
            Object obj = this.imbundle_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.imbundle_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public ByteString getImbundleBytes() {
            Object obj = this.imbundle_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.imbundle_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public int getImd() {
            return this.imd_;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public int getImimd() {
            return this.imimd_;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public float getImwp() {
            return this.imwp_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<ImpressionData> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            int i12 = this.imimd_;
            if (i12 != 0) {
                i10 = CodedOutputStream.Y(1, i12);
            } else {
                i10 = 0;
            }
            int i13 = this.imd_;
            if (i13 != 0) {
                i10 += CodedOutputStream.Y(2, i13);
            }
            float f10 = this.imwp_;
            if (f10 != 0.0f) {
                i10 += CodedOutputStream.r(3, f10);
            }
            float f11 = this.wp_;
            if (f11 != 0.0f) {
                i10 += CodedOutputStream.r(4, f11);
            }
            if (!getImbundleBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(5, this.imbundle_);
            }
            if (!getBundleBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(6, this.bundle_);
            }
            if (!getImagencyBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(7, this.imagency_);
            }
            if (!getAgencyBytes().isEmpty()) {
                i10 += GeneratedMessageV3.computeStringSize(8, this.agency_);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
        public float getWp() {
            return this.wp_;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getImimd()) * 37) + 2) * 53) + getImd()) * 37) + 3) * 53) + Float.floatToIntBits(getImwp())) * 37) + 4) * 53) + Float.floatToIntBits(getWp())) * 37) + 5) * 53) + getImbundle().hashCode()) * 37) + 6) * 53) + getBundle().hashCode()) * 37) + 7) * 53) + getImagency().hashCode()) * 37) + 8) * 53) + getAgency().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable.d(ImpressionData.class, Builder.class);
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
            return new ImpressionData();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            int i10 = this.imimd_;
            if (i10 != 0) {
                codedOutputStream.c1(1, i10);
            }
            int i11 = this.imd_;
            if (i11 != 0) {
                codedOutputStream.c1(2, i11);
            }
            float f10 = this.imwp_;
            if (f10 != 0.0f) {
                codedOutputStream.B0(3, f10);
            }
            float f11 = this.wp_;
            if (f11 != 0.0f) {
                codedOutputStream.B0(4, f11);
            }
            if (!getImbundleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.imbundle_);
            }
            if (!getBundleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.bundle_);
            }
            if (!getImagencyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.imagency_);
            }
            if (!getAgencyBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.agency_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements ImpressionDataOrBuilder {
            private Object agency_;
            private Object bundle_;
            private Object imagency_;
            private Object imbundle_;
            private int imd_;
            private int imimd_;
            private float imwp_;
            private float wp_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAgency() {
                this.agency_ = ImpressionData.getDefaultInstance().getAgency();
                onChanged();
                return this;
            }

            public Builder clearBundle() {
                this.bundle_ = ImpressionData.getDefaultInstance().getBundle();
                onChanged();
                return this;
            }

            public Builder clearImagency() {
                this.imagency_ = ImpressionData.getDefaultInstance().getImagency();
                onChanged();
                return this;
            }

            public Builder clearImbundle() {
                this.imbundle_ = ImpressionData.getDefaultInstance().getImbundle();
                onChanged();
                return this;
            }

            public Builder clearImd() {
                this.imd_ = 0;
                onChanged();
                return this;
            }

            public Builder clearImimd() {
                this.imimd_ = 0;
                onChanged();
                return this;
            }

            public Builder clearImwp() {
                this.imwp_ = 0.0f;
                onChanged();
                return this;
            }

            public Builder clearWp() {
                this.wp_ = 0.0f;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public String getAgency() {
                Object obj = this.agency_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.agency_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public ByteString getAgencyBytes() {
                Object obj = this.agency_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.agency_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public String getBundle() {
                Object obj = this.bundle_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.bundle_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public ByteString getBundleBytes() {
                Object obj = this.bundle_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.bundle_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public String getImagency() {
                Object obj = this.imagency_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.imagency_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public ByteString getImagencyBytes() {
                Object obj = this.imagency_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.imagency_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public String getImbundle() {
                Object obj = this.imbundle_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.imbundle_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public ByteString getImbundleBytes() {
                Object obj = this.imbundle_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.imbundle_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public int getImd() {
                return this.imd_;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public int getImimd() {
                return this.imimd_;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public float getImwp() {
                return this.imwp_;
            }

            @Override // io.bidmachine.protobuf.sdk.ContextualData.ImpressionDataOrBuilder
            public float getWp() {
                return this.wp_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable.d(ImpressionData.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setAgency(String str) {
                str.getClass();
                this.agency_ = str;
                onChanged();
                return this;
            }

            public Builder setAgencyBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.agency_ = byteString;
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

            public Builder setImagency(String str) {
                str.getClass();
                this.imagency_ = str;
                onChanged();
                return this;
            }

            public Builder setImagencyBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.imagency_ = byteString;
                onChanged();
                return this;
            }

            public Builder setImbundle(String str) {
                str.getClass();
                this.imbundle_ = str;
                onChanged();
                return this;
            }

            public Builder setImbundleBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.imbundle_ = byteString;
                onChanged();
                return this;
            }

            public Builder setImd(int i10) {
                this.imd_ = i10;
                onChanged();
                return this;
            }

            public Builder setImimd(int i10) {
                this.imimd_ = i10;
                onChanged();
                return this;
            }

            public Builder setImwp(float f10) {
                this.imwp_ = f10;
                onChanged();
                return this;
            }

            public Builder setWp(float f10) {
                this.wp_ = f10;
                onChanged();
                return this;
            }

            private Builder() {
                this.imbundle_ = "";
                this.bundle_ = "";
                this.imagency_ = "";
                this.agency_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public ImpressionData build() {
                ImpressionData buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public ImpressionData buildPartial() {
                ImpressionData impressionData = new ImpressionData(this);
                impressionData.imimd_ = this.imimd_;
                impressionData.imd_ = this.imd_;
                impressionData.imwp_ = this.imwp_;
                impressionData.wp_ = this.wp_;
                impressionData.imbundle_ = this.imbundle_;
                impressionData.bundle_ = this.bundle_;
                impressionData.imagency_ = this.imagency_;
                impressionData.agency_ = this.agency_;
                onBuilt();
                return impressionData;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public ImpressionData mo4630getDefaultInstanceForType() {
                return ImpressionData.getDefaultInstance();
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
                this.imimd_ = 0;
                this.imd_ = 0;
                this.imwp_ = 0.0f;
                this.wp_ = 0.0f;
                this.imbundle_ = "";
                this.bundle_ = "";
                this.imagency_ = "";
                this.agency_ = "";
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof ImpressionData) {
                    return mergeFrom((ImpressionData) message);
                }
                super.mergeFrom(message);
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.imbundle_ = "";
                this.bundle_ = "";
                this.imagency_ = "";
                this.agency_ = "";
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(ImpressionData impressionData) {
                if (impressionData == ImpressionData.getDefaultInstance()) {
                    return this;
                }
                if (impressionData.getImimd() != 0) {
                    setImimd(impressionData.getImimd());
                }
                if (impressionData.getImd() != 0) {
                    setImd(impressionData.getImd());
                }
                if (impressionData.getImwp() != 0.0f) {
                    setImwp(impressionData.getImwp());
                }
                if (impressionData.getWp() != 0.0f) {
                    setWp(impressionData.getWp());
                }
                if (!impressionData.getImbundle().isEmpty()) {
                    this.imbundle_ = impressionData.imbundle_;
                    onChanged();
                }
                if (!impressionData.getBundle().isEmpty()) {
                    this.bundle_ = impressionData.bundle_;
                    onChanged();
                }
                if (!impressionData.getImagency().isEmpty()) {
                    this.imagency_ = impressionData.imagency_;
                    onChanged();
                }
                if (!impressionData.getAgency().isEmpty()) {
                    this.agency_ = impressionData.agency_;
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) impressionData).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sdk.ContextualData.ImpressionData.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.ContextualData.ImpressionData.access$1300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.ContextualData$ImpressionData r3 = (io.bidmachine.protobuf.sdk.ContextualData.ImpressionData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.ContextualData$ImpressionData r4 = (io.bidmachine.protobuf.sdk.ContextualData.ImpressionData) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.ContextualData.ImpressionData.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.ContextualData$ImpressionData$Builder");
            }
        }

        public static Builder newBuilder(ImpressionData impressionData) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(impressionData);
        }

        public static ImpressionData parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private ImpressionData(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static ImpressionData parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (ImpressionData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static ImpressionData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public ImpressionData mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static ImpressionData parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private ImpressionData() {
            this.memoizedIsInitialized = (byte) -1;
            this.imbundle_ = "";
            this.bundle_ = "";
            this.imagency_ = "";
            this.agency_ = "";
        }

        public static ImpressionData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static ImpressionData parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static ImpressionData parseFrom(InputStream inputStream) throws IOException {
            return (ImpressionData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ImpressionData parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (ImpressionData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        private ImpressionData(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.imimd_ = nVar.L();
                            } else if (K == 16) {
                                this.imd_ = nVar.L();
                            } else if (K == 29) {
                                this.imwp_ = nVar.w();
                            } else if (K == 37) {
                                this.wp_ = nVar.w();
                            } else if (K == 42) {
                                this.imbundle_ = nVar.J();
                            } else if (K == 50) {
                                this.bundle_ = nVar.J();
                            } else if (K == 58) {
                                this.imagency_ = nVar.J();
                            } else if (K != 66) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.agency_ = nVar.J();
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

        public static ImpressionData parseFrom(n nVar) throws IOException {
            return (ImpressionData) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static ImpressionData parseFrom(n nVar, y yVar) throws IOException {
            return (ImpressionData) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface ImpressionDataOrBuilder extends MessageOrBuilder {
        String getAgency();

        ByteString getAgencyBytes();

        String getBundle();

        ByteString getBundleBytes();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        String getImagency();

        ByteString getImagencyBytes();

        String getImbundle();

        ByteString getImbundleBytes();

        int getImd();

        int getImimd();

        float getImwp();

        float getWp();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static ContextualData getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ContextualData parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ContextualData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ContextualData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<ContextualData> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ContextualData)) {
            return super.equals(obj);
        }
        ContextualData contextualData = (ContextualData) obj;
        if (!getPlacement().equals(contextualData.getPlacement()) || !getMediatorName().equals(contextualData.getMediatorName()) || hasData() != contextualData.hasData()) {
            return false;
        }
        if ((!hasData() || getData().equals(contextualData.getData())) && this.unknownFields.equals(contextualData.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
    public ImpressionData getData() {
        ImpressionData impressionData = this.data_;
        if (impressionData == null) {
            return ImpressionData.getDefaultInstance();
        }
        return impressionData;
    }

    @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
    public ImpressionDataOrBuilder getDataOrBuilder() {
        return getData();
    }

    @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
    public String getMediatorName() {
        Object obj = this.mediatorName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.mediatorName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
    public ByteString getMediatorNameBytes() {
        Object obj = this.mediatorName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.mediatorName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<ContextualData> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
    public String getPlacement() {
        Object obj = this.placement_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.placement_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
    public ByteString getPlacementBytes() {
        Object obj = this.placement_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.placement_ = copyFromUtf8;
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
        if (!getPlacementBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.placement_);
        } else {
            i10 = 0;
        }
        if (!getMediatorNameBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.mediatorName_);
        }
        if (this.data_ != null) {
            i10 += CodedOutputStream.G(3, getData());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
    public boolean hasData() {
        if (this.data_ != null) {
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPlacement().hashCode()) * 37) + 2) * 53) + getMediatorName().hashCode();
        if (hasData()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getData().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable.d(ContextualData.class, Builder.class);
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
        return new ContextualData();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getPlacementBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.placement_);
        }
        if (!getMediatorNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.mediatorName_);
        }
        if (this.data_ != null) {
            codedOutputStream.L0(3, getData());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements ContextualDataOrBuilder {
        private t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> dataBuilder_;
        private ImpressionData data_;
        private Object mediatorName_;
        private Object placement_;

        private t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> getDataFieldBuilder() {
            if (this.dataBuilder_ == null) {
                this.dataBuilder_ = new t1<>(getData(), getParentForChildren(), isClean());
                this.data_ = null;
            }
            return this.dataBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearData() {
            if (this.dataBuilder_ == null) {
                this.data_ = null;
                onChanged();
            } else {
                this.data_ = null;
                this.dataBuilder_ = null;
            }
            return this;
        }

        public Builder clearMediatorName() {
            this.mediatorName_ = ContextualData.getDefaultInstance().getMediatorName();
            onChanged();
            return this;
        }

        public Builder clearPlacement() {
            this.placement_ = ContextualData.getDefaultInstance().getPlacement();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
        public ImpressionData getData() {
            t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> t1Var = this.dataBuilder_;
            if (t1Var == null) {
                ImpressionData impressionData = this.data_;
                if (impressionData == null) {
                    return ImpressionData.getDefaultInstance();
                }
                return impressionData;
            }
            return t1Var.e();
        }

        public ImpressionData.Builder getDataBuilder() {
            onChanged();
            return getDataFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
        public ImpressionDataOrBuilder getDataOrBuilder() {
            t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> t1Var = this.dataBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            ImpressionData impressionData = this.data_;
            if (impressionData == null) {
                return ImpressionData.getDefaultInstance();
            }
            return impressionData;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
        public String getMediatorName() {
            Object obj = this.mediatorName_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.mediatorName_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
        public ByteString getMediatorNameBytes() {
            Object obj = this.mediatorName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mediatorName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
        public String getPlacement() {
            Object obj = this.placement_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.placement_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
        public ByteString getPlacementBytes() {
            Object obj = this.placement_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.placement_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ContextualDataOrBuilder
        public boolean hasData() {
            if (this.dataBuilder_ == null && this.data_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable.d(ContextualData.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeData(ImpressionData impressionData) {
            t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> t1Var = this.dataBuilder_;
            if (t1Var == null) {
                ImpressionData impressionData2 = this.data_;
                if (impressionData2 != null) {
                    this.data_ = ImpressionData.newBuilder(impressionData2).mergeFrom(impressionData).buildPartial();
                } else {
                    this.data_ = impressionData;
                }
                onChanged();
            } else {
                t1Var.g(impressionData);
            }
            return this;
        }

        public Builder setData(ImpressionData impressionData) {
            t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> t1Var = this.dataBuilder_;
            if (t1Var == null) {
                impressionData.getClass();
                this.data_ = impressionData;
                onChanged();
            } else {
                t1Var.i(impressionData);
            }
            return this;
        }

        public Builder setMediatorName(String str) {
            str.getClass();
            this.mediatorName_ = str;
            onChanged();
            return this;
        }

        public Builder setMediatorNameBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.mediatorName_ = byteString;
            onChanged();
            return this;
        }

        public Builder setPlacement(String str) {
            str.getClass();
            this.placement_ = str;
            onChanged();
            return this;
        }

        public Builder setPlacementBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.placement_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.placement_ = "";
            this.mediatorName_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public ContextualData build() {
            ContextualData buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public ContextualData buildPartial() {
            ContextualData contextualData = new ContextualData(this);
            contextualData.placement_ = this.placement_;
            contextualData.mediatorName_ = this.mediatorName_;
            t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> t1Var = this.dataBuilder_;
            if (t1Var == null) {
                contextualData.data_ = this.data_;
            } else {
                contextualData.data_ = t1Var.a();
            }
            onBuilt();
            return contextualData;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public ContextualData mo4630getDefaultInstanceForType() {
            return ContextualData.getDefaultInstance();
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
            this.placement_ = "";
            this.mediatorName_ = "";
            if (this.dataBuilder_ == null) {
                this.data_ = null;
            } else {
                this.data_ = null;
                this.dataBuilder_ = null;
            }
            return this;
        }

        public Builder setData(ImpressionData.Builder builder) {
            t1<ImpressionData, ImpressionData.Builder, ImpressionDataOrBuilder> t1Var = this.dataBuilder_;
            if (t1Var == null) {
                this.data_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.placement_ = "";
            this.mediatorName_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof ContextualData) {
                return mergeFrom((ContextualData) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(ContextualData contextualData) {
            if (contextualData == ContextualData.getDefaultInstance()) {
                return this;
            }
            if (!contextualData.getPlacement().isEmpty()) {
                this.placement_ = contextualData.placement_;
                onChanged();
            }
            if (!contextualData.getMediatorName().isEmpty()) {
                this.mediatorName_ = contextualData.mediatorName_;
                onChanged();
            }
            if (contextualData.hasData()) {
                mergeData(contextualData.getData());
            }
            mergeUnknownFields(((GeneratedMessageV3) contextualData).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.ContextualData.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.ContextualData.access$2700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.ContextualData r3 = (io.bidmachine.protobuf.sdk.ContextualData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.ContextualData r4 = (io.bidmachine.protobuf.sdk.ContextualData) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.ContextualData.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.ContextualData$Builder");
        }
    }

    public static Builder newBuilder(ContextualData contextualData) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(contextualData);
    }

    public static ContextualData parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private ContextualData(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ContextualData parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (ContextualData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static ContextualData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public ContextualData mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static ContextualData parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private ContextualData() {
        this.memoizedIsInitialized = (byte) -1;
        this.placement_ = "";
        this.mediatorName_ = "";
    }

    public static ContextualData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static ContextualData parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static ContextualData parseFrom(InputStream inputStream) throws IOException {
        return (ContextualData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ContextualData(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.placement_ = nVar.J();
                        } else if (K == 18) {
                            this.mediatorName_ = nVar.J();
                        } else if (K != 26) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            ImpressionData impressionData = this.data_;
                            ImpressionData.Builder builder = impressionData != null ? impressionData.toBuilder() : null;
                            ImpressionData impressionData2 = (ImpressionData) nVar.A(ImpressionData.parser(), yVar);
                            this.data_ = impressionData2;
                            if (builder != null) {
                                builder.mergeFrom(impressionData2);
                                this.data_ = builder.buildPartial();
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

    public static ContextualData parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (ContextualData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static ContextualData parseFrom(n nVar) throws IOException {
        return (ContextualData) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static ContextualData parseFrom(n nVar, y yVar) throws IOException {
        return (ContextualData) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
