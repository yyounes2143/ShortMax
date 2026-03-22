package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.w1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacementOrBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class Placement extends GeneratedMessageV3 implements PlacementOrBuilder {
    public static final int AD_TYPE_FIELD_NUMBER = 1;
    public static final int CUSTOM_DATA_FIELD_NUMBER = 3;
    public static final int HB_PLACEMENT_FIELD_NUMBER = 4;
    public static final int PLACEMENT_ID_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private volatile Object adType_;
    private Struct customData_;
    private HeaderBiddingPlacement hbPlacement_;
    private byte memoizedIsInitialized;
    private StringValue placementId_;
    private static final Placement DEFAULT_INSTANCE = new Placement();
    private static final j1<Placement> PARSER = new b<Placement>() { // from class: io.bidmachine.protobuf.sdk.Placement.1
        @Override // com.explorestack.protobuf.j1
        public Placement parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Placement(nVar, yVar);
        }
    };

    public static Placement getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKProto.internal_static_bidmachine_protobuf_sdk_Placement_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Placement parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Placement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Placement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Placement> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Placement)) {
            return super.equals(obj);
        }
        Placement placement = (Placement) obj;
        if (!getAdType().equals(placement.getAdType()) || hasPlacementId() != placement.hasPlacementId()) {
            return false;
        }
        if ((hasPlacementId() && !getPlacementId().equals(placement.getPlacementId())) || hasCustomData() != placement.hasCustomData()) {
            return false;
        }
        if ((hasCustomData() && !getCustomData().equals(placement.getCustomData())) || hasHbPlacement() != placement.hasHbPlacement()) {
            return false;
        }
        if ((!hasHbPlacement() || getHbPlacement().equals(placement.getHbPlacement())) && this.unknownFields.equals(placement.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public String getAdType() {
        Object obj = this.adType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.adType_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public ByteString getAdTypeBytes() {
        Object obj = this.adType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.adType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public Struct getCustomData() {
        Struct struct = this.customData_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public x1 getCustomDataOrBuilder() {
        return getCustomData();
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public HeaderBiddingPlacement getHbPlacement() {
        HeaderBiddingPlacement headerBiddingPlacement = this.hbPlacement_;
        if (headerBiddingPlacement == null) {
            return HeaderBiddingPlacement.getDefaultInstance();
        }
        return headerBiddingPlacement;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public HeaderBiddingPlacementOrBuilder getHbPlacementOrBuilder() {
        return getHbPlacement();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Placement> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public StringValue getPlacementId() {
        StringValue stringValue = this.placementId_;
        if (stringValue == null) {
            return StringValue.getDefaultInstance();
        }
        return stringValue;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public w1 getPlacementIdOrBuilder() {
        return getPlacementId();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getAdTypeBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.adType_);
        } else {
            i10 = 0;
        }
        if (this.placementId_ != null) {
            i10 += CodedOutputStream.G(2, getPlacementId());
        }
        if (this.customData_ != null) {
            i10 += CodedOutputStream.G(3, getCustomData());
        }
        if (this.hbPlacement_ != null) {
            i10 += CodedOutputStream.G(4, getHbPlacement());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public boolean hasCustomData() {
        if (this.customData_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public boolean hasHbPlacement() {
        if (this.hbPlacement_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
    public boolean hasPlacementId() {
        if (this.placementId_ != null) {
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAdType().hashCode();
        if (hasPlacementId()) {
            hashCode = (((hashCode * 37) + 2) * 53) + getPlacementId().hashCode();
        }
        if (hasCustomData()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getCustomData().hashCode();
        }
        if (hasHbPlacement()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getHbPlacement().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKProto.internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable.d(Placement.class, Builder.class);
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
        return new Placement();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getAdTypeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.adType_);
        }
        if (this.placementId_ != null) {
            codedOutputStream.L0(2, getPlacementId());
        }
        if (this.customData_ != null) {
            codedOutputStream.L0(3, getCustomData());
        }
        if (this.hbPlacement_ != null) {
            codedOutputStream.L0(4, getHbPlacement());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements PlacementOrBuilder {
        private Object adType_;
        private t1<Struct, Struct.Builder, x1> customDataBuilder_;
        private Struct customData_;
        private t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> hbPlacementBuilder_;
        private HeaderBiddingPlacement hbPlacement_;
        private t1<StringValue, StringValue.Builder, w1> placementIdBuilder_;
        private StringValue placementId_;

        private t1<Struct, Struct.Builder, x1> getCustomDataFieldBuilder() {
            if (this.customDataBuilder_ == null) {
                this.customDataBuilder_ = new t1<>(getCustomData(), getParentForChildren(), isClean());
                this.customData_ = null;
            }
            return this.customDataBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKProto.internal_static_bidmachine_protobuf_sdk_Placement_descriptor;
        }

        private t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> getHbPlacementFieldBuilder() {
            if (this.hbPlacementBuilder_ == null) {
                this.hbPlacementBuilder_ = new t1<>(getHbPlacement(), getParentForChildren(), isClean());
                this.hbPlacement_ = null;
            }
            return this.hbPlacementBuilder_;
        }

        private t1<StringValue, StringValue.Builder, w1> getPlacementIdFieldBuilder() {
            if (this.placementIdBuilder_ == null) {
                this.placementIdBuilder_ = new t1<>(getPlacementId(), getParentForChildren(), isClean());
                this.placementId_ = null;
            }
            return this.placementIdBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearAdType() {
            this.adType_ = Placement.getDefaultInstance().getAdType();
            onChanged();
            return this;
        }

        public Builder clearCustomData() {
            if (this.customDataBuilder_ == null) {
                this.customData_ = null;
                onChanged();
            } else {
                this.customData_ = null;
                this.customDataBuilder_ = null;
            }
            return this;
        }

        public Builder clearHbPlacement() {
            if (this.hbPlacementBuilder_ == null) {
                this.hbPlacement_ = null;
                onChanged();
            } else {
                this.hbPlacement_ = null;
                this.hbPlacementBuilder_ = null;
            }
            return this;
        }

        public Builder clearPlacementId() {
            if (this.placementIdBuilder_ == null) {
                this.placementId_ = null;
                onChanged();
            } else {
                this.placementId_ = null;
                this.placementIdBuilder_ = null;
            }
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public String getAdType() {
            Object obj = this.adType_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.adType_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public ByteString getAdTypeBytes() {
            Object obj = this.adType_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.adType_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public Struct getCustomData() {
            t1<Struct, Struct.Builder, x1> t1Var = this.customDataBuilder_;
            if (t1Var == null) {
                Struct struct = this.customData_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getCustomDataBuilder() {
            onChanged();
            return getCustomDataFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public x1 getCustomDataOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.customDataBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.customData_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKProto.internal_static_bidmachine_protobuf_sdk_Placement_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public HeaderBiddingPlacement getHbPlacement() {
            t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> t1Var = this.hbPlacementBuilder_;
            if (t1Var == null) {
                HeaderBiddingPlacement headerBiddingPlacement = this.hbPlacement_;
                if (headerBiddingPlacement == null) {
                    return HeaderBiddingPlacement.getDefaultInstance();
                }
                return headerBiddingPlacement;
            }
            return t1Var.e();
        }

        public HeaderBiddingPlacement.Builder getHbPlacementBuilder() {
            onChanged();
            return getHbPlacementFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public HeaderBiddingPlacementOrBuilder getHbPlacementOrBuilder() {
            t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> t1Var = this.hbPlacementBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            HeaderBiddingPlacement headerBiddingPlacement = this.hbPlacement_;
            if (headerBiddingPlacement == null) {
                return HeaderBiddingPlacement.getDefaultInstance();
            }
            return headerBiddingPlacement;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public StringValue getPlacementId() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.placementIdBuilder_;
            if (t1Var == null) {
                StringValue stringValue = this.placementId_;
                if (stringValue == null) {
                    return StringValue.getDefaultInstance();
                }
                return stringValue;
            }
            return t1Var.e();
        }

        public StringValue.Builder getPlacementIdBuilder() {
            onChanged();
            return getPlacementIdFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public w1 getPlacementIdOrBuilder() {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.placementIdBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            StringValue stringValue = this.placementId_;
            if (stringValue == null) {
                return StringValue.getDefaultInstance();
            }
            return stringValue;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public boolean hasCustomData() {
            if (this.customDataBuilder_ == null && this.customData_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public boolean hasHbPlacement() {
            if (this.hbPlacementBuilder_ == null && this.hbPlacement_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.sdk.PlacementOrBuilder
        public boolean hasPlacementId() {
            if (this.placementIdBuilder_ == null && this.placementId_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKProto.internal_static_bidmachine_protobuf_sdk_Placement_fieldAccessorTable.d(Placement.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeCustomData(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.customDataBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.customData_;
                if (struct2 != null) {
                    this.customData_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.customData_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder mergeHbPlacement(HeaderBiddingPlacement headerBiddingPlacement) {
            t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> t1Var = this.hbPlacementBuilder_;
            if (t1Var == null) {
                HeaderBiddingPlacement headerBiddingPlacement2 = this.hbPlacement_;
                if (headerBiddingPlacement2 != null) {
                    this.hbPlacement_ = HeaderBiddingPlacement.newBuilder(headerBiddingPlacement2).mergeFrom(headerBiddingPlacement).buildPartial();
                } else {
                    this.hbPlacement_ = headerBiddingPlacement;
                }
                onChanged();
            } else {
                t1Var.g(headerBiddingPlacement);
            }
            return this;
        }

        public Builder mergePlacementId(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.placementIdBuilder_;
            if (t1Var == null) {
                StringValue stringValue2 = this.placementId_;
                if (stringValue2 != null) {
                    this.placementId_ = StringValue.newBuilder(stringValue2).mergeFrom(stringValue).buildPartial();
                } else {
                    this.placementId_ = stringValue;
                }
                onChanged();
            } else {
                t1Var.g(stringValue);
            }
            return this;
        }

        public Builder setAdType(String str) {
            str.getClass();
            this.adType_ = str;
            onChanged();
            return this;
        }

        public Builder setAdTypeBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.adType_ = byteString;
            onChanged();
            return this;
        }

        public Builder setCustomData(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.customDataBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.customData_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            return this;
        }

        public Builder setHbPlacement(HeaderBiddingPlacement headerBiddingPlacement) {
            t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> t1Var = this.hbPlacementBuilder_;
            if (t1Var == null) {
                headerBiddingPlacement.getClass();
                this.hbPlacement_ = headerBiddingPlacement;
                onChanged();
            } else {
                t1Var.i(headerBiddingPlacement);
            }
            return this;
        }

        public Builder setPlacementId(StringValue stringValue) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.placementIdBuilder_;
            if (t1Var == null) {
                stringValue.getClass();
                this.placementId_ = stringValue;
                onChanged();
            } else {
                t1Var.i(stringValue);
            }
            return this;
        }

        private Builder() {
            this.adType_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Placement build() {
            Placement buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Placement buildPartial() {
            Placement placement = new Placement(this);
            placement.adType_ = this.adType_;
            t1<StringValue, StringValue.Builder, w1> t1Var = this.placementIdBuilder_;
            if (t1Var == null) {
                placement.placementId_ = this.placementId_;
            } else {
                placement.placementId_ = t1Var.a();
            }
            t1<Struct, Struct.Builder, x1> t1Var2 = this.customDataBuilder_;
            if (t1Var2 == null) {
                placement.customData_ = this.customData_;
            } else {
                placement.customData_ = t1Var2.a();
            }
            t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> t1Var3 = this.hbPlacementBuilder_;
            if (t1Var3 == null) {
                placement.hbPlacement_ = this.hbPlacement_;
            } else {
                placement.hbPlacement_ = t1Var3.a();
            }
            onBuilt();
            return placement;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Placement mo4630getDefaultInstanceForType() {
            return Placement.getDefaultInstance();
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
            this.adType_ = "";
            if (this.placementIdBuilder_ == null) {
                this.placementId_ = null;
            } else {
                this.placementId_ = null;
                this.placementIdBuilder_ = null;
            }
            if (this.customDataBuilder_ == null) {
                this.customData_ = null;
            } else {
                this.customData_ = null;
                this.customDataBuilder_ = null;
            }
            if (this.hbPlacementBuilder_ == null) {
                this.hbPlacement_ = null;
            } else {
                this.hbPlacement_ = null;
                this.hbPlacementBuilder_ = null;
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.adType_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder setCustomData(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.customDataBuilder_;
            if (t1Var == null) {
                this.customData_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setHbPlacement(HeaderBiddingPlacement.Builder builder) {
            t1<HeaderBiddingPlacement, HeaderBiddingPlacement.Builder, HeaderBiddingPlacementOrBuilder> t1Var = this.hbPlacementBuilder_;
            if (t1Var == null) {
                this.hbPlacement_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setPlacementId(StringValue.Builder builder) {
            t1<StringValue, StringValue.Builder, w1> t1Var = this.placementIdBuilder_;
            if (t1Var == null) {
                this.placementId_ = builder.build();
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
            if (message instanceof Placement) {
                return mergeFrom((Placement) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(Placement placement) {
            if (placement == Placement.getDefaultInstance()) {
                return this;
            }
            if (!placement.getAdType().isEmpty()) {
                this.adType_ = placement.adType_;
                onChanged();
            }
            if (placement.hasPlacementId()) {
                mergePlacementId(placement.getPlacementId());
            }
            if (placement.hasCustomData()) {
                mergeCustomData(placement.getCustomData());
            }
            if (placement.hasHbPlacement()) {
                mergeHbPlacement(placement.getHbPlacement());
            }
            mergeUnknownFields(((GeneratedMessageV3) placement).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.Placement.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.Placement.access$900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.Placement r3 = (io.bidmachine.protobuf.sdk.Placement) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.Placement r4 = (io.bidmachine.protobuf.sdk.Placement) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.Placement.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.Placement$Builder");
        }
    }

    public static Builder newBuilder(Placement placement) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(placement);
    }

    public static Placement parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Placement(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Placement parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Placement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Placement mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Placement parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private Placement() {
        this.memoizedIsInitialized = (byte) -1;
        this.adType_ = "";
    }

    public static Placement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static Placement parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Placement parseFrom(InputStream inputStream) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Placement(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int K = nVar.K();
                    if (K != 0) {
                        if (K != 10) {
                            if (K == 18) {
                                StringValue stringValue = this.placementId_;
                                StringValue.Builder builder = stringValue != null ? stringValue.toBuilder() : null;
                                StringValue stringValue2 = (StringValue) nVar.A(StringValue.parser(), yVar);
                                this.placementId_ = stringValue2;
                                if (builder != null) {
                                    builder.mergeFrom(stringValue2);
                                    this.placementId_ = builder.buildPartial();
                                }
                            } else if (K == 26) {
                                Struct struct = this.customData_;
                                Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                                Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                                this.customData_ = struct2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(struct2);
                                    this.customData_ = builder2.buildPartial();
                                }
                            } else if (K != 34) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                HeaderBiddingPlacement headerBiddingPlacement = this.hbPlacement_;
                                HeaderBiddingPlacement.Builder builder3 = headerBiddingPlacement != null ? headerBiddingPlacement.toBuilder() : null;
                                HeaderBiddingPlacement headerBiddingPlacement2 = (HeaderBiddingPlacement) nVar.A(HeaderBiddingPlacement.parser(), yVar);
                                this.hbPlacement_ = headerBiddingPlacement2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(headerBiddingPlacement2);
                                    this.hbPlacement_ = builder3.buildPartial();
                                }
                            }
                        } else {
                            this.adType_ = nVar.J();
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

    public static Placement parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Placement parseFrom(n nVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Placement parseFrom(n nVar, y yVar) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
