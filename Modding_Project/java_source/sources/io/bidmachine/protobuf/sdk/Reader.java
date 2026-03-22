package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.BoolValue;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.BytesValue;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.UInt32Value;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.g2;
import com.explorestack.protobuf.i;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.m;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.w1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.sdk.Error;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class Reader extends GeneratedMessageV3 implements ReaderOrBuilder {
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int RECORDS_FIELD_NUMBER = 3;
    public static final int TIMESTAMP_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Record> records_;
    private Timestamp timestamp_;
    private static final Reader DEFAULT_INSTANCE = new Reader();
    private static final j1<Reader> PARSER = new b<Reader>() { // from class: io.bidmachine.protobuf.sdk.Reader.1
        @Override // com.explorestack.protobuf.j1
        public Reader parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Reader(nVar, yVar);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.protobuf.sdk.Reader$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase;

        static {
            int[] iArr = new int[Rule.RuleOneofCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase = iArr;
            try {
                iArr[Rule.RuleOneofCase.GENERAL_RULE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase[Rule.RuleOneofCase.IOS_LOG_RULE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase[Rule.RuleOneofCase.RULEONEOF_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public static final class Configuration extends GeneratedMessageV3 implements ConfigurationOrBuilder {
        public static final int NAME_FIELD_NUMBER = 1;
        public static final int RULES_FIELD_NUMBER = 5;
        public static final int UNIQUE_ONLY_FIELD_NUMBER = 4;
        public static final int UPDATE_INTERVAL_FIELD_NUMBER = 3;
        public static final int URL_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private StringValue name_;
        private List<Rule> rules_;
        private BoolValue uniqueOnly_;
        private UInt32Value updateInterval_;
        private StringValue url_;
        private static final Configuration DEFAULT_INSTANCE = new Configuration();
        private static final j1<Configuration> PARSER = new b<Configuration>() { // from class: io.bidmachine.protobuf.sdk.Reader.Configuration.1
            @Override // com.explorestack.protobuf.j1
            public Configuration parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Configuration(nVar, yVar);
            }
        };

        public static Configuration getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor;
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
            if ((hasUrl() && !getUrl().equals(configuration.getUrl())) || hasUpdateInterval() != configuration.hasUpdateInterval()) {
                return false;
            }
            if ((hasUpdateInterval() && !getUpdateInterval().equals(configuration.getUpdateInterval())) || hasUniqueOnly() != configuration.hasUniqueOnly()) {
                return false;
            }
            if ((!hasUniqueOnly() || getUniqueOnly().equals(configuration.getUniqueOnly())) && getRulesList().equals(configuration.getRulesList()) && this.unknownFields.equals(configuration.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public StringValue getName() {
            StringValue stringValue = this.name_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public w1 getNameOrBuilder() {
            return getName();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Configuration> getParserForType() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public Rule getRules(int i10) {
            return this.rules_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public int getRulesCount() {
            return this.rules_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public List<Rule> getRulesList() {
            return this.rules_;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public RuleOrBuilder getRulesOrBuilder(int i10) {
            return this.rules_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public List<? extends RuleOrBuilder> getRulesOrBuilderList() {
            return this.rules_;
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
            if (this.updateInterval_ != null) {
                i10 += CodedOutputStream.G(3, getUpdateInterval());
            }
            if (this.uniqueOnly_ != null) {
                i10 += CodedOutputStream.G(4, getUniqueOnly());
            }
            for (int i12 = 0; i12 < this.rules_.size(); i12++) {
                i10 += CodedOutputStream.G(5, this.rules_.get(i12));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public BoolValue getUniqueOnly() {
            BoolValue boolValue = this.uniqueOnly_;
            if (boolValue == null) {
                return BoolValue.d();
            }
            return boolValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public i getUniqueOnlyOrBuilder() {
            return getUniqueOnly();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public UInt32Value getUpdateInterval() {
            UInt32Value uInt32Value = this.updateInterval_;
            if (uInt32Value == null) {
                return UInt32Value.getDefaultInstance();
            }
            return uInt32Value;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public g2 getUpdateIntervalOrBuilder() {
            return getUpdateInterval();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public StringValue getUrl() {
            StringValue stringValue = this.url_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public w1 getUrlOrBuilder() {
            return getUrl();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public boolean hasName() {
            if (this.name_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public boolean hasUniqueOnly() {
            if (this.uniqueOnly_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
        public boolean hasUpdateInterval() {
            if (this.updateInterval_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
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
            if (hasUpdateInterval()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getUpdateInterval().hashCode();
            }
            if (hasUniqueOnly()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getUniqueOnly().hashCode();
            }
            if (getRulesCount() > 0) {
                hashCode = (((hashCode * 37) + 5) * 53) + getRulesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
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
            if (this.updateInterval_ != null) {
                codedOutputStream.L0(3, getUpdateInterval());
            }
            if (this.uniqueOnly_ != null) {
                codedOutputStream.L0(4, getUniqueOnly());
            }
            for (int i10 = 0; i10 < this.rules_.size(); i10++) {
                codedOutputStream.L0(5, this.rules_.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements ConfigurationOrBuilder {
            private int bitField0_;
            private t1<StringValue, StringValue.Builder, w1> nameBuilder_;
            private StringValue name_;
            private p1<Rule, Rule.Builder, RuleOrBuilder> rulesBuilder_;
            private List<Rule> rules_;
            private t1<BoolValue, BoolValue.b, i> uniqueOnlyBuilder_;
            private BoolValue uniqueOnly_;
            private t1<UInt32Value, UInt32Value.Builder, g2> updateIntervalBuilder_;
            private UInt32Value updateInterval_;
            private t1<StringValue, StringValue.Builder, w1> urlBuilder_;
            private StringValue url_;

            private void ensureRulesIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.rules_ = new ArrayList(this.rules_);
                    this.bitField0_ |= 1;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor;
            }

            private t1<StringValue, StringValue.Builder, w1> getNameFieldBuilder() {
                if (this.nameBuilder_ == null) {
                    this.nameBuilder_ = new t1<>(getName(), getParentForChildren(), isClean());
                    this.name_ = null;
                }
                return this.nameBuilder_;
            }

            private p1<Rule, Rule.Builder, RuleOrBuilder> getRulesFieldBuilder() {
                if (this.rulesBuilder_ == null) {
                    List<Rule> list = this.rules_;
                    boolean z10 = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z10 = false;
                    }
                    this.rulesBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.rules_ = null;
                }
                return this.rulesBuilder_;
            }

            private t1<BoolValue, BoolValue.b, i> getUniqueOnlyFieldBuilder() {
                if (this.uniqueOnlyBuilder_ == null) {
                    this.uniqueOnlyBuilder_ = new t1<>(getUniqueOnly(), getParentForChildren(), isClean());
                    this.uniqueOnly_ = null;
                }
                return this.uniqueOnlyBuilder_;
            }

            private t1<UInt32Value, UInt32Value.Builder, g2> getUpdateIntervalFieldBuilder() {
                if (this.updateIntervalBuilder_ == null) {
                    this.updateIntervalBuilder_ = new t1<>(getUpdateInterval(), getParentForChildren(), isClean());
                    this.updateInterval_ = null;
                }
                return this.updateIntervalBuilder_;
            }

            private t1<StringValue, StringValue.Builder, w1> getUrlFieldBuilder() {
                if (this.urlBuilder_ == null) {
                    this.urlBuilder_ = new t1<>(getUrl(), getParentForChildren(), isClean());
                    this.url_ = null;
                }
                return this.urlBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    getRulesFieldBuilder();
                }
            }

            public Builder addAllRules(Iterable<? extends Rule> iterable) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    ensureRulesIsMutable();
                    a.AbstractC0246a.addAll((Iterable) iterable, (List) this.rules_);
                    onChanged();
                } else {
                    p1Var.a(iterable);
                }
                return this;
            }

            public Builder addRules(Rule rule) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    rule.getClass();
                    ensureRulesIsMutable();
                    this.rules_.add(rule);
                    onChanged();
                } else {
                    p1Var.e(rule);
                }
                return this;
            }

            public Rule.Builder addRulesBuilder() {
                return getRulesFieldBuilder().c(Rule.getDefaultInstance());
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

            public Builder clearRules() {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    this.rules_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    p1Var.g();
                }
                return this;
            }

            public Builder clearUniqueOnly() {
                if (this.uniqueOnlyBuilder_ == null) {
                    this.uniqueOnly_ = null;
                    onChanged();
                } else {
                    this.uniqueOnly_ = null;
                    this.uniqueOnlyBuilder_ = null;
                }
                return this;
            }

            public Builder clearUpdateInterval() {
                if (this.updateIntervalBuilder_ == null) {
                    this.updateInterval_ = null;
                    onChanged();
                } else {
                    this.updateInterval_ = null;
                    this.updateIntervalBuilder_ = null;
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public Rule getRules(int i10) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    return this.rules_.get(i10);
                }
                return p1Var.n(i10);
            }

            public Rule.Builder getRulesBuilder(int i10) {
                return getRulesFieldBuilder().k(i10);
            }

            public List<Rule.Builder> getRulesBuilderList() {
                return getRulesFieldBuilder().l();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public int getRulesCount() {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    return this.rules_.size();
                }
                return p1Var.m();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public List<Rule> getRulesList() {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    return Collections.unmodifiableList(this.rules_);
                }
                return p1Var.p();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public RuleOrBuilder getRulesOrBuilder(int i10) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    return this.rules_.get(i10);
                }
                return p1Var.q(i10);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public List<? extends RuleOrBuilder> getRulesOrBuilderList() {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var != null) {
                    return p1Var.r();
                }
                return Collections.unmodifiableList(this.rules_);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public BoolValue getUniqueOnly() {
                t1<BoolValue, BoolValue.b, i> t1Var = this.uniqueOnlyBuilder_;
                if (t1Var == null) {
                    BoolValue boolValue = this.uniqueOnly_;
                    if (boolValue == null) {
                        return BoolValue.d();
                    }
                    return boolValue;
                }
                return t1Var.e();
            }

            public BoolValue.b getUniqueOnlyBuilder() {
                onChanged();
                return getUniqueOnlyFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public i getUniqueOnlyOrBuilder() {
                t1<BoolValue, BoolValue.b, i> t1Var = this.uniqueOnlyBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                BoolValue boolValue = this.uniqueOnly_;
                if (boolValue == null) {
                    return BoolValue.d();
                }
                return boolValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public UInt32Value getUpdateInterval() {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.updateIntervalBuilder_;
                if (t1Var == null) {
                    UInt32Value uInt32Value = this.updateInterval_;
                    if (uInt32Value == null) {
                        return UInt32Value.getDefaultInstance();
                    }
                    return uInt32Value;
                }
                return t1Var.e();
            }

            public UInt32Value.Builder getUpdateIntervalBuilder() {
                onChanged();
                return getUpdateIntervalFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public g2 getUpdateIntervalOrBuilder() {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.updateIntervalBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                UInt32Value uInt32Value = this.updateInterval_;
                if (uInt32Value == null) {
                    return UInt32Value.getDefaultInstance();
                }
                return uInt32Value;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasName() {
                if (this.nameBuilder_ == null && this.name_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasUniqueOnly() {
                if (this.uniqueOnlyBuilder_ == null && this.uniqueOnly_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasUpdateInterval() {
                if (this.updateIntervalBuilder_ == null && this.updateInterval_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.ConfigurationOrBuilder
            public boolean hasUrl() {
                if (this.urlBuilder_ == null && this.url_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
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

            public Builder mergeUniqueOnly(BoolValue boolValue) {
                t1<BoolValue, BoolValue.b, i> t1Var = this.uniqueOnlyBuilder_;
                if (t1Var == null) {
                    BoolValue boolValue2 = this.uniqueOnly_;
                    if (boolValue2 != null) {
                        this.uniqueOnly_ = BoolValue.h(boolValue2).k(boolValue).buildPartial();
                    } else {
                        this.uniqueOnly_ = boolValue;
                    }
                    onChanged();
                } else {
                    t1Var.g(boolValue);
                }
                return this;
            }

            public Builder mergeUpdateInterval(UInt32Value uInt32Value) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.updateIntervalBuilder_;
                if (t1Var == null) {
                    UInt32Value uInt32Value2 = this.updateInterval_;
                    if (uInt32Value2 != null) {
                        this.updateInterval_ = UInt32Value.newBuilder(uInt32Value2).mergeFrom(uInt32Value).buildPartial();
                    } else {
                        this.updateInterval_ = uInt32Value;
                    }
                    onChanged();
                } else {
                    t1Var.g(uInt32Value);
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

            public Builder removeRules(int i10) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    ensureRulesIsMutable();
                    this.rules_.remove(i10);
                    onChanged();
                } else {
                    p1Var.v(i10);
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

            public Builder setRules(int i10, Rule rule) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    rule.getClass();
                    ensureRulesIsMutable();
                    this.rules_.set(i10, rule);
                    onChanged();
                } else {
                    p1Var.w(i10, rule);
                }
                return this;
            }

            public Builder setUniqueOnly(BoolValue boolValue) {
                t1<BoolValue, BoolValue.b, i> t1Var = this.uniqueOnlyBuilder_;
                if (t1Var == null) {
                    boolValue.getClass();
                    this.uniqueOnly_ = boolValue;
                    onChanged();
                } else {
                    t1Var.i(boolValue);
                }
                return this;
            }

            public Builder setUpdateInterval(UInt32Value uInt32Value) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.updateIntervalBuilder_;
                if (t1Var == null) {
                    uInt32Value.getClass();
                    this.updateInterval_ = uInt32Value;
                    onChanged();
                } else {
                    t1Var.i(uInt32Value);
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
                this.rules_ = Collections.emptyList();
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
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var3 = this.updateIntervalBuilder_;
                if (t1Var3 == null) {
                    configuration.updateInterval_ = this.updateInterval_;
                } else {
                    configuration.updateInterval_ = t1Var3.a();
                }
                t1<BoolValue, BoolValue.b, i> t1Var4 = this.uniqueOnlyBuilder_;
                if (t1Var4 == null) {
                    configuration.uniqueOnly_ = this.uniqueOnly_;
                } else {
                    configuration.uniqueOnly_ = t1Var4.a();
                }
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var != null) {
                    configuration.rules_ = p1Var.f();
                } else {
                    if ((this.bitField0_ & 1) != 0) {
                        this.rules_ = Collections.unmodifiableList(this.rules_);
                        this.bitField0_ &= -2;
                    }
                    configuration.rules_ = this.rules_;
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

            public Rule.Builder addRulesBuilder(int i10) {
                return getRulesFieldBuilder().b(i10, Rule.getDefaultInstance());
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
                if (this.updateIntervalBuilder_ == null) {
                    this.updateInterval_ = null;
                } else {
                    this.updateInterval_ = null;
                    this.updateIntervalBuilder_ = null;
                }
                if (this.uniqueOnlyBuilder_ == null) {
                    this.uniqueOnly_ = null;
                } else {
                    this.uniqueOnly_ = null;
                    this.uniqueOnlyBuilder_ = null;
                }
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    this.rules_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.rules_ = Collections.emptyList();
                maybeForceBuilderInitialization();
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

            public Builder setUniqueOnly(BoolValue.b bVar) {
                t1<BoolValue, BoolValue.b, i> t1Var = this.uniqueOnlyBuilder_;
                if (t1Var == null) {
                    this.uniqueOnly_ = bVar.build();
                    onChanged();
                } else {
                    t1Var.i(bVar.build());
                }
                return this;
            }

            public Builder setUpdateInterval(UInt32Value.Builder builder) {
                t1<UInt32Value, UInt32Value.Builder, g2> t1Var = this.updateIntervalBuilder_;
                if (t1Var == null) {
                    this.updateInterval_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
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

            public Builder addRules(int i10, Rule rule) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    rule.getClass();
                    ensureRulesIsMutable();
                    this.rules_.add(i10, rule);
                    onChanged();
                } else {
                    p1Var.d(i10, rule);
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

            public Builder setRules(int i10, Rule.Builder builder) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    ensureRulesIsMutable();
                    this.rules_.set(i10, builder.build());
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
                if (configuration.hasName()) {
                    mergeName(configuration.getName());
                }
                if (configuration.hasUrl()) {
                    mergeUrl(configuration.getUrl());
                }
                if (configuration.hasUpdateInterval()) {
                    mergeUpdateInterval(configuration.getUpdateInterval());
                }
                if (configuration.hasUniqueOnly()) {
                    mergeUniqueOnly(configuration.getUniqueOnly());
                }
                if (this.rulesBuilder_ == null) {
                    if (!configuration.rules_.isEmpty()) {
                        if (this.rules_.isEmpty()) {
                            this.rules_ = configuration.rules_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureRulesIsMutable();
                            this.rules_.addAll(configuration.rules_);
                        }
                        onChanged();
                    }
                } else if (!configuration.rules_.isEmpty()) {
                    if (!this.rulesBuilder_.t()) {
                        this.rulesBuilder_.a(configuration.rules_);
                    } else {
                        this.rulesBuilder_.h();
                        this.rulesBuilder_ = null;
                        this.rules_ = configuration.rules_;
                        this.bitField0_ &= -2;
                        this.rulesBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRulesFieldBuilder() : null;
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) configuration).unknownFields);
                onChanged();
                return this;
            }

            public Builder addRules(Rule.Builder builder) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    ensureRulesIsMutable();
                    this.rules_.add(builder.build());
                    onChanged();
                } else {
                    p1Var.e(builder.build());
                }
                return this;
            }

            public Builder addRules(int i10, Rule.Builder builder) {
                p1<Rule, Rule.Builder, RuleOrBuilder> p1Var = this.rulesBuilder_;
                if (p1Var == null) {
                    ensureRulesIsMutable();
                    this.rules_.add(i10, builder.build());
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
            public io.bidmachine.protobuf.sdk.Reader.Configuration.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Reader.Configuration.access$1100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Reader$Configuration r3 = (io.bidmachine.protobuf.sdk.Reader.Configuration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Reader$Configuration r4 = (io.bidmachine.protobuf.sdk.Reader.Configuration) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Configuration.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Reader$Configuration$Builder");
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
            this.rules_ = Collections.emptyList();
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
            Object[] objArr = null;
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
                                UInt32Value uInt32Value = this.updateInterval_;
                                UInt32Value.Builder builder3 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                                UInt32Value uInt32Value2 = (UInt32Value) nVar.A(UInt32Value.parser(), yVar);
                                this.updateInterval_ = uInt32Value2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(uInt32Value2);
                                    this.updateInterval_ = builder3.buildPartial();
                                }
                            } else if (K == 34) {
                                BoolValue boolValue = this.uniqueOnly_;
                                BoolValue.b builder4 = boolValue != null ? boolValue.toBuilder() : null;
                                BoolValue boolValue2 = (BoolValue) nVar.A(BoolValue.parser(), yVar);
                                this.uniqueOnly_ = boolValue2;
                                if (builder4 != null) {
                                    builder4.k(boolValue2);
                                    this.uniqueOnly_ = builder4.buildPartial();
                                }
                            } else if (K != 42) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (objArr == null) {
                                    this.rules_ = new ArrayList();
                                    objArr = 1;
                                }
                                this.rules_.add(nVar.A(Rule.parser(), yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (objArr != null) {
                        this.rules_ = Collections.unmodifiableList(this.rules_);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (objArr != null) {
                this.rules_ = Collections.unmodifiableList(this.rules_);
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

    /* loaded from: classes8.dex */
    public interface ConfigurationOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        StringValue getName();

        w1 getNameOrBuilder();

        Rule getRules(int i10);

        int getRulesCount();

        List<Rule> getRulesList();

        RuleOrBuilder getRulesOrBuilder(int i10);

        List<? extends RuleOrBuilder> getRulesOrBuilderList();

        BoolValue getUniqueOnly();

        i getUniqueOnlyOrBuilder();

        UInt32Value getUpdateInterval();

        g2 getUpdateIntervalOrBuilder();

        StringValue getUrl();

        w1 getUrlOrBuilder();

        boolean hasName();

        boolean hasUniqueOnly();

        boolean hasUpdateInterval();

        boolean hasUrl();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class Record extends GeneratedMessageV3 implements RecordOrBuilder {
        public static final int ERROR_FIELD_NUMBER = 3;
        public static final int RAW_DATA_FIELD_NUMBER = 2;
        public static final int RULE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Error error_;
        private byte memoizedIsInitialized;
        private BytesValue rawData_;
        private Rule rule_;
        private static final Record DEFAULT_INSTANCE = new Record();
        private static final j1<Record> PARSER = new b<Record>() { // from class: io.bidmachine.protobuf.sdk.Reader.Record.1
            @Override // com.explorestack.protobuf.j1
            public Record parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Record(nVar, yVar);
            }
        };

        public static Record getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor;
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
            if (hasRule() != record.hasRule()) {
                return false;
            }
            if ((hasRule() && !getRule().equals(record.getRule())) || hasRawData() != record.hasRawData()) {
                return false;
            }
            if ((hasRawData() && !getRawData().equals(record.getRawData())) || hasError() != record.hasError()) {
                return false;
            }
            if ((!hasError() || getError().equals(record.getError())) && this.unknownFields.equals(record.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public Error getError() {
            Error error = this.error_;
            if (error == null) {
                return Error.getDefaultInstance();
            }
            return error;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public ErrorOrBuilder getErrorOrBuilder() {
            return getError();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Record> getParserForType() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public BytesValue getRawData() {
            BytesValue bytesValue = this.rawData_;
            if (bytesValue == null) {
                return BytesValue.getDefaultInstance();
            }
            return bytesValue;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public m getRawDataOrBuilder() {
            return getRawData();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public Rule getRule() {
            Rule rule = this.rule_;
            if (rule == null) {
                return Rule.getDefaultInstance();
            }
            return rule;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public RuleOrBuilder getRuleOrBuilder() {
            return getRule();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.rule_ != null) {
                i10 = CodedOutputStream.G(1, getRule());
            } else {
                i10 = 0;
            }
            if (this.rawData_ != null) {
                i10 += CodedOutputStream.G(2, getRawData());
            }
            if (this.error_ != null) {
                i10 += CodedOutputStream.G(3, getError());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public boolean hasError() {
            if (this.error_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public boolean hasRawData() {
            if (this.rawData_ != null) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
        public boolean hasRule() {
            if (this.rule_ != null) {
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
            if (hasRule()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getRule().hashCode();
            }
            if (hasRawData()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getRawData().hashCode();
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable.d(Record.class, Builder.class);
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
            if (this.rule_ != null) {
                codedOutputStream.L0(1, getRule());
            }
            if (this.rawData_ != null) {
                codedOutputStream.L0(2, getRawData());
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
            private t1<BytesValue, BytesValue.Builder, m> rawDataBuilder_;
            private BytesValue rawData_;
            private t1<Rule, Rule.Builder, RuleOrBuilder> ruleBuilder_;
            private Rule rule_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor;
            }

            private t1<Error, Error.Builder, ErrorOrBuilder> getErrorFieldBuilder() {
                if (this.errorBuilder_ == null) {
                    this.errorBuilder_ = new t1<>(getError(), getParentForChildren(), isClean());
                    this.error_ = null;
                }
                return this.errorBuilder_;
            }

            private t1<BytesValue, BytesValue.Builder, m> getRawDataFieldBuilder() {
                if (this.rawDataBuilder_ == null) {
                    this.rawDataBuilder_ = new t1<>(getRawData(), getParentForChildren(), isClean());
                    this.rawData_ = null;
                }
                return this.rawDataBuilder_;
            }

            private t1<Rule, Rule.Builder, RuleOrBuilder> getRuleFieldBuilder() {
                if (this.ruleBuilder_ == null) {
                    this.ruleBuilder_ = new t1<>(getRule(), getParentForChildren(), isClean());
                    this.rule_ = null;
                }
                return this.ruleBuilder_;
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

            public Builder clearRawData() {
                if (this.rawDataBuilder_ == null) {
                    this.rawData_ = null;
                    onChanged();
                } else {
                    this.rawData_ = null;
                    this.rawDataBuilder_ = null;
                }
                return this;
            }

            public Builder clearRule() {
                if (this.ruleBuilder_ == null) {
                    this.rule_ = null;
                    onChanged();
                } else {
                    this.rule_ = null;
                    this.ruleBuilder_ = null;
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
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

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public BytesValue getRawData() {
                t1<BytesValue, BytesValue.Builder, m> t1Var = this.rawDataBuilder_;
                if (t1Var == null) {
                    BytesValue bytesValue = this.rawData_;
                    if (bytesValue == null) {
                        return BytesValue.getDefaultInstance();
                    }
                    return bytesValue;
                }
                return t1Var.e();
            }

            public BytesValue.Builder getRawDataBuilder() {
                onChanged();
                return getRawDataFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public m getRawDataOrBuilder() {
                t1<BytesValue, BytesValue.Builder, m> t1Var = this.rawDataBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                BytesValue bytesValue = this.rawData_;
                if (bytesValue == null) {
                    return BytesValue.getDefaultInstance();
                }
                return bytesValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public Rule getRule() {
                t1<Rule, Rule.Builder, RuleOrBuilder> t1Var = this.ruleBuilder_;
                if (t1Var == null) {
                    Rule rule = this.rule_;
                    if (rule == null) {
                        return Rule.getDefaultInstance();
                    }
                    return rule;
                }
                return t1Var.e();
            }

            public Rule.Builder getRuleBuilder() {
                onChanged();
                return getRuleFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public RuleOrBuilder getRuleOrBuilder() {
                t1<Rule, Rule.Builder, RuleOrBuilder> t1Var = this.ruleBuilder_;
                if (t1Var != null) {
                    return t1Var.f();
                }
                Rule rule = this.rule_;
                if (rule == null) {
                    return Rule.getDefaultInstance();
                }
                return rule;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public boolean hasError() {
                if (this.errorBuilder_ == null && this.error_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public boolean hasRawData() {
                if (this.rawDataBuilder_ == null && this.rawData_ == null) {
                    return false;
                }
                return true;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RecordOrBuilder
            public boolean hasRule() {
                if (this.ruleBuilder_ == null && this.rule_ == null) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable.d(Record.class, Builder.class);
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

            public Builder mergeRawData(BytesValue bytesValue) {
                t1<BytesValue, BytesValue.Builder, m> t1Var = this.rawDataBuilder_;
                if (t1Var == null) {
                    BytesValue bytesValue2 = this.rawData_;
                    if (bytesValue2 != null) {
                        this.rawData_ = BytesValue.newBuilder(bytesValue2).mergeFrom(bytesValue).buildPartial();
                    } else {
                        this.rawData_ = bytesValue;
                    }
                    onChanged();
                } else {
                    t1Var.g(bytesValue);
                }
                return this;
            }

            public Builder mergeRule(Rule rule) {
                t1<Rule, Rule.Builder, RuleOrBuilder> t1Var = this.ruleBuilder_;
                if (t1Var == null) {
                    Rule rule2 = this.rule_;
                    if (rule2 != null) {
                        this.rule_ = Rule.newBuilder(rule2).mergeFrom(rule).buildPartial();
                    } else {
                        this.rule_ = rule;
                    }
                    onChanged();
                } else {
                    t1Var.g(rule);
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

            public Builder setRawData(BytesValue bytesValue) {
                t1<BytesValue, BytesValue.Builder, m> t1Var = this.rawDataBuilder_;
                if (t1Var == null) {
                    bytesValue.getClass();
                    this.rawData_ = bytesValue;
                    onChanged();
                } else {
                    t1Var.i(bytesValue);
                }
                return this;
            }

            public Builder setRule(Rule rule) {
                t1<Rule, Rule.Builder, RuleOrBuilder> t1Var = this.ruleBuilder_;
                if (t1Var == null) {
                    rule.getClass();
                    this.rule_ = rule;
                    onChanged();
                } else {
                    t1Var.i(rule);
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
                t1<Rule, Rule.Builder, RuleOrBuilder> t1Var = this.ruleBuilder_;
                if (t1Var == null) {
                    record.rule_ = this.rule_;
                } else {
                    record.rule_ = t1Var.a();
                }
                t1<BytesValue, BytesValue.Builder, m> t1Var2 = this.rawDataBuilder_;
                if (t1Var2 == null) {
                    record.rawData_ = this.rawData_;
                } else {
                    record.rawData_ = t1Var2.a();
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
                if (this.ruleBuilder_ == null) {
                    this.rule_ = null;
                } else {
                    this.rule_ = null;
                    this.ruleBuilder_ = null;
                }
                if (this.rawDataBuilder_ == null) {
                    this.rawData_ = null;
                } else {
                    this.rawData_ = null;
                    this.rawDataBuilder_ = null;
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

            public Builder setRawData(BytesValue.Builder builder) {
                t1<BytesValue, BytesValue.Builder, m> t1Var = this.rawDataBuilder_;
                if (t1Var == null) {
                    this.rawData_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                return this;
            }

            public Builder setRule(Rule.Builder builder) {
                t1<Rule, Rule.Builder, RuleOrBuilder> t1Var = this.ruleBuilder_;
                if (t1Var == null) {
                    this.rule_ = builder.build();
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
                if (record.hasRule()) {
                    mergeRule(record.getRule());
                }
                if (record.hasRawData()) {
                    mergeRawData(record.getRawData());
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
            public io.bidmachine.protobuf.sdk.Reader.Record.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Reader.Record.access$5100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Reader$Record r3 = (io.bidmachine.protobuf.sdk.Reader.Record) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Reader$Record r4 = (io.bidmachine.protobuf.sdk.Reader.Record) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Record.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Reader$Record$Builder");
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
                                    Rule rule = this.rule_;
                                    Rule.Builder builder = rule != null ? rule.toBuilder() : null;
                                    Rule rule2 = (Rule) nVar.A(Rule.parser(), yVar);
                                    this.rule_ = rule2;
                                    if (builder != null) {
                                        builder.mergeFrom(rule2);
                                        this.rule_ = builder.buildPartial();
                                    }
                                } else if (K == 18) {
                                    BytesValue bytesValue = this.rawData_;
                                    BytesValue.Builder builder2 = bytesValue != null ? bytesValue.toBuilder() : null;
                                    BytesValue bytesValue2 = (BytesValue) nVar.A(BytesValue.parser(), yVar);
                                    this.rawData_ = bytesValue2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(bytesValue2);
                                        this.rawData_ = builder2.buildPartial();
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

        BytesValue getRawData();

        m getRawDataOrBuilder();

        Rule getRule();

        RuleOrBuilder getRuleOrBuilder();

        boolean hasError();

        boolean hasRawData();

        boolean hasRule();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public static final class Rule extends GeneratedMessageV3 implements RuleOrBuilder {
        public static final int GENERAL_RULE_FIELD_NUMBER = 1;
        public static final int IOS_LOG_RULE_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int ruleOneofCase_;
        private Object ruleOneof_;
        private static final Rule DEFAULT_INSTANCE = new Rule();
        private static final j1<Rule> PARSER = new b<Rule>() { // from class: io.bidmachine.protobuf.sdk.Reader.Rule.1
            @Override // com.explorestack.protobuf.j1
            public Rule parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new Rule(nVar, yVar);
            }
        };

        /* loaded from: classes8.dex */
        public static final class GeneralRule extends GeneratedMessageV3 implements GeneralRuleOrBuilder {
            private static final GeneralRule DEFAULT_INSTANCE = new GeneralRule();
            private static final j1<GeneralRule> PARSER = new b<GeneralRule>() { // from class: io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.1
                @Override // com.explorestack.protobuf.j1
                public GeneralRule parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new GeneralRule(nVar, yVar);
                }
            };
            public static final int PATH_FIELD_NUMBER = 2;
            public static final int TAG_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private StringValue path_;
            private StringValue tag_;

            public static GeneralRule getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static GeneralRule parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static GeneralRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<GeneralRule> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof GeneralRule)) {
                    return super.equals(obj);
                }
                GeneralRule generalRule = (GeneralRule) obj;
                if (hasTag() != generalRule.hasTag()) {
                    return false;
                }
                if ((hasTag() && !getTag().equals(generalRule.getTag())) || hasPath() != generalRule.hasPath()) {
                    return false;
                }
                if ((!hasPath() || getPath().equals(generalRule.getPath())) && this.unknownFields.equals(generalRule.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<GeneralRule> getParserForType() {
                return PARSER;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public StringValue getPath() {
                StringValue stringValue = this.path_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public w1 getPathOrBuilder() {
                return getPath();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (this.tag_ != null) {
                    i10 = CodedOutputStream.G(1, getTag());
                } else {
                    i10 = 0;
                }
                if (this.path_ != null) {
                    i10 += CodedOutputStream.G(2, getPath());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public StringValue getTag() {
                StringValue stringValue = this.tag_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public w1 getTagOrBuilder() {
                return getTag();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public boolean hasPath() {
                if (this.path_ != null) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
            public boolean hasTag() {
                if (this.tag_ != null) {
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
                if (hasTag()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getTag().hashCode();
                }
                if (hasPath()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getPath().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable.d(GeneralRule.class, Builder.class);
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
                return new GeneralRule();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.tag_ != null) {
                    codedOutputStream.L0(1, getTag());
                }
                if (this.path_ != null) {
                    codedOutputStream.L0(2, getPath());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements GeneralRuleOrBuilder {
                private t1<StringValue, StringValue.Builder, w1> pathBuilder_;
                private StringValue path_;
                private t1<StringValue, StringValue.Builder, w1> tagBuilder_;
                private StringValue tag_;

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor;
                }

                private t1<StringValue, StringValue.Builder, w1> getPathFieldBuilder() {
                    if (this.pathBuilder_ == null) {
                        this.pathBuilder_ = new t1<>(getPath(), getParentForChildren(), isClean());
                        this.path_ = null;
                    }
                    return this.pathBuilder_;
                }

                private t1<StringValue, StringValue.Builder, w1> getTagFieldBuilder() {
                    if (this.tagBuilder_ == null) {
                        this.tagBuilder_ = new t1<>(getTag(), getParentForChildren(), isClean());
                        this.tag_ = null;
                    }
                    return this.tagBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearPath() {
                    if (this.pathBuilder_ == null) {
                        this.path_ = null;
                        onChanged();
                    } else {
                        this.path_ = null;
                        this.pathBuilder_ = null;
                    }
                    return this;
                }

                public Builder clearTag() {
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                        onChanged();
                    } else {
                        this.tag_ = null;
                        this.tagBuilder_ = null;
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public StringValue getPath() {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.pathBuilder_;
                    if (t1Var == null) {
                        StringValue stringValue = this.path_;
                        if (stringValue == null) {
                            return StringValue.getDefaultInstance();
                        }
                        return stringValue;
                    }
                    return t1Var.e();
                }

                public StringValue.Builder getPathBuilder() {
                    onChanged();
                    return getPathFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public w1 getPathOrBuilder() {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.pathBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    StringValue stringValue = this.path_;
                    if (stringValue == null) {
                        return StringValue.getDefaultInstance();
                    }
                    return stringValue;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public StringValue getTag() {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        StringValue stringValue = this.tag_;
                        if (stringValue == null) {
                            return StringValue.getDefaultInstance();
                        }
                        return stringValue;
                    }
                    return t1Var.e();
                }

                public StringValue.Builder getTagBuilder() {
                    onChanged();
                    return getTagFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public w1 getTagOrBuilder() {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    StringValue stringValue = this.tag_;
                    if (stringValue == null) {
                        return StringValue.getDefaultInstance();
                    }
                    return stringValue;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public boolean hasPath() {
                    if (this.pathBuilder_ == null && this.path_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRuleOrBuilder
                public boolean hasTag() {
                    if (this.tagBuilder_ == null && this.tag_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable.d(GeneralRule.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergePath(StringValue stringValue) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.pathBuilder_;
                    if (t1Var == null) {
                        StringValue stringValue2 = this.path_;
                        if (stringValue2 != null) {
                            this.path_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.path_ = stringValue;
                        }
                        onChanged();
                    } else {
                        t1Var.g(stringValue);
                    }
                    return this;
                }

                public Builder mergeTag(StringValue stringValue) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        StringValue stringValue2 = this.tag_;
                        if (stringValue2 != null) {
                            this.tag_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.tag_ = stringValue;
                        }
                        onChanged();
                    } else {
                        t1Var.g(stringValue);
                    }
                    return this;
                }

                public Builder setPath(StringValue stringValue) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.pathBuilder_;
                    if (t1Var == null) {
                        stringValue.getClass();
                        this.path_ = stringValue;
                        onChanged();
                    } else {
                        t1Var.i(stringValue);
                    }
                    return this;
                }

                public Builder setTag(StringValue stringValue) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        stringValue.getClass();
                        this.tag_ = stringValue;
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
                public GeneralRule build() {
                    GeneralRule buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public GeneralRule buildPartial() {
                    GeneralRule generalRule = new GeneralRule(this);
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        generalRule.tag_ = this.tag_;
                    } else {
                        generalRule.tag_ = t1Var.a();
                    }
                    t1<StringValue, StringValue.Builder, w1> t1Var2 = this.pathBuilder_;
                    if (t1Var2 == null) {
                        generalRule.path_ = this.path_;
                    } else {
                        generalRule.path_ = t1Var2.a();
                    }
                    onBuilt();
                    return generalRule;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public GeneralRule mo4630getDefaultInstanceForType() {
                    return GeneralRule.getDefaultInstance();
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
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                    } else {
                        this.tag_ = null;
                        this.tagBuilder_ = null;
                    }
                    if (this.pathBuilder_ == null) {
                        this.path_ = null;
                    } else {
                        this.path_ = null;
                        this.pathBuilder_ = null;
                    }
                    return this;
                }

                public Builder setPath(StringValue.Builder builder) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.pathBuilder_;
                    if (t1Var == null) {
                        this.path_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                public Builder setTag(StringValue.Builder builder) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        this.tag_ = builder.build();
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
                    if (message instanceof GeneralRule) {
                        return mergeFrom((GeneralRule) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(GeneralRule generalRule) {
                    if (generalRule == GeneralRule.getDefaultInstance()) {
                        return this;
                    }
                    if (generalRule.hasTag()) {
                        mergeTag(generalRule.getTag());
                    }
                    if (generalRule.hasPath()) {
                        mergePath(generalRule.getPath());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) generalRule).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.access$2000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule r3 = (io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule r4 = (io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Rule.GeneralRule.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Reader$Rule$GeneralRule$Builder");
                }
            }

            public static Builder newBuilder(GeneralRule generalRule) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(generalRule);
            }

            public static GeneralRule parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private GeneralRule(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static GeneralRule parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static GeneralRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public GeneralRule mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static GeneralRule parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private GeneralRule() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static GeneralRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static GeneralRule parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            private GeneralRule(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                StringValue.Builder builder;
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    StringValue stringValue = this.tag_;
                                    builder = stringValue != null ? stringValue.toBuilder() : null;
                                    StringValue stringValue2 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                    this.tag_ = stringValue2;
                                    if (builder != null) {
                                        builder.mergeFrom(stringValue2);
                                        this.tag_ = builder.buildPartial();
                                    }
                                } else if (K != 18) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    StringValue stringValue3 = this.path_;
                                    builder = stringValue3 != null ? stringValue3.toBuilder() : null;
                                    StringValue stringValue4 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                    this.path_ = stringValue4;
                                    if (builder != null) {
                                        builder.mergeFrom(stringValue4);
                                        this.path_ = builder.buildPartial();
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

            public static GeneralRule parseFrom(InputStream inputStream) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static GeneralRule parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static GeneralRule parseFrom(n nVar) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static GeneralRule parseFrom(n nVar, y yVar) throws IOException {
                return (GeneralRule) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface GeneralRuleOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            StringValue getPath();

            w1 getPathOrBuilder();

            StringValue getTag();

            w1 getTagOrBuilder();

            boolean hasPath();

            boolean hasTag();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public static final class IOSLogRule extends GeneratedMessageV3 implements IOSLogRuleOrBuilder {
            public static final int LEVELS_FIELD_NUMBER = 2;
            public static final int SOURCES_FIELD_NUMBER = 3;
            public static final int TAG_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private List<StringValue> levels_;
            private byte memoizedIsInitialized;
            private List<StringValue> sources_;
            private StringValue tag_;
            private static final IOSLogRule DEFAULT_INSTANCE = new IOSLogRule();
            private static final j1<IOSLogRule> PARSER = new b<IOSLogRule>() { // from class: io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.1
                @Override // com.explorestack.protobuf.j1
                public IOSLogRule parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new IOSLogRule(nVar, yVar);
                }
            };

            public static IOSLogRule getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static IOSLogRule parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static IOSLogRule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<IOSLogRule> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof IOSLogRule)) {
                    return super.equals(obj);
                }
                IOSLogRule iOSLogRule = (IOSLogRule) obj;
                if (hasTag() != iOSLogRule.hasTag()) {
                    return false;
                }
                if ((!hasTag() || getTag().equals(iOSLogRule.getTag())) && getLevelsList().equals(iOSLogRule.getLevelsList()) && getSourcesList().equals(iOSLogRule.getSourcesList()) && this.unknownFields.equals(iOSLogRule.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValue getLevels(int i10) {
                return this.levels_.get(i10);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public int getLevelsCount() {
                return this.levels_.size();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<StringValue> getLevelsList() {
                return this.levels_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public w1 getLevelsOrBuilder(int i10) {
                return this.levels_.get(i10);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<? extends w1> getLevelsOrBuilderList() {
                return this.levels_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<IOSLogRule> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if (this.tag_ != null) {
                    i10 = CodedOutputStream.G(1, getTag());
                } else {
                    i10 = 0;
                }
                for (int i12 = 0; i12 < this.levels_.size(); i12++) {
                    i10 += CodedOutputStream.G(2, this.levels_.get(i12));
                }
                for (int i13 = 0; i13 < this.sources_.size(); i13++) {
                    i10 += CodedOutputStream.G(3, this.sources_.get(i13));
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValue getSources(int i10) {
                return this.sources_.get(i10);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public int getSourcesCount() {
                return this.sources_.size();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<StringValue> getSourcesList() {
                return this.sources_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public w1 getSourcesOrBuilder(int i10) {
                return this.sources_.get(i10);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public List<? extends w1> getSourcesOrBuilderList() {
                return this.sources_;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public StringValue getTag() {
                StringValue stringValue = this.tag_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public w1 getTagOrBuilder() {
                return getTag();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
            public boolean hasTag() {
                if (this.tag_ != null) {
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
                if (hasTag()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getTag().hashCode();
                }
                if (getLevelsCount() > 0) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getLevelsList().hashCode();
                }
                if (getSourcesCount() > 0) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getSourcesList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable.d(IOSLogRule.class, Builder.class);
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
                return new IOSLogRule();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.tag_ != null) {
                    codedOutputStream.L0(1, getTag());
                }
                for (int i10 = 0; i10 < this.levels_.size(); i10++) {
                    codedOutputStream.L0(2, this.levels_.get(i10));
                }
                for (int i11 = 0; i11 < this.sources_.size(); i11++) {
                    codedOutputStream.L0(3, this.sources_.get(i11));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements IOSLogRuleOrBuilder {
                private int bitField0_;
                private p1<StringValue, StringValue.Builder, w1> levelsBuilder_;
                private List<StringValue> levels_;
                private p1<StringValue, StringValue.Builder, w1> sourcesBuilder_;
                private List<StringValue> sources_;
                private t1<StringValue, StringValue.Builder, w1> tagBuilder_;
                private StringValue tag_;

                private void ensureLevelsIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.levels_ = new ArrayList(this.levels_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureSourcesIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.sources_ = new ArrayList(this.sources_);
                        this.bitField0_ |= 2;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor;
                }

                private p1<StringValue, StringValue.Builder, w1> getLevelsFieldBuilder() {
                    if (this.levelsBuilder_ == null) {
                        List<StringValue> list = this.levels_;
                        boolean z10 = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z10 = false;
                        }
                        this.levelsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.levels_ = null;
                    }
                    return this.levelsBuilder_;
                }

                private p1<StringValue, StringValue.Builder, w1> getSourcesFieldBuilder() {
                    boolean z10;
                    if (this.sourcesBuilder_ == null) {
                        List<StringValue> list = this.sources_;
                        if ((this.bitField0_ & 2) != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.sourcesBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.sources_ = null;
                    }
                    return this.sourcesBuilder_;
                }

                private t1<StringValue, StringValue.Builder, w1> getTagFieldBuilder() {
                    if (this.tagBuilder_ == null) {
                        this.tagBuilder_ = new t1<>(getTag(), getParentForChildren(), isClean());
                        this.tag_ = null;
                    }
                    return this.tagBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getLevelsFieldBuilder();
                        getSourcesFieldBuilder();
                    }
                }

                public Builder addAllLevels(Iterable<? extends StringValue> iterable) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        ensureLevelsIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.levels_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder addAllSources(Iterable<? extends StringValue> iterable) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        ensureSourcesIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.sources_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder addLevels(StringValue stringValue) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        stringValue.getClass();
                        ensureLevelsIsMutable();
                        this.levels_.add(stringValue);
                        onChanged();
                    } else {
                        p1Var.e(stringValue);
                    }
                    return this;
                }

                public StringValue.Builder addLevelsBuilder() {
                    return getLevelsFieldBuilder().c(StringValue.getDefaultInstance());
                }

                public Builder addSources(StringValue stringValue) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        stringValue.getClass();
                        ensureSourcesIsMutable();
                        this.sources_.add(stringValue);
                        onChanged();
                    } else {
                        p1Var.e(stringValue);
                    }
                    return this;
                }

                public StringValue.Builder addSourcesBuilder() {
                    return getSourcesFieldBuilder().c(StringValue.getDefaultInstance());
                }

                public Builder clearLevels() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        this.levels_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearSources() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        this.sources_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearTag() {
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                        onChanged();
                    } else {
                        this.tag_ = null;
                        this.tagBuilder_ = null;
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValue getLevels(int i10) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        return this.levels_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public StringValue.Builder getLevelsBuilder(int i10) {
                    return getLevelsFieldBuilder().k(i10);
                }

                public List<StringValue.Builder> getLevelsBuilderList() {
                    return getLevelsFieldBuilder().l();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public int getLevelsCount() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        return this.levels_.size();
                    }
                    return p1Var.m();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<StringValue> getLevelsList() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.levels_);
                    }
                    return p1Var.p();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public w1 getLevelsOrBuilder(int i10) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        return this.levels_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<? extends w1> getLevelsOrBuilderList() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.levels_);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValue getSources(int i10) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        return this.sources_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public StringValue.Builder getSourcesBuilder(int i10) {
                    return getSourcesFieldBuilder().k(i10);
                }

                public List<StringValue.Builder> getSourcesBuilderList() {
                    return getSourcesFieldBuilder().l();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public int getSourcesCount() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        return this.sources_.size();
                    }
                    return p1Var.m();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<StringValue> getSourcesList() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.sources_);
                    }
                    return p1Var.p();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public w1 getSourcesOrBuilder(int i10) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        return this.sources_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public List<? extends w1> getSourcesOrBuilderList() {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.sources_);
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public StringValue getTag() {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        StringValue stringValue = this.tag_;
                        if (stringValue == null) {
                            return StringValue.getDefaultInstance();
                        }
                        return stringValue;
                    }
                    return t1Var.e();
                }

                public StringValue.Builder getTagBuilder() {
                    onChanged();
                    return getTagFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public w1 getTagOrBuilder() {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    StringValue stringValue = this.tag_;
                    if (stringValue == null) {
                        return StringValue.getDefaultInstance();
                    }
                    return stringValue;
                }

                @Override // io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRuleOrBuilder
                public boolean hasTag() {
                    if (this.tagBuilder_ == null && this.tag_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable.d(IOSLogRule.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeTag(StringValue stringValue) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        StringValue stringValue2 = this.tag_;
                        if (stringValue2 != null) {
                            this.tag_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                        } else {
                            this.tag_ = stringValue;
                        }
                        onChanged();
                    } else {
                        t1Var.g(stringValue);
                    }
                    return this;
                }

                public Builder removeLevels(int i10) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        ensureLevelsIsMutable();
                        this.levels_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder removeSources(int i10) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        ensureSourcesIsMutable();
                        this.sources_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder setLevels(int i10, StringValue stringValue) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        stringValue.getClass();
                        ensureLevelsIsMutable();
                        this.levels_.set(i10, stringValue);
                        onChanged();
                    } else {
                        p1Var.w(i10, stringValue);
                    }
                    return this;
                }

                public Builder setSources(int i10, StringValue stringValue) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        stringValue.getClass();
                        ensureSourcesIsMutable();
                        this.sources_.set(i10, stringValue);
                        onChanged();
                    } else {
                        p1Var.w(i10, stringValue);
                    }
                    return this;
                }

                public Builder setTag(StringValue stringValue) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        stringValue.getClass();
                        this.tag_ = stringValue;
                        onChanged();
                    } else {
                        t1Var.i(stringValue);
                    }
                    return this;
                }

                private Builder() {
                    this.levels_ = Collections.emptyList();
                    this.sources_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public IOSLogRule build() {
                    IOSLogRule buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public IOSLogRule buildPartial() {
                    IOSLogRule iOSLogRule = new IOSLogRule(this);
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        iOSLogRule.tag_ = this.tag_;
                    } else {
                        iOSLogRule.tag_ = t1Var.a();
                    }
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var != null) {
                        iOSLogRule.levels_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.levels_ = Collections.unmodifiableList(this.levels_);
                            this.bitField0_ &= -2;
                        }
                        iOSLogRule.levels_ = this.levels_;
                    }
                    p1<StringValue, StringValue.Builder, w1> p1Var2 = this.sourcesBuilder_;
                    if (p1Var2 != null) {
                        iOSLogRule.sources_ = p1Var2.f();
                    } else {
                        if ((this.bitField0_ & 2) != 0) {
                            this.sources_ = Collections.unmodifiableList(this.sources_);
                            this.bitField0_ &= -3;
                        }
                        iOSLogRule.sources_ = this.sources_;
                    }
                    onBuilt();
                    return iOSLogRule;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public IOSLogRule mo4630getDefaultInstanceForType() {
                    return IOSLogRule.getDefaultInstance();
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

                public StringValue.Builder addLevelsBuilder(int i10) {
                    return getLevelsFieldBuilder().b(i10, StringValue.getDefaultInstance());
                }

                public StringValue.Builder addSourcesBuilder(int i10) {
                    return getSourcesFieldBuilder().b(i10, StringValue.getDefaultInstance());
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
                    if (this.tagBuilder_ == null) {
                        this.tag_ = null;
                    } else {
                        this.tag_ = null;
                        this.tagBuilder_ = null;
                    }
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        this.levels_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        p1Var.g();
                    }
                    p1<StringValue, StringValue.Builder, w1> p1Var2 = this.sourcesBuilder_;
                    if (p1Var2 == null) {
                        this.sources_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                    } else {
                        p1Var2.g();
                    }
                    return this;
                }

                public Builder setTag(StringValue.Builder builder) {
                    t1<StringValue, StringValue.Builder, w1> t1Var = this.tagBuilder_;
                    if (t1Var == null) {
                        this.tag_ = builder.build();
                        onChanged();
                    } else {
                        t1Var.i(builder.build());
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.levels_ = Collections.emptyList();
                    this.sources_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder addLevels(int i10, StringValue stringValue) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        stringValue.getClass();
                        ensureLevelsIsMutable();
                        this.levels_.add(i10, stringValue);
                        onChanged();
                    } else {
                        p1Var.d(i10, stringValue);
                    }
                    return this;
                }

                public Builder addSources(int i10, StringValue stringValue) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        stringValue.getClass();
                        ensureSourcesIsMutable();
                        this.sources_.add(i10, stringValue);
                        onChanged();
                    } else {
                        p1Var.d(i10, stringValue);
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
                    if (message instanceof IOSLogRule) {
                        return mergeFrom((IOSLogRule) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setLevels(int i10, StringValue.Builder builder) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        ensureLevelsIsMutable();
                        this.levels_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                public Builder setSources(int i10, StringValue.Builder builder) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        ensureSourcesIsMutable();
                        this.sources_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                public Builder mergeFrom(IOSLogRule iOSLogRule) {
                    if (iOSLogRule == IOSLogRule.getDefaultInstance()) {
                        return this;
                    }
                    if (iOSLogRule.hasTag()) {
                        mergeTag(iOSLogRule.getTag());
                    }
                    if (this.levelsBuilder_ == null) {
                        if (!iOSLogRule.levels_.isEmpty()) {
                            if (this.levels_.isEmpty()) {
                                this.levels_ = iOSLogRule.levels_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureLevelsIsMutable();
                                this.levels_.addAll(iOSLogRule.levels_);
                            }
                            onChanged();
                        }
                    } else if (!iOSLogRule.levels_.isEmpty()) {
                        if (!this.levelsBuilder_.t()) {
                            this.levelsBuilder_.a(iOSLogRule.levels_);
                        } else {
                            this.levelsBuilder_.h();
                            this.levelsBuilder_ = null;
                            this.levels_ = iOSLogRule.levels_;
                            this.bitField0_ &= -2;
                            this.levelsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getLevelsFieldBuilder() : null;
                        }
                    }
                    if (this.sourcesBuilder_ == null) {
                        if (!iOSLogRule.sources_.isEmpty()) {
                            if (this.sources_.isEmpty()) {
                                this.sources_ = iOSLogRule.sources_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureSourcesIsMutable();
                                this.sources_.addAll(iOSLogRule.sources_);
                            }
                            onChanged();
                        }
                    } else if (!iOSLogRule.sources_.isEmpty()) {
                        if (!this.sourcesBuilder_.t()) {
                            this.sourcesBuilder_.a(iOSLogRule.sources_);
                        } else {
                            this.sourcesBuilder_.h();
                            this.sourcesBuilder_ = null;
                            this.sources_ = iOSLogRule.sources_;
                            this.bitField0_ &= -3;
                            this.sourcesBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getSourcesFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) iOSLogRule).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addLevels(StringValue.Builder builder) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        ensureLevelsIsMutable();
                        this.levels_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addSources(StringValue.Builder builder) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        ensureSourcesIsMutable();
                        this.sources_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addLevels(int i10, StringValue.Builder builder) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.levelsBuilder_;
                    if (p1Var == null) {
                        ensureLevelsIsMutable();
                        this.levels_.add(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.d(i10, builder.build());
                    }
                    return this;
                }

                public Builder addSources(int i10, StringValue.Builder builder) {
                    p1<StringValue, StringValue.Builder, w1> p1Var = this.sourcesBuilder_;
                    if (p1Var == null) {
                        ensureSourcesIsMutable();
                        this.sources_.add(i10, builder.build());
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
                public io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.access$3200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule r3 = (io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule r4 = (io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Rule.IOSLogRule.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Reader$Rule$IOSLogRule$Builder");
                }
            }

            public static Builder newBuilder(IOSLogRule iOSLogRule) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(iOSLogRule);
            }

            public static IOSLogRule parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private IOSLogRule(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static IOSLogRule parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static IOSLogRule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public IOSLogRule mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static IOSLogRule parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private IOSLogRule() {
                this.memoizedIsInitialized = (byte) -1;
                this.levels_ = Collections.emptyList();
                this.sources_ = Collections.emptyList();
            }

            public static IOSLogRule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static IOSLogRule parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static IOSLogRule parseFrom(InputStream inputStream) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private IOSLogRule(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                        StringValue stringValue = this.tag_;
                                        StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                        StringValue stringValue2 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                        this.tag_ = stringValue2;
                                        if (builder != null) {
                                            builder.mergeFrom(stringValue2);
                                            this.tag_ = builder.buildPartial();
                                        }
                                    } else if (K == 18) {
                                        if (!(z11 & true)) {
                                            this.levels_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.levels_.add(nVar.A(StringValue.parser(), yVar));
                                    } else if (K != 26) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        if (!(z11 & true)) {
                                            this.sources_ = new ArrayList();
                                            z11 |= true;
                                        }
                                        this.sources_.add(nVar.A(StringValue.parser(), yVar));
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
                            this.levels_ = Collections.unmodifiableList(this.levels_);
                        }
                        if (z11 & true) {
                            this.sources_ = Collections.unmodifiableList(this.sources_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11 & true) {
                    this.levels_ = Collections.unmodifiableList(this.levels_);
                }
                if (z11 & true) {
                    this.sources_ = Collections.unmodifiableList(this.sources_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static IOSLogRule parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static IOSLogRule parseFrom(n nVar) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static IOSLogRule parseFrom(n nVar, y yVar) throws IOException {
                return (IOSLogRule) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface IOSLogRuleOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            StringValue getLevels(int i10);

            int getLevelsCount();

            List<StringValue> getLevelsList();

            w1 getLevelsOrBuilder(int i10);

            List<? extends w1> getLevelsOrBuilderList();

            StringValue getSources(int i10);

            int getSourcesCount();

            List<StringValue> getSourcesList();

            w1 getSourcesOrBuilder(int i10);

            List<? extends w1> getSourcesOrBuilderList();

            StringValue getTag();

            w1 getTagOrBuilder();

            boolean hasTag();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public enum RuleOneofCase implements i0.c {
            GENERAL_RULE(1),
            IOS_LOG_RULE(2),
            RULEONEOF_NOT_SET(0);
            
            private final int value;

            RuleOneofCase(int i10) {
                this.value = i10;
            }

            public static RuleOneofCase forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return IOS_LOG_RULE;
                    }
                    return GENERAL_RULE;
                }
                return RULEONEOF_NOT_SET;
            }

            @Override // com.explorestack.protobuf.i0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static RuleOneofCase valueOf(int i10) {
                return forNumber(i10);
            }
        }

        public static Rule getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Rule parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Rule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Rule parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<Rule> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Rule)) {
                return super.equals(obj);
            }
            Rule rule = (Rule) obj;
            if (!getRuleOneofCase().equals(rule.getRuleOneofCase())) {
                return false;
            }
            int i10 = this.ruleOneofCase_;
            if (i10 != 1) {
                if (i10 == 2 && !getIosLogRule().equals(rule.getIosLogRule())) {
                    return false;
                }
            } else if (!getGeneralRule().equals(rule.getGeneralRule())) {
                return false;
            }
            if (this.unknownFields.equals(rule.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public GeneralRule getGeneralRule() {
            if (this.ruleOneofCase_ == 1) {
                return (GeneralRule) this.ruleOneof_;
            }
            return GeneralRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public GeneralRuleOrBuilder getGeneralRuleOrBuilder() {
            if (this.ruleOneofCase_ == 1) {
                return (GeneralRule) this.ruleOneof_;
            }
            return GeneralRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public IOSLogRule getIosLogRule() {
            if (this.ruleOneofCase_ == 2) {
                return (IOSLogRule) this.ruleOneof_;
            }
            return IOSLogRule.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public IOSLogRuleOrBuilder getIosLogRuleOrBuilder() {
            if (this.ruleOneofCase_ == 2) {
                return (IOSLogRule) this.ruleOneof_;
            }
            return IOSLogRule.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<Rule> getParserForType() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public RuleOneofCase getRuleOneofCase() {
            return RuleOneofCase.forNumber(this.ruleOneofCase_);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.ruleOneofCase_ == 1) {
                i10 = CodedOutputStream.G(1, (GeneralRule) this.ruleOneof_);
            } else {
                i10 = 0;
            }
            if (this.ruleOneofCase_ == 2) {
                i10 += CodedOutputStream.G(2, (IOSLogRule) this.ruleOneof_);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public boolean hasGeneralRule() {
            if (this.ruleOneofCase_ == 1) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
        public boolean hasIosLogRule() {
            if (this.ruleOneofCase_ == 2) {
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
            int hashCode2 = 779 + getDescriptor().hashCode();
            int i12 = this.ruleOneofCase_;
            if (i12 != 1) {
                if (i12 == 2) {
                    i10 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getIosLogRule().hashCode();
                }
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            }
            i10 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getGeneralRule().hashCode();
            hashCode2 = i10 + hashCode;
            int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode32;
            return hashCode32;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable.d(Rule.class, Builder.class);
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
            return new Rule();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.ruleOneofCase_ == 1) {
                codedOutputStream.L0(1, (GeneralRule) this.ruleOneof_);
            }
            if (this.ruleOneofCase_ == 2) {
                codedOutputStream.L0(2, (IOSLogRule) this.ruleOneof_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements RuleOrBuilder {
            private t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> generalRuleBuilder_;
            private t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> iosLogRuleBuilder_;
            private int ruleOneofCase_;
            private Object ruleOneof_;

            public static final Descriptors.Descriptor getDescriptor() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor;
            }

            private t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> getGeneralRuleFieldBuilder() {
                if (this.generalRuleBuilder_ == null) {
                    if (this.ruleOneofCase_ != 1) {
                        this.ruleOneof_ = GeneralRule.getDefaultInstance();
                    }
                    this.generalRuleBuilder_ = new t1<>((GeneralRule) this.ruleOneof_, getParentForChildren(), isClean());
                    this.ruleOneof_ = null;
                }
                this.ruleOneofCase_ = 1;
                onChanged();
                return this.generalRuleBuilder_;
            }

            private t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> getIosLogRuleFieldBuilder() {
                if (this.iosLogRuleBuilder_ == null) {
                    if (this.ruleOneofCase_ != 2) {
                        this.ruleOneof_ = IOSLogRule.getDefaultInstance();
                    }
                    this.iosLogRuleBuilder_ = new t1<>((IOSLogRule) this.ruleOneof_, getParentForChildren(), isClean());
                    this.ruleOneof_ = null;
                }
                this.ruleOneofCase_ = 2;
                onChanged();
                return this.iosLogRuleBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearGeneralRule() {
                t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> t1Var = this.generalRuleBuilder_;
                if (t1Var == null) {
                    if (this.ruleOneofCase_ == 1) {
                        this.ruleOneofCase_ = 0;
                        this.ruleOneof_ = null;
                        onChanged();
                    }
                } else {
                    if (this.ruleOneofCase_ == 1) {
                        this.ruleOneofCase_ = 0;
                        this.ruleOneof_ = null;
                    }
                    t1Var.b();
                }
                return this;
            }

            public Builder clearIosLogRule() {
                t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> t1Var = this.iosLogRuleBuilder_;
                if (t1Var == null) {
                    if (this.ruleOneofCase_ == 2) {
                        this.ruleOneofCase_ = 0;
                        this.ruleOneof_ = null;
                        onChanged();
                    }
                } else {
                    if (this.ruleOneofCase_ == 2) {
                        this.ruleOneofCase_ = 0;
                        this.ruleOneof_ = null;
                    }
                    t1Var.b();
                }
                return this;
            }

            public Builder clearRuleOneof() {
                this.ruleOneofCase_ = 0;
                this.ruleOneof_ = null;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public GeneralRule getGeneralRule() {
                t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> t1Var = this.generalRuleBuilder_;
                if (t1Var == null) {
                    if (this.ruleOneofCase_ == 1) {
                        return (GeneralRule) this.ruleOneof_;
                    }
                    return GeneralRule.getDefaultInstance();
                } else if (this.ruleOneofCase_ == 1) {
                    return t1Var.e();
                } else {
                    return GeneralRule.getDefaultInstance();
                }
            }

            public GeneralRule.Builder getGeneralRuleBuilder() {
                return getGeneralRuleFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public GeneralRuleOrBuilder getGeneralRuleOrBuilder() {
                t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> t1Var;
                int i10 = this.ruleOneofCase_;
                if (i10 == 1 && (t1Var = this.generalRuleBuilder_) != null) {
                    return t1Var.f();
                }
                if (i10 == 1) {
                    return (GeneralRule) this.ruleOneof_;
                }
                return GeneralRule.getDefaultInstance();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public IOSLogRule getIosLogRule() {
                t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> t1Var = this.iosLogRuleBuilder_;
                if (t1Var == null) {
                    if (this.ruleOneofCase_ == 2) {
                        return (IOSLogRule) this.ruleOneof_;
                    }
                    return IOSLogRule.getDefaultInstance();
                } else if (this.ruleOneofCase_ == 2) {
                    return t1Var.e();
                } else {
                    return IOSLogRule.getDefaultInstance();
                }
            }

            public IOSLogRule.Builder getIosLogRuleBuilder() {
                return getIosLogRuleFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public IOSLogRuleOrBuilder getIosLogRuleOrBuilder() {
                t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> t1Var;
                int i10 = this.ruleOneofCase_;
                if (i10 == 2 && (t1Var = this.iosLogRuleBuilder_) != null) {
                    return t1Var.f();
                }
                if (i10 == 2) {
                    return (IOSLogRule) this.ruleOneof_;
                }
                return IOSLogRule.getDefaultInstance();
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public RuleOneofCase getRuleOneofCase() {
                return RuleOneofCase.forNumber(this.ruleOneofCase_);
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public boolean hasGeneralRule() {
                if (this.ruleOneofCase_ == 1) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.sdk.Reader.RuleOrBuilder
            public boolean hasIosLogRule() {
                if (this.ruleOneofCase_ == 2) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable.d(Rule.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeGeneralRule(GeneralRule generalRule) {
                t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> t1Var = this.generalRuleBuilder_;
                if (t1Var == null) {
                    if (this.ruleOneofCase_ == 1 && this.ruleOneof_ != GeneralRule.getDefaultInstance()) {
                        this.ruleOneof_ = GeneralRule.newBuilder((GeneralRule) this.ruleOneof_).mergeFrom(generalRule).buildPartial();
                    } else {
                        this.ruleOneof_ = generalRule;
                    }
                    onChanged();
                } else {
                    if (this.ruleOneofCase_ == 1) {
                        t1Var.g(generalRule);
                    }
                    this.generalRuleBuilder_.i(generalRule);
                }
                this.ruleOneofCase_ = 1;
                return this;
            }

            public Builder mergeIosLogRule(IOSLogRule iOSLogRule) {
                t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> t1Var = this.iosLogRuleBuilder_;
                if (t1Var == null) {
                    if (this.ruleOneofCase_ == 2 && this.ruleOneof_ != IOSLogRule.getDefaultInstance()) {
                        this.ruleOneof_ = IOSLogRule.newBuilder((IOSLogRule) this.ruleOneof_).mergeFrom(iOSLogRule).buildPartial();
                    } else {
                        this.ruleOneof_ = iOSLogRule;
                    }
                    onChanged();
                } else {
                    if (this.ruleOneofCase_ == 2) {
                        t1Var.g(iOSLogRule);
                    }
                    this.iosLogRuleBuilder_.i(iOSLogRule);
                }
                this.ruleOneofCase_ = 2;
                return this;
            }

            public Builder setGeneralRule(GeneralRule generalRule) {
                t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> t1Var = this.generalRuleBuilder_;
                if (t1Var == null) {
                    generalRule.getClass();
                    this.ruleOneof_ = generalRule;
                    onChanged();
                } else {
                    t1Var.i(generalRule);
                }
                this.ruleOneofCase_ = 1;
                return this;
            }

            public Builder setIosLogRule(IOSLogRule iOSLogRule) {
                t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> t1Var = this.iosLogRuleBuilder_;
                if (t1Var == null) {
                    iOSLogRule.getClass();
                    this.ruleOneof_ = iOSLogRule;
                    onChanged();
                } else {
                    t1Var.i(iOSLogRule);
                }
                this.ruleOneofCase_ = 2;
                return this;
            }

            private Builder() {
                this.ruleOneofCase_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Rule build() {
                Rule buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public Rule buildPartial() {
                Rule rule = new Rule(this);
                if (this.ruleOneofCase_ == 1) {
                    t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> t1Var = this.generalRuleBuilder_;
                    if (t1Var == null) {
                        rule.ruleOneof_ = this.ruleOneof_;
                    } else {
                        rule.ruleOneof_ = t1Var.a();
                    }
                }
                if (this.ruleOneofCase_ == 2) {
                    t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> t1Var2 = this.iosLogRuleBuilder_;
                    if (t1Var2 == null) {
                        rule.ruleOneof_ = this.ruleOneof_;
                    } else {
                        rule.ruleOneof_ = t1Var2.a();
                    }
                }
                rule.ruleOneofCase_ = this.ruleOneofCase_;
                onBuilt();
                return rule;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Rule mo4630getDefaultInstanceForType() {
                return Rule.getDefaultInstance();
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
                this.ruleOneofCase_ = 0;
                this.ruleOneof_ = null;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.ruleOneofCase_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof Rule) {
                    return mergeFrom((Rule) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setGeneralRule(GeneralRule.Builder builder) {
                t1<GeneralRule, GeneralRule.Builder, GeneralRuleOrBuilder> t1Var = this.generalRuleBuilder_;
                if (t1Var == null) {
                    this.ruleOneof_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                this.ruleOneofCase_ = 1;
                return this;
            }

            public Builder setIosLogRule(IOSLogRule.Builder builder) {
                t1<IOSLogRule, IOSLogRule.Builder, IOSLogRuleOrBuilder> t1Var = this.iosLogRuleBuilder_;
                if (t1Var == null) {
                    this.ruleOneof_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                this.ruleOneofCase_ = 2;
                return this;
            }

            public Builder mergeFrom(Rule rule) {
                if (rule == Rule.getDefaultInstance()) {
                    return this;
                }
                int i10 = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$sdk$Reader$Rule$RuleOneofCase[rule.getRuleOneofCase().ordinal()];
                if (i10 == 1) {
                    mergeGeneralRule(rule.getGeneralRule());
                } else if (i10 == 2) {
                    mergeIosLogRule(rule.getIosLogRule());
                }
                mergeUnknownFields(((GeneratedMessageV3) rule).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.sdk.Reader.Rule.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Reader.Rule.access$4100()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.sdk.Reader$Rule r3 = (io.bidmachine.protobuf.sdk.Reader.Rule) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.sdk.Reader$Rule r4 = (io.bidmachine.protobuf.sdk.Reader.Rule) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Rule.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Reader$Rule$Builder");
            }
        }

        public static Builder newBuilder(Rule rule) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(rule);
        }

        public static Rule parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private Rule(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.ruleOneofCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Rule parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (Rule) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static Rule parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Rule mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static Rule parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Rule parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        private Rule() {
            this.ruleOneofCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Rule parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static Rule parseFrom(InputStream inputStream) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Rule(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                GeneralRule.Builder builder = this.ruleOneofCase_ == 1 ? ((GeneralRule) this.ruleOneof_).toBuilder() : null;
                                MessageLite A = nVar.A(GeneralRule.parser(), yVar);
                                this.ruleOneof_ = A;
                                if (builder != null) {
                                    builder.mergeFrom((GeneralRule) A);
                                    this.ruleOneof_ = builder.buildPartial();
                                }
                                this.ruleOneofCase_ = 1;
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                IOSLogRule.Builder builder2 = this.ruleOneofCase_ == 2 ? ((IOSLogRule) this.ruleOneof_).toBuilder() : null;
                                MessageLite A2 = nVar.A(IOSLogRule.parser(), yVar);
                                this.ruleOneof_ = A2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((IOSLogRule) A2);
                                    this.ruleOneof_ = builder2.buildPartial();
                                }
                                this.ruleOneofCase_ = 2;
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

        public static Rule parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static Rule parseFrom(n nVar) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static Rule parseFrom(n nVar, y yVar) throws IOException {
            return (Rule) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface RuleOrBuilder extends MessageOrBuilder {
        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        Rule.GeneralRule getGeneralRule();

        Rule.GeneralRuleOrBuilder getGeneralRuleOrBuilder();

        Rule.IOSLogRule getIosLogRule();

        Rule.IOSLogRuleOrBuilder getIosLogRuleOrBuilder();

        Rule.RuleOneofCase getRuleOneofCase();

        boolean hasGeneralRule();

        boolean hasIosLogRule();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static Reader getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Reader parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Reader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Reader parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Reader> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Reader)) {
            return super.equals(obj);
        }
        Reader reader = (Reader) obj;
        if (!getName().equals(reader.getName()) || hasTimestamp() != reader.hasTimestamp()) {
            return false;
        }
        if ((!hasTimestamp() || getTimestamp().equals(reader.getTimestamp())) && getRecordsList().equals(reader.getRecordsList()) && this.unknownFields.equals(reader.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
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
    public j1<Reader> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public Record getRecords(int i10) {
        return this.records_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public int getRecordsCount() {
        return this.records_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public List<Record> getRecordsList() {
        return this.records_;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public RecordOrBuilder getRecordsOrBuilder(int i10) {
        return this.records_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
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
        if (this.timestamp_ != null) {
            i10 += CodedOutputStream.G(2, getTimestamp());
        }
        for (int i12 = 0; i12 < this.records_.size(); i12++) {
            i10 += CodedOutputStream.G(3, this.records_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public Timestamp getTimestamp() {
        Timestamp timestamp = this.timestamp_;
        if (timestamp == null) {
            return Timestamp.getDefaultInstance();
        }
        return timestamp;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
    public c2 getTimestampOrBuilder() {
        return getTimestamp();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasTimestamp()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getTimestamp().hashCode();
        }
        if (getRecordsCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRecordsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable.d(Reader.class, Builder.class);
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
        return new Reader();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (this.timestamp_ != null) {
            codedOutputStream.L0(2, getTimestamp());
        }
        for (int i10 = 0; i10 < this.records_.size(); i10++) {
            codedOutputStream.L0(3, this.records_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements ReaderOrBuilder {
        private int bitField0_;
        private Object name_;
        private p1<Record, Record.Builder, RecordOrBuilder> recordsBuilder_;
        private List<Record> records_;
        private t1<Timestamp, Timestamp.Builder, c2> timestampBuilder_;
        private Timestamp timestamp_;

        private void ensureRecordsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.records_ = new ArrayList(this.records_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor;
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

        private t1<Timestamp, Timestamp.Builder, c2> getTimestampFieldBuilder() {
            if (this.timestampBuilder_ == null) {
                this.timestampBuilder_ = new t1<>(getTimestamp(), getParentForChildren(), isClean());
                this.timestamp_ = null;
            }
            return this.timestampBuilder_;
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
            this.name_ = Reader.getDefaultInstance().getName();
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
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
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

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public int getRecordsCount() {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                return this.records_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public List<Record> getRecordsList() {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.records_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public RecordOrBuilder getRecordsOrBuilder(int i10) {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                return this.records_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public List<? extends RecordOrBuilder> getRecordsOrBuilderList() {
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.records_);
        }

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
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

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
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

        @Override // io.bidmachine.protobuf.sdk.ReaderOrBuilder
        public boolean hasTimestamp() {
            if (this.timestampBuilder_ == null && this.timestamp_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKAnalyticV2Proto.internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable.d(Reader.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
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
            this.name_ = "";
            this.records_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Reader build() {
            Reader buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Reader buildPartial() {
            Reader reader = new Reader(this);
            reader.name_ = this.name_;
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.timestampBuilder_;
            if (t1Var == null) {
                reader.timestamp_ = this.timestamp_;
            } else {
                reader.timestamp_ = t1Var.a();
            }
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var != null) {
                reader.records_ = p1Var.f();
            } else {
                if ((this.bitField0_ & 1) != 0) {
                    this.records_ = Collections.unmodifiableList(this.records_);
                    this.bitField0_ &= -2;
                }
                reader.records_ = this.records_;
            }
            onBuilt();
            return reader;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Reader mo4630getDefaultInstanceForType() {
            return Reader.getDefaultInstance();
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
            if (this.timestampBuilder_ == null) {
                this.timestamp_ = null;
            } else {
                this.timestamp_ = null;
                this.timestampBuilder_ = null;
            }
            p1<Record, Record.Builder, RecordOrBuilder> p1Var = this.recordsBuilder_;
            if (p1Var == null) {
                this.records_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                p1Var.g();
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
            if (message instanceof Reader) {
                return mergeFrom((Reader) message);
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

        public Builder mergeFrom(Reader reader) {
            if (reader == Reader.getDefaultInstance()) {
                return this;
            }
            if (!reader.getName().isEmpty()) {
                this.name_ = reader.name_;
                onChanged();
            }
            if (reader.hasTimestamp()) {
                mergeTimestamp(reader.getTimestamp());
            }
            if (this.recordsBuilder_ == null) {
                if (!reader.records_.isEmpty()) {
                    if (this.records_.isEmpty()) {
                        this.records_ = reader.records_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureRecordsIsMutable();
                        this.records_.addAll(reader.records_);
                    }
                    onChanged();
                }
            } else if (!reader.records_.isEmpty()) {
                if (!this.recordsBuilder_.t()) {
                    this.recordsBuilder_.a(reader.records_);
                } else {
                    this.recordsBuilder_.h();
                    this.recordsBuilder_ = null;
                    this.records_ = reader.records_;
                    this.bitField0_ &= -2;
                    this.recordsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getRecordsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) reader).unknownFields);
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
        public io.bidmachine.protobuf.sdk.Reader.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Reader.access$6200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Reader r3 = (io.bidmachine.protobuf.sdk.Reader) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Reader r4 = (io.bidmachine.protobuf.sdk.Reader) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Reader.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Reader$Builder");
        }
    }

    public static Builder newBuilder(Reader reader) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(reader);
    }

    public static Reader parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Reader(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Reader parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Reader) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Reader parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Reader mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Reader parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Reader() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.records_ = Collections.emptyList();
    }

    public static Reader parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Reader parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Reader parseFrom(InputStream inputStream) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Reader(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                Timestamp timestamp = this.timestamp_;
                                Timestamp.Builder builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                                this.timestamp_ = timestamp2;
                                if (builder != null) {
                                    builder.mergeFrom(timestamp2);
                                    this.timestamp_ = builder.buildPartial();
                                }
                            } else if (K != 26) {
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
                    }
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

    public static Reader parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Reader parseFrom(n nVar) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Reader parseFrom(n nVar, y yVar) throws IOException {
        return (Reader) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
