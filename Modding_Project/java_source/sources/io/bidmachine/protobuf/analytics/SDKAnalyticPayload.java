package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class SDKAnalyticPayload extends GeneratedMessageV3 implements SDKAnalyticPayloadOrBuilder {
    public static final int METRICS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Metric> metrics_;
    private static final SDKAnalyticPayload DEFAULT_INSTANCE = new SDKAnalyticPayload();
    private static final j1<SDKAnalyticPayload> PARSER = new b<SDKAnalyticPayload>() { // from class: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.1
        @Override // com.explorestack.protobuf.j1
        public SDKAnalyticPayload parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new SDKAnalyticPayload(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class Metric extends GeneratedMessageV3 implements MetricOrBuilder {
        public static final int CONTEXT_FIELD_NUMBER = 1;
        public static final int DATA_FIELD_NUMBER = 2;
        private static final Metric DEFAULT_INSTANCE = new Metric();
        private static final j1<Metric> PARSER = new b<Metric>() { // from class: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.1
            @Override // com.explorestack.protobuf.j1
            public Metric parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Metric(nVar, yVar);
            }
        };
        private static final long serialVersionUID = 0;
        private volatile Object context_;
        private List<MetricData> data_;
        private byte memoizedIsInitialized;

        /* loaded from: classes8.dex */
        public static final class MetricData extends GeneratedMessageV3 implements MetricDataOrBuilder {
            public static final int DIMENSIONS_FIELD_NUMBER = 3;
            public static final int ERROR_FIELD_NUMBER = 5;
            public static final int MEASURES_FIELD_NUMBER = 4;
            public static final int NAME_FIELD_NUMBER = 2;
            public static final int TIMESTAMP_FIELD_NUMBER = 1;
            public static final int TS_FIELD_NUMBER = 6;
            private static final long serialVersionUID = 0;
            private List<Dimension> dimensions_;
            private Error error_;
            private List<Measure> measures_;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private volatile Object timestamp_;
            private Timestamp ts_;
            private static final MetricData DEFAULT_INSTANCE = new MetricData();
            private static final j1<MetricData> PARSER = new b<MetricData>() { // from class: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.1
                @Override // com.explorestack.protobuf.j1
                public MetricData parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new MetricData(nVar, yVar);
                }
            };

            /* loaded from: classes8.dex */
            public static final class Dimension extends GeneratedMessageV3 implements DimensionOrBuilder {
                public static final int NAME_FIELD_NUMBER = 1;
                public static final int VALUE_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private byte memoizedIsInitialized;
                private volatile Object name_;
                private volatile Object value_;
                private static final Dimension DEFAULT_INSTANCE = new Dimension();
                private static final j1<Dimension> PARSER = new b<Dimension>() { // from class: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Dimension.1
                    @Override // com.explorestack.protobuf.j1
                    public Dimension parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                        return new Dimension(nVar, yVar);
                    }
                };

                public static Dimension getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_descriptor;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Dimension parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Dimension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static Dimension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static j1<Dimension> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof Dimension)) {
                        return super.equals(obj);
                    }
                    Dimension dimension = (Dimension) obj;
                    if (getName().equals(dimension.getName()) && getValue().equals(dimension.getValue()) && this.unknownFields.equals(dimension.unknownFields)) {
                        return true;
                    }
                    return false;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
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
                public j1<Dimension> getParserForType() {
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
                    if (!getValueBytes().isEmpty()) {
                        i10 += GeneratedMessageV3.computeStringSize(2, this.value_);
                    }
                    int serializedSize = i10 + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final j2 getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
                public String getValue() {
                    Object obj = this.value_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.value_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
                public ByteString getValueBytes() {
                    Object obj = this.value_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.value_ = copyFromUtf8;
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
                    int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getValue().hashCode()) * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode;
                    return hashCode;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_fieldAccessorTable.d(Dimension.class, Builder.class);
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
                    return new Dimension();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!getNameBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                    }
                    if (!getValueBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.value_);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* loaded from: classes8.dex */
                public static final class Builder extends GeneratedMessageV3.b<Builder> implements DimensionOrBuilder {
                    private Object name_;
                    private Object value_;

                    public static final Descriptors.Descriptor getDescriptor() {
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_descriptor;
                    }

                    private void maybeForceBuilderInitialization() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    public Builder clearName() {
                        this.name_ = Dimension.getDefaultInstance().getName();
                        onChanged();
                        return this;
                    }

                    public Builder clearValue() {
                        this.value_ = Dimension.getDefaultInstance().getValue();
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_descriptor;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
                    public String getName() {
                        Object obj = this.name_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.name_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
                    public ByteString getNameBytes() {
                        Object obj = this.name_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.name_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
                    public String getValue() {
                        Object obj = this.value_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.value_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.DimensionOrBuilder
                    public ByteString getValueBytes() {
                        Object obj = this.value_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.value_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_fieldAccessorTable.d(Dimension.class, Builder.class);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final boolean isInitialized() {
                        return true;
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

                    public Builder setValue(String str) {
                        str.getClass();
                        this.value_ = str;
                        onChanged();
                        return this;
                    }

                    public Builder setValueBytes(ByteString byteString) {
                        byteString.getClass();
                        a.checkByteStringIsUtf8(byteString);
                        this.value_ = byteString;
                        onChanged();
                        return this;
                    }

                    private Builder() {
                        this.name_ = "";
                        this.value_ = "";
                        maybeForceBuilderInitialization();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                    public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public Dimension build() {
                        Dimension buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public Dimension buildPartial() {
                        Dimension dimension = new Dimension(this);
                        dimension.name_ = this.name_;
                        dimension.value_ = this.value_;
                        onBuilt();
                        return dimension;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                    public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                        return (Builder) super.clearField(fieldDescriptor);
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    /* renamed from: getDefaultInstanceForType */
                    public Dimension mo4630getDefaultInstanceForType() {
                        return Dimension.getDefaultInstance();
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
                        this.value_ = "";
                        return this;
                    }

                    private Builder(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.name_ = "";
                        this.value_ = "";
                        maybeForceBuilderInitialization();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                    /* renamed from: clone */
                    public Builder mo4628clone() {
                        return (Builder) super.mo4628clone();
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof Dimension) {
                            return mergeFrom((Dimension) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(Dimension dimension) {
                        if (dimension == Dimension.getDefaultInstance()) {
                            return this;
                        }
                        if (!dimension.getName().isEmpty()) {
                            this.name_ = dimension.name_;
                            onChanged();
                        }
                        if (!dimension.getValue().isEmpty()) {
                            this.value_ = dimension.value_;
                            onChanged();
                        }
                        mergeUnknownFields(((GeneratedMessageV3) dimension).unknownFields);
                        onChanged();
                        return this;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Dimension.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Dimension.access$700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Dimension r3 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Dimension) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                            io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Dimension r4 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Dimension) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Dimension.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Dimension$Builder");
                    }
                }

                public static Builder newBuilder(Dimension dimension) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(dimension);
                }

                public static Dimension parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, yVar);
                }

                private Dimension(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static Dimension parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                    return (Dimension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
                }

                public static Dimension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Dimension mo4630getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                public static Dimension parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, yVar);
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                private Dimension() {
                    this.memoizedIsInitialized = (byte) -1;
                    this.name_ = "";
                    this.value_ = "";
                }

                public static Dimension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new Builder(cVar);
                }

                public static Dimension parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, yVar);
                }

                public static Dimension parseFrom(InputStream inputStream) throws IOException {
                    return (Dimension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                private Dimension(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                        this.name_ = nVar.J();
                                    } else if (K != 18) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        this.value_ = nVar.J();
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

                public static Dimension parseFrom(InputStream inputStream, y yVar) throws IOException {
                    return (Dimension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
                }

                public static Dimension parseFrom(n nVar) throws IOException {
                    return (Dimension) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
                }

                public static Dimension parseFrom(n nVar, y yVar) throws IOException {
                    return (Dimension) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
                }
            }

            /* loaded from: classes8.dex */
            public interface DimensionOrBuilder extends MessageOrBuilder {
                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

                String getName();

                ByteString getNameBytes();

                String getValue();

                ByteString getValueBytes();

                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* synthetic */ boolean isInitialized();
            }

            /* loaded from: classes8.dex */
            public static final class Error extends GeneratedMessageV3 implements ErrorOrBuilder {
                public static final int DESCRIPTION_FIELD_NUMBER = 2;
                public static final int NAME_FIELD_NUMBER = 1;
                private static final long serialVersionUID = 0;
                private volatile Object description_;
                private byte memoizedIsInitialized;
                private volatile Object name_;
                private static final Error DEFAULT_INSTANCE = new Error();
                private static final j1<Error> PARSER = new b<Error>() { // from class: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Error.1
                    @Override // com.explorestack.protobuf.j1
                    public Error parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                        return new Error(nVar, yVar);
                    }
                };

                public static Error getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_descriptor;
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
                    if (getName().equals(error.getName()) && getDescription().equals(error.getDescription()) && this.unknownFields.equals(error.unknownFields)) {
                        return true;
                    }
                    return false;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
                public String getDescription() {
                    Object obj = this.description_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.description_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
                public ByteString getDescriptionBytes() {
                    Object obj = this.description_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.description_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
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
                    int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getDescription().hashCode()) * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode;
                    return hashCode;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_fieldAccessorTable.d(Error.class, Builder.class);
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
                    if (!getDescriptionBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.description_);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* loaded from: classes8.dex */
                public static final class Builder extends GeneratedMessageV3.b<Builder> implements ErrorOrBuilder {
                    private Object description_;
                    private Object name_;

                    public static final Descriptors.Descriptor getDescriptor() {
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_descriptor;
                    }

                    private void maybeForceBuilderInitialization() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    public Builder clearDescription() {
                        this.description_ = Error.getDefaultInstance().getDescription();
                        onChanged();
                        return this;
                    }

                    public Builder clearName() {
                        this.name_ = Error.getDefaultInstance().getName();
                        onChanged();
                        return this;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
                    public String getDescription() {
                        Object obj = this.description_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.description_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
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
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_descriptor;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
                    public String getName() {
                        Object obj = this.name_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.name_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.ErrorOrBuilder
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
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_fieldAccessorTable.d(Error.class, Builder.class);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final boolean isInitialized() {
                        return true;
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

                    private Builder() {
                        this.name_ = "";
                        this.description_ = "";
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
                        error.description_ = this.description_;
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
                        this.description_ = "";
                        return this;
                    }

                    private Builder(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.name_ = "";
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
                        if (!error.getDescription().isEmpty()) {
                            this.description_ = error.description_;
                            onChanged();
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
                    public io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Error.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Error.access$2800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Error r3 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Error) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                            io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Error r4 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Error) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Error.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Error$Builder");
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
                    this.description_ = "";
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
                    yVar.getClass();
                    j2.b g10 = j2.g();
                    boolean z10 = false;
                    while (!z10) {
                        try {
                            try {
                                int K = nVar.K();
                                if (K != 0) {
                                    if (K == 10) {
                                        this.name_ = nVar.J();
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

            /* loaded from: classes8.dex */
            public interface ErrorOrBuilder extends MessageOrBuilder {
                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

                String getDescription();

                ByteString getDescriptionBytes();

                String getName();

                ByteString getNameBytes();

                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* synthetic */ boolean isInitialized();
            }

            /* loaded from: classes8.dex */
            public static final class Measure extends GeneratedMessageV3 implements MeasureOrBuilder {
                public static final int NAME_FIELD_NUMBER = 1;
                public static final int VALUE_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private byte memoizedIsInitialized;
                private volatile Object name_;
                private double value_;
                private static final Measure DEFAULT_INSTANCE = new Measure();
                private static final j1<Measure> PARSER = new b<Measure>() { // from class: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Measure.1
                    @Override // com.explorestack.protobuf.j1
                    public Measure parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                        return new Measure(nVar, yVar);
                    }
                };

                public static Measure getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_descriptor;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Measure parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Measure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static Measure parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static j1<Measure> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof Measure)) {
                        return super.equals(obj);
                    }
                    Measure measure = (Measure) obj;
                    if (getName().equals(measure.getName()) && Double.doubleToLongBits(getValue()) == Double.doubleToLongBits(measure.getValue()) && this.unknownFields.equals(measure.unknownFields)) {
                        return true;
                    }
                    return false;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.MeasureOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.name_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.MeasureOrBuilder
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
                public j1<Measure> getParserForType() {
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
                    double d10 = this.value_;
                    if (d10 != 0.0d) {
                        i10 += CodedOutputStream.j(2, d10);
                    }
                    int serializedSize = i10 + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final j2 getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.MeasureOrBuilder
                public double getValue() {
                    return this.value_;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public int hashCode() {
                    int i10 = this.memoizedHashCode;
                    if (i10 != 0) {
                        return i10;
                    }
                    int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + i0.i(Double.doubleToLongBits(getValue()))) * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode;
                    return hashCode;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_fieldAccessorTable.d(Measure.class, Builder.class);
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
                    return new Measure();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!getNameBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                    }
                    double d10 = this.value_;
                    if (d10 != 0.0d) {
                        codedOutputStream.t0(2, d10);
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }

                /* loaded from: classes8.dex */
                public static final class Builder extends GeneratedMessageV3.b<Builder> implements MeasureOrBuilder {
                    private Object name_;
                    private double value_;

                    public static final Descriptors.Descriptor getDescriptor() {
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_descriptor;
                    }

                    private void maybeForceBuilderInitialization() {
                        boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                    }

                    public Builder clearName() {
                        this.name_ = Measure.getDefaultInstance().getName();
                        onChanged();
                        return this;
                    }

                    public Builder clearValue() {
                        this.value_ = 0.0d;
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public Descriptors.Descriptor getDescriptorForType() {
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_descriptor;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.MeasureOrBuilder
                    public String getName() {
                        Object obj = this.name_;
                        if (!(obj instanceof String)) {
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.name_ = stringUtf8;
                            return stringUtf8;
                        }
                        return (String) obj;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.MeasureOrBuilder
                    public ByteString getNameBytes() {
                        Object obj = this.name_;
                        if (obj instanceof String) {
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.name_ = copyFromUtf8;
                            return copyFromUtf8;
                        }
                        return (ByteString) obj;
                    }

                    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.MeasureOrBuilder
                    public double getValue() {
                        return this.value_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_fieldAccessorTable.d(Measure.class, Builder.class);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final boolean isInitialized() {
                        return true;
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

                    public Builder setValue(double d10) {
                        this.value_ = d10;
                        onChanged();
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
                    public Measure build() {
                        Measure buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public Measure buildPartial() {
                        Measure measure = new Measure(this);
                        measure.name_ = this.name_;
                        measure.value_ = this.value_;
                        onBuilt();
                        return measure;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                    public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                        return (Builder) super.clearField(fieldDescriptor);
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    /* renamed from: getDefaultInstanceForType */
                    public Measure mo4630getDefaultInstanceForType() {
                        return Measure.getDefaultInstance();
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
                        this.value_ = 0.0d;
                        return this;
                    }

                    private Builder(GeneratedMessageV3.c cVar) {
                        super(cVar);
                        this.name_ = "";
                        maybeForceBuilderInitialization();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                    /* renamed from: clone */
                    public Builder mo4628clone() {
                        return (Builder) super.mo4628clone();
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public Builder mergeFrom(Message message) {
                        if (message instanceof Measure) {
                            return mergeFrom((Measure) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public Builder mergeFrom(Measure measure) {
                        if (measure == Measure.getDefaultInstance()) {
                            return this;
                        }
                        if (!measure.getName().isEmpty()) {
                            this.name_ = measure.name_;
                            onChanged();
                        }
                        if (measure.getValue() != 0.0d) {
                            setValue(measure.getValue());
                        }
                        mergeUnknownFields(((GeneratedMessageV3) measure).unknownFields);
                        onChanged();
                        return this;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Measure.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                        /*
                            r2 = this;
                            r0 = 0
                            com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Measure.access$1800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                            io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Measure r3 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Measure) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                            io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Measure r4 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Measure) r4     // Catch: java.lang.Throwable -> L11
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
                        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Measure.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Measure$Builder");
                    }
                }

                public static Builder newBuilder(Measure measure) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(measure);
                }

                public static Measure parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, yVar);
                }

                private Measure(GeneratedMessageV3.b<?> bVar) {
                    super(bVar);
                    this.memoizedIsInitialized = (byte) -1;
                }

                public static Measure parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                    return (Measure) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
                }

                public static Measure parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Measure mo4630getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                public static Measure parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, yVar);
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public Builder newBuilderForType() {
                    return newBuilder();
                }

                private Measure() {
                    this.memoizedIsInitialized = (byte) -1;
                    this.name_ = "";
                }

                public static Measure parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                    return new Builder(cVar);
                }

                public static Measure parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, yVar);
                }

                public static Measure parseFrom(InputStream inputStream) throws IOException {
                    return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                private Measure(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                        this.name_ = nVar.J();
                                    } else if (K != 17) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        this.value_ = nVar.s();
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

                public static Measure parseFrom(InputStream inputStream, y yVar) throws IOException {
                    return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
                }

                public static Measure parseFrom(n nVar) throws IOException {
                    return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
                }

                public static Measure parseFrom(n nVar, y yVar) throws IOException {
                    return (Measure) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
                }
            }

            /* loaded from: classes8.dex */
            public interface MeasureOrBuilder extends MessageOrBuilder {
                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

                String getName();

                ByteString getNameBytes();

                double getValue();

                @Override // com.explorestack.protobuf.MessageOrBuilder
                /* synthetic */ boolean isInitialized();
            }

            public static MetricData getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static MetricData parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (MetricData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static MetricData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<MetricData> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof MetricData)) {
                    return super.equals(obj);
                }
                MetricData metricData = (MetricData) obj;
                if (!getTimestamp().equals(metricData.getTimestamp()) || !getName().equals(metricData.getName()) || !getDimensionsList().equals(metricData.getDimensionsList()) || !getMeasuresList().equals(metricData.getMeasuresList()) || hasError() != metricData.hasError()) {
                    return false;
                }
                if ((hasError() && !getError().equals(metricData.getError())) || hasTs() != metricData.hasTs()) {
                    return false;
                }
                if ((!hasTs() || getTs().equals(metricData.getTs())) && this.unknownFields.equals(metricData.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public Dimension getDimensions(int i10) {
                return this.dimensions_.get(i10);
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public int getDimensionsCount() {
                return this.dimensions_.size();
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public List<Dimension> getDimensionsList() {
                return this.dimensions_;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public DimensionOrBuilder getDimensionsOrBuilder(int i10) {
                return this.dimensions_.get(i10);
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public List<? extends DimensionOrBuilder> getDimensionsOrBuilderList() {
                return this.dimensions_;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public Error getError() {
                Error error = this.error_;
                if (error == null) {
                    return Error.getDefaultInstance();
                }
                return error;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public ErrorOrBuilder getErrorOrBuilder() {
                return getError();
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public Measure getMeasures(int i10) {
                return this.measures_.get(i10);
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public int getMeasuresCount() {
                return this.measures_.size();
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public List<Measure> getMeasuresList() {
                return this.measures_;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public MeasureOrBuilder getMeasuresOrBuilder(int i10) {
                return this.measures_.get(i10);
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public List<? extends MeasureOrBuilder> getMeasuresOrBuilderList() {
                return this.measures_;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
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
            public j1<MetricData> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (!getTimestampBytes().isEmpty()) {
                    i10 = GeneratedMessageV3.computeStringSize(1, this.timestamp_);
                } else {
                    i10 = 0;
                }
                if (!getNameBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(2, this.name_);
                }
                for (int i12 = 0; i12 < this.dimensions_.size(); i12++) {
                    i10 += CodedOutputStream.G(3, this.dimensions_.get(i12));
                }
                for (int i13 = 0; i13 < this.measures_.size(); i13++) {
                    i10 += CodedOutputStream.G(4, this.measures_.get(i13));
                }
                if (this.error_ != null) {
                    i10 += CodedOutputStream.G(5, getError());
                }
                if (this.ts_ != null) {
                    i10 += CodedOutputStream.G(6, getTs());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            @Deprecated
            public String getTimestamp() {
                Object obj = this.timestamp_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.timestamp_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            @Deprecated
            public ByteString getTimestampBytes() {
                Object obj = this.timestamp_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.timestamp_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public Timestamp getTs() {
                Timestamp timestamp = this.ts_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public c2 getTsOrBuilder() {
                return getTs();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public boolean hasError() {
                if (this.error_ != null) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
            public boolean hasTs() {
                if (this.ts_ != null) {
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
                int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTimestamp().hashCode()) * 37) + 2) * 53) + getName().hashCode();
                if (getDimensionsCount() > 0) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getDimensionsList().hashCode();
                }
                if (getMeasuresCount() > 0) {
                    hashCode = (((hashCode * 37) + 4) * 53) + getMeasuresList().hashCode();
                }
                if (hasError()) {
                    hashCode = (((hashCode * 37) + 5) * 53) + getError().hashCode();
                }
                if (hasTs()) {
                    hashCode = (((hashCode * 37) + 6) * 53) + getTs().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_fieldAccessorTable.d(MetricData.class, Builder.class);
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
                return new MetricData();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getTimestampBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.timestamp_);
                }
                if (!getNameBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.name_);
                }
                for (int i10 = 0; i10 < this.dimensions_.size(); i10++) {
                    codedOutputStream.L0(3, this.dimensions_.get(i10));
                }
                for (int i11 = 0; i11 < this.measures_.size(); i11++) {
                    codedOutputStream.L0(4, this.measures_.get(i11));
                }
                if (this.error_ != null) {
                    codedOutputStream.L0(5, getError());
                }
                if (this.ts_ != null) {
                    codedOutputStream.L0(6, getTs());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements MetricDataOrBuilder {
                private int bitField0_;
                private p1<Dimension, Dimension.Builder, DimensionOrBuilder> dimensionsBuilder_;
                private List<Dimension> dimensions_;
                private t1<Error, Error.Builder, ErrorOrBuilder> errorBuilder_;
                private Error error_;
                private p1<Measure, Measure.Builder, MeasureOrBuilder> measuresBuilder_;
                private List<Measure> measures_;
                private Object name_;
                private Object timestamp_;
                private t1<Timestamp, Timestamp.Builder, c2> tsBuilder_;
                private Timestamp ts_;

                private void ensureDimensionsIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.dimensions_ = new ArrayList(this.dimensions_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureMeasuresIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.measures_ = new ArrayList(this.measures_);
                        this.bitField0_ |= 2;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_descriptor;
                }

                private p1<Dimension, Dimension.Builder, DimensionOrBuilder> getDimensionsFieldBuilder() {
                    if (this.dimensionsBuilder_ == null) {
                        List<Dimension> list = this.dimensions_;
                        boolean z10 = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z10 = false;
                        }
                        this.dimensionsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.dimensions_ = null;
                    }
                    return this.dimensionsBuilder_;
                }

                private t1<Error, Error.Builder, ErrorOrBuilder> getErrorFieldBuilder() {
                    if (this.errorBuilder_ == null) {
                        this.errorBuilder_ = new t1<>(getError(), getParentForChildren(), isClean());
                        this.error_ = null;
                    }
                    return this.errorBuilder_;
                }

                private p1<Measure, Measure.Builder, MeasureOrBuilder> getMeasuresFieldBuilder() {
                    boolean z10;
                    if (this.measuresBuilder_ == null) {
                        List<Measure> list = this.measures_;
                        if ((this.bitField0_ & 2) != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.measuresBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.measures_ = null;
                    }
                    return this.measuresBuilder_;
                }

                private t1<Timestamp, Timestamp.Builder, c2> getTsFieldBuilder() {
                    if (this.tsBuilder_ == null) {
                        this.tsBuilder_ = new t1<>(getTs(), getParentForChildren(), isClean());
                        this.ts_ = null;
                    }
                    return this.tsBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getDimensionsFieldBuilder();
                        getMeasuresFieldBuilder();
                    }
                }

                public Builder addAllDimensions(Iterable<? extends Dimension> iterable) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        ensureDimensionsIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.dimensions_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder addAllMeasures(Iterable<? extends Measure> iterable) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        ensureMeasuresIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.measures_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder addDimensions(Dimension dimension) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        dimension.getClass();
                        ensureDimensionsIsMutable();
                        this.dimensions_.add(dimension);
                        onChanged();
                    } else {
                        p1Var.e(dimension);
                    }
                    return this;
                }

                public Dimension.Builder addDimensionsBuilder() {
                    return getDimensionsFieldBuilder().c(Dimension.getDefaultInstance());
                }

                public Builder addMeasures(Measure measure) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        measure.getClass();
                        ensureMeasuresIsMutable();
                        this.measures_.add(measure);
                        onChanged();
                    } else {
                        p1Var.e(measure);
                    }
                    return this;
                }

                public Measure.Builder addMeasuresBuilder() {
                    return getMeasuresFieldBuilder().c(Measure.getDefaultInstance());
                }

                public Builder clearDimensions() {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        this.dimensions_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
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

                public Builder clearMeasures() {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        this.measures_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearName() {
                    this.name_ = MetricData.getDefaultInstance().getName();
                    onChanged();
                    return this;
                }

                @Deprecated
                public Builder clearTimestamp() {
                    this.timestamp_ = MetricData.getDefaultInstance().getTimestamp();
                    onChanged();
                    return this;
                }

                public Builder clearTs() {
                    if (this.tsBuilder_ == null) {
                        this.ts_ = null;
                        onChanged();
                    } else {
                        this.ts_ = null;
                        this.tsBuilder_ = null;
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_descriptor;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public Dimension getDimensions(int i10) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        return this.dimensions_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public Dimension.Builder getDimensionsBuilder(int i10) {
                    return getDimensionsFieldBuilder().k(i10);
                }

                public List<Dimension.Builder> getDimensionsBuilderList() {
                    return getDimensionsFieldBuilder().l();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public int getDimensionsCount() {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        return this.dimensions_.size();
                    }
                    return p1Var.m();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public List<Dimension> getDimensionsList() {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.dimensions_);
                    }
                    return p1Var.p();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public DimensionOrBuilder getDimensionsOrBuilder(int i10) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        return this.dimensions_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public List<? extends DimensionOrBuilder> getDimensionsOrBuilderList() {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.dimensions_);
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public Error getError() {
                    t1<Error, Error.Builder, ErrorOrBuilder> t1Var = this.errorBuilder_;
                    if (t1Var == null) {
                        Error error = this.error_;
                        if (error == null) {
                            return Error.getDefaultInstance();
                        }
                        return error;
                    }
                    return t1Var.e();
                }

                public Error.Builder getErrorBuilder() {
                    onChanged();
                    return getErrorFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public ErrorOrBuilder getErrorOrBuilder() {
                    t1<Error, Error.Builder, ErrorOrBuilder> t1Var = this.errorBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    Error error = this.error_;
                    if (error == null) {
                        return Error.getDefaultInstance();
                    }
                    return error;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public Measure getMeasures(int i10) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        return this.measures_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public Measure.Builder getMeasuresBuilder(int i10) {
                    return getMeasuresFieldBuilder().k(i10);
                }

                public List<Measure.Builder> getMeasuresBuilderList() {
                    return getMeasuresFieldBuilder().l();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public int getMeasuresCount() {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        return this.measures_.size();
                    }
                    return p1Var.m();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public List<Measure> getMeasuresList() {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.measures_);
                    }
                    return p1Var.p();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public MeasureOrBuilder getMeasuresOrBuilder(int i10) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        return this.measures_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public List<? extends MeasureOrBuilder> getMeasuresOrBuilderList() {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.measures_);
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.name_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                @Deprecated
                public String getTimestamp() {
                    Object obj = this.timestamp_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.timestamp_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                @Deprecated
                public ByteString getTimestampBytes() {
                    Object obj = this.timestamp_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.timestamp_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public Timestamp getTs() {
                    t1<Timestamp, Timestamp.Builder, c2> t1Var = this.tsBuilder_;
                    if (t1Var == null) {
                        Timestamp timestamp = this.ts_;
                        if (timestamp == null) {
                            return Timestamp.getDefaultInstance();
                        }
                        return timestamp;
                    }
                    return t1Var.e();
                }

                public Timestamp.Builder getTsBuilder() {
                    onChanged();
                    return getTsFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public c2 getTsOrBuilder() {
                    t1<Timestamp, Timestamp.Builder, c2> t1Var = this.tsBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    Timestamp timestamp = this.ts_;
                    if (timestamp == null) {
                        return Timestamp.getDefaultInstance();
                    }
                    return timestamp;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public boolean hasError() {
                    if (this.errorBuilder_ == null && this.error_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricDataOrBuilder
                public boolean hasTs() {
                    if (this.tsBuilder_ == null && this.ts_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_fieldAccessorTable.d(MetricData.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeError(Error error) {
                    t1<Error, Error.Builder, ErrorOrBuilder> t1Var = this.errorBuilder_;
                    if (t1Var == null) {
                        Error error2 = this.error_;
                        if (error2 != null) {
                            this.error_ = Error.newBuilder(error2).mergeFrom(error).buildPartial();
                        } else {
                            this.error_ = error;
                        }
                        onChanged();
                    } else {
                        t1Var.g(error);
                    }
                    return this;
                }

                public Builder mergeTs(Timestamp timestamp) {
                    t1<Timestamp, Timestamp.Builder, c2> t1Var = this.tsBuilder_;
                    if (t1Var == null) {
                        Timestamp timestamp2 = this.ts_;
                        if (timestamp2 != null) {
                            this.ts_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                        } else {
                            this.ts_ = timestamp;
                        }
                        onChanged();
                    } else {
                        t1Var.g(timestamp);
                    }
                    return this;
                }

                public Builder removeDimensions(int i10) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        ensureDimensionsIsMutable();
                        this.dimensions_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder removeMeasures(int i10) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        ensureMeasuresIsMutable();
                        this.measures_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder setDimensions(int i10, Dimension dimension) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        dimension.getClass();
                        ensureDimensionsIsMutable();
                        this.dimensions_.set(i10, dimension);
                        onChanged();
                    } else {
                        p1Var.w(i10, dimension);
                    }
                    return this;
                }

                public Builder setError(Error error) {
                    t1<Error, Error.Builder, ErrorOrBuilder> t1Var = this.errorBuilder_;
                    if (t1Var == null) {
                        error.getClass();
                        this.error_ = error;
                        onChanged();
                    } else {
                        t1Var.i(error);
                    }
                    return this;
                }

                public Builder setMeasures(int i10, Measure measure) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        measure.getClass();
                        ensureMeasuresIsMutable();
                        this.measures_.set(i10, measure);
                        onChanged();
                    } else {
                        p1Var.w(i10, measure);
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

                @Deprecated
                public Builder setTimestamp(String str) {
                    str.getClass();
                    this.timestamp_ = str;
                    onChanged();
                    return this;
                }

                @Deprecated
                public Builder setTimestampBytes(ByteString byteString) {
                    byteString.getClass();
                    a.checkByteStringIsUtf8(byteString);
                    this.timestamp_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setTs(Timestamp timestamp) {
                    t1<Timestamp, Timestamp.Builder, c2> t1Var = this.tsBuilder_;
                    if (t1Var == null) {
                        timestamp.getClass();
                        this.ts_ = timestamp;
                        onChanged();
                    } else {
                        t1Var.i(timestamp);
                    }
                    return this;
                }

                private Builder() {
                    this.timestamp_ = "";
                    this.name_ = "";
                    this.dimensions_ = Collections.emptyList();
                    this.measures_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public MetricData build() {
                    MetricData buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public MetricData buildPartial() {
                    MetricData metricData = new MetricData(this);
                    metricData.timestamp_ = this.timestamp_;
                    metricData.name_ = this.name_;
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var != null) {
                        metricData.dimensions_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.dimensions_ = Collections.unmodifiableList(this.dimensions_);
                            this.bitField0_ &= -2;
                        }
                        metricData.dimensions_ = this.dimensions_;
                    }
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var2 = this.measuresBuilder_;
                    if (p1Var2 != null) {
                        metricData.measures_ = p1Var2.f();
                    } else {
                        if ((this.bitField0_ & 2) != 0) {
                            this.measures_ = Collections.unmodifiableList(this.measures_);
                            this.bitField0_ &= -3;
                        }
                        metricData.measures_ = this.measures_;
                    }
                    t1<Error, Error.Builder, ErrorOrBuilder> t1Var = this.errorBuilder_;
                    if (t1Var == null) {
                        metricData.error_ = this.error_;
                    } else {
                        metricData.error_ = t1Var.a();
                    }
                    t1<Timestamp, Timestamp.Builder, c2> t1Var2 = this.tsBuilder_;
                    if (t1Var2 == null) {
                        metricData.ts_ = this.ts_;
                    } else {
                        metricData.ts_ = t1Var2.a();
                    }
                    onBuilt();
                    return metricData;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public MetricData mo4630getDefaultInstanceForType() {
                    return MetricData.getDefaultInstance();
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

                public Dimension.Builder addDimensionsBuilder(int i10) {
                    return getDimensionsFieldBuilder().b(i10, Dimension.getDefaultInstance());
                }

                public Measure.Builder addMeasuresBuilder(int i10) {
                    return getMeasuresFieldBuilder().b(i10, Measure.getDefaultInstance());
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
                    this.timestamp_ = "";
                    this.name_ = "";
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        this.dimensions_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        p1Var.g();
                    }
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var2 = this.measuresBuilder_;
                    if (p1Var2 == null) {
                        this.measures_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                    } else {
                        p1Var2.g();
                    }
                    if (this.errorBuilder_ == null) {
                        this.error_ = null;
                    } else {
                        this.error_ = null;
                        this.errorBuilder_ = null;
                    }
                    if (this.tsBuilder_ == null) {
                        this.ts_ = null;
                    } else {
                        this.ts_ = null;
                        this.tsBuilder_ = null;
                    }
                    return this;
                }

                public Builder setError(Error.Builder builder) {
                    t1<Error, Error.Builder, ErrorOrBuilder> t1Var = this.errorBuilder_;
                    if (t1Var == null) {
                        this.error_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                public Builder setTs(Timestamp.Builder builder) {
                    t1<Timestamp, Timestamp.Builder, c2> t1Var = this.tsBuilder_;
                    if (t1Var == null) {
                        this.ts_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                public Builder addDimensions(int i10, Dimension dimension) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        dimension.getClass();
                        ensureDimensionsIsMutable();
                        this.dimensions_.add(i10, dimension);
                        onChanged();
                    } else {
                        p1Var.d(i10, dimension);
                    }
                    return this;
                }

                public Builder addMeasures(int i10, Measure measure) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        measure.getClass();
                        ensureMeasuresIsMutable();
                        this.measures_.add(i10, measure);
                        onChanged();
                    } else {
                        p1Var.d(i10, measure);
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
                    if (message instanceof MetricData) {
                        return mergeFrom((MetricData) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setDimensions(int i10, Dimension.Builder builder) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        ensureDimensionsIsMutable();
                        this.dimensions_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                public Builder setMeasures(int i10, Measure.Builder builder) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        ensureMeasuresIsMutable();
                        this.measures_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.timestamp_ = "";
                    this.name_ = "";
                    this.dimensions_ = Collections.emptyList();
                    this.measures_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder mergeFrom(MetricData metricData) {
                    if (metricData == MetricData.getDefaultInstance()) {
                        return this;
                    }
                    if (!metricData.getTimestamp().isEmpty()) {
                        this.timestamp_ = metricData.timestamp_;
                        onChanged();
                    }
                    if (!metricData.getName().isEmpty()) {
                        this.name_ = metricData.name_;
                        onChanged();
                    }
                    if (this.dimensionsBuilder_ == null) {
                        if (!metricData.dimensions_.isEmpty()) {
                            if (this.dimensions_.isEmpty()) {
                                this.dimensions_ = metricData.dimensions_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureDimensionsIsMutable();
                                this.dimensions_.addAll(metricData.dimensions_);
                            }
                            onChanged();
                        }
                    } else if (!metricData.dimensions_.isEmpty()) {
                        if (!this.dimensionsBuilder_.t()) {
                            this.dimensionsBuilder_.a(metricData.dimensions_);
                        } else {
                            this.dimensionsBuilder_.h();
                            this.dimensionsBuilder_ = null;
                            this.dimensions_ = metricData.dimensions_;
                            this.bitField0_ &= -2;
                            this.dimensionsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDimensionsFieldBuilder() : null;
                        }
                    }
                    if (this.measuresBuilder_ == null) {
                        if (!metricData.measures_.isEmpty()) {
                            if (this.measures_.isEmpty()) {
                                this.measures_ = metricData.measures_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureMeasuresIsMutable();
                                this.measures_.addAll(metricData.measures_);
                            }
                            onChanged();
                        }
                    } else if (!metricData.measures_.isEmpty()) {
                        if (!this.measuresBuilder_.t()) {
                            this.measuresBuilder_.a(metricData.measures_);
                        } else {
                            this.measuresBuilder_.h();
                            this.measuresBuilder_ = null;
                            this.measures_ = metricData.measures_;
                            this.bitField0_ &= -3;
                            this.measuresBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMeasuresFieldBuilder() : null;
                        }
                    }
                    if (metricData.hasError()) {
                        mergeError(metricData.getError());
                    }
                    if (metricData.hasTs()) {
                        mergeTs(metricData.getTs());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) metricData).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addDimensions(Dimension.Builder builder) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        ensureDimensionsIsMutable();
                        this.dimensions_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addMeasures(Measure.Builder builder) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        ensureMeasuresIsMutable();
                        this.measures_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addDimensions(int i10, Dimension.Builder builder) {
                    p1<Dimension, Dimension.Builder, DimensionOrBuilder> p1Var = this.dimensionsBuilder_;
                    if (p1Var == null) {
                        ensureDimensionsIsMutable();
                        this.dimensions_.add(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.d(i10, builder.build());
                    }
                    return this;
                }

                public Builder addMeasures(int i10, Measure.Builder builder) {
                    p1<Measure, Measure.Builder, MeasureOrBuilder> p1Var = this.measuresBuilder_;
                    if (p1Var == null) {
                        ensureMeasuresIsMutable();
                        this.measures_.add(i10, builder.build());
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
                public io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.access$4500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData r3 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData r4 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$MetricData$Builder");
                }
            }

            public static Builder newBuilder(MetricData metricData) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(metricData);
            }

            public static MetricData parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private MetricData(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static MetricData parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (MetricData) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static MetricData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public MetricData mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static MetricData parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private MetricData() {
                this.memoizedIsInitialized = (byte) -1;
                this.timestamp_ = "";
                this.name_ = "";
                this.dimensions_ = Collections.emptyList();
                this.measures_ = Collections.emptyList();
            }

            public static MetricData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static MetricData parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static MetricData parseFrom(InputStream inputStream) throws IOException {
                return (MetricData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static MetricData parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (MetricData) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private MetricData(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    this.timestamp_ = nVar.J();
                                } else if (K == 18) {
                                    this.name_ = nVar.J();
                                } else if (K == 26) {
                                    boolean z12 = (z11 ? 1 : 0) & true;
                                    z11 = z11;
                                    if (!z12) {
                                        this.dimensions_ = new ArrayList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                    this.dimensions_.add(nVar.A(Dimension.parser(), yVar));
                                } else if (K != 34) {
                                    if (K == 42) {
                                        Error error = this.error_;
                                        Error.Builder builder = error != null ? error.toBuilder() : null;
                                        Error error2 = (Error) nVar.A(Error.parser(), yVar);
                                        this.error_ = error2;
                                        if (builder != null) {
                                            builder.mergeFrom(error2);
                                            this.error_ = builder.buildPartial();
                                        }
                                    } else if (K != 50) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        Timestamp timestamp = this.ts_;
                                        Timestamp.Builder builder2 = timestamp != null ? timestamp.toBuilder() : null;
                                        Timestamp timestamp2 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                                        this.ts_ = timestamp2;
                                        if (builder2 != null) {
                                            builder2.mergeFrom(timestamp2);
                                            this.ts_ = builder2.buildPartial();
                                        }
                                    }
                                } else {
                                    boolean z13 = (z11 ? 1 : 0) & true;
                                    z11 = z11;
                                    if (!z13) {
                                        this.measures_ = new ArrayList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                    this.measures_.add(nVar.A(Measure.parser(), yVar));
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if ((z11 ? 1 : 0) & true) {
                            this.dimensions_ = Collections.unmodifiableList(this.dimensions_);
                        }
                        if ((z11 ? 1 : 0) & true) {
                            this.measures_ = Collections.unmodifiableList(this.measures_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if ((z11 ? 1 : 0) & true) {
                    this.dimensions_ = Collections.unmodifiableList(this.dimensions_);
                }
                if ((z11 ? 1 : 0) & true) {
                    this.measures_ = Collections.unmodifiableList(this.measures_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static MetricData parseFrom(n nVar) throws IOException {
                return (MetricData) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static MetricData parseFrom(n nVar, y yVar) throws IOException {
                return (MetricData) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface MetricDataOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            MetricData.Dimension getDimensions(int i10);

            int getDimensionsCount();

            List<MetricData.Dimension> getDimensionsList();

            MetricData.DimensionOrBuilder getDimensionsOrBuilder(int i10);

            List<? extends MetricData.DimensionOrBuilder> getDimensionsOrBuilderList();

            MetricData.Error getError();

            MetricData.ErrorOrBuilder getErrorOrBuilder();

            MetricData.Measure getMeasures(int i10);

            int getMeasuresCount();

            List<MetricData.Measure> getMeasuresList();

            MetricData.MeasureOrBuilder getMeasuresOrBuilder(int i10);

            List<? extends MetricData.MeasureOrBuilder> getMeasuresOrBuilderList();

            String getName();

            ByteString getNameBytes();

            @Deprecated
            String getTimestamp();

            @Deprecated
            ByteString getTimestampBytes();

            Timestamp getTs();

            c2 getTsOrBuilder();

            boolean hasError();

            boolean hasTs();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        public static Metric getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Metric parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Metric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Metric> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Metric)) {
                return super.equals(obj);
            }
            Metric metric = (Metric) obj;
            if (getContext().equals(metric.getContext()) && getDataList().equals(metric.getDataList()) && this.unknownFields.equals(metric.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
        public String getContext() {
            Object obj = this.context_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.context_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
        public ByteString getContextBytes() {
            Object obj = this.context_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.context_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
        public MetricData getData(int i10) {
            return this.data_.get(i10);
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
        public int getDataCount() {
            return this.data_.size();
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
        public List<MetricData> getDataList() {
            return this.data_;
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
        public MetricDataOrBuilder getDataOrBuilder(int i10) {
            return this.data_.get(i10);
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
        public List<? extends MetricDataOrBuilder> getDataOrBuilderList() {
            return this.data_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Metric> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (!getContextBytes().isEmpty()) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.context_);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.data_.size(); i12++) {
                i10 += CodedOutputStream.G(2, this.data_.get(i12));
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getContext().hashCode();
            if (getDataCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getDataList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_fieldAccessorTable.d(Metric.class, Builder.class);
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
            return new Metric();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getContextBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.context_);
            }
            for (int i10 = 0; i10 < this.data_.size(); i10++) {
                codedOutputStream.L0(2, this.data_.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements MetricOrBuilder {
            private int bitField0_;
            private Object context_;
            private p1<MetricData, MetricData.Builder, MetricDataOrBuilder> dataBuilder_;
            private List<MetricData> data_;

            private void ensureDataIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.data_ = new ArrayList(this.data_);
                    this.bitField0_ |= 1;
                }
            }

            private p1<MetricData, MetricData.Builder, MetricDataOrBuilder> getDataFieldBuilder() {
                if (this.dataBuilder_ == null) {
                    List<MetricData> list = this.data_;
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
                return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getDataFieldBuilder();
                }
            }

            public Builder addAllData(Iterable<? extends MetricData> iterable) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.data_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addData(MetricData metricData) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    metricData.getClass();
                    ensureDataIsMutable();
                    this.data_.add(metricData);
                    onChanged();
                } else {
                    p1Var.e(metricData);
                }
                return this;
            }

            public MetricData.Builder addDataBuilder() {
                return getDataFieldBuilder().c(MetricData.getDefaultInstance());
            }

            public Builder clearContext() {
                this.context_ = Metric.getDefaultInstance().getContext();
                onChanged();
                return this;
            }

            public Builder clearData() {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
            public String getContext() {
                Object obj = this.context_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.context_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
            public ByteString getContextBytes() {
                Object obj = this.context_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.context_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
            public MetricData getData(int i10) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.get(i10);
                }
                return p1Var.n(i10);
            }

            public MetricData.Builder getDataBuilder(int i10) {
                return getDataFieldBuilder().k(i10);
            }

            public List<MetricData.Builder> getDataBuilderList() {
                return getDataFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
            public int getDataCount() {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
            public List<MetricData> getDataList() {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.data_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
            public MetricDataOrBuilder getDataOrBuilder(int i10) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    return this.data_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayload.MetricOrBuilder
            public List<? extends MetricDataOrBuilder> getDataOrBuilderList() {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.data_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_descriptor;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_fieldAccessorTable.d(Metric.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder removeData(int i10) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.remove(i10);
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

            public Builder setData(int i10, MetricData metricData) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    metricData.getClass();
                    ensureDataIsMutable();
                    this.data_.set(i10, metricData);
                    onChanged();
                } else {
                    p1Var.w(i10, metricData);
                }
                return this;
            }

            private Builder() {
                this.context_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Metric build() {
                Metric buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Metric buildPartial() {
                Metric metric = new Metric(this);
                metric.context_ = this.context_;
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var != null) {
                    metric.data_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.data_ = Collections.unmodifiableList(this.data_);
                        this.bitField0_ &= -2;
                    }
                    metric.data_ = this.data_;
                }
                onBuilt();
                return metric;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Metric mo4630getDefaultInstanceForType() {
                return Metric.getDefaultInstance();
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

            public MetricData.Builder addDataBuilder(int i10) {
                return getDataFieldBuilder().b(i10, MetricData.getDefaultInstance());
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
                this.context_ = "";
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    this.data_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.context_ = "";
                this.data_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            public Builder addData(int i10, MetricData metricData) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    metricData.getClass();
                    ensureDataIsMutable();
                    this.data_.add(i10, metricData);
                    onChanged();
                } else {
                    p1Var.d(i10, metricData);
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
                if (message instanceof Metric) {
                    return mergeFrom((Metric) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setData(int i10, MetricData.Builder builder) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.set(i10, builder.build());
                    onChanged();
                } else {
                    p1Var.w(i10, builder.build());
                }
                return this;
            }

            public Builder mergeFrom(Metric metric) {
                if (metric == Metric.getDefaultInstance()) {
                    return this;
                }
                if (!metric.getContext().isEmpty()) {
                    this.context_ = metric.context_;
                    onChanged();
                }
                if (this.dataBuilder_ == null) {
                    if (!metric.data_.isEmpty()) {
                        if (this.data_.isEmpty()) {
                            this.data_ = metric.data_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureDataIsMutable();
                            this.data_.addAll(metric.data_);
                        }
                        onChanged();
                    }
                } else if (!metric.data_.isEmpty()) {
                    if (!this.dataBuilder_.t()) {
                        this.dataBuilder_.a(metric.data_);
                    } else {
                        this.dataBuilder_.h();
                        this.dataBuilder_ = null;
                        this.data_ = metric.data_;
                        this.bitField0_ &= -2;
                        this.dataBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getDataFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) metric).unknownFields);
                onChanged();
                return this;
            }

            public Builder addData(MetricData.Builder builder) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
                if (p1Var == null) {
                    ensureDataIsMutable();
                    this.data_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addData(int i10, MetricData.Builder builder) {
                p1<MetricData, MetricData.Builder, MetricDataOrBuilder> p1Var = this.dataBuilder_;
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
            public io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.access$5700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric r3 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric r4 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Metric$Builder");
            }
        }

        public static Builder newBuilder(Metric metric) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(metric);
        }

        public static Metric parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Metric(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Metric parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Metric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Metric mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Metric parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Metric() {
            this.memoizedIsInitialized = (byte) -1;
            this.context_ = "";
            this.data_ = Collections.emptyList();
        }

        public static Metric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Metric parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Metric parseFrom(InputStream inputStream) throws IOException {
            return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Metric(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                this.context_ = nVar.J();
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!z11) {
                                    this.data_ = new ArrayList();
                                    z11 = true;
                                }
                                this.data_.add(nVar.A(MetricData.parser(), yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
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

        public static Metric parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Metric parseFrom(n nVar) throws IOException {
            return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Metric parseFrom(n nVar, y yVar) throws IOException {
            return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface MetricOrBuilder extends MessageOrBuilder {
        String getContext();

        ByteString getContextBytes();

        Metric.MetricData getData(int i10);

        int getDataCount();

        List<Metric.MetricData> getDataList();

        Metric.MetricDataOrBuilder getDataOrBuilder(int i10);

        List<? extends Metric.MetricDataOrBuilder> getDataOrBuilderList();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static SDKAnalyticPayload getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SDKAnalyticPayload parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SDKAnalyticPayload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SDKAnalyticPayload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<SDKAnalyticPayload> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SDKAnalyticPayload)) {
            return super.equals(obj);
        }
        SDKAnalyticPayload sDKAnalyticPayload = (SDKAnalyticPayload) obj;
        if (getMetricsList().equals(sDKAnalyticPayload.getMetricsList()) && this.unknownFields.equals(sDKAnalyticPayload.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
    public Metric getMetrics(int i10) {
        return this.metrics_.get(i10);
    }

    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
    public int getMetricsCount() {
        return this.metrics_.size();
    }

    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
    public List<Metric> getMetricsList() {
        return this.metrics_;
    }

    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
    public MetricOrBuilder getMetricsOrBuilder(int i10) {
        return this.metrics_.get(i10);
    }

    @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
    public List<? extends MetricOrBuilder> getMetricsOrBuilderList() {
        return this.metrics_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<SDKAnalyticPayload> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.metrics_.size(); i12++) {
            i11 += CodedOutputStream.G(1, this.metrics_.get(i12));
        }
        int serializedSize = i11 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (getMetricsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMetricsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_fieldAccessorTable.d(SDKAnalyticPayload.class, Builder.class);
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
        return new SDKAnalyticPayload();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i10 = 0; i10 < this.metrics_.size(); i10++) {
            codedOutputStream.L0(1, this.metrics_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements SDKAnalyticPayloadOrBuilder {
        private int bitField0_;
        private p1<Metric, Metric.Builder, MetricOrBuilder> metricsBuilder_;
        private List<Metric> metrics_;

        private void ensureMetricsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.metrics_ = new ArrayList(this.metrics_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_descriptor;
        }

        private p1<Metric, Metric.Builder, MetricOrBuilder> getMetricsFieldBuilder() {
            if (this.metricsBuilder_ == null) {
                List<Metric> list = this.metrics_;
                boolean z10 = true;
                if ((this.bitField0_ & 1) == 0) {
                    z10 = false;
                }
                this.metricsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.metrics_ = null;
            }
            return this.metricsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getMetricsFieldBuilder();
            }
        }

        public Builder addAllMetrics(Iterable<? extends Metric> iterable) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                ensureMetricsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.metrics_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder addMetrics(Metric metric) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                metric.getClass();
                ensureMetricsIsMutable();
                this.metrics_.add(metric);
                onChanged();
            } else {
                p1Var.e(metric);
            }
            return this;
        }

        public Metric.Builder addMetricsBuilder() {
            return getMetricsFieldBuilder().c(Metric.getDefaultInstance());
        }

        public Builder clearMetrics() {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                this.metrics_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_descriptor;
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
        public Metric getMetrics(int i10) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                return this.metrics_.get(i10);
            }
            return p1Var.n(i10);
        }

        public Metric.Builder getMetricsBuilder(int i10) {
            return getMetricsFieldBuilder().k(i10);
        }

        public List<Metric.Builder> getMetricsBuilderList() {
            return getMetricsFieldBuilder().l();
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
        public int getMetricsCount() {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                return this.metrics_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
        public List<Metric> getMetricsList() {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.metrics_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
        public MetricOrBuilder getMetricsOrBuilder(int i10) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                return this.metrics_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.analytics.SDKAnalyticPayloadOrBuilder
        public List<? extends MetricOrBuilder> getMetricsOrBuilderList() {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.metrics_);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticProto.internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_fieldAccessorTable.d(SDKAnalyticPayload.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder removeMetrics(int i10) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                ensureMetricsIsMutable();
                this.metrics_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder setMetrics(int i10, Metric metric) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                metric.getClass();
                ensureMetricsIsMutable();
                this.metrics_.set(i10, metric);
                onChanged();
            } else {
                p1Var.w(i10, metric);
            }
            return this;
        }

        private Builder() {
            this.metrics_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SDKAnalyticPayload build() {
            SDKAnalyticPayload buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SDKAnalyticPayload buildPartial() {
            SDKAnalyticPayload sDKAnalyticPayload = new SDKAnalyticPayload(this);
            int i10 = this.bitField0_;
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                if ((i10 & 1) != 0) {
                    this.metrics_ = Collections.unmodifiableList(this.metrics_);
                    this.bitField0_ &= -2;
                }
                sDKAnalyticPayload.metrics_ = this.metrics_;
            } else {
                sDKAnalyticPayload.metrics_ = p1Var.f();
            }
            onBuilt();
            return sDKAnalyticPayload;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public SDKAnalyticPayload mo4630getDefaultInstanceForType() {
            return SDKAnalyticPayload.getDefaultInstance();
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

        public Metric.Builder addMetricsBuilder(int i10) {
            return getMetricsFieldBuilder().b(i10, Metric.getDefaultInstance());
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
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                this.metrics_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                p1Var.g();
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.metrics_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public Builder addMetrics(int i10, Metric metric) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                metric.getClass();
                ensureMetricsIsMutable();
                this.metrics_.add(i10, metric);
                onChanged();
            } else {
                p1Var.d(i10, metric);
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
            if (message instanceof SDKAnalyticPayload) {
                return mergeFrom((SDKAnalyticPayload) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setMetrics(int i10, Metric.Builder builder) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                ensureMetricsIsMutable();
                this.metrics_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(SDKAnalyticPayload sDKAnalyticPayload) {
            if (sDKAnalyticPayload == SDKAnalyticPayload.getDefaultInstance()) {
                return this;
            }
            if (this.metricsBuilder_ == null) {
                if (!sDKAnalyticPayload.metrics_.isEmpty()) {
                    if (this.metrics_.isEmpty()) {
                        this.metrics_ = sDKAnalyticPayload.metrics_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMetricsIsMutable();
                        this.metrics_.addAll(sDKAnalyticPayload.metrics_);
                    }
                    onChanged();
                }
            } else if (!sDKAnalyticPayload.metrics_.isEmpty()) {
                if (!this.metricsBuilder_.t()) {
                    this.metricsBuilder_.a(sDKAnalyticPayload.metrics_);
                } else {
                    this.metricsBuilder_.h();
                    this.metricsBuilder_ = null;
                    this.metrics_ = sDKAnalyticPayload.metrics_;
                    this.bitField0_ &= -2;
                    this.metricsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMetricsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) sDKAnalyticPayload).unknownFields);
            onChanged();
            return this;
        }

        public Builder addMetrics(Metric.Builder builder) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                ensureMetricsIsMutable();
                this.metrics_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addMetrics(int i10, Metric.Builder builder) {
            p1<Metric, Metric.Builder, MetricOrBuilder> p1Var = this.metricsBuilder_;
            if (p1Var == null) {
                ensureMetricsIsMutable();
                this.metrics_.add(i10, builder.build());
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
        public io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.SDKAnalyticPayload.access$6700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.analytics.SDKAnalyticPayload r3 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.analytics.SDKAnalyticPayload r4 = (io.bidmachine.protobuf.analytics.SDKAnalyticPayload) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.SDKAnalyticPayload.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.SDKAnalyticPayload$Builder");
        }
    }

    public static Builder newBuilder(SDKAnalyticPayload sDKAnalyticPayload) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(sDKAnalyticPayload);
    }

    public static SDKAnalyticPayload parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private SDKAnalyticPayload(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SDKAnalyticPayload parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (SDKAnalyticPayload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static SDKAnalyticPayload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public SDKAnalyticPayload mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static SDKAnalyticPayload parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private SDKAnalyticPayload() {
        this.memoizedIsInitialized = (byte) -1;
        this.metrics_ = Collections.emptyList();
    }

    public static SDKAnalyticPayload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static SDKAnalyticPayload parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static SDKAnalyticPayload parseFrom(InputStream inputStream) throws IOException {
        return (SDKAnalyticPayload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SDKAnalyticPayload(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            if (K != 10) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!z11) {
                                    this.metrics_ = new ArrayList();
                                    z11 = true;
                                }
                                this.metrics_.add(nVar.A(Metric.parser(), yVar));
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
                    this.metrics_ = Collections.unmodifiableList(this.metrics_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.metrics_ = Collections.unmodifiableList(this.metrics_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static SDKAnalyticPayload parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (SDKAnalyticPayload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static SDKAnalyticPayload parseFrom(n nVar) throws IOException {
        return (SDKAnalyticPayload) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static SDKAnalyticPayload parseFrom(n nVar, y yVar) throws IOException {
        return (SDKAnalyticPayload) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
