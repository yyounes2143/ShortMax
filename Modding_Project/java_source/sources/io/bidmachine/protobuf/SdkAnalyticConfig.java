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
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.m0;
import com.explorestack.protobuf.m1;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.n0;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class SdkAnalyticConfig extends GeneratedMessageV3 implements SdkAnalyticConfigOrBuilder {
    public static final int CONTEXT_FIELD_NUMBER = 2;
    public static final int COUNT_FIELD_NUMBER = 4;
    public static final int INTERVAL_FIELD_NUMBER = 3;
    public static final int METRIC_CONFIGS_FIELD_NUMBER = 5;
    public static final int URL_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object context_;
    private int count_;
    private int interval_;
    private byte memoizedIsInitialized;
    private List<MetricConfig> metricConfigs_;
    private volatile Object url_;
    private static final SdkAnalyticConfig DEFAULT_INSTANCE = new SdkAnalyticConfig();
    private static final j1<SdkAnalyticConfig> PARSER = new b<SdkAnalyticConfig>() { // from class: io.bidmachine.protobuf.SdkAnalyticConfig.1
        @Override // com.explorestack.protobuf.j1
        public SdkAnalyticConfig parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new SdkAnalyticConfig(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class MetricConfig extends GeneratedMessageV3 implements MetricConfigOrBuilder {
        public static final int DIMENSIONS_FIELD_NUMBER = 2;
        public static final int METRICS_FIELD_NUMBER = 3;
        public static final int NAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private n0 dimensions_;
        private byte memoizedIsInitialized;
        private n0 metrics_;
        private volatile Object name_;
        private static final MetricConfig DEFAULT_INSTANCE = new MetricConfig();
        private static final j1<MetricConfig> PARSER = new b<MetricConfig>() { // from class: io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig.1
            @Override // com.explorestack.protobuf.j1
            public MetricConfig parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new MetricConfig(nVar, yVar);
            }
        };

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements MetricConfigOrBuilder {
            private int bitField0_;
            private n0 dimensions_;
            private n0 metrics_;
            private Object name_;

            private void ensureDimensionsIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.dimensions_ = new m0(this.dimensions_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureMetricsIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.metrics_ = new m0(this.metrics_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder addAllDimensions(Iterable<String> iterable) {
                ensureDimensionsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.dimensions_);
                onChanged();
                return this;
            }

            public Builder addAllMetrics(Iterable<String> iterable) {
                ensureMetricsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.metrics_);
                onChanged();
                return this;
            }

            public Builder addDimensions(String str) {
                str.getClass();
                ensureDimensionsIsMutable();
                this.dimensions_.add(str);
                onChanged();
                return this;
            }

            public Builder addDimensionsBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                ensureDimensionsIsMutable();
                this.dimensions_.b(byteString);
                onChanged();
                return this;
            }

            public Builder addMetrics(String str) {
                str.getClass();
                ensureMetricsIsMutable();
                this.metrics_.add(str);
                onChanged();
                return this;
            }

            public Builder addMetricsBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                ensureMetricsIsMutable();
                this.metrics_.b(byteString);
                onChanged();
                return this;
            }

            public Builder clearDimensions() {
                this.dimensions_ = m0.f14459d;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public Builder clearMetrics() {
                this.metrics_ = m0.f14459d;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public Builder clearName() {
                this.name_ = MetricConfig.getDefaultInstance().getName();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor;
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public String getDimensions(int i10) {
                return this.dimensions_.get(i10);
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public ByteString getDimensionsBytes(int i10) {
                return this.dimensions_.getByteString(i10);
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public int getDimensionsCount() {
                return this.dimensions_.size();
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public String getMetrics(int i10) {
                return this.metrics_.get(i10);
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public ByteString getMetricsBytes(int i10) {
                return this.metrics_.getByteString(i10);
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public int getMetricsCount() {
                return this.metrics_.size();
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public ByteString getNameBytes() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.name_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_fieldAccessorTable.d(MetricConfig.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder setDimensions(int i10, String str) {
                str.getClass();
                ensureDimensionsIsMutable();
                this.dimensions_.set(i10, str);
                onChanged();
                return this;
            }

            public Builder setMetrics(int i10, String str) {
                str.getClass();
                ensureMetricsIsMutable();
                this.metrics_.set(i10, str);
                onChanged();
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

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public m1 getDimensionsList() {
                return this.dimensions_.getUnmodifiableView();
            }

            @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
            public m1 getMetricsList() {
                return this.metrics_.getUnmodifiableView();
            }

            private Builder() {
                this.name_ = "";
                n0 n0Var = m0.f14459d;
                this.dimensions_ = n0Var;
                this.metrics_ = n0Var;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public MetricConfig build() {
                MetricConfig buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public MetricConfig buildPartial() {
                MetricConfig metricConfig = new MetricConfig(this);
                metricConfig.name_ = this.name_;
                if ((this.bitField0_ & 1) != 0) {
                    this.dimensions_ = this.dimensions_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                metricConfig.dimensions_ = this.dimensions_;
                if ((this.bitField0_ & 2) != 0) {
                    this.metrics_ = this.metrics_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                metricConfig.metrics_ = this.metrics_;
                onBuilt();
                return metricConfig;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public MetricConfig mo4630getDefaultInstanceForType() {
                return MetricConfig.getDefaultInstance();
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
                n0 n0Var = m0.f14459d;
                this.dimensions_ = n0Var;
                int i10 = this.bitField0_;
                this.metrics_ = n0Var;
                this.bitField0_ = i10 & (-4);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof MetricConfig) {
                    return mergeFrom((MetricConfig) message);
                }
                super.mergeFrom(message);
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.name_ = "";
                n0 n0Var = m0.f14459d;
                this.dimensions_ = n0Var;
                this.metrics_ = n0Var;
                maybeForceBuilderInitialization();
            }

            public Builder mergeFrom(MetricConfig metricConfig) {
                if (metricConfig == MetricConfig.getDefaultInstance()) {
                    return this;
                }
                if (!metricConfig.getName().isEmpty()) {
                    this.name_ = metricConfig.name_;
                    onChanged();
                }
                if (!metricConfig.dimensions_.isEmpty()) {
                    if (this.dimensions_.isEmpty()) {
                        this.dimensions_ = metricConfig.dimensions_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureDimensionsIsMutable();
                        this.dimensions_.addAll(metricConfig.dimensions_);
                    }
                    onChanged();
                }
                if (!metricConfig.metrics_.isEmpty()) {
                    if (this.metrics_.isEmpty()) {
                        this.metrics_ = metricConfig.metrics_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureMetricsIsMutable();
                        this.metrics_.addAll(metricConfig.metrics_);
                    }
                    onChanged();
                }
                mergeUnknownFields(((GeneratedMessageV3) metricConfig).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig.access$800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.SdkAnalyticConfig$MetricConfig r3 = (io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.SdkAnalyticConfig$MetricConfig r4 = (io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfig.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.SdkAnalyticConfig$MetricConfig$Builder");
            }
        }

        public static MetricConfig getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static MetricConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MetricConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static MetricConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<MetricConfig> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MetricConfig)) {
                return super.equals(obj);
            }
            MetricConfig metricConfig = (MetricConfig) obj;
            if (getName().equals(metricConfig.getName()) && getDimensionsList().equals(metricConfig.getDimensionsList()) && getMetricsList().equals(metricConfig.getMetricsList()) && this.unknownFields.equals(metricConfig.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public String getDimensions(int i10) {
            return this.dimensions_.get(i10);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public ByteString getDimensionsBytes(int i10) {
            return this.dimensions_.getByteString(i10);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public int getDimensionsCount() {
            return this.dimensions_.size();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public String getMetrics(int i10) {
            return this.metrics_.get(i10);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public ByteString getMetricsBytes(int i10) {
            return this.metrics_.getByteString(i10);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public int getMetricsCount() {
            return this.metrics_.size();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
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
        public j1<MetricConfig> getParserForType() {
            return PARSER;
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
            int i12 = 0;
            for (int i13 = 0; i13 < this.dimensions_.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.dimensions_.getRaw(i13));
            }
            int size = i10 + i12 + getDimensionsList().size();
            int i14 = 0;
            for (int i15 = 0; i15 < this.metrics_.size(); i15++) {
                i14 += GeneratedMessageV3.computeStringSizeNoTag(this.metrics_.getRaw(i15));
            }
            int size2 = size + i14 + getMetricsList().size() + this.unknownFields.getSerializedSize();
            this.memoizedSize = size2;
            return size2;
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
            if (getDimensionsCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getDimensionsList().hashCode();
            }
            if (getMetricsCount() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + getMetricsList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_MetricConfig_fieldAccessorTable.d(MetricConfig.class, Builder.class);
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
            return new MetricConfig();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getNameBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
            }
            for (int i10 = 0; i10 < this.dimensions_.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.dimensions_.getRaw(i10));
            }
            for (int i11 = 0; i11 < this.metrics_.size(); i11++) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.metrics_.getRaw(i11));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public static Builder newBuilder(MetricConfig metricConfig) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(metricConfig);
        }

        public static MetricConfig parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public m1 getDimensionsList() {
            return this.dimensions_;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfig.MetricConfigOrBuilder
        public m1 getMetricsList() {
            return this.metrics_;
        }

        private MetricConfig(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static MetricConfig parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (MetricConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static MetricConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public MetricConfig mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static MetricConfig parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private MetricConfig() {
            this.memoizedIsInitialized = (byte) -1;
            this.name_ = "";
            n0 n0Var = m0.f14459d;
            this.dimensions_ = n0Var;
            this.metrics_ = n0Var;
        }

        public static MetricConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static MetricConfig parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static MetricConfig parseFrom(InputStream inputStream) throws IOException {
            return (MetricConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static MetricConfig parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (MetricConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        private MetricConfig(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    this.name_ = nVar.J();
                                } else if (K == 18) {
                                    String J = nVar.J();
                                    if (!(z11 & true)) {
                                        this.dimensions_ = new m0();
                                        z11 |= true;
                                    }
                                    this.dimensions_.add(J);
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    String J2 = nVar.J();
                                    if (!(z11 & true)) {
                                        this.metrics_ = new m0();
                                        z11 |= true;
                                    }
                                    this.metrics_.add(J2);
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
                    if (z11 & true) {
                        this.dimensions_ = this.dimensions_.getUnmodifiableView();
                    }
                    if (z11 & true) {
                        this.metrics_ = this.metrics_.getUnmodifiableView();
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.dimensions_ = this.dimensions_.getUnmodifiableView();
            }
            if (z11 & true) {
                this.metrics_ = this.metrics_.getUnmodifiableView();
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static MetricConfig parseFrom(n nVar) throws IOException {
            return (MetricConfig) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static MetricConfig parseFrom(n nVar, y yVar) throws IOException {
            return (MetricConfig) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface MetricConfigOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        String getDimensions(int i10);

        ByteString getDimensionsBytes(int i10);

        int getDimensionsCount();

        List<String> getDimensionsList();

        String getMetrics(int i10);

        ByteString getMetricsBytes(int i10);

        int getMetricsCount();

        List<String> getMetricsList();

        String getName();

        ByteString getNameBytes();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static SdkAnalyticConfig getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SdkAnalyticConfig parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SdkAnalyticConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SdkAnalyticConfig parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<SdkAnalyticConfig> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SdkAnalyticConfig)) {
            return super.equals(obj);
        }
        SdkAnalyticConfig sdkAnalyticConfig = (SdkAnalyticConfig) obj;
        if (getUrl().equals(sdkAnalyticConfig.getUrl()) && getContext().equals(sdkAnalyticConfig.getContext()) && getInterval() == sdkAnalyticConfig.getInterval() && getCount() == sdkAnalyticConfig.getCount() && getMetricConfigsList().equals(sdkAnalyticConfig.getMetricConfigsList()) && this.unknownFields.equals(sdkAnalyticConfig.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public String getContext() {
        Object obj = this.context_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.context_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public ByteString getContextBytes() {
        Object obj = this.context_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.context_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public int getCount() {
        return this.count_;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public int getInterval() {
        return this.interval_;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public MetricConfig getMetricConfigs(int i10) {
        return this.metricConfigs_.get(i10);
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public int getMetricConfigsCount() {
        return this.metricConfigs_.size();
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public List<MetricConfig> getMetricConfigsList() {
        return this.metricConfigs_;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public MetricConfigOrBuilder getMetricConfigsOrBuilder(int i10) {
        return this.metricConfigs_.get(i10);
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public List<? extends MetricConfigOrBuilder> getMetricConfigsOrBuilderList() {
        return this.metricConfigs_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<SdkAnalyticConfig> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getUrlBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.url_);
        } else {
            i10 = 0;
        }
        if (!getContextBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.context_);
        }
        int i12 = this.interval_;
        if (i12 != 0) {
            i10 += CodedOutputStream.x(3, i12);
        }
        int i13 = this.count_;
        if (i13 != 0) {
            i10 += CodedOutputStream.x(4, i13);
        }
        for (int i14 = 0; i14 < this.metricConfigs_.size(); i14++) {
            i10 += CodedOutputStream.G(5, this.metricConfigs_.get(i14));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public String getUrl() {
        Object obj = this.url_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.url_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
    public ByteString getUrlBytes() {
        Object obj = this.url_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.url_ = copyFromUtf8;
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
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getUrl().hashCode()) * 37) + 2) * 53) + getContext().hashCode()) * 37) + 3) * 53) + getInterval()) * 37) + 4) * 53) + getCount();
        if (getMetricConfigsCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getMetricConfigsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_fieldAccessorTable.d(SdkAnalyticConfig.class, Builder.class);
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
        return new SdkAnalyticConfig();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.url_);
        }
        if (!getContextBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.context_);
        }
        int i10 = this.interval_;
        if (i10 != 0) {
            codedOutputStream.H0(3, i10);
        }
        int i11 = this.count_;
        if (i11 != 0) {
            codedOutputStream.H0(4, i11);
        }
        for (int i12 = 0; i12 < this.metricConfigs_.size(); i12++) {
            codedOutputStream.L0(5, this.metricConfigs_.get(i12));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements SdkAnalyticConfigOrBuilder {
        private int bitField0_;
        private Object context_;
        private int count_;
        private int interval_;
        private p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> metricConfigsBuilder_;
        private List<MetricConfig> metricConfigs_;
        private Object url_;

        private void ensureMetricConfigsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.metricConfigs_ = new ArrayList(this.metricConfigs_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor;
        }

        private p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> getMetricConfigsFieldBuilder() {
            if (this.metricConfigsBuilder_ == null) {
                List<MetricConfig> list = this.metricConfigs_;
                boolean z10 = true;
                if ((this.bitField0_ & 1) == 0) {
                    z10 = false;
                }
                this.metricConfigsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.metricConfigs_ = null;
            }
            return this.metricConfigsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getMetricConfigsFieldBuilder();
            }
        }

        public Builder addAllMetricConfigs(Iterable<? extends MetricConfig> iterable) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                ensureMetricConfigsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.metricConfigs_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder addMetricConfigs(MetricConfig metricConfig) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                metricConfig.getClass();
                ensureMetricConfigsIsMutable();
                this.metricConfigs_.add(metricConfig);
                onChanged();
            } else {
                p1Var.e(metricConfig);
            }
            return this;
        }

        public MetricConfig.Builder addMetricConfigsBuilder() {
            return getMetricConfigsFieldBuilder().c(MetricConfig.getDefaultInstance());
        }

        public Builder clearContext() {
            this.context_ = SdkAnalyticConfig.getDefaultInstance().getContext();
            onChanged();
            return this;
        }

        public Builder clearCount() {
            this.count_ = 0;
            onChanged();
            return this;
        }

        public Builder clearInterval() {
            this.interval_ = 0;
            onChanged();
            return this;
        }

        public Builder clearMetricConfigs() {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                this.metricConfigs_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder clearUrl() {
            this.url_ = SdkAnalyticConfig.getDefaultInstance().getUrl();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public String getContext() {
            Object obj = this.context_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.context_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public ByteString getContextBytes() {
            Object obj = this.context_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.context_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public int getCount() {
            return this.count_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_descriptor;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public int getInterval() {
            return this.interval_;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public MetricConfig getMetricConfigs(int i10) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                return this.metricConfigs_.get(i10);
            }
            return p1Var.n(i10);
        }

        public MetricConfig.Builder getMetricConfigsBuilder(int i10) {
            return getMetricConfigsFieldBuilder().k(i10);
        }

        public List<MetricConfig.Builder> getMetricConfigsBuilderList() {
            return getMetricConfigsFieldBuilder().l();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public int getMetricConfigsCount() {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                return this.metricConfigs_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public List<MetricConfig> getMetricConfigsList() {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.metricConfigs_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public MetricConfigOrBuilder getMetricConfigsOrBuilder(int i10) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                return this.metricConfigs_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public List<? extends MetricConfigOrBuilder> getMetricConfigsOrBuilderList() {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.metricConfigs_);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public String getUrl() {
            Object obj = this.url_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.url_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticConfigOrBuilder
        public ByteString getUrlBytes() {
            Object obj = this.url_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.url_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticConfig_fieldAccessorTable.d(SdkAnalyticConfig.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder removeMetricConfigs(int i10) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                ensureMetricConfigsIsMutable();
                this.metricConfigs_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder setContext(String str) {
            str.getClass();
            this.context_ = str;
            onChanged();
            return this;
        }

        public Builder setContextBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.context_ = byteString;
            onChanged();
            return this;
        }

        public Builder setCount(int i10) {
            this.count_ = i10;
            onChanged();
            return this;
        }

        public Builder setInterval(int i10) {
            this.interval_ = i10;
            onChanged();
            return this;
        }

        public Builder setMetricConfigs(int i10, MetricConfig metricConfig) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                metricConfig.getClass();
                ensureMetricConfigsIsMutable();
                this.metricConfigs_.set(i10, metricConfig);
                onChanged();
            } else {
                p1Var.w(i10, metricConfig);
            }
            return this;
        }

        public Builder setUrl(String str) {
            str.getClass();
            this.url_ = str;
            onChanged();
            return this;
        }

        public Builder setUrlBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.url_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.url_ = "";
            this.context_ = "";
            this.metricConfigs_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SdkAnalyticConfig build() {
            SdkAnalyticConfig buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SdkAnalyticConfig buildPartial() {
            SdkAnalyticConfig sdkAnalyticConfig = new SdkAnalyticConfig(this);
            sdkAnalyticConfig.url_ = this.url_;
            sdkAnalyticConfig.context_ = this.context_;
            sdkAnalyticConfig.interval_ = this.interval_;
            sdkAnalyticConfig.count_ = this.count_;
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var != null) {
                sdkAnalyticConfig.metricConfigs_ = p1Var.f();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.metricConfigs_ = Collections.unmodifiableList(this.metricConfigs_);
                    this.bitField0_ &= -2;
                }
                sdkAnalyticConfig.metricConfigs_ = this.metricConfigs_;
            }
            onBuilt();
            return sdkAnalyticConfig;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public SdkAnalyticConfig mo4630getDefaultInstanceForType() {
            return SdkAnalyticConfig.getDefaultInstance();
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

        public MetricConfig.Builder addMetricConfigsBuilder(int i10) {
            return getMetricConfigsFieldBuilder().b(i10, MetricConfig.getDefaultInstance());
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
            this.url_ = "";
            this.context_ = "";
            this.interval_ = 0;
            this.count_ = 0;
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                this.metricConfigs_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder addMetricConfigs(int i10, MetricConfig metricConfig) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                metricConfig.getClass();
                ensureMetricConfigsIsMutable();
                this.metricConfigs_.add(i10, metricConfig);
                onChanged();
            } else {
                p1Var.d(i10, metricConfig);
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
            if (message instanceof SdkAnalyticConfig) {
                return mergeFrom((SdkAnalyticConfig) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setMetricConfigs(int i10, MetricConfig.Builder builder) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                ensureMetricConfigsIsMutable();
                this.metricConfigs_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.url_ = "";
            this.context_ = "";
            this.metricConfigs_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(SdkAnalyticConfig sdkAnalyticConfig) {
            if (sdkAnalyticConfig == SdkAnalyticConfig.getDefaultInstance()) {
                return this;
            }
            if (!sdkAnalyticConfig.getUrl().isEmpty()) {
                this.url_ = sdkAnalyticConfig.url_;
                onChanged();
            }
            if (!sdkAnalyticConfig.getContext().isEmpty()) {
                this.context_ = sdkAnalyticConfig.context_;
                onChanged();
            }
            if (sdkAnalyticConfig.getInterval() != 0) {
                setInterval(sdkAnalyticConfig.getInterval());
            }
            if (sdkAnalyticConfig.getCount() != 0) {
                setCount(sdkAnalyticConfig.getCount());
            }
            if (this.metricConfigsBuilder_ == null) {
                if (!sdkAnalyticConfig.metricConfigs_.isEmpty()) {
                    if (this.metricConfigs_.isEmpty()) {
                        this.metricConfigs_ = sdkAnalyticConfig.metricConfigs_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMetricConfigsIsMutable();
                        this.metricConfigs_.addAll(sdkAnalyticConfig.metricConfigs_);
                    }
                    onChanged();
                }
            } else if (!sdkAnalyticConfig.metricConfigs_.isEmpty()) {
                if (!this.metricConfigsBuilder_.t()) {
                    this.metricConfigsBuilder_.a(sdkAnalyticConfig.metricConfigs_);
                } else {
                    this.metricConfigsBuilder_.h();
                    this.metricConfigsBuilder_ = null;
                    this.metricConfigs_ = sdkAnalyticConfig.metricConfigs_;
                    this.bitField0_ &= -2;
                    this.metricConfigsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMetricConfigsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) sdkAnalyticConfig).unknownFields);
            onChanged();
            return this;
        }

        public Builder addMetricConfigs(MetricConfig.Builder builder) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                ensureMetricConfigsIsMutable();
                this.metricConfigs_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addMetricConfigs(int i10, MetricConfig.Builder builder) {
            p1<MetricConfig, MetricConfig.Builder, MetricConfigOrBuilder> p1Var = this.metricConfigsBuilder_;
            if (p1Var == null) {
                ensureMetricConfigsIsMutable();
                this.metricConfigs_.add(i10, builder.build());
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
        public io.bidmachine.protobuf.SdkAnalyticConfig.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.SdkAnalyticConfig.access$2400()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.SdkAnalyticConfig r3 = (io.bidmachine.protobuf.SdkAnalyticConfig) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.SdkAnalyticConfig r4 = (io.bidmachine.protobuf.SdkAnalyticConfig) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.SdkAnalyticConfig.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.SdkAnalyticConfig$Builder");
        }
    }

    public static Builder newBuilder(SdkAnalyticConfig sdkAnalyticConfig) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(sdkAnalyticConfig);
    }

    public static SdkAnalyticConfig parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private SdkAnalyticConfig(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SdkAnalyticConfig parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (SdkAnalyticConfig) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static SdkAnalyticConfig parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public SdkAnalyticConfig mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static SdkAnalyticConfig parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private SdkAnalyticConfig() {
        this.memoizedIsInitialized = (byte) -1;
        this.url_ = "";
        this.context_ = "";
        this.metricConfigs_ = Collections.emptyList();
    }

    public static SdkAnalyticConfig parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static SdkAnalyticConfig parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static SdkAnalyticConfig parseFrom(InputStream inputStream) throws IOException {
        return (SdkAnalyticConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SdkAnalyticConfig parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (SdkAnalyticConfig) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SdkAnalyticConfig(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.url_ = nVar.J();
                            } else if (K == 18) {
                                this.context_ = nVar.J();
                            } else if (K == 24) {
                                this.interval_ = nVar.y();
                            } else if (K == 32) {
                                this.count_ = nVar.y();
                            } else if (K != 42) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!z11) {
                                    this.metricConfigs_ = new ArrayList();
                                    z11 = true;
                                }
                                this.metricConfigs_.add(nVar.A(MetricConfig.parser(), yVar));
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
                    this.metricConfigs_ = Collections.unmodifiableList(this.metricConfigs_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.metricConfigs_ = Collections.unmodifiableList(this.metricConfigs_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static SdkAnalyticConfig parseFrom(n nVar) throws IOException {
        return (SdkAnalyticConfig) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static SdkAnalyticConfig parseFrom(n nVar, y yVar) throws IOException {
        return (SdkAnalyticConfig) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
