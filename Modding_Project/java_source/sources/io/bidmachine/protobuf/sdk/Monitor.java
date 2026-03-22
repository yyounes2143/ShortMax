package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.BoolValue;
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
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.UInt32Value;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.g2;
import com.explorestack.protobuf.i;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.w1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.sdk.Error;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class Monitor extends GeneratedMessageV3 implements MonitorOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int RECORDS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Record> records_;
    private static final Monitor DEFAULT_INSTANCE = new Monitor();
    private static final j1<Monitor> PARSER = new b<Monitor>() { // from class: io.bidmachine.protobuf.sdk.Monitor.1
        @Override // com.explorestack.protobuf.j1
        public Monitor parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Monitor(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class Configuration extends GeneratedMessageV3 implements ConfigurationOrBuilder {
        public static final int BATCH_SIZE_FIELD_NUMBER = 3;
        public static final int INTERVAL_FIELD_NUMBER = 4;
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int SHOULD_REPORT_FIELD_NUMBER = 5;
        public static final int URL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private UInt32Value batchSize_;
        private UInt32Value interval_;
        private byte memoizedIsInitialized;
        private StringValue name_;
        private BoolValue shouldReport_;
        private StringValue url_;
        private static final Configuration DEFAULT_INSTANCE = new Configuration();
        private static final j1<Configuration> PARSER = new b<Configuration>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Configuration.1
            @Override // com.explorestack.protobuf.j1
            public Configuration parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Configuration(nVar, yVar);
            }
        };

        public static Configuration getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Configuration parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Configuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Configuration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Configuration> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Configuration)) {
                return super.equals(obj);
            }
            Configuration configuration = (Configuration) obj;
            if (hasName() != configuration.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(configuration.getName())) || hasUrl() != configuration.hasUrl()) {
                return false;
            }
            if ((hasUrl() && !getUrl().equals(configuration.getUrl())) || hasBatchSize() != configuration.hasBatchSize()) {
                return false;
            }
            if ((hasBatchSize() && !getBatchSize().equals(configuration.getBatchSize())) || hasInterval() != configuration.hasInterval()) {
                return false;
            }
            if ((hasInterval() && !getInterval().equals(configuration.getInterval())) || hasShouldReport() != configuration.hasShouldReport()) {
                return false;
            }
            if ((!hasShouldReport() || getShouldReport().equals(configuration.getShouldReport())) && this.unknownFields.equals(configuration.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public UInt32Value getBatchSize() {
            UInt32Value uInt32Value = this.batchSize_;
            if (uInt32Value == null) {
                return UInt32Value.getDefaultInstance();
            }
            return uInt32Value;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public g2 getBatchSizeOrBuilder() {
            return getBatchSize();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public UInt32Value getInterval() {
            UInt32Value uInt32Value = this.interval_;
            if (uInt32Value == null) {
                return UInt32Value.getDefaultInstance();
            }
            return uInt32Value;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public g2 getIntervalOrBuilder() {
            return getInterval();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public StringValue getName() {
            StringValue stringValue = this.name_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public w1 getNameOrBuilder() {
            return getName();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Configuration> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.name_ != null) {
                i10 = CodedOutputStream.G(1, getName());
            } else {
                i10 = 0;
            }
            if (this.url_ != null) {
                i10 += CodedOutputStream.G(2, getUrl());
            }
            if (this.batchSize_ != null) {
                i10 += CodedOutputStream.G(3, getBatchSize());
            }
            if (this.interval_ != null) {
                i10 += CodedOutputStream.G(4, getInterval());
            }
            if (this.shouldReport_ != null) {
                i10 += CodedOutputStream.G(5, getShouldReport());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public BoolValue getShouldReport() {
            BoolValue boolValue = this.shouldReport_;
            if (boolValue == null) {
                return BoolValue.d();
            }
            return boolValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public i getShouldReportOrBuilder() {
            return getShouldReport();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public StringValue getUrl() {
            StringValue stringValue = this.url_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public w1 getUrlOrBuilder() {
            return getUrl();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasBatchSize() {
            if (this.batchSize_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasInterval() {
            if (this.interval_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasName() {
            if (this.name_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasShouldReport() {
            if (this.shouldReport_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
        public boolean hasUrl() {
            if (this.url_ != null) {
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
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (hasUrl()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getUrl().hashCode();
            }
            if (hasBatchSize()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getBatchSize().hashCode();
            }
            if (hasInterval()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getInterval().hashCode();
            }
            if (hasShouldReport()) {
                hashCode = (((hashCode * 37) + 5) * 53) + getShouldReport().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
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
            return new Configuration();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.name_ != null) {
                codedOutputStream.L0(1, getName());
            }
            if (this.url_ != null) {
                codedOutputStream.L0(2, getUrl());
            }
            if (this.batchSize_ != null) {
                codedOutputStream.L0(3, getBatchSize());
            }
            if (this.interval_ != null) {
                codedOutputStream.L0(4, getInterval());
            }
            if (this.shouldReport_ != null) {
                codedOutputStream.L0(5, getShouldReport());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements ConfigurationOrBuilder {
            private t1<UInt32Value, UInt32Value.Builder, g2> batchSizeBuilder_;
            private UInt32Value batchSize_;
            private t1<UInt32Value, UInt32Value.Builder, g2> intervalBuilder_;
            private UInt32Value interval_;
            private t1<StringValue, StringValue.Builder, w1> nameBuilder_;
            private StringValue name_;
            private t1<BoolValue, BoolValue.b, i> shouldReportBuilder_;
            private BoolValue shouldReport_;
            private t1<StringValue, StringValue.Builder, w1> urlBuilder_;
            private StringValue url_;

            private t1<UInt32Value, UInt32Value.Builder, g2> getBatchSizeFieldBuilder() {
                if (this.batchSizeBuilder_ == null) {
                    this.batchSizeBuilder_ = new t1<>(getBatchSize(), getParentForChildren(), isClean());
                    this.batchSize_ = null;
                }
                return this.batchSizeBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor;
            }

            private t1<UInt32Value, UInt32Value.Builder, g2> getIntervalFieldBuilder() {
                if (this.intervalBuilder_ == null) {
                    this.intervalBuilder_ = new t1<>(getInterval(), getParentForChildren(), isClean());
                    this.interval_ = null;
                }
                return this.intervalBuilder_;
            }

            private t1<StringValue, StringValue.Builder, w1> getNameFieldBuilder() {
                if (this.nameBuilder_ == null) {
                    this.nameBuilder_ = new t1<>(getName(), getParentForChildren(), isClean());
                    this.name_ = null;
                }
                return this.nameBuilder_;
            }

            private t1<BoolValue, BoolValue.b, i> getShouldReportFieldBuilder() {
                if (this.shouldReportBuilder_ == null) {
                    this.shouldReportBuilder_ = new t1<>(getShouldReport(), getParentForChildren(), isClean());
                    this.shouldReport_ = null;
                }
                return this.shouldReportBuilder_;
            }

            private t1<StringValue, StringValue.Builder, w1> getUrlFieldBuilder() {
                if (this.urlBuilder_ == null) {
                    this.urlBuilder_ = new t1<>(getUrl(), getParentForChildren(), isClean());
                    this.url_ = null;
                }
                return this.urlBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearBatchSize() {
                if (this.batchSizeBuilder_ == null) {
                    this.batchSize_ = null;
                    onChanged();
                } else {
                    this.batchSize_ = null;
                    this.batchSizeBuilder_ = null;
                }
                return this;
            }

            public Builder clearInterval() {
                if (this.intervalBuilder_ == null) {
                    this.interval_ = null;
                    onChanged();
                } else {
                    this.interval_ = null;
                    this.intervalBuilder_ = null;
                }
                return this;
            }

            public Builder clearName() {
                if (this.nameBuilder_ == null) {
                    this.name_ = null;
                    onChanged();
                } else {
                    this.name_ = null;
                    this.nameBuilder_ = null;
                }
                return this;
            }

            public Builder clearShouldReport() {
                if (this.shouldReportBuilder_ == null) {
                    this.shouldReport_ = null;
                    onChanged();
                } else {
                    this.shouldReport_ = null;
                    this.shouldReportBuilder_ = null;
                }
                return this;
            }

            public Builder clearUrl() {
                if (this.urlBuilder_ == null) {
                    this.url_ = null;
                    onChanged();
                } else {
                    this.url_ = null;
                    this.urlBuilder_ = null;
                }
                return this;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public UInt32Value getBatchSize() {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.batchSizeBuilder_;
                if (t1Var == null) {
                    UInt32Value uInt32Value = this.batchSize_;
                    if (uInt32Value == null) {
                        return UInt32Value.getDefaultInstance();
                    }
                    return uInt32Value;
                }
                return t1Var.e();
            }

            public UInt32Value.Builder getBatchSizeBuilder() {
                onChanged();
                return getBatchSizeFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public g2 getBatchSizeOrBuilder() {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.batchSizeBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                UInt32Value uInt32Value = this.batchSize_;
                if (uInt32Value == null) {
                    return UInt32Value.getDefaultInstance();
                }
                return uInt32Value;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public UInt32Value getInterval() {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.intervalBuilder_;
                if (t1Var == null) {
                    UInt32Value uInt32Value = this.interval_;
                    if (uInt32Value == null) {
                        return UInt32Value.getDefaultInstance();
                    }
                    return uInt32Value;
                }
                return t1Var.e();
            }

            public UInt32Value.Builder getIntervalBuilder() {
                onChanged();
                return getIntervalFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public g2 getIntervalOrBuilder() {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.intervalBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                UInt32Value uInt32Value = this.interval_;
                if (uInt32Value == null) {
                    return UInt32Value.getDefaultInstance();
                }
                return uInt32Value;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public StringValue getName() {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.nameBuilder_;
                if (t1Var == null) {
                    StringValue stringValue = this.name_;
                    if (stringValue == null) {
                        return StringValue.getDefaultInstance();
                    }
                    return stringValue;
                }
                return t1Var.e();
            }

            public StringValue.Builder getNameBuilder() {
                onChanged();
                return getNameFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public w1 getNameOrBuilder() {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.nameBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                StringValue stringValue = this.name_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public BoolValue getShouldReport() {
                t1<BoolValue, BoolValue.b, i> t1Var = this.shouldReportBuilder_;
                if (t1Var == null) {
                    BoolValue boolValue = this.shouldReport_;
                    if (boolValue == null) {
                        return BoolValue.d();
                    }
                    return boolValue;
                }
                return t1Var.e();
            }

            public BoolValue.b getShouldReportBuilder() {
                onChanged();
                return getShouldReportFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public i getShouldReportOrBuilder() {
                t1<BoolValue, BoolValue.b, i> t1Var = this.shouldReportBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                BoolValue boolValue = this.shouldReport_;
                if (boolValue == null) {
                    return BoolValue.d();
                }
                return boolValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public StringValue getUrl() {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.urlBuilder_;
                if (t1Var == null) {
                    StringValue stringValue = this.url_;
                    if (stringValue == null) {
                        return StringValue.getDefaultInstance();
                    }
                    return stringValue;
                }
                return t1Var.e();
            }

            public StringValue.Builder getUrlBuilder() {
                onChanged();
                return getUrlFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public w1 getUrlOrBuilder() {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.urlBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                StringValue stringValue = this.url_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasBatchSize() {
                if (this.batchSizeBuilder_ == null && this.batchSize_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasInterval() {
                if (this.intervalBuilder_ == null && this.interval_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasName() {
                if (this.nameBuilder_ == null && this.name_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasShouldReport() {
                if (this.shouldReportBuilder_ == null && this.shouldReport_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.ConfigurationOrBuilder
            public boolean hasUrl() {
                if (this.urlBuilder_ == null && this.url_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeBatchSize(UInt32Value uInt32Value) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.batchSizeBuilder_;
                if (t1Var == null) {
                    UInt32Value uInt32Value2 = this.batchSize_;
                    if (uInt32Value2 != null) {
                        this.batchSize_ = UInt32Value.newBuilder(uInt32Value2).mergeFrom(uInt32Value).buildPartial();
                    } else {
                        this.batchSize_ = uInt32Value;
                    }
                    onChanged();
                } else {
                    t1Var.g(uInt32Value);
                }
                return this;
            }

            public Builder mergeInterval(UInt32Value uInt32Value) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.intervalBuilder_;
                if (t1Var == null) {
                    UInt32Value uInt32Value2 = this.interval_;
                    if (uInt32Value2 != null) {
                        this.interval_ = UInt32Value.newBuilder(uInt32Value2).mergeFrom(uInt32Value).buildPartial();
                    } else {
                        this.interval_ = uInt32Value;
                    }
                    onChanged();
                } else {
                    t1Var.g(uInt32Value);
                }
                return this;
            }

            public Builder mergeName(StringValue stringValue) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.nameBuilder_;
                if (t1Var == null) {
                    StringValue stringValue2 = this.name_;
                    if (stringValue2 != null) {
                        this.name_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                    } else {
                        this.name_ = stringValue;
                    }
                    onChanged();
                } else {
                    t1Var.g(stringValue);
                }
                return this;
            }

            public Builder mergeShouldReport(BoolValue boolValue) {
                t1<BoolValue, BoolValue.b, i> t1Var = this.shouldReportBuilder_;
                if (t1Var == null) {
                    BoolValue boolValue2 = this.shouldReport_;
                    if (boolValue2 != null) {
                        this.shouldReport_ = BoolValue.h(boolValue2).k(boolValue).buildPartial();
                    } else {
                        this.shouldReport_ = boolValue;
                    }
                    onChanged();
                } else {
                    t1Var.g(boolValue);
                }
                return this;
            }

            public Builder mergeUrl(StringValue stringValue) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.urlBuilder_;
                if (t1Var == null) {
                    StringValue stringValue2 = this.url_;
                    if (stringValue2 != null) {
                        this.url_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                    } else {
                        this.url_ = stringValue;
                    }
                    onChanged();
                } else {
                    t1Var.g(stringValue);
                }
                return this;
            }

            public Builder setBatchSize(UInt32Value uInt32Value) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.batchSizeBuilder_;
                if (t1Var == null) {
                    uInt32Value.getClass();
                    this.batchSize_ = uInt32Value;
                    onChanged();
                } else {
                    t1Var.i(uInt32Value);
                }
                return this;
            }

            public Builder setInterval(UInt32Value uInt32Value) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.intervalBuilder_;
                if (t1Var == null) {
                    uInt32Value.getClass();
                    this.interval_ = uInt32Value;
                    onChanged();
                } else {
                    t1Var.i(uInt32Value);
                }
                return this;
            }

            public Builder setName(StringValue stringValue) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.nameBuilder_;
                if (t1Var == null) {
                    stringValue.getClass();
                    this.name_ = stringValue;
                    onChanged();
                } else {
                    t1Var.i(stringValue);
                }
                return this;
            }

            public Builder setShouldReport(BoolValue boolValue) {
                t1<BoolValue, BoolValue.b, i> t1Var = this.shouldReportBuilder_;
                if (t1Var == null) {
                    boolValue.getClass();
                    this.shouldReport_ = boolValue;
                    onChanged();
                } else {
                    t1Var.i(boolValue);
                }
                return this;
            }

            public Builder setUrl(StringValue stringValue) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.urlBuilder_;
                if (t1Var == null) {
                    stringValue.getClass();
                    this.url_ = stringValue;
                    onChanged();
                } else {
                    t1Var.i(stringValue);
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
            public Configuration build() {
                Configuration buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Configuration buildPartial() {
                Configuration configuration = new Configuration(this);
                t1<StringValue, StringValue.Builder, w1> t1Var = this.nameBuilder_;
                if (t1Var == null) {
                    configuration.name_ = this.name_;
                } else {
                    configuration.name_ = t1Var.a();
                }
                t1<StringValue, StringValue.Builder, w1> t1Var2 = this.urlBuilder_;
                if (t1Var2 == null) {
                    configuration.url_ = this.url_;
                } else {
                    configuration.url_ = t1Var2.a();
                }
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var3 = this.batchSizeBuilder_;
                if (t1Var3 == null) {
                    configuration.batchSize_ = this.batchSize_;
                } else {
                    configuration.batchSize_ = t1Var3.a();
                }
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var4 = this.intervalBuilder_;
                if (t1Var4 == null) {
                    configuration.interval_ = this.interval_;
                } else {
                    configuration.interval_ = t1Var4.a();
                }
                t1<BoolValue, BoolValue.b, i> t1Var5 = this.shouldReportBuilder_;
                if (t1Var5 == null) {
                    configuration.shouldReport_ = this.shouldReport_;
                } else {
                    configuration.shouldReport_ = t1Var5.a();
                }
                onBuilt();
                return configuration;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Configuration mo4630getDefaultInstanceForType() {
                return Configuration.getDefaultInstance();
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
                if (this.nameBuilder_ == null) {
                    this.name_ = null;
                } else {
                    this.name_ = null;
                    this.nameBuilder_ = null;
                }
                if (this.urlBuilder_ == null) {
                    this.url_ = null;
                } else {
                    this.url_ = null;
                    this.urlBuilder_ = null;
                }
                if (this.batchSizeBuilder_ == null) {
                    this.batchSize_ = null;
                } else {
                    this.batchSize_ = null;
                    this.batchSizeBuilder_ = null;
                }
                if (this.intervalBuilder_ == null) {
                    this.interval_ = null;
                } else {
                    this.interval_ = null;
                    this.intervalBuilder_ = null;
                }
                if (this.shouldReportBuilder_ == null) {
                    this.shouldReport_ = null;
                } else {
                    this.shouldReport_ = null;
                    this.shouldReportBuilder_ = null;
                }
                return this;
            }

            public Builder setBatchSize(UInt32Value.Builder builder) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.batchSizeBuilder_;
                if (t1Var == null) {
                    this.batchSize_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setInterval(UInt32Value.Builder builder) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.intervalBuilder_;
                if (t1Var == null) {
                    this.interval_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setName(StringValue.Builder builder) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.nameBuilder_;
                if (t1Var == null) {
                    this.name_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setShouldReport(BoolValue.b bVar) {
                t1<BoolValue, BoolValue.b, i> t1Var = this.shouldReportBuilder_;
                if (t1Var == null) {
                    this.shouldReport_ = bVar.build();
                    onChanged();
                } else {
                    t1Var.i(bVar.build());
                }
                return this;
            }

            public Builder setUrl(StringValue.Builder builder) {
                t1<StringValue, StringValue.Builder, w1> t1Var = this.urlBuilder_;
                if (t1Var == null) {
                    this.url_ = builder.build();
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
                if (message instanceof Configuration) {
                    return mergeFrom((Configuration) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Configuration configuration) {
                if (configuration == Configuration.getDefaultInstance()) {
                    return this;
                }
                if (configuration.hasName()) {
                    mergeName(configuration.getName());
                }
                if (configuration.hasUrl()) {
                    mergeUrl(configuration.getUrl());
                }
                if (configuration.hasBatchSize()) {
                    mergeBatchSize(configuration.getBatchSize());
                }
                if (configuration.hasInterval()) {
                    mergeInterval(configuration.getInterval());
                }
                if (configuration.hasShouldReport()) {
                    mergeShouldReport(configuration.getShouldReport());
                }
                mergeUnknownFields(((GeneratedMessageV3) configuration).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sdk.Monitor.Configuration.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Monitor.Configuration.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$Configuration r3 = (io.bidmachine.protobuf.sdk.Monitor.Configuration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$Configuration r4 = (io.bidmachine.protobuf.sdk.Monitor.Configuration) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Configuration.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Monitor$Configuration$Builder");
            }
        }

        public static Builder newBuilder(Configuration configuration) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(configuration);
        }

        public static Configuration parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Configuration(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Configuration parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Configuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Configuration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Configuration mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Configuration parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Configuration() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Configuration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Configuration parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        private Configuration(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                StringValue stringValue = this.name_;
                                StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                StringValue stringValue2 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                this.name_ = stringValue2;
                                if (builder != null) {
                                    builder.mergeFrom(stringValue2);
                                    this.name_ = builder.buildPartial();
                                }
                            } else if (K == 18) {
                                StringValue stringValue3 = this.url_;
                                StringValue.Builder builder2 = stringValue3 != null ? stringValue3.toBuilder() : null;
                                StringValue stringValue4 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                this.url_ = stringValue4;
                                if (builder2 != null) {
                                    builder2.mergeFrom(stringValue4);
                                    this.url_ = builder2.buildPartial();
                                }
                            } else if (K == 26) {
                                UInt32Value uInt32Value = this.batchSize_;
                                UInt32Value.Builder builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) nVar.A(UInt32Value.parser(), yVar);
                                this.batchSize_ = uInt32Value2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(uInt32Value2);
                                    this.batchSize_ = builder3.buildPartial();
                                }
                            } else if (K == 34) {
                                UInt32Value uInt32Value3 = this.interval_;
                                UInt32Value.Builder builder4 = uInt32Value3 != null ? uInt32Value3.toBuilder() : null;
                                UInt32Value uInt32Value4 = (UInt32Value) nVar.A(UInt32Value.parser(), yVar);
                                this.interval_ = uInt32Value4;
                                if (builder4 != null) {
                                    builder4.mergeFrom(uInt32Value4);
                                    this.interval_ = builder4.buildPartial();
                                }
                            } else if (K != 42) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                BoolValue boolValue = this.shouldReport_;
                                BoolValue.b builder5 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) nVar.A(BoolValue.parser(), yVar);
                                this.shouldReport_ = boolValue2;
                                if (builder5 != null) {
                                    builder5.k(boolValue2);
                                    this.shouldReport_ = builder5.buildPartial();
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

        public static Configuration parseFrom(InputStream inputStream) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Configuration parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Configuration parseFrom(n nVar) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Configuration parseFrom(n nVar, y yVar) throws IOException {
            return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface ConfigurationOrBuilder extends MessageOrBuilder {
        UInt32Value getBatchSize();

        g2 getBatchSizeOrBuilder();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        UInt32Value getInterval();

        g2 getIntervalOrBuilder();

        StringValue getName();

        w1 getNameOrBuilder();

        BoolValue getShouldReport();

        i getShouldReportOrBuilder();

        StringValue getUrl();

        w1 getUrlOrBuilder();

        boolean hasBatchSize();

        boolean hasInterval();

        boolean hasName();

        boolean hasShouldReport();

        boolean hasUrl();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class Record extends GeneratedMessageV3 implements RecordOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 3;
        public static final int FIELDS_FIELD_NUMBER = 2;
        public static final int TIMESTAMP_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Error error_;
        private Struct fields_;
        private byte memoizedIsInitialized;
        private Timestamp timestamp_;
        private static final Record DEFAULT_INSTANCE = new Record();
        private static final j1<Record> PARSER = new b<Record>() { // from class: io.bidmachine.protobuf.sdk.Monitor.Record.1
            @Override // com.explorestack.protobuf.j1
            public Record parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Record(nVar, yVar);
            }
        };

        public static Record getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Record parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Record) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Record parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Record> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Record)) {
                return super.equals(obj);
            }
            Record record = (Record) obj;
            if (hasTimestamp() != record.hasTimestamp()) {
                return false;
            }
            if ((hasTimestamp() && !getTimestamp().equals(record.getTimestamp())) || hasFields() != record.hasFields()) {
                return false;
            }
            if ((hasFields() && !getFields().equals(record.getFields())) || hasError() != record.hasError()) {
                return false;
            }
            if ((!hasError() || getError().equals(record.getError())) && this.unknownFields.equals(record.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public Error getError() {
            Error error = this.error_;
            if (error == null) {
                return Error.getDefaultInstance();
            }
            return error;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public ErrorOrBuilder getErrorOrBuilder() {
            return getError();
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public Struct getFields() {
            Struct struct = this.fields_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public x1 getFieldsOrBuilder() {
            return getFields();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Record> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.timestamp_ != null) {
                i10 = CodedOutputStream.G(1, getTimestamp());
            } else {
                i10 = 0;
            }
            if (this.fields_ != null) {
                i10 += CodedOutputStream.G(2, getFields());
            }
            if (this.error_ != null) {
                i10 += CodedOutputStream.G(3, getError());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public Timestamp getTimestamp() {
            Timestamp timestamp = this.timestamp_;
            if (timestamp == null) {
                return Timestamp.getDefaultInstance();
            }
            return timestamp;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public c2 getTimestampOrBuilder() {
            return getTimestamp();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public boolean hasError() {
            if (this.error_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public boolean hasFields() {
            if (this.fields_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
        public boolean hasTimestamp() {
            if (this.timestamp_ != null) {
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
            if (hasTimestamp()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getTimestamp().hashCode();
            }
            if (hasFields()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getFields().hashCode();
            }
            if (hasError()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getError().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_fieldAccessorTable.d(Record.class, Builder.class);
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
            return new Record();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.timestamp_ != null) {
                codedOutputStream.L0(1, getTimestamp());
            }
            if (this.fields_ != null) {
                codedOutputStream.L0(2, getFields());
            }
            if (this.error_ != null) {
                codedOutputStream.L0(3, getError());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements RecordOrBuilder {
            private t1<Error, Error.Builder, ErrorOrBuilder> errorBuilder_;
            private Error error_;
            private t1<Struct, Struct.Builder, x1> fieldsBuilder_;
            private Struct fields_;
            private t1<Timestamp, Timestamp.Builder, c2> timestampBuilder_;
            private Timestamp timestamp_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor;
            }

            private t1<Error, Error.Builder, ErrorOrBuilder> getErrorFieldBuilder() {
                if (this.errorBuilder_ == null) {
                    this.errorBuilder_ = new t1<>(getError(), getParentForChildren(), isClean());
                    this.error_ = null;
                }
                return this.errorBuilder_;
            }

            private t1<Struct, Struct.Builder, x1> getFieldsFieldBuilder() {
                if (this.fieldsBuilder_ == null) {
                    this.fieldsBuilder_ = new t1<>(getFields(), getParentForChildren(), isClean());
                    this.fields_ = null;
                }
                return this.fieldsBuilder_;
            }

            private t1<Timestamp, Timestamp.Builder, c2> getTimestampFieldBuilder() {
                if (this.timestampBuilder_ == null) {
                    this.timestampBuilder_ = new t1<>(getTimestamp(), getParentForChildren(), isClean());
                    this.timestamp_ = null;
                }
                return this.timestampBuilder_;
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

            public Builder clearFields() {
                if (this.fieldsBuilder_ == null) {
                    this.fields_ = null;
                    onChanged();
                } else {
                    this.fields_ = null;
                    this.fieldsBuilder_ = null;
                }
                return this;
            }

            public Builder clearTimestamp() {
                if (this.timestampBuilder_ == null) {
                    this.timestamp_ = null;
                    onChanged();
                } else {
                    this.timestamp_ = null;
                    this.timestampBuilder_ = null;
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public Struct getFields() {
                t1<Struct, Struct.Builder, x1> t1Var = this.fieldsBuilder_;
                if (t1Var == null) {
                    Struct struct = this.fields_;
                    if (struct == null) {
                        return Struct.getDefaultInstance();
                    }
                    return struct;
                }
                return t1Var.e();
            }

            public Struct.Builder getFieldsBuilder() {
                onChanged();
                return getFieldsFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public x1 getFieldsOrBuilder() {
                t1<Struct, Struct.Builder, x1> t1Var = this.fieldsBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Struct struct = this.fields_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public Timestamp getTimestamp() {
                t1<Timestamp, Timestamp.Builder, c2> t1Var = this.timestampBuilder_;
                if (t1Var == null) {
                    Timestamp timestamp = this.timestamp_;
                    if (timestamp == null) {
                        return Timestamp.getDefaultInstance();
                    }
                    return timestamp;
                }
                return t1Var.e();
            }

            public Timestamp.Builder getTimestampBuilder() {
                onChanged();
                return getTimestampFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public c2 getTimestampOrBuilder() {
                t1<Timestamp, Timestamp.Builder, c2> t1Var = this.timestampBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Timestamp timestamp = this.timestamp_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public boolean hasError() {
                if (this.errorBuilder_ == null && this.error_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public boolean hasFields() {
                if (this.fieldsBuilder_ == null && this.fields_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Monitor.RecordOrBuilder
            public boolean hasTimestamp() {
                if (this.timestampBuilder_ == null && this.timestamp_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_fieldAccessorTable.d(Record.class, Builder.class);
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

            public Builder mergeFields(Struct struct) {
                t1<Struct, Struct.Builder, x1> t1Var = this.fieldsBuilder_;
                if (t1Var == null) {
                    Struct struct2 = this.fields_;
                    if (struct2 != null) {
                        this.fields_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                    } else {
                        this.fields_ = struct;
                    }
                    onChanged();
                } else {
                    t1Var.g(struct);
                }
                return this;
            }

            public Builder mergeTimestamp(Timestamp timestamp) {
                t1<Timestamp, Timestamp.Builder, c2> t1Var = this.timestampBuilder_;
                if (t1Var == null) {
                    Timestamp timestamp2 = this.timestamp_;
                    if (timestamp2 != null) {
                        this.timestamp_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                    } else {
                        this.timestamp_ = timestamp;
                    }
                    onChanged();
                } else {
                    t1Var.g(timestamp);
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

            public Builder setFields(Struct struct) {
                t1<Struct, Struct.Builder, x1> t1Var = this.fieldsBuilder_;
                if (t1Var == null) {
                    struct.getClass();
                    this.fields_ = struct;
                    onChanged();
                } else {
                    t1Var.i(struct);
                }
                return this;
            }

            public Builder setTimestamp(Timestamp timestamp) {
                t1<Timestamp, Timestamp.Builder, c2> t1Var = this.timestampBuilder_;
                if (t1Var == null) {
                    timestamp.getClass();
                    this.timestamp_ = timestamp;
                    onChanged();
                } else {
                    t1Var.i(timestamp);
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
            public Record build() {
                Record buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Record buildPartial() {
                Record record = new Record(this);
                t1<Timestamp, Timestamp.Builder, c2> t1Var = this.timestampBuilder_;
                if (t1Var == null) {
                    record.timestamp_ = this.timestamp_;
                } else {
                    record.timestamp_ = t1Var.a();
                }
                t1<Struct, Struct.Builder, x1> t1Var2 = this.fieldsBuilder_;
                if (t1Var2 == null) {
                    record.fields_ = this.fields_;
                } else {
                    record.fields_ = t1Var2.a();
                }
                t1<Error, Error.Builder, ErrorOrBuilder> t1Var3 = this.errorBuilder_;
                if (t1Var3 == null) {
                    record.error_ = this.error_;
                } else {
                    record.error_ = t1Var3.a();
                }
                onBuilt();
                return record;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Record mo4630getDefaultInstanceForType() {
                return Record.getDefaultInstance();
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
                if (this.timestampBuilder_ == null) {
                    this.timestamp_ = null;
                } else {
                    this.timestamp_ = null;
                    this.timestampBuilder_ = null;
                }
                if (this.fieldsBuilder_ == null) {
                    this.fields_ = null;
                } else {
                    this.fields_ = null;
                    this.fieldsBuilder_ = null;
                }
                if (this.errorBuilder_ == null) {
                    this.error_ = null;
                } else {
                    this.error_ = null;
                    this.errorBuilder_ = null;
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

            public Builder setFields(Struct.Builder builder) {
                t1<Struct, Struct.Builder, x1> t1Var = this.fieldsBuilder_;
                if (t1Var == null) {
                    this.fields_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setTimestamp(Timestamp.Builder builder) {
                t1<Timestamp, Timestamp.Builder, c2> t1Var = this.timestampBuilder_;
                if (t1Var == null) {
                    this.timestamp_ = builder.build();
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
                if (message instanceof Record) {
                    return mergeFrom((Record) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(Record record) {
                if (record == Record.getDefaultInstance()) {
                    return this;
                }
                if (record.hasTimestamp()) {
                    mergeTimestamp(record.getTimestamp());
                }
                if (record.hasFields()) {
                    mergeFields(record.getFields());
                }
                if (record.hasError()) {
                    mergeError(record.getError());
                }
                mergeUnknownFields(((GeneratedMessageV3) record).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sdk.Monitor.Record.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Monitor.Record.access$2000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Monitor$Record r3 = (io.bidmachine.protobuf.sdk.Monitor.Record) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Monitor$Record r4 = (io.bidmachine.protobuf.sdk.Monitor.Record) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Record.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Monitor$Record$Builder");
            }
        }

        public static Builder newBuilder(Record record) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(record);
        }

        public static Record parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Record(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Record parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Record) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Record parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Record mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Record parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private Record() {
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Record parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static Record parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        private Record(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                if (K == 10) {
                                    Timestamp timestamp = this.timestamp_;
                                    Timestamp.Builder builder = timestamp != null ? timestamp.toBuilder() : null;
                                    Timestamp timestamp2 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                                    this.timestamp_ = timestamp2;
                                    if (builder != null) {
                                        builder.mergeFrom(timestamp2);
                                        this.timestamp_ = builder.buildPartial();
                                    }
                                } else if (K == 18) {
                                    Struct struct = this.fields_;
                                    Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                                    Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                    this.fields_ = struct2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(struct2);
                                        this.fields_ = builder2.buildPartial();
                                    }
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    Error error = this.error_;
                                    Error.Builder builder3 = error != null ? error.toBuilder() : null;
                                    Error error2 = (Error) nVar.A(Error.parser(), yVar);
                                    this.error_ = error2;
                                    if (builder3 != null) {
                                        builder3.mergeFrom(error2);
                                        this.error_ = builder3.buildPartial();
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

        public static Record parseFrom(InputStream inputStream) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Record parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Record parseFrom(n nVar) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Record parseFrom(n nVar, y yVar) throws IOException {
            return (Record) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface RecordOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        Error getError();

        ErrorOrBuilder getErrorOrBuilder();

        Struct getFields();

        x1 getFieldsOrBuilder();

        Timestamp getTimestamp();

        c2 getTimestampOrBuilder();

        boolean hasError();

        boolean hasFields();

        boolean hasTimestamp();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static Monitor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Monitor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Monitor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Monitor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Monitor> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Monitor)) {
            return super.equals(obj);
        }
        Monitor monitor = (Monitor) obj;
        if (getName().equals(monitor.getName()) && getRecordsList().equals(monitor.getRecordsList()) && this.unknownFields.equals(monitor.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
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
    public j1<Monitor> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public Record getRecords(int i10) {
        return this.records_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public int getRecordsCount() {
        return this.records_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public List<Record> getRecordsList() {
        return this.records_;
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public RecordOrBuilder getRecordsOrBuilder(int i10) {
        return this.records_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
    public List<? extends RecordOrBuilder> getRecordsOrBuilderList() {
        return this.records_;
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
        for (int i12 = 0; i12 < this.records_.size(); i12++) {
            i10 += CodedOutputStream.G(2, this.records_.get(i12));
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getRecordsCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getRecordsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_fieldAccessorTable.d(Monitor.class, Builder.class);
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
        return new Monitor();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i10 = 0; i10 < this.records_.size(); i10++) {
            codedOutputStream.L0(2, this.records_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements MonitorOrBuilder {
        private int bitField0_;
        private Object name_;
        private p1<Record, Record.Builder, RecordOrBuilder> recordsBuilder_;
        private List<Record> records_;

        private void ensureRecordsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.records_ = new ArrayList(this.records_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor;
        }

        private p1<Record, Record.Builder, RecordOrBuilder> getRecordsFieldBuilder() {
            if (this.recordsBuilder_ == null) {
                List<Record> list = this.records_;
                boolean z10 = true;
                if ((this.bitField0_ & 1) == 0) {
                    z10 = false;
                }
                this.recordsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.records_ = null;
            }
            return this.recordsBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getRecordsFieldBuilder();
            }
        }

        public Builder addAllRecords(Iterable<? extends Record> iterable) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                ensureRecordsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.records_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder addRecords(Record record) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                record.getClass();
                ensureRecordsIsMutable();
                this.records_.add(record);
                onChanged();
            } else {
                p1Var.e(record);
            }
            return this;
        }

        public Record.Builder addRecordsBuilder() {
            return getRecordsFieldBuilder().c(Record.getDefaultInstance());
        }

        public Builder clearName() {
            this.name_ = Monitor.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        public Builder clearRecords() {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                this.records_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public Record getRecords(int i10) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                return this.records_.get(i10);
            }
            return p1Var.n(i10);
        }

        public Record.Builder getRecordsBuilder(int i10) {
            return getRecordsFieldBuilder().k(i10);
        }

        public List<Record.Builder> getRecordsBuilderList() {
            return getRecordsFieldBuilder().l();
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public int getRecordsCount() {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                return this.records_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public List<Record> getRecordsList() {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.records_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public RecordOrBuilder getRecordsOrBuilder(int i10) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                return this.records_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.MonitorOrBuilder
        public List<? extends RecordOrBuilder> getRecordsOrBuilderList() {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.records_);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_fieldAccessorTable.d(Monitor.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder removeRecords(int i10) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                ensureRecordsIsMutable();
                this.records_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
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

        public Builder setRecords(int i10, Record record) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                record.getClass();
                ensureRecordsIsMutable();
                this.records_.set(i10, record);
                onChanged();
            } else {
                p1Var.w(i10, record);
            }
            return this;
        }

        private Builder() {
            this.name_ = "";
            this.records_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Monitor build() {
            Monitor buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Monitor buildPartial() {
            Monitor monitor = new Monitor(this);
            monitor.name_ = this.name_;
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var != null) {
                monitor.records_ = p1Var.f();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.records_ = Collections.unmodifiableList(this.records_);
                    this.bitField0_ &= -2;
                }
                monitor.records_ = this.records_;
            }
            onBuilt();
            return monitor;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Monitor mo4630getDefaultInstanceForType() {
            return Monitor.getDefaultInstance();
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

        public Record.Builder addRecordsBuilder(int i10) {
            return getRecordsFieldBuilder().b(i10, Record.getDefaultInstance());
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
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                this.records_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                p1Var.g();
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.name_ = "";
            this.records_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public Builder addRecords(int i10, Record record) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                record.getClass();
                ensureRecordsIsMutable();
                this.records_.add(i10, record);
                onChanged();
            } else {
                p1Var.d(i10, record);
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
            if (message instanceof Monitor) {
                return mergeFrom((Monitor) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setRecords(int i10, Record.Builder builder) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                ensureRecordsIsMutable();
                this.records_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(Monitor monitor) {
            if (monitor == Monitor.getDefaultInstance()) {
                return this;
            }
            if (!monitor.getName().isEmpty()) {
                this.name_ = monitor.name_;
                onChanged();
            }
            if (this.recordsBuilder_ == null) {
                if (!monitor.records_.isEmpty()) {
                    if (this.records_.isEmpty()) {
                        this.records_ = monitor.records_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureRecordsIsMutable();
                        this.records_.addAll(monitor.records_);
                    }
                    onChanged();
                }
            } else if (!monitor.records_.isEmpty()) {
                if (!this.recordsBuilder_.t()) {
                    this.recordsBuilder_.a(monitor.records_);
                } else {
                    this.recordsBuilder_.h();
                    this.recordsBuilder_ = null;
                    this.records_ = monitor.records_;
                    this.bitField0_ &= -2;
                    this.recordsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRecordsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) monitor).unknownFields);
            onChanged();
            return this;
        }

        public Builder addRecords(Record.Builder builder) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                ensureRecordsIsMutable();
                this.records_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addRecords(int i10, Record.Builder builder) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                ensureRecordsIsMutable();
                this.records_.add(i10, builder.build());
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
        public io.bidmachine.protobuf.sdk.Monitor.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Monitor.access$3000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Monitor r3 = (io.bidmachine.protobuf.sdk.Monitor) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Monitor r4 = (io.bidmachine.protobuf.sdk.Monitor) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Monitor.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Monitor$Builder");
        }
    }

    public static Builder newBuilder(Monitor monitor) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(monitor);
    }

    public static Monitor parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Monitor(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Monitor parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Monitor) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Monitor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Monitor mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Monitor parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Monitor() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.records_ = Collections.emptyList();
    }

    public static Monitor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Monitor parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Monitor parseFrom(InputStream inputStream) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Monitor(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.name_ = nVar.J();
                        } else if (K != 18) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            if (!z11) {
                                this.records_ = new ArrayList();
                                z11 = true;
                            }
                            this.records_.add(nVar.A(Record.parser(), yVar));
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
                    this.records_ = Collections.unmodifiableList(this.records_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.records_ = Collections.unmodifiableList(this.records_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static Monitor parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Monitor parseFrom(n nVar) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Monitor parseFrom(n nVar, y yVar) throws IOException {
        return (Monitor) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
