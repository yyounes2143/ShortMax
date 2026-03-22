package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.w1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.sdk.Monitor;
import io.bidmachine.protobuf.sdk.Reader;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class Configuration extends GeneratedMessageV3 implements ConfigurationOrBuilder {
    public static final int BPK_FIELD_NUMBER = 3;
    public static final int MONITORS_FIELD_NUMBER = 1;
    public static final int READERS_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private StringValue bpk_;
    private byte memoizedIsInitialized;
    private List<Monitor.Configuration> monitors_;
    private List<Reader.Configuration> readers_;
    private static final Configuration DEFAULT_INSTANCE = new Configuration();
    private static final j1<Configuration> PARSER = new b<Configuration>() { // from class: io.bidmachine.protobuf.sdk.Configuration.1
        @Override // com.explorestack.protobuf.j1
        public Configuration parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Configuration(nVar, yVar);
        }
    };

    public static Configuration getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor;
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
        if (!getMonitorsList().equals(configuration.getMonitorsList()) || !getReadersList().equals(configuration.getReadersList()) || hasBpk() != configuration.hasBpk()) {
            return false;
        }
        if ((!hasBpk() || getBpk().equals(configuration.getBpk())) && this.unknownFields.equals(configuration.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public StringValue getBpk() {
        StringValue stringValue = this.bpk_;
        if (stringValue == null) {
            return StringValue.getDefaultInstance();
        }
        return stringValue;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public w1 getBpkOrBuilder() {
        return getBpk();
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Monitor.Configuration getMonitors(int i10) {
        return this.monitors_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public int getMonitorsCount() {
        return this.monitors_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<Monitor.Configuration> getMonitorsList() {
        return this.monitors_;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Monitor.ConfigurationOrBuilder getMonitorsOrBuilder(int i10) {
        return this.monitors_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<? extends Monitor.ConfigurationOrBuilder> getMonitorsOrBuilderList() {
        return this.monitors_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Configuration> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Reader.Configuration getReaders(int i10) {
        return this.readers_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public int getReadersCount() {
        return this.readers_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<Reader.Configuration> getReadersList() {
        return this.readers_;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public Reader.ConfigurationOrBuilder getReadersOrBuilder(int i10) {
        return this.readers_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public List<? extends Reader.ConfigurationOrBuilder> getReadersOrBuilderList() {
        return this.readers_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.monitors_.size(); i12++) {
            i11 += CodedOutputStream.G(1, this.monitors_.get(i12));
        }
        for (int i13 = 0; i13 < this.readers_.size(); i13++) {
            i11 += CodedOutputStream.G(2, this.readers_.get(i13));
        }
        if (this.bpk_ != null) {
            i11 += CodedOutputStream.G(3, getBpk());
        }
        int serializedSize = i11 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
    public boolean hasBpk() {
        if (this.bpk_ != null) {
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
        if (getMonitorsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getMonitorsList().hashCode();
        }
        if (getReadersCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getReadersList().hashCode();
        }
        if (hasBpk()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getBpk().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
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
        for (int i10 = 0; i10 < this.monitors_.size(); i10++) {
            codedOutputStream.L0(1, this.monitors_.get(i10));
        }
        for (int i11 = 0; i11 < this.readers_.size(); i11++) {
            codedOutputStream.L0(2, this.readers_.get(i11));
        }
        if (this.bpk_ != null) {
            codedOutputStream.L0(3, getBpk());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements ConfigurationOrBuilder {
        private int bitField0_;
        private t1<StringValue, StringValue.Builder, w1> bpkBuilder_;
        private StringValue bpk_;
        private p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> monitorsBuilder_;
        private List<Monitor.Configuration> monitors_;
        private p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> readersBuilder_;
        private List<Reader.Configuration> readers_;

        private void ensureMonitorsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.monitors_ = new ArrayList(this.monitors_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureReadersIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.readers_ = new ArrayList(this.readers_);
                this.bitField0_ |= 2;
            }
        }

        private t1<StringValue, StringValue.Builder, w1> getBpkFieldBuilder() {
            if (this.bpkBuilder_ == null) {
                this.bpkBuilder_ = new t1<>(getBpk(), getParentForChildren(), isClean());
                this.bpk_ = null;
            }
            return this.bpkBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor;
        }

        private p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> getMonitorsFieldBuilder() {
            if (this.monitorsBuilder_ == null) {
                List<Monitor.Configuration> list = this.monitors_;
                boolean z10 = true;
                if ((this.bitField0_ & 1) == 0) {
                    z10 = false;
                }
                this.monitorsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.monitors_ = null;
            }
            return this.monitorsBuilder_;
        }

        private p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> getReadersFieldBuilder() {
            boolean z10;
            if (this.readersBuilder_ == null) {
                List<Reader.Configuration> list = this.readers_;
                if ((this.bitField0_ & 2) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.readersBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.readers_ = null;
            }
            return this.readersBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getMonitorsFieldBuilder();
                getReadersFieldBuilder();
            }
        }

        public Builder addAllMonitors(Iterable<? extends Monitor.Configuration> iterable) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                ensureMonitorsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.monitors_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder addAllReaders(Iterable<? extends Reader.Configuration> iterable) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                ensureReadersIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.readers_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder addMonitors(Monitor.Configuration configuration) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                configuration.getClass();
                ensureMonitorsIsMutable();
                this.monitors_.add(configuration);
                onChanged();
            } else {
                p1Var.e(configuration);
            }
            return this;
        }

        public Monitor.Configuration.Builder addMonitorsBuilder() {
            return getMonitorsFieldBuilder().c(Monitor.Configuration.getDefaultInstance());
        }

        public Builder addReaders(Reader.Configuration configuration) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                configuration.getClass();
                ensureReadersIsMutable();
                this.readers_.add(configuration);
                onChanged();
            } else {
                p1Var.e(configuration);
            }
            return this;
        }

        public Reader.Configuration.Builder addReadersBuilder() {
            return getReadersFieldBuilder().c(Reader.Configuration.getDefaultInstance());
        }

        public Builder clearBpk() {
            if (this.bpkBuilder_ == null) {
                this.bpk_ = null;
                onChanged();
            } else {
                this.bpk_ = null;
                this.bpkBuilder_ = null;
            }
            return this;
        }

        public Builder clearMonitors() {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                this.monitors_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder clearReaders() {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                this.readers_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public StringValue getBpk() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.bpkBuilder_;
            if (t1Var == null) {
                StringValue stringValue = this.bpk_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }
            return t1Var.e();
        }

        public StringValue.Builder getBpkBuilder() {
            onChanged();
            return getBpkFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public w1 getBpkOrBuilder() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.bpkBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            StringValue stringValue = this.bpk_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Monitor.Configuration getMonitors(int i10) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                return this.monitors_.get(i10);
            }
            return p1Var.n(i10);
        }

        public Monitor.Configuration.Builder getMonitorsBuilder(int i10) {
            return getMonitorsFieldBuilder().k(i10);
        }

        public List<Monitor.Configuration.Builder> getMonitorsBuilderList() {
            return getMonitorsFieldBuilder().l();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public int getMonitorsCount() {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                return this.monitors_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<Monitor.Configuration> getMonitorsList() {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.monitors_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Monitor.ConfigurationOrBuilder getMonitorsOrBuilder(int i10) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                return this.monitors_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<? extends Monitor.ConfigurationOrBuilder> getMonitorsOrBuilderList() {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.monitors_);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Reader.Configuration getReaders(int i10) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                return this.readers_.get(i10);
            }
            return p1Var.n(i10);
        }

        public Reader.Configuration.Builder getReadersBuilder(int i10) {
            return getReadersFieldBuilder().k(i10);
        }

        public List<Reader.Configuration.Builder> getReadersBuilderList() {
            return getReadersFieldBuilder().l();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public int getReadersCount() {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                return this.readers_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<Reader.Configuration> getReadersList() {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.readers_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public Reader.ConfigurationOrBuilder getReadersOrBuilder(int i10) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                return this.readers_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public List<? extends Reader.ConfigurationOrBuilder> getReadersOrBuilderList() {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.readers_);
        }

        @Override // io.bidmachine.protobuf.sdk.ConfigurationOrBuilder
        public boolean hasBpk() {
            if (this.bpkBuilder_ == null && this.bpk_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeBpk(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.bpkBuilder_;
            if (t1Var == null) {
                StringValue stringValue2 = this.bpk_;
                if (stringValue2 != null) {
                    this.bpk_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                } else {
                    this.bpk_ = stringValue;
                }
                onChanged();
            } else {
                t1Var.g(stringValue);
            }
            return this;
        }

        public Builder removeMonitors(int i10) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                ensureMonitorsIsMutable();
                this.monitors_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder removeReaders(int i10) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                ensureReadersIsMutable();
                this.readers_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder setBpk(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.bpkBuilder_;
            if (t1Var == null) {
                stringValue.getClass();
                this.bpk_ = stringValue;
                onChanged();
            } else {
                t1Var.i(stringValue);
            }
            return this;
        }

        public Builder setMonitors(int i10, Monitor.Configuration configuration) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                configuration.getClass();
                ensureMonitorsIsMutable();
                this.monitors_.set(i10, configuration);
                onChanged();
            } else {
                p1Var.w(i10, configuration);
            }
            return this;
        }

        public Builder setReaders(int i10, Reader.Configuration configuration) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                configuration.getClass();
                ensureReadersIsMutable();
                this.readers_.set(i10, configuration);
                onChanged();
            } else {
                p1Var.w(i10, configuration);
            }
            return this;
        }

        private Builder() {
            this.monitors_ = Collections.emptyList();
            this.readers_ = Collections.emptyList();
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
            int i10 = this.bitField0_;
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                if ((i10 & 1) != 0) {
                    this.monitors_ = Collections.unmodifiableList(this.monitors_);
                    this.bitField0_ &= -2;
                }
                configuration.monitors_ = this.monitors_;
            } else {
                configuration.monitors_ = p1Var.f();
            }
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var2 = this.readersBuilder_;
            if (p1Var2 != null) {
                configuration.readers_ = p1Var2.f();
            } else {
                if ((this.bitField0_ & 2) != 0) {
                    this.readers_ = Collections.unmodifiableList(this.readers_);
                    this.bitField0_ &= -3;
                }
                configuration.readers_ = this.readers_;
            }
            t1<StringValue, StringValue.Builder, w1> t1Var = this.bpkBuilder_;
            if (t1Var == null) {
                configuration.bpk_ = this.bpk_;
            } else {
                configuration.bpk_ = t1Var.a();
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

        public Monitor.Configuration.Builder addMonitorsBuilder(int i10) {
            return getMonitorsFieldBuilder().b(i10, Monitor.Configuration.getDefaultInstance());
        }

        public Reader.Configuration.Builder addReadersBuilder(int i10) {
            return getReadersFieldBuilder().b(i10, Reader.Configuration.getDefaultInstance());
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
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                this.monitors_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                p1Var.g();
            }
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var2 = this.readersBuilder_;
            if (p1Var2 == null) {
                this.readers_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                p1Var2.g();
            }
            if (this.bpkBuilder_ == null) {
                this.bpk_ = null;
            } else {
                this.bpk_ = null;
                this.bpkBuilder_ = null;
            }
            return this;
        }

        public Builder setBpk(StringValue.Builder builder) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.bpkBuilder_;
            if (t1Var == null) {
                this.bpk_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.monitors_ = Collections.emptyList();
            this.readers_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public Builder addMonitors(int i10, Monitor.Configuration configuration) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                configuration.getClass();
                ensureMonitorsIsMutable();
                this.monitors_.add(i10, configuration);
                onChanged();
            } else {
                p1Var.d(i10, configuration);
            }
            return this;
        }

        public Builder addReaders(int i10, Reader.Configuration configuration) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                configuration.getClass();
                ensureReadersIsMutable();
                this.readers_.add(i10, configuration);
                onChanged();
            } else {
                p1Var.d(i10, configuration);
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

        public Builder setMonitors(int i10, Monitor.Configuration.Builder builder) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                ensureMonitorsIsMutable();
                this.monitors_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        public Builder setReaders(int i10, Reader.Configuration.Builder builder) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                ensureReadersIsMutable();
                this.readers_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        public Builder mergeFrom(Configuration configuration) {
            if (configuration == Configuration.getDefaultInstance()) {
                return this;
            }
            if (this.monitorsBuilder_ == null) {
                if (!configuration.monitors_.isEmpty()) {
                    if (this.monitors_.isEmpty()) {
                        this.monitors_ = configuration.monitors_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMonitorsIsMutable();
                        this.monitors_.addAll(configuration.monitors_);
                    }
                    onChanged();
                }
            } else if (!configuration.monitors_.isEmpty()) {
                if (!this.monitorsBuilder_.t()) {
                    this.monitorsBuilder_.a(configuration.monitors_);
                } else {
                    this.monitorsBuilder_.h();
                    this.monitorsBuilder_ = null;
                    this.monitors_ = configuration.monitors_;
                    this.bitField0_ &= -2;
                    this.monitorsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getMonitorsFieldBuilder() : null;
                }
            }
            if (this.readersBuilder_ == null) {
                if (!configuration.readers_.isEmpty()) {
                    if (this.readers_.isEmpty()) {
                        this.readers_ = configuration.readers_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureReadersIsMutable();
                        this.readers_.addAll(configuration.readers_);
                    }
                    onChanged();
                }
            } else if (!configuration.readers_.isEmpty()) {
                if (!this.readersBuilder_.t()) {
                    this.readersBuilder_.a(configuration.readers_);
                } else {
                    this.readersBuilder_.h();
                    this.readersBuilder_ = null;
                    this.readers_ = configuration.readers_;
                    this.bitField0_ &= -3;
                    this.readersBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getReadersFieldBuilder() : null;
                }
            }
            if (configuration.hasBpk()) {
                mergeBpk(configuration.getBpk());
            }
            mergeUnknownFields(((GeneratedMessageV3) configuration).unknownFields);
            onChanged();
            return this;
        }

        public Builder addMonitors(Monitor.Configuration.Builder builder) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                ensureMonitorsIsMutable();
                this.monitors_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addReaders(Reader.Configuration.Builder builder) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                ensureReadersIsMutable();
                this.readers_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addMonitors(int i10, Monitor.Configuration.Builder builder) {
            p1<Monitor.Configuration, Monitor.Configuration.Builder, Monitor.ConfigurationOrBuilder> p1Var = this.monitorsBuilder_;
            if (p1Var == null) {
                ensureMonitorsIsMutable();
                this.monitors_.add(i10, builder.build());
                onChanged();
            } else {
                p1Var.d(i10, builder.build());
            }
            return this;
        }

        public Builder addReaders(int i10, Reader.Configuration.Builder builder) {
            p1<Reader.Configuration, Reader.Configuration.Builder, Reader.ConfigurationOrBuilder> p1Var = this.readersBuilder_;
            if (p1Var == null) {
                ensureReadersIsMutable();
                this.readers_.add(i10, builder.build());
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
        public io.bidmachine.protobuf.sdk.Configuration.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Configuration.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Configuration r3 = (io.bidmachine.protobuf.sdk.Configuration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Configuration r4 = (io.bidmachine.protobuf.sdk.Configuration) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Configuration.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Configuration$Builder");
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
        this.monitors_ = Collections.emptyList();
        this.readers_ = Collections.emptyList();
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

    public static Configuration parseFrom(InputStream inputStream) throws IOException {
        return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Configuration(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                if (!(z11 & true)) {
                                    this.monitors_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.monitors_.add(nVar.A(Monitor.Configuration.parser(), yVar));
                            } else if (K == 18) {
                                if (!(z11 & true)) {
                                    this.readers_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.readers_.add(nVar.A(Reader.Configuration.parser(), yVar));
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                StringValue stringValue = this.bpk_;
                                StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                StringValue stringValue2 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                this.bpk_ = stringValue2;
                                if (builder != null) {
                                    builder.mergeFrom(stringValue2);
                                    this.bpk_ = builder.buildPartial();
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
                if (z11 & true) {
                    this.monitors_ = Collections.unmodifiableList(this.monitors_);
                }
                if (z11 & true) {
                    this.readers_ = Collections.unmodifiableList(this.readers_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11 & true) {
            this.monitors_ = Collections.unmodifiableList(this.monitors_);
        }
        if (z11 & true) {
            this.readers_ = Collections.unmodifiableList(this.readers_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
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
