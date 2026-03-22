package io.bidmachine.protobuf.analytics.events;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.w1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.sdk.Error;
import io.bidmachine.protobuf.sdk.ErrorOrBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class SDKEvent extends GeneratedMessageV3 implements SDKEventOrBuilder {
    public static final int ACTION_FIELD_NUMBER = 1;
    public static final int AD_TYPE_FIELD_NUMBER = 6;
    public static final int CONTEXT_FIELD_NUMBER = 2;
    public static final int CUSTOM_PARAMS_FIELD_NUMBER = 9;
    public static final int ERROR_FIELD_NUMBER = 8;
    public static final int FINISH_TIME_FIELD_NUMBER = 5;
    public static final int NETWORK_FIELD_NUMBER = 3;
    public static final int PRICE_FIELD_NUMBER = 7;
    public static final int START_TIME_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private int action_;
    private StringValue adType_;
    private volatile Object context_;
    private Struct customParams_;
    private Error error_;
    private Timestamp finishTime_;
    private byte memoizedIsInitialized;
    private StringValue network_;
    private double price_;
    private Timestamp startTime_;
    private static final SDKEvent DEFAULT_INSTANCE = new SDKEvent();
    private static final j1<SDKEvent> PARSER = new b<SDKEvent>() { // from class: io.bidmachine.protobuf.analytics.events.SDKEvent.1
        @Override // com.explorestack.protobuf.j1
        public SDKEvent parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new SDKEvent(nVar, yVar);
        }
    };

    public static SDKEvent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return EventsProto.internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SDKEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SDKEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SDKEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<SDKEvent> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SDKEvent)) {
            return super.equals(obj);
        }
        SDKEvent sDKEvent = (SDKEvent) obj;
        if (getAction() != sDKEvent.getAction() || !getContext().equals(sDKEvent.getContext()) || hasNetwork() != sDKEvent.hasNetwork()) {
            return false;
        }
        if ((hasNetwork() && !getNetwork().equals(sDKEvent.getNetwork())) || hasStartTime() != sDKEvent.hasStartTime()) {
            return false;
        }
        if ((hasStartTime() && !getStartTime().equals(sDKEvent.getStartTime())) || hasFinishTime() != sDKEvent.hasFinishTime()) {
            return false;
        }
        if ((hasFinishTime() && !getFinishTime().equals(sDKEvent.getFinishTime())) || hasAdType() != sDKEvent.hasAdType()) {
            return false;
        }
        if ((hasAdType() && !getAdType().equals(sDKEvent.getAdType())) || Double.doubleToLongBits(getPrice()) != Double.doubleToLongBits(sDKEvent.getPrice()) || hasError() != sDKEvent.hasError()) {
            return false;
        }
        if ((hasError() && !getError().equals(sDKEvent.getError())) || hasCustomParams() != sDKEvent.hasCustomParams()) {
            return false;
        }
        if ((!hasCustomParams() || getCustomParams().equals(sDKEvent.getCustomParams())) && this.unknownFields.equals(sDKEvent.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public int getAction() {
        return this.action_;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public StringValue getAdType() {
        StringValue stringValue = this.adType_;
        if (stringValue == null) {
            return StringValue.getDefaultInstance();
        }
        return stringValue;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public w1 getAdTypeOrBuilder() {
        return getAdType();
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public String getContext() {
        Object obj = this.context_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.context_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public ByteString getContextBytes() {
        Object obj = this.context_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.context_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public Struct getCustomParams() {
        Struct struct = this.customParams_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public x1 getCustomParamsOrBuilder() {
        return getCustomParams();
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public Error getError() {
        Error error = this.error_;
        if (error == null) {
            return Error.getDefaultInstance();
        }
        return error;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public ErrorOrBuilder getErrorOrBuilder() {
        return getError();
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public Timestamp getFinishTime() {
        Timestamp timestamp = this.finishTime_;
        if (timestamp == null) {
            return Timestamp.getDefaultInstance();
        }
        return timestamp;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public c2 getFinishTimeOrBuilder() {
        return getFinishTime();
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public StringValue getNetwork() {
        StringValue stringValue = this.network_;
        if (stringValue == null) {
            return StringValue.getDefaultInstance();
        }
        return stringValue;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public w1 getNetworkOrBuilder() {
        return getNetwork();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<SDKEvent> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public double getPrice() {
        return this.price_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        int i12 = this.action_;
        if (i12 != 0) {
            i10 = CodedOutputStream.Y(1, i12);
        } else {
            i10 = 0;
        }
        if (!getContextBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.context_);
        }
        if (this.network_ != null) {
            i10 += CodedOutputStream.G(3, getNetwork());
        }
        if (this.startTime_ != null) {
            i10 += CodedOutputStream.G(4, getStartTime());
        }
        if (this.finishTime_ != null) {
            i10 += CodedOutputStream.G(5, getFinishTime());
        }
        if (this.adType_ != null) {
            i10 += CodedOutputStream.G(6, getAdType());
        }
        double d10 = this.price_;
        if (d10 != 0.0d) {
            i10 += CodedOutputStream.j(7, d10);
        }
        if (this.error_ != null) {
            i10 += CodedOutputStream.G(8, getError());
        }
        if (this.customParams_ != null) {
            i10 += CodedOutputStream.G(9, getCustomParams());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public Timestamp getStartTime() {
        Timestamp timestamp = this.startTime_;
        if (timestamp == null) {
            return Timestamp.getDefaultInstance();
        }
        return timestamp;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public c2 getStartTimeOrBuilder() {
        return getStartTime();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public boolean hasAdType() {
        if (this.adType_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public boolean hasCustomParams() {
        if (this.customParams_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public boolean hasError() {
        if (this.error_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public boolean hasFinishTime() {
        if (this.finishTime_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public boolean hasNetwork() {
        if (this.network_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
    public boolean hasStartTime() {
        if (this.startTime_ != null) {
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAction()) * 37) + 2) * 53) + getContext().hashCode();
        if (hasNetwork()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getNetwork().hashCode();
        }
        if (hasStartTime()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getStartTime().hashCode();
        }
        if (hasFinishTime()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getFinishTime().hashCode();
        }
        if (hasAdType()) {
            hashCode = (((hashCode * 37) + 6) * 53) + getAdType().hashCode();
        }
        int i11 = (((hashCode * 37) + 7) * 53) + i0.i(Double.doubleToLongBits(getPrice()));
        if (hasError()) {
            i11 = (((i11 * 37) + 8) * 53) + getError().hashCode();
        }
        if (hasCustomParams()) {
            i11 = (((i11 * 37) + 9) * 53) + getCustomParams().hashCode();
        }
        int hashCode2 = (i11 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return EventsProto.internal_static_bidmachine_protobuf_analytics_events_SDKEvent_fieldAccessorTable.d(SDKEvent.class, Builder.class);
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
        return new SDKEvent();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        int i10 = this.action_;
        if (i10 != 0) {
            codedOutputStream.c1(1, i10);
        }
        if (!getContextBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.context_);
        }
        if (this.network_ != null) {
            codedOutputStream.L0(3, getNetwork());
        }
        if (this.startTime_ != null) {
            codedOutputStream.L0(4, getStartTime());
        }
        if (this.finishTime_ != null) {
            codedOutputStream.L0(5, getFinishTime());
        }
        if (this.adType_ != null) {
            codedOutputStream.L0(6, getAdType());
        }
        double d10 = this.price_;
        if (d10 != 0.0d) {
            codedOutputStream.t0(7, d10);
        }
        if (this.error_ != null) {
            codedOutputStream.L0(8, getError());
        }
        if (this.customParams_ != null) {
            codedOutputStream.L0(9, getCustomParams());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements SDKEventOrBuilder {
        private int action_;
        private t1<StringValue, StringValue.Builder, w1> adTypeBuilder_;
        private StringValue adType_;
        private Object context_;
        private t1<Struct, Struct.Builder, x1> customParamsBuilder_;
        private Struct customParams_;
        private t1<Error, Error.Builder, ErrorOrBuilder> errorBuilder_;
        private Error error_;
        private t1<Timestamp, Timestamp.Builder, c2> finishTimeBuilder_;
        private Timestamp finishTime_;
        private t1<StringValue, StringValue.Builder, w1> networkBuilder_;
        private StringValue network_;
        private double price_;
        private t1<Timestamp, Timestamp.Builder, c2> startTimeBuilder_;
        private Timestamp startTime_;

        private t1<StringValue, StringValue.Builder, w1> getAdTypeFieldBuilder() {
            if (this.adTypeBuilder_ == null) {
                this.adTypeBuilder_ = new t1<>(getAdType(), getParentForChildren(), isClean());
                this.adType_ = null;
            }
            return this.adTypeBuilder_;
        }

        private t1<Struct, Struct.Builder, x1> getCustomParamsFieldBuilder() {
            if (this.customParamsBuilder_ == null) {
                this.customParamsBuilder_ = new t1<>(getCustomParams(), getParentForChildren(), isClean());
                this.customParams_ = null;
            }
            return this.customParamsBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return EventsProto.internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor;
        }

        private t1<Error, Error.Builder, ErrorOrBuilder> getErrorFieldBuilder() {
            if (this.errorBuilder_ == null) {
                this.errorBuilder_ = new t1<>(getError(), getParentForChildren(), isClean());
                this.error_ = null;
            }
            return this.errorBuilder_;
        }

        private t1<Timestamp, Timestamp.Builder, c2> getFinishTimeFieldBuilder() {
            if (this.finishTimeBuilder_ == null) {
                this.finishTimeBuilder_ = new t1<>(getFinishTime(), getParentForChildren(), isClean());
                this.finishTime_ = null;
            }
            return this.finishTimeBuilder_;
        }

        private t1<StringValue, StringValue.Builder, w1> getNetworkFieldBuilder() {
            if (this.networkBuilder_ == null) {
                this.networkBuilder_ = new t1<>(getNetwork(), getParentForChildren(), isClean());
                this.network_ = null;
            }
            return this.networkBuilder_;
        }

        private t1<Timestamp, Timestamp.Builder, c2> getStartTimeFieldBuilder() {
            if (this.startTimeBuilder_ == null) {
                this.startTimeBuilder_ = new t1<>(getStartTime(), getParentForChildren(), isClean());
                this.startTime_ = null;
            }
            return this.startTimeBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAction() {
            this.action_ = 0;
            onChanged();
            return this;
        }

        public Builder clearAdType() {
            if (this.adTypeBuilder_ == null) {
                this.adType_ = null;
                onChanged();
            } else {
                this.adType_ = null;
                this.adTypeBuilder_ = null;
            }
            return this;
        }

        public Builder clearContext() {
            this.context_ = SDKEvent.getDefaultInstance().getContext();
            onChanged();
            return this;
        }

        public Builder clearCustomParams() {
            if (this.customParamsBuilder_ == null) {
                this.customParams_ = null;
                onChanged();
            } else {
                this.customParams_ = null;
                this.customParamsBuilder_ = null;
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

        public Builder clearFinishTime() {
            if (this.finishTimeBuilder_ == null) {
                this.finishTime_ = null;
                onChanged();
            } else {
                this.finishTime_ = null;
                this.finishTimeBuilder_ = null;
            }
            return this;
        }

        public Builder clearNetwork() {
            if (this.networkBuilder_ == null) {
                this.network_ = null;
                onChanged();
            } else {
                this.network_ = null;
                this.networkBuilder_ = null;
            }
            return this;
        }

        public Builder clearPrice() {
            this.price_ = 0.0d;
            onChanged();
            return this;
        }

        public Builder clearStartTime() {
            if (this.startTimeBuilder_ == null) {
                this.startTime_ = null;
                onChanged();
            } else {
                this.startTime_ = null;
                this.startTimeBuilder_ = null;
            }
            return this;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public int getAction() {
            return this.action_;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public StringValue getAdType() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.adTypeBuilder_;
            if (t1Var == null) {
                StringValue stringValue = this.adType_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }
            return t1Var.e();
        }

        public StringValue.Builder getAdTypeBuilder() {
            onChanged();
            return getAdTypeFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public w1 getAdTypeOrBuilder() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.adTypeBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            StringValue stringValue = this.adType_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public String getContext() {
            Object obj = this.context_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.context_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public ByteString getContextBytes() {
            Object obj = this.context_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.context_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public Struct getCustomParams() {
            t1<Struct, Struct.Builder, x1> t1Var = this.customParamsBuilder_;
            if (t1Var == null) {
                Struct struct = this.customParams_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getCustomParamsBuilder() {
            onChanged();
            return getCustomParamsFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public x1 getCustomParamsOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.customParamsBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.customParams_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return EventsProto.internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
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

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
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

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public Timestamp getFinishTime() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.finishTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp = this.finishTime_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }
            return t1Var.e();
        }

        public Timestamp.Builder getFinishTimeBuilder() {
            onChanged();
            return getFinishTimeFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public c2 getFinishTimeOrBuilder() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.finishTimeBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Timestamp timestamp = this.finishTime_;
            if (timestamp == null) {
                return Timestamp.getDefaultInstance();
            }
            return timestamp;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public StringValue getNetwork() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.networkBuilder_;
            if (t1Var == null) {
                StringValue stringValue = this.network_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }
            return t1Var.e();
        }

        public StringValue.Builder getNetworkBuilder() {
            onChanged();
            return getNetworkFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public w1 getNetworkOrBuilder() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.networkBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            StringValue stringValue = this.network_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public double getPrice() {
            return this.price_;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public Timestamp getStartTime() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.startTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp = this.startTime_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }
            return t1Var.e();
        }

        public Timestamp.Builder getStartTimeBuilder() {
            onChanged();
            return getStartTimeFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public c2 getStartTimeOrBuilder() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.startTimeBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Timestamp timestamp = this.startTime_;
            if (timestamp == null) {
                return Timestamp.getDefaultInstance();
            }
            return timestamp;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public boolean hasAdType() {
            if (this.adTypeBuilder_ == null && this.adType_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public boolean hasCustomParams() {
            if (this.customParamsBuilder_ == null && this.customParams_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public boolean hasError() {
            if (this.errorBuilder_ == null && this.error_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public boolean hasFinishTime() {
            if (this.finishTimeBuilder_ == null && this.finishTime_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public boolean hasNetwork() {
            if (this.networkBuilder_ == null && this.network_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.analytics.events.SDKEventOrBuilder
        public boolean hasStartTime() {
            if (this.startTimeBuilder_ == null && this.startTime_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return EventsProto.internal_static_bidmachine_protobuf_analytics_events_SDKEvent_fieldAccessorTable.d(SDKEvent.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeAdType(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.adTypeBuilder_;
            if (t1Var == null) {
                StringValue stringValue2 = this.adType_;
                if (stringValue2 != null) {
                    this.adType_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                } else {
                    this.adType_ = stringValue;
                }
                onChanged();
            } else {
                t1Var.g(stringValue);
            }
            return this;
        }

        public Builder mergeCustomParams(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.customParamsBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.customParams_;
                if (struct2 != null) {
                    this.customParams_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.customParams_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
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

        public Builder mergeFinishTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.finishTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp2 = this.finishTime_;
                if (timestamp2 != null) {
                    this.finishTime_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                } else {
                    this.finishTime_ = timestamp;
                }
                onChanged();
            } else {
                t1Var.g(timestamp);
            }
            return this;
        }

        public Builder mergeNetwork(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.networkBuilder_;
            if (t1Var == null) {
                StringValue stringValue2 = this.network_;
                if (stringValue2 != null) {
                    this.network_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                } else {
                    this.network_ = stringValue;
                }
                onChanged();
            } else {
                t1Var.g(stringValue);
            }
            return this;
        }

        public Builder mergeStartTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.startTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp2 = this.startTime_;
                if (timestamp2 != null) {
                    this.startTime_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                } else {
                    this.startTime_ = timestamp;
                }
                onChanged();
            } else {
                t1Var.g(timestamp);
            }
            return this;
        }

        public Builder setAction(int i10) {
            this.action_ = i10;
            onChanged();
            return this;
        }

        public Builder setAdType(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.adTypeBuilder_;
            if (t1Var == null) {
                stringValue.getClass();
                this.adType_ = stringValue;
                onChanged();
            } else {
                t1Var.i(stringValue);
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

        public Builder setCustomParams(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.customParamsBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.customParams_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
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

        public Builder setFinishTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.finishTimeBuilder_;
            if (t1Var == null) {
                timestamp.getClass();
                this.finishTime_ = timestamp;
                onChanged();
            } else {
                t1Var.i(timestamp);
            }
            return this;
        }

        public Builder setNetwork(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.networkBuilder_;
            if (t1Var == null) {
                stringValue.getClass();
                this.network_ = stringValue;
                onChanged();
            } else {
                t1Var.i(stringValue);
            }
            return this;
        }

        public Builder setPrice(double d10) {
            this.price_ = d10;
            onChanged();
            return this;
        }

        public Builder setStartTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.startTimeBuilder_;
            if (t1Var == null) {
                timestamp.getClass();
                this.startTime_ = timestamp;
                onChanged();
            } else {
                t1Var.i(timestamp);
            }
            return this;
        }

        private Builder() {
            this.context_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SDKEvent build() {
            SDKEvent buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SDKEvent buildPartial() {
            SDKEvent sDKEvent = new SDKEvent(this);
            sDKEvent.action_ = this.action_;
            sDKEvent.context_ = this.context_;
            t1<StringValue, StringValue.Builder, w1> t1Var = this.networkBuilder_;
            if (t1Var == null) {
                sDKEvent.network_ = this.network_;
            } else {
                sDKEvent.network_ = t1Var.a();
            }
            t1<Timestamp, Timestamp.Builder, c2> t1Var2 = this.startTimeBuilder_;
            if (t1Var2 == null) {
                sDKEvent.startTime_ = this.startTime_;
            } else {
                sDKEvent.startTime_ = t1Var2.a();
            }
            t1<Timestamp, Timestamp.Builder, c2> t1Var3 = this.finishTimeBuilder_;
            if (t1Var3 == null) {
                sDKEvent.finishTime_ = this.finishTime_;
            } else {
                sDKEvent.finishTime_ = t1Var3.a();
            }
            t1<StringValue, StringValue.Builder, w1> t1Var4 = this.adTypeBuilder_;
            if (t1Var4 == null) {
                sDKEvent.adType_ = this.adType_;
            } else {
                sDKEvent.adType_ = t1Var4.a();
            }
            sDKEvent.price_ = this.price_;
            t1<Error, Error.Builder, ErrorOrBuilder> t1Var5 = this.errorBuilder_;
            if (t1Var5 == null) {
                sDKEvent.error_ = this.error_;
            } else {
                sDKEvent.error_ = t1Var5.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var6 = this.customParamsBuilder_;
            if (t1Var6 == null) {
                sDKEvent.customParams_ = this.customParams_;
            } else {
                sDKEvent.customParams_ = t1Var6.a();
            }
            onBuilt();
            return sDKEvent;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public SDKEvent mo4630getDefaultInstanceForType() {
            return SDKEvent.getDefaultInstance();
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
            this.action_ = 0;
            this.context_ = "";
            if (this.networkBuilder_ == null) {
                this.network_ = null;
            } else {
                this.network_ = null;
                this.networkBuilder_ = null;
            }
            if (this.startTimeBuilder_ == null) {
                this.startTime_ = null;
            } else {
                this.startTime_ = null;
                this.startTimeBuilder_ = null;
            }
            if (this.finishTimeBuilder_ == null) {
                this.finishTime_ = null;
            } else {
                this.finishTime_ = null;
                this.finishTimeBuilder_ = null;
            }
            if (this.adTypeBuilder_ == null) {
                this.adType_ = null;
            } else {
                this.adType_ = null;
                this.adTypeBuilder_ = null;
            }
            this.price_ = 0.0d;
            if (this.errorBuilder_ == null) {
                this.error_ = null;
            } else {
                this.error_ = null;
                this.errorBuilder_ = null;
            }
            if (this.customParamsBuilder_ == null) {
                this.customParams_ = null;
            } else {
                this.customParams_ = null;
                this.customParamsBuilder_ = null;
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.context_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder setAdType(StringValue.Builder builder) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.adTypeBuilder_;
            if (t1Var == null) {
                this.adType_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setCustomParams(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.customParamsBuilder_;
            if (t1Var == null) {
                this.customParams_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
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

        public Builder setFinishTime(Timestamp.Builder builder) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.finishTimeBuilder_;
            if (t1Var == null) {
                this.finishTime_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setNetwork(StringValue.Builder builder) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.networkBuilder_;
            if (t1Var == null) {
                this.network_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setStartTime(Timestamp.Builder builder) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.startTimeBuilder_;
            if (t1Var == null) {
                this.startTime_ = builder.build();
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
            if (message instanceof SDKEvent) {
                return mergeFrom((SDKEvent) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(SDKEvent sDKEvent) {
            if (sDKEvent == SDKEvent.getDefaultInstance()) {
                return this;
            }
            if (sDKEvent.getAction() != 0) {
                setAction(sDKEvent.getAction());
            }
            if (!sDKEvent.getContext().isEmpty()) {
                this.context_ = sDKEvent.context_;
                onChanged();
            }
            if (sDKEvent.hasNetwork()) {
                mergeNetwork(sDKEvent.getNetwork());
            }
            if (sDKEvent.hasStartTime()) {
                mergeStartTime(sDKEvent.getStartTime());
            }
            if (sDKEvent.hasFinishTime()) {
                mergeFinishTime(sDKEvent.getFinishTime());
            }
            if (sDKEvent.hasAdType()) {
                mergeAdType(sDKEvent.getAdType());
            }
            if (sDKEvent.getPrice() != 0.0d) {
                setPrice(sDKEvent.getPrice());
            }
            if (sDKEvent.hasError()) {
                mergeError(sDKEvent.getError());
            }
            if (sDKEvent.hasCustomParams()) {
                mergeCustomParams(sDKEvent.getCustomParams());
            }
            mergeUnknownFields(((GeneratedMessageV3) sDKEvent).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.analytics.events.SDKEvent.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.analytics.events.SDKEvent.access$1400()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.analytics.events.SDKEvent r3 = (io.bidmachine.protobuf.analytics.events.SDKEvent) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.analytics.events.SDKEvent r4 = (io.bidmachine.protobuf.analytics.events.SDKEvent) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.events.SDKEvent.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.analytics.events.SDKEvent$Builder");
        }
    }

    public static Builder newBuilder(SDKEvent sDKEvent) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(sDKEvent);
    }

    public static SDKEvent parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private SDKEvent(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SDKEvent parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (SDKEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static SDKEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public SDKEvent mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static SDKEvent parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private SDKEvent() {
        this.memoizedIsInitialized = (byte) -1;
        this.context_ = "";
    }

    public static SDKEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static SDKEvent parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static SDKEvent parseFrom(InputStream inputStream) throws IOException {
        return (SDKEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private SDKEvent(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.action_ = nVar.L();
                        } else if (K != 18) {
                            if (K == 26) {
                                StringValue stringValue = this.network_;
                                StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                StringValue stringValue2 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                this.network_ = stringValue2;
                                if (builder != null) {
                                    builder.mergeFrom(stringValue2);
                                    this.network_ = builder.buildPartial();
                                }
                            } else if (K == 34) {
                                Timestamp timestamp = this.startTime_;
                                Timestamp.Builder builder2 = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                                this.startTime_ = timestamp2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(timestamp2);
                                    this.startTime_ = builder2.buildPartial();
                                }
                            } else if (K == 42) {
                                Timestamp timestamp3 = this.finishTime_;
                                Timestamp.Builder builder3 = timestamp3 != null ? timestamp3.toBuilder() : null;
                                Timestamp timestamp4 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                                this.finishTime_ = timestamp4;
                                if (builder3 != null) {
                                    builder3.mergeFrom(timestamp4);
                                    this.finishTime_ = builder3.buildPartial();
                                }
                            } else if (K == 50) {
                                StringValue stringValue3 = this.adType_;
                                StringValue.Builder builder4 = stringValue3 != null ? stringValue3.toBuilder() : null;
                                StringValue stringValue4 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                this.adType_ = stringValue4;
                                if (builder4 != null) {
                                    builder4.mergeFrom(stringValue4);
                                    this.adType_ = builder4.buildPartial();
                                }
                            } else if (K == 57) {
                                this.price_ = nVar.s();
                            } else if (K == 66) {
                                Error error = this.error_;
                                Error.Builder builder5 = error != null ? error.toBuilder() : null;
                                Error error2 = (Error) nVar.A(Error.parser(), yVar);
                                this.error_ = error2;
                                if (builder5 != null) {
                                    builder5.mergeFrom(error2);
                                    this.error_ = builder5.buildPartial();
                                }
                            } else if (K != 74) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                Struct struct = this.customParams_;
                                Struct.Builder builder6 = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.customParams_ = struct2;
                                if (builder6 != null) {
                                    builder6.mergeFrom(struct2);
                                    this.customParams_ = builder6.buildPartial();
                                }
                            }
                        } else {
                            this.context_ = nVar.J();
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

    public static SDKEvent parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (SDKEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static SDKEvent parseFrom(n nVar) throws IOException {
        return (SDKEvent) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static SDKEvent parseFrom(n nVar, y yVar) throws IOException {
        return (SDKEvent) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
