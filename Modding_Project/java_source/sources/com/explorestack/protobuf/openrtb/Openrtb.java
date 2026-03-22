package com.explorestack.protobuf.openrtb;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public final class Openrtb extends GeneratedMessageV3 implements a {
    public static final int DOMAINSPEC_FIELD_NUMBER = 2;
    public static final int DOMAINVER_FIELD_NUMBER = 3;
    public static final int REQUEST_FIELD_NUMBER = 4;
    public static final int RESPONSE_FIELD_NUMBER = 5;
    public static final int VER_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object domainspec_;
    private volatile Object domainver_;
    private byte memoizedIsInitialized;
    private int payloadCase_;
    private Object payload_;
    private volatile Object ver_;
    private static final Openrtb DEFAULT_INSTANCE = new Openrtb();
    private static final j1<Openrtb> PARSER = new com.explorestack.protobuf.b<Openrtb>() { // from class: com.explorestack.protobuf.openrtb.Openrtb.1
        @Override // com.explorestack.protobuf.j1
        public Openrtb parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Openrtb(nVar, yVar);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.openrtb.Openrtb$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase;

        static {
            int[] iArr = new int[PayloadCase.values().length];
            $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase = iArr;
            try {
                iArr[PayloadCase.REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase[PayloadCase.RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase[PayloadCase.PAYLOAD_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum PayloadCase implements i0.c {
        REQUEST(4),
        RESPONSE(5),
        PAYLOAD_NOT_SET(0);
        
        private final int value;

        PayloadCase(int i10) {
            this.value = i10;
        }

        public static PayloadCase forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        return null;
                    }
                    return RESPONSE;
                }
                return REQUEST;
            }
            return PAYLOAD_NOT_SET;
        }

        @Override // com.explorestack.protobuf.i0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PayloadCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    public static Openrtb getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return b.f14550a;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Openrtb parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Openrtb parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Openrtb> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Openrtb)) {
            return super.equals(obj);
        }
        Openrtb openrtb = (Openrtb) obj;
        if (!getVer().equals(openrtb.getVer()) || !getDomainspec().equals(openrtb.getDomainspec()) || !getDomainver().equals(openrtb.getDomainver()) || !getPayloadCase().equals(openrtb.getPayloadCase())) {
            return false;
        }
        int i10 = this.payloadCase_;
        if (i10 != 4) {
            if (i10 == 5 && !getResponse().equals(openrtb.getResponse())) {
                return false;
            }
        } else if (!getRequest().equals(openrtb.getRequest())) {
            return false;
        }
        if (this.unknownFields.equals(openrtb.unknownFields)) {
            return true;
        }
        return false;
    }

    public String getDomainspec() {
        Object obj = this.domainspec_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.domainspec_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDomainspecBytes() {
        Object obj = this.domainspec_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.domainspec_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String getDomainver() {
        Object obj = this.domainver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.domainver_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getDomainverBytes() {
        Object obj = this.domainver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.domainver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Openrtb> getParserForType() {
        return PARSER;
    }

    public PayloadCase getPayloadCase() {
        return PayloadCase.forNumber(this.payloadCase_);
    }

    public Request getRequest() {
        if (this.payloadCase_ == 4) {
            return (Request) this.payload_;
        }
        return Request.getDefaultInstance();
    }

    public c getRequestOrBuilder() {
        if (this.payloadCase_ == 4) {
            return (Request) this.payload_;
        }
        return Request.getDefaultInstance();
    }

    public Response getResponse() {
        if (this.payloadCase_ == 5) {
            return (Response) this.payload_;
        }
        return Response.getDefaultInstance();
    }

    public d getResponseOrBuilder() {
        if (this.payloadCase_ == 5) {
            return (Response) this.payload_;
        }
        return Response.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getVerBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.ver_);
        } else {
            i10 = 0;
        }
        if (!getDomainspecBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.domainspec_);
        }
        if (!getDomainverBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(3, this.domainver_);
        }
        if (this.payloadCase_ == 4) {
            i10 += CodedOutputStream.G(4, (Request) this.payload_);
        }
        if (this.payloadCase_ == 5) {
            i10 += CodedOutputStream.G(5, (Response) this.payload_);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    public String getVer() {
        Object obj = this.ver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ver_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getVerBytes() {
        Object obj = this.ver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public boolean hasRequest() {
        if (this.payloadCase_ == 4) {
            return true;
        }
        return false;
    }

    public boolean hasResponse() {
        if (this.payloadCase_ == 5) {
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
        int hashCode2 = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getVer().hashCode()) * 37) + 2) * 53) + getDomainspec().hashCode()) * 37) + 3) * 53) + getDomainver().hashCode();
        int i12 = this.payloadCase_;
        if (i12 != 4) {
            if (i12 == 5) {
                i10 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getResponse().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }
        i10 = ((hashCode2 * 37) + 4) * 53;
        hashCode = getRequest().hashCode();
        hashCode2 = i10 + hashCode;
        int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode32;
        return hashCode32;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return b.f14551b.d(Openrtb.class, Builder.class);
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
        return new Openrtb();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getVerBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.ver_);
        }
        if (!getDomainspecBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.domainspec_);
        }
        if (!getDomainverBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.domainver_);
        }
        if (this.payloadCase_ == 4) {
            codedOutputStream.L0(4, (Request) this.payload_);
        }
        if (this.payloadCase_ == 5) {
            codedOutputStream.L0(5, (Response) this.payload_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements a {
        private Object domainspec_;
        private Object domainver_;
        private int payloadCase_;
        private Object payload_;
        private t1<Request, Request.Builder, c> requestBuilder_;
        private t1<Response, Response.Builder, d> responseBuilder_;
        private Object ver_;

        public static final Descriptors.Descriptor getDescriptor() {
            return b.f14550a;
        }

        private t1<Request, Request.Builder, c> getRequestFieldBuilder() {
            if (this.requestBuilder_ == null) {
                if (this.payloadCase_ != 4) {
                    this.payload_ = Request.getDefaultInstance();
                }
                this.requestBuilder_ = new t1<>((Request) this.payload_, getParentForChildren(), isClean());
                this.payload_ = null;
            }
            this.payloadCase_ = 4;
            onChanged();
            return this.requestBuilder_;
        }

        private t1<Response, Response.Builder, d> getResponseFieldBuilder() {
            if (this.responseBuilder_ == null) {
                if (this.payloadCase_ != 5) {
                    this.payload_ = Response.getDefaultInstance();
                }
                this.responseBuilder_ = new t1<>((Response) this.payload_, getParentForChildren(), isClean());
                this.payload_ = null;
            }
            this.payloadCase_ = 5;
            onChanged();
            return this.responseBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearDomainspec() {
            this.domainspec_ = Openrtb.getDefaultInstance().getDomainspec();
            onChanged();
            return this;
        }

        public Builder clearDomainver() {
            this.domainver_ = Openrtb.getDefaultInstance().getDomainver();
            onChanged();
            return this;
        }

        public Builder clearPayload() {
            this.payloadCase_ = 0;
            this.payload_ = null;
            onChanged();
            return this;
        }

        public Builder clearRequest() {
            t1<Request, Request.Builder, c> t1Var = this.requestBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 4) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                    onChanged();
                }
            } else {
                if (this.payloadCase_ == 4) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearResponse() {
            t1<Response, Response.Builder, d> t1Var = this.responseBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 5) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                    onChanged();
                }
            } else {
                if (this.payloadCase_ == 5) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearVer() {
            this.ver_ = Openrtb.getDefaultInstance().getVer();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return b.f14550a;
        }

        public String getDomainspec() {
            Object obj = this.domainspec_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.domainspec_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getDomainspecBytes() {
            Object obj = this.domainspec_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.domainspec_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getDomainver() {
            Object obj = this.domainver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.domainver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getDomainverBytes() {
            Object obj = this.domainver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.domainver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public PayloadCase getPayloadCase() {
            return PayloadCase.forNumber(this.payloadCase_);
        }

        public Request getRequest() {
            t1<Request, Request.Builder, c> t1Var = this.requestBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 4) {
                    return (Request) this.payload_;
                }
                return Request.getDefaultInstance();
            } else if (this.payloadCase_ == 4) {
                return t1Var.e();
            } else {
                return Request.getDefaultInstance();
            }
        }

        public Request.Builder getRequestBuilder() {
            return getRequestFieldBuilder().d();
        }

        public c getRequestOrBuilder() {
            t1<Request, Request.Builder, c> t1Var;
            int i10 = this.payloadCase_;
            if (i10 == 4 && (t1Var = this.requestBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 4) {
                return (Request) this.payload_;
            }
            return Request.getDefaultInstance();
        }

        public Response getResponse() {
            t1<Response, Response.Builder, d> t1Var = this.responseBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 5) {
                    return (Response) this.payload_;
                }
                return Response.getDefaultInstance();
            } else if (this.payloadCase_ == 5) {
                return t1Var.e();
            } else {
                return Response.getDefaultInstance();
            }
        }

        public Response.Builder getResponseBuilder() {
            return getResponseFieldBuilder().d();
        }

        public d getResponseOrBuilder() {
            t1<Response, Response.Builder, d> t1Var;
            int i10 = this.payloadCase_;
            if (i10 == 5 && (t1Var = this.responseBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 5) {
                return (Response) this.payload_;
            }
            return Response.getDefaultInstance();
        }

        public String getVer() {
            Object obj = this.ver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getVerBytes() {
            Object obj = this.ver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public boolean hasRequest() {
            if (this.payloadCase_ == 4) {
                return true;
            }
            return false;
        }

        public boolean hasResponse() {
            if (this.payloadCase_ == 5) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return b.f14551b.d(Openrtb.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeRequest(Request request) {
            t1<Request, Request.Builder, c> t1Var = this.requestBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 4 && this.payload_ != Request.getDefaultInstance()) {
                    this.payload_ = Request.newBuilder((Request) this.payload_).mergeFrom(request).buildPartial();
                } else {
                    this.payload_ = request;
                }
                onChanged();
            } else {
                if (this.payloadCase_ == 4) {
                    t1Var.g(request);
                }
                this.requestBuilder_.i(request);
            }
            this.payloadCase_ = 4;
            return this;
        }

        public Builder mergeResponse(Response response) {
            t1<Response, Response.Builder, d> t1Var = this.responseBuilder_;
            if (t1Var == null) {
                if (this.payloadCase_ == 5 && this.payload_ != Response.getDefaultInstance()) {
                    this.payload_ = Response.newBuilder((Response) this.payload_).mergeFrom(response).buildPartial();
                } else {
                    this.payload_ = response;
                }
                onChanged();
            } else {
                if (this.payloadCase_ == 5) {
                    t1Var.g(response);
                }
                this.responseBuilder_.i(response);
            }
            this.payloadCase_ = 5;
            return this;
        }

        public Builder setDomainspec(String str) {
            str.getClass();
            this.domainspec_ = str;
            onChanged();
            return this;
        }

        public Builder setDomainspecBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.domainspec_ = byteString;
            onChanged();
            return this;
        }

        public Builder setDomainver(String str) {
            str.getClass();
            this.domainver_ = str;
            onChanged();
            return this;
        }

        public Builder setDomainverBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.domainver_ = byteString;
            onChanged();
            return this;
        }

        public Builder setRequest(Request request) {
            t1<Request, Request.Builder, c> t1Var = this.requestBuilder_;
            if (t1Var == null) {
                request.getClass();
                this.payload_ = request;
                onChanged();
            } else {
                t1Var.i(request);
            }
            this.payloadCase_ = 4;
            return this;
        }

        public Builder setResponse(Response response) {
            t1<Response, Response.Builder, d> t1Var = this.responseBuilder_;
            if (t1Var == null) {
                response.getClass();
                this.payload_ = response;
                onChanged();
            } else {
                t1Var.i(response);
            }
            this.payloadCase_ = 5;
            return this;
        }

        public Builder setVer(String str) {
            str.getClass();
            this.ver_ = str;
            onChanged();
            return this;
        }

        public Builder setVerBytes(ByteString byteString) {
            byteString.getClass();
            com.explorestack.protobuf.a.checkByteStringIsUtf8(byteString);
            this.ver_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.payloadCase_ = 0;
            this.ver_ = "";
            this.domainspec_ = "";
            this.domainver_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Openrtb build() {
            Openrtb buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Openrtb buildPartial() {
            Openrtb openrtb = new Openrtb(this);
            openrtb.ver_ = this.ver_;
            openrtb.domainspec_ = this.domainspec_;
            openrtb.domainver_ = this.domainver_;
            if (this.payloadCase_ == 4) {
                t1<Request, Request.Builder, c> t1Var = this.requestBuilder_;
                if (t1Var == null) {
                    openrtb.payload_ = this.payload_;
                } else {
                    openrtb.payload_ = t1Var.a();
                }
            }
            if (this.payloadCase_ == 5) {
                t1<Response, Response.Builder, d> t1Var2 = this.responseBuilder_;
                if (t1Var2 == null) {
                    openrtb.payload_ = this.payload_;
                } else {
                    openrtb.payload_ = t1Var2.a();
                }
            }
            openrtb.payloadCase_ = this.payloadCase_;
            onBuilt();
            return openrtb;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Openrtb mo4630getDefaultInstanceForType() {
            return Openrtb.getDefaultInstance();
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
            this.ver_ = "";
            this.domainspec_ = "";
            this.domainver_ = "";
            this.payloadCase_ = 0;
            this.payload_ = null;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof Openrtb) {
                return mergeFrom((Openrtb) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setRequest(Request.Builder builder) {
            t1<Request, Request.Builder, c> t1Var = this.requestBuilder_;
            if (t1Var == null) {
                this.payload_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.payloadCase_ = 4;
            return this;
        }

        public Builder setResponse(Response.Builder builder) {
            t1<Response, Response.Builder, d> t1Var = this.responseBuilder_;
            if (t1Var == null) {
                this.payload_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.payloadCase_ = 5;
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.payloadCase_ = 0;
            this.ver_ = "";
            this.domainspec_ = "";
            this.domainver_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(Openrtb openrtb) {
            if (openrtb == Openrtb.getDefaultInstance()) {
                return this;
            }
            if (!openrtb.getVer().isEmpty()) {
                this.ver_ = openrtb.ver_;
                onChanged();
            }
            if (!openrtb.getDomainspec().isEmpty()) {
                this.domainspec_ = openrtb.domainspec_;
                onChanged();
            }
            if (!openrtb.getDomainver().isEmpty()) {
                this.domainver_ = openrtb.domainver_;
                onChanged();
            }
            int i10 = AnonymousClass2.$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase[openrtb.getPayloadCase().ordinal()];
            if (i10 == 1) {
                mergeRequest(openrtb.getRequest());
            } else if (i10 == 2) {
                mergeResponse(openrtb.getResponse());
            }
            mergeUnknownFields(((GeneratedMessageV3) openrtb).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.explorestack.protobuf.openrtb.Openrtb.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.openrtb.Openrtb.access$1000()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.explorestack.protobuf.openrtb.Openrtb r3 = (com.explorestack.protobuf.openrtb.Openrtb) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.explorestack.protobuf.openrtb.Openrtb r4 = (com.explorestack.protobuf.openrtb.Openrtb) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Openrtb.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.openrtb.Openrtb$Builder");
        }
    }

    public static Builder newBuilder(Openrtb openrtb) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(openrtb);
    }

    public static Openrtb parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Openrtb(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Openrtb parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Openrtb parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Openrtb mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Openrtb parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Openrtb parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    private Openrtb() {
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.ver_ = "";
        this.domainspec_ = "";
        this.domainver_ = "";
    }

    public static Openrtb parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Openrtb parseFrom(InputStream inputStream) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Openrtb parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Openrtb parseFrom(n nVar) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    private Openrtb(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.ver_ = nVar.J();
                            } else if (K == 18) {
                                this.domainspec_ = nVar.J();
                            } else if (K != 26) {
                                if (K == 34) {
                                    Request.Builder builder = this.payloadCase_ == 4 ? ((Request) this.payload_).toBuilder() : null;
                                    MessageLite A = nVar.A(Request.parser(), yVar);
                                    this.payload_ = A;
                                    if (builder != null) {
                                        builder.mergeFrom((Request) A);
                                        this.payload_ = builder.buildPartial();
                                    }
                                    this.payloadCase_ = 4;
                                } else if (K != 42) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    Response.Builder builder2 = this.payloadCase_ == 5 ? ((Response) this.payload_).toBuilder() : null;
                                    MessageLite A2 = nVar.A(Response.parser(), yVar);
                                    this.payload_ = A2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom((Response) A2);
                                        this.payload_ = builder2.buildPartial();
                                    }
                                    this.payloadCase_ = 5;
                                }
                            } else {
                                this.domainver_ = nVar.J();
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

    public static Openrtb parseFrom(n nVar, y yVar) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
