package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.d;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.openrtb.Openrtb;
import com.explorestack.protobuf.openrtb.a;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes8.dex */
public final class ResponsePayload extends GeneratedMessageV3 implements ResponsePayloadOrBuilder {
    public static final int CACHE_TIME_FIELD_NUMBER = 1;
    private static final ResponsePayload DEFAULT_INSTANCE = new ResponsePayload();
    private static final j1<ResponsePayload> PARSER = new b<ResponsePayload>() { // from class: io.bidmachine.protobuf.ResponsePayload.1
        @Override // com.explorestack.protobuf.j1
        public ResponsePayload parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new ResponsePayload(nVar, yVar);
        }
    };
    public static final int REQUEST_ITEM_SPEC_FIELD_NUMBER = 4;
    public static final int RESPONSE_CACHE_FIELD_NUMBER = 3;
    public static final int RESPONSE_CACHE_URL_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private Timestamp cacheTime_;
    private byte memoizedIsInitialized;
    private int payloadOneofCase_;
    private Object payloadOneof_;
    private Placement requestItemSpec_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.protobuf.ResponsePayload$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase;

        static {
            int[] iArr = new int[PayloadOneofCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase = iArr;
            try {
                iArr[PayloadOneofCase.RESPONSE_CACHE_URL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase[PayloadOneofCase.RESPONSE_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase[PayloadOneofCase.PAYLOADONEOF_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public enum PayloadOneofCase implements i0.c {
        RESPONSE_CACHE_URL(2),
        RESPONSE_CACHE(3),
        PAYLOADONEOF_NOT_SET(0);
        
        private final int value;

        PayloadOneofCase(int i10) {
            this.value = i10;
        }

        public static PayloadOneofCase forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return RESPONSE_CACHE;
                }
                return RESPONSE_CACHE_URL;
            }
            return PAYLOADONEOF_NOT_SET;
        }

        @Override // com.explorestack.protobuf.i0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PayloadOneofCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    public static ResponsePayload getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return CacheProto.internal_static_bidmachine_protobuf_ResponsePayload_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ResponsePayload parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ResponsePayload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ResponsePayload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<ResponsePayload> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResponsePayload)) {
            return super.equals(obj);
        }
        ResponsePayload responsePayload = (ResponsePayload) obj;
        if (hasCacheTime() != responsePayload.hasCacheTime()) {
            return false;
        }
        if ((hasCacheTime() && !getCacheTime().equals(responsePayload.getCacheTime())) || hasRequestItemSpec() != responsePayload.hasRequestItemSpec()) {
            return false;
        }
        if ((hasRequestItemSpec() && !getRequestItemSpec().equals(responsePayload.getRequestItemSpec())) || !getPayloadOneofCase().equals(responsePayload.getPayloadOneofCase())) {
            return false;
        }
        int i10 = this.payloadOneofCase_;
        if (i10 != 2) {
            if (i10 == 3 && !getResponseCache().equals(responsePayload.getResponseCache())) {
                return false;
            }
        } else if (!getResponseCacheUrl().equals(responsePayload.getResponseCacheUrl())) {
            return false;
        }
        if (this.unknownFields.equals(responsePayload.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public Timestamp getCacheTime() {
        Timestamp timestamp = this.cacheTime_;
        if (timestamp == null) {
            return Timestamp.getDefaultInstance();
        }
        return timestamp;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public c2 getCacheTimeOrBuilder() {
        return getCacheTime();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<ResponsePayload> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public PayloadOneofCase getPayloadOneofCase() {
        return PayloadOneofCase.forNumber(this.payloadOneofCase_);
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public Placement getRequestItemSpec() {
        Placement placement = this.requestItemSpec_;
        if (placement == null) {
            return Placement.getDefaultInstance();
        }
        return placement;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public d getRequestItemSpecOrBuilder() {
        return getRequestItemSpec();
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public Openrtb getResponseCache() {
        if (this.payloadOneofCase_ == 3) {
            return (Openrtb) this.payloadOneof_;
        }
        return Openrtb.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public a getResponseCacheOrBuilder() {
        if (this.payloadOneofCase_ == 3) {
            return (Openrtb) this.payloadOneof_;
        }
        return Openrtb.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public String getResponseCacheUrl() {
        Object obj;
        if (this.payloadOneofCase_ == 2) {
            obj = this.payloadOneof_;
        } else {
            obj = "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        if (this.payloadOneofCase_ == 2) {
            this.payloadOneof_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public ByteString getResponseCacheUrlBytes() {
        Object obj;
        if (this.payloadOneofCase_ == 2) {
            obj = this.payloadOneof_;
        } else {
            obj = "";
        }
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            if (this.payloadOneofCase_ == 2) {
                this.payloadOneof_ = copyFromUtf8;
            }
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
        if (this.cacheTime_ != null) {
            i10 = CodedOutputStream.G(1, getCacheTime());
        } else {
            i10 = 0;
        }
        if (this.payloadOneofCase_ == 2) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.payloadOneof_);
        }
        if (this.payloadOneofCase_ == 3) {
            i10 += CodedOutputStream.G(3, (Openrtb) this.payloadOneof_);
        }
        if (this.requestItemSpec_ != null) {
            i10 += CodedOutputStream.G(4, getRequestItemSpec());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public boolean hasCacheTime() {
        if (this.cacheTime_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public boolean hasRequestItemSpec() {
        if (this.requestItemSpec_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public boolean hasResponseCache() {
        if (this.payloadOneofCase_ == 3) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
    public boolean hasResponseCacheUrl() {
        if (this.payloadOneofCase_ == 2) {
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
        if (hasCacheTime()) {
            hashCode2 = (((hashCode2 * 37) + 1) * 53) + getCacheTime().hashCode();
        }
        if (hasRequestItemSpec()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getRequestItemSpec().hashCode();
        }
        int i12 = this.payloadOneofCase_;
        if (i12 != 2) {
            if (i12 == 3) {
                i10 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getResponseCache().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        i10 = ((hashCode2 * 37) + 2) * 53;
        hashCode = getResponseCacheUrl().hashCode();
        hashCode2 = i10 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return CacheProto.internal_static_bidmachine_protobuf_ResponsePayload_fieldAccessorTable.d(ResponsePayload.class, Builder.class);
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
        return new ResponsePayload();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.cacheTime_ != null) {
            codedOutputStream.L0(1, getCacheTime());
        }
        if (this.payloadOneofCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.payloadOneof_);
        }
        if (this.payloadOneofCase_ == 3) {
            codedOutputStream.L0(3, (Openrtb) this.payloadOneof_);
        }
        if (this.requestItemSpec_ != null) {
            codedOutputStream.L0(4, getRequestItemSpec());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements ResponsePayloadOrBuilder {
        private t1<Timestamp, Timestamp.Builder, c2> cacheTimeBuilder_;
        private Timestamp cacheTime_;
        private int payloadOneofCase_;
        private Object payloadOneof_;
        private t1<Placement, Placement.Builder, d> requestItemSpecBuilder_;
        private Placement requestItemSpec_;
        private t1<Openrtb, Openrtb.Builder, a> responseCacheBuilder_;

        private t1<Timestamp, Timestamp.Builder, c2> getCacheTimeFieldBuilder() {
            if (this.cacheTimeBuilder_ == null) {
                this.cacheTimeBuilder_ = new t1<>(getCacheTime(), getParentForChildren(), isClean());
                this.cacheTime_ = null;
            }
            return this.cacheTimeBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return CacheProto.internal_static_bidmachine_protobuf_ResponsePayload_descriptor;
        }

        private t1<Placement, Placement.Builder, d> getRequestItemSpecFieldBuilder() {
            if (this.requestItemSpecBuilder_ == null) {
                this.requestItemSpecBuilder_ = new t1<>(getRequestItemSpec(), getParentForChildren(), isClean());
                this.requestItemSpec_ = null;
            }
            return this.requestItemSpecBuilder_;
        }

        private t1<Openrtb, Openrtb.Builder, a> getResponseCacheFieldBuilder() {
            if (this.responseCacheBuilder_ == null) {
                if (this.payloadOneofCase_ != 3) {
                    this.payloadOneof_ = Openrtb.getDefaultInstance();
                }
                this.responseCacheBuilder_ = new t1<>((Openrtb) this.payloadOneof_, getParentForChildren(), isClean());
                this.payloadOneof_ = null;
            }
            this.payloadOneofCase_ = 3;
            onChanged();
            return this.responseCacheBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearCacheTime() {
            if (this.cacheTimeBuilder_ == null) {
                this.cacheTime_ = null;
                onChanged();
            } else {
                this.cacheTime_ = null;
                this.cacheTimeBuilder_ = null;
            }
            return this;
        }

        public Builder clearPayloadOneof() {
            this.payloadOneofCase_ = 0;
            this.payloadOneof_ = null;
            onChanged();
            return this;
        }

        public Builder clearRequestItemSpec() {
            if (this.requestItemSpecBuilder_ == null) {
                this.requestItemSpec_ = null;
                onChanged();
            } else {
                this.requestItemSpec_ = null;
                this.requestItemSpecBuilder_ = null;
            }
            return this;
        }

        public Builder clearResponseCache() {
            t1<Openrtb, Openrtb.Builder, a> t1Var = this.responseCacheBuilder_;
            if (t1Var == null) {
                if (this.payloadOneofCase_ == 3) {
                    this.payloadOneofCase_ = 0;
                    this.payloadOneof_ = null;
                    onChanged();
                }
            } else {
                if (this.payloadOneofCase_ == 3) {
                    this.payloadOneofCase_ = 0;
                    this.payloadOneof_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearResponseCacheUrl() {
            if (this.payloadOneofCase_ == 2) {
                this.payloadOneofCase_ = 0;
                this.payloadOneof_ = null;
                onChanged();
            }
            return this;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public Timestamp getCacheTime() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.cacheTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp = this.cacheTime_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }
            return t1Var.e();
        }

        public Timestamp.Builder getCacheTimeBuilder() {
            onChanged();
            return getCacheTimeFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public c2 getCacheTimeOrBuilder() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.cacheTimeBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Timestamp timestamp = this.cacheTime_;
            if (timestamp == null) {
                return Timestamp.getDefaultInstance();
            }
            return timestamp;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return CacheProto.internal_static_bidmachine_protobuf_ResponsePayload_descriptor;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public PayloadOneofCase getPayloadOneofCase() {
            return PayloadOneofCase.forNumber(this.payloadOneofCase_);
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public Placement getRequestItemSpec() {
            t1<Placement, Placement.Builder, d> t1Var = this.requestItemSpecBuilder_;
            if (t1Var == null) {
                Placement placement = this.requestItemSpec_;
                if (placement == null) {
                    return Placement.getDefaultInstance();
                }
                return placement;
            }
            return t1Var.e();
        }

        public Placement.Builder getRequestItemSpecBuilder() {
            onChanged();
            return getRequestItemSpecFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public d getRequestItemSpecOrBuilder() {
            t1<Placement, Placement.Builder, d> t1Var = this.requestItemSpecBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Placement placement = this.requestItemSpec_;
            if (placement == null) {
                return Placement.getDefaultInstance();
            }
            return placement;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public Openrtb getResponseCache() {
            t1<Openrtb, Openrtb.Builder, a> t1Var = this.responseCacheBuilder_;
            if (t1Var == null) {
                if (this.payloadOneofCase_ == 3) {
                    return (Openrtb) this.payloadOneof_;
                }
                return Openrtb.getDefaultInstance();
            } else if (this.payloadOneofCase_ == 3) {
                return t1Var.e();
            } else {
                return Openrtb.getDefaultInstance();
            }
        }

        public Openrtb.Builder getResponseCacheBuilder() {
            return getResponseCacheFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public a getResponseCacheOrBuilder() {
            t1<Openrtb, Openrtb.Builder, a> t1Var;
            int i10 = this.payloadOneofCase_;
            if (i10 == 3 && (t1Var = this.responseCacheBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 3) {
                return (Openrtb) this.payloadOneof_;
            }
            return Openrtb.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public String getResponseCacheUrl() {
            Object obj;
            if (this.payloadOneofCase_ == 2) {
                obj = this.payloadOneof_;
            } else {
                obj = "";
            }
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                if (this.payloadOneofCase_ == 2) {
                    this.payloadOneof_ = stringUtf8;
                }
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public ByteString getResponseCacheUrlBytes() {
            Object obj;
            if (this.payloadOneofCase_ == 2) {
                obj = this.payloadOneof_;
            } else {
                obj = "";
            }
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                if (this.payloadOneofCase_ == 2) {
                    this.payloadOneof_ = copyFromUtf8;
                }
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public boolean hasCacheTime() {
            if (this.cacheTimeBuilder_ == null && this.cacheTime_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public boolean hasRequestItemSpec() {
            if (this.requestItemSpecBuilder_ == null && this.requestItemSpec_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public boolean hasResponseCache() {
            if (this.payloadOneofCase_ == 3) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.ResponsePayloadOrBuilder
        public boolean hasResponseCacheUrl() {
            if (this.payloadOneofCase_ == 2) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return CacheProto.internal_static_bidmachine_protobuf_ResponsePayload_fieldAccessorTable.d(ResponsePayload.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeCacheTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.cacheTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp2 = this.cacheTime_;
                if (timestamp2 != null) {
                    this.cacheTime_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                } else {
                    this.cacheTime_ = timestamp;
                }
                onChanged();
            } else {
                t1Var.g(timestamp);
            }
            return this;
        }

        public Builder mergeRequestItemSpec(Placement placement) {
            t1<Placement, Placement.Builder, d> t1Var = this.requestItemSpecBuilder_;
            if (t1Var == null) {
                Placement placement2 = this.requestItemSpec_;
                if (placement2 != null) {
                    this.requestItemSpec_ = Placement.newBuilder(placement2).mergeFrom(placement).buildPartial();
                } else {
                    this.requestItemSpec_ = placement;
                }
                onChanged();
            } else {
                t1Var.g(placement);
            }
            return this;
        }

        public Builder mergeResponseCache(Openrtb openrtb) {
            t1<Openrtb, Openrtb.Builder, a> t1Var = this.responseCacheBuilder_;
            if (t1Var == null) {
                if (this.payloadOneofCase_ == 3 && this.payloadOneof_ != Openrtb.getDefaultInstance()) {
                    this.payloadOneof_ = Openrtb.newBuilder((Openrtb) this.payloadOneof_).mergeFrom(openrtb).buildPartial();
                } else {
                    this.payloadOneof_ = openrtb;
                }
                onChanged();
            } else {
                if (this.payloadOneofCase_ == 3) {
                    t1Var.g(openrtb);
                }
                this.responseCacheBuilder_.i(openrtb);
            }
            this.payloadOneofCase_ = 3;
            return this;
        }

        public Builder setCacheTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.cacheTimeBuilder_;
            if (t1Var == null) {
                timestamp.getClass();
                this.cacheTime_ = timestamp;
                onChanged();
            } else {
                t1Var.i(timestamp);
            }
            return this;
        }

        public Builder setRequestItemSpec(Placement placement) {
            t1<Placement, Placement.Builder, d> t1Var = this.requestItemSpecBuilder_;
            if (t1Var == null) {
                placement.getClass();
                this.requestItemSpec_ = placement;
                onChanged();
            } else {
                t1Var.i(placement);
            }
            return this;
        }

        public Builder setResponseCache(Openrtb openrtb) {
            t1<Openrtb, Openrtb.Builder, a> t1Var = this.responseCacheBuilder_;
            if (t1Var == null) {
                openrtb.getClass();
                this.payloadOneof_ = openrtb;
                onChanged();
            } else {
                t1Var.i(openrtb);
            }
            this.payloadOneofCase_ = 3;
            return this;
        }

        public Builder setResponseCacheUrl(String str) {
            str.getClass();
            this.payloadOneofCase_ = 2;
            this.payloadOneof_ = str;
            onChanged();
            return this;
        }

        public Builder setResponseCacheUrlBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.payloadOneofCase_ = 2;
            this.payloadOneof_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.payloadOneofCase_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public ResponsePayload build() {
            ResponsePayload buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public ResponsePayload buildPartial() {
            ResponsePayload responsePayload = new ResponsePayload(this);
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.cacheTimeBuilder_;
            if (t1Var == null) {
                responsePayload.cacheTime_ = this.cacheTime_;
            } else {
                responsePayload.cacheTime_ = t1Var.a();
            }
            t1<Placement, Placement.Builder, d> t1Var2 = this.requestItemSpecBuilder_;
            if (t1Var2 == null) {
                responsePayload.requestItemSpec_ = this.requestItemSpec_;
            } else {
                responsePayload.requestItemSpec_ = t1Var2.a();
            }
            if (this.payloadOneofCase_ == 2) {
                responsePayload.payloadOneof_ = this.payloadOneof_;
            }
            if (this.payloadOneofCase_ == 3) {
                t1<Openrtb, Openrtb.Builder, a> t1Var3 = this.responseCacheBuilder_;
                if (t1Var3 == null) {
                    responsePayload.payloadOneof_ = this.payloadOneof_;
                } else {
                    responsePayload.payloadOneof_ = t1Var3.a();
                }
            }
            responsePayload.payloadOneofCase_ = this.payloadOneofCase_;
            onBuilt();
            return responsePayload;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public ResponsePayload mo4630getDefaultInstanceForType() {
            return ResponsePayload.getDefaultInstance();
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
            if (this.cacheTimeBuilder_ == null) {
                this.cacheTime_ = null;
            } else {
                this.cacheTime_ = null;
                this.cacheTimeBuilder_ = null;
            }
            if (this.requestItemSpecBuilder_ == null) {
                this.requestItemSpec_ = null;
            } else {
                this.requestItemSpec_ = null;
                this.requestItemSpecBuilder_ = null;
            }
            this.payloadOneofCase_ = 0;
            this.payloadOneof_ = null;
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.payloadOneofCase_ = 0;
            maybeForceBuilderInitialization();
        }

        public Builder setCacheTime(Timestamp.Builder builder) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.cacheTimeBuilder_;
            if (t1Var == null) {
                this.cacheTime_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setRequestItemSpec(Placement.Builder builder) {
            t1<Placement, Placement.Builder, d> t1Var = this.requestItemSpecBuilder_;
            if (t1Var == null) {
                this.requestItemSpec_ = builder.build();
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
            if (message instanceof ResponsePayload) {
                return mergeFrom((ResponsePayload) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setResponseCache(Openrtb.Builder builder) {
            t1<Openrtb, Openrtb.Builder, a> t1Var = this.responseCacheBuilder_;
            if (t1Var == null) {
                this.payloadOneof_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.payloadOneofCase_ = 3;
            return this;
        }

        public Builder mergeFrom(ResponsePayload responsePayload) {
            if (responsePayload == ResponsePayload.getDefaultInstance()) {
                return this;
            }
            if (responsePayload.hasCacheTime()) {
                mergeCacheTime(responsePayload.getCacheTime());
            }
            if (responsePayload.hasRequestItemSpec()) {
                mergeRequestItemSpec(responsePayload.getRequestItemSpec());
            }
            int i10 = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase[responsePayload.getPayloadOneofCase().ordinal()];
            if (i10 == 1) {
                this.payloadOneofCase_ = 2;
                this.payloadOneof_ = responsePayload.payloadOneof_;
                onChanged();
            } else if (i10 == 2) {
                mergeResponseCache(responsePayload.getResponseCache());
            }
            mergeUnknownFields(((GeneratedMessageV3) responsePayload).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.ResponsePayload.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.ResponsePayload.access$900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.ResponsePayload r3 = (io.bidmachine.protobuf.ResponsePayload) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.ResponsePayload r4 = (io.bidmachine.protobuf.ResponsePayload) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.ResponsePayload.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.ResponsePayload$Builder");
        }
    }

    public static Builder newBuilder(ResponsePayload responsePayload) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(responsePayload);
    }

    public static ResponsePayload parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private ResponsePayload(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.payloadOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResponsePayload parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (ResponsePayload) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static ResponsePayload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public ResponsePayload mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static ResponsePayload parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static ResponsePayload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    private ResponsePayload() {
        this.payloadOneofCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ResponsePayload parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static ResponsePayload parseFrom(InputStream inputStream) throws IOException {
        return (ResponsePayload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ResponsePayload(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            Timestamp timestamp = this.cacheTime_;
                            Timestamp.Builder builder = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                            this.cacheTime_ = timestamp2;
                            if (builder != null) {
                                builder.mergeFrom(timestamp2);
                                this.cacheTime_ = builder.buildPartial();
                            }
                        } else if (K == 18) {
                            String J = nVar.J();
                            this.payloadOneofCase_ = 2;
                            this.payloadOneof_ = J;
                        } else if (K == 26) {
                            Openrtb.Builder builder2 = this.payloadOneofCase_ == 3 ? ((Openrtb) this.payloadOneof_).toBuilder() : null;
                            MessageLite A = nVar.A(Openrtb.parser(), yVar);
                            this.payloadOneof_ = A;
                            if (builder2 != null) {
                                builder2.mergeFrom((Openrtb) A);
                                this.payloadOneof_ = builder2.buildPartial();
                            }
                            this.payloadOneofCase_ = 3;
                        } else if (K != 34) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            Placement placement = this.requestItemSpec_;
                            Placement.Builder builder3 = placement != null ? placement.toBuilder() : null;
                            Placement placement2 = (Placement) nVar.A(Placement.parser(), yVar);
                            this.requestItemSpec_ = placement2;
                            if (builder3 != null) {
                                builder3.mergeFrom(placement2);
                                this.requestItemSpec_ = builder3.buildPartial();
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

    public static ResponsePayload parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (ResponsePayload) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static ResponsePayload parseFrom(n nVar) throws IOException {
        return (ResponsePayload) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static ResponsePayload parseFrom(n nVar, y yVar) throws IOException {
        return (ResponsePayload) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
