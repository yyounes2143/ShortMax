package com.moloco.sdk;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public final class MetricsRequest$SDKInitFailureTrackingRequest extends GeneratedMessageLite<MetricsRequest$SDKInitFailureTrackingRequest, a> implements MessageLiteOrBuilder {
    public static final int CLIENT_ERROR_FIELD_NUMBER = 2;
    private static final MetricsRequest$SDKInitFailureTrackingRequest DEFAULT_INSTANCE;
    private static volatile Parser<MetricsRequest$SDKInitFailureTrackingRequest> PARSER = null;
    public static final int SERVER_ERROR_FIELD_NUMBER = 1;
    private int errorTypeCase_ = 0;
    private Object errorType_;

    /* loaded from: classes6.dex */
    public static final class ClientError extends GeneratedMessageLite<ClientError, a> implements MessageLiteOrBuilder {
        public static final int CLIENT_FAILURE_TYPE_FIELD_NUMBER = 1;
        private static final ClientError DEFAULT_INSTANCE;
        private static volatile Parser<ClientError> PARSER;
        private int bitField0_;
        private int clientFailureType_;

        /* loaded from: classes6.dex */
        public enum ClientErrorTypes implements Internal.EnumLite {
            UNKNOWN(0),
            HTTP_SSL_ERROR(1),
            HTTP_UKNOWN_HOST(2),
            HTTP_REQUEST_TIMEOUT(3),
            HTTP_SOCKET(4),
            ANDROID_WORK_MANAGER_ISSUE(5),
            UNRECOGNIZED(-1);
            
            public static final int ANDROID_WORK_MANAGER_ISSUE_VALUE = 5;
            public static final int HTTP_REQUEST_TIMEOUT_VALUE = 3;
            public static final int HTTP_SOCKET_VALUE = 4;
            public static final int HTTP_SSL_ERROR_VALUE = 1;
            public static final int HTTP_UKNOWN_HOST_VALUE = 2;
            public static final int UNKNOWN_VALUE = 0;
            private static final Internal.EnumLiteMap<ClientErrorTypes> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<ClientErrorTypes> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public ClientErrorTypes findValueByNumber(int i10) {
                    return ClientErrorTypes.forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            private static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31795a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (ClientErrorTypes.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            ClientErrorTypes(int i10) {
                this.value = i10;
            }

            public static ClientErrorTypes forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    if (i10 != 5) {
                                        return null;
                                    }
                                    return ANDROID_WORK_MANAGER_ISSUE;
                                }
                                return HTTP_SOCKET;
                            }
                            return HTTP_REQUEST_TIMEOUT;
                        }
                        return HTTP_UKNOWN_HOST;
                    }
                    return HTTP_SSL_ERROR;
                }
                return UNKNOWN;
            }

            public static Internal.EnumLiteMap<ClientErrorTypes> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31795a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Deprecated
            public static ClientErrorTypes valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<ClientError, a> implements MessageLiteOrBuilder {
            public a a(ClientErrorTypes clientErrorTypes) {
                copyOnWrite();
                ((ClientError) this.instance).setClientFailureType(clientErrorTypes);
                return this;
            }

            private a() {
                super(ClientError.DEFAULT_INSTANCE);
            }
        }

        static {
            ClientError clientError = new ClientError();
            DEFAULT_INSTANCE = clientError;
            GeneratedMessageLite.registerDefaultInstance(ClientError.class, clientError);
        }

        private ClientError() {
        }

        private void clearClientFailureType() {
            this.bitField0_ &= -2;
            this.clientFailureType_ = 0;
        }

        public static ClientError getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static ClientError parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ClientError) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ClientError parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<ClientError> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClientFailureType(ClientErrorTypes clientErrorTypes) {
            this.clientFailureType_ = clientErrorTypes.getNumber();
            this.bitField0_ |= 1;
        }

        private void setClientFailureTypeValue(int i10) {
            this.bitField0_ |= 1;
            this.clientFailureType_ = i10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (l.f33594a[methodToInvoke.ordinal()]) {
                case 1:
                    return new ClientError();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"bitField0_", "clientFailureType_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ClientError> parser = PARSER;
                    if (parser == null) {
                        synchronized (ClientError.class) {
                            try {
                                parser = PARSER;
                                if (parser == null) {
                                    parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                    PARSER = parser;
                                }
                            } finally {
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public ClientErrorTypes getClientFailureType() {
            ClientErrorTypes forNumber = ClientErrorTypes.forNumber(this.clientFailureType_);
            if (forNumber == null) {
                return ClientErrorTypes.UNRECOGNIZED;
            }
            return forNumber;
        }

        public int getClientFailureTypeValue() {
            return this.clientFailureType_;
        }

        public boolean hasClientFailureType() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(ClientError clientError) {
            return DEFAULT_INSTANCE.createBuilder(clientError);
        }

        public static ClientError parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ClientError) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ClientError parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ClientError parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ClientError parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ClientError parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ClientError parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static ClientError parseFrom(InputStream inputStream) throws IOException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ClientError parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ClientError parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ClientError parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ClientError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public enum ErrorTypeCase {
        SERVER_ERROR(1),
        CLIENT_ERROR(2),
        ERRORTYPE_NOT_SET(0);
        
        private final int value;

        ErrorTypeCase(int i10) {
            this.value = i10;
        }

        public static ErrorTypeCase forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return null;
                    }
                    return CLIENT_ERROR;
                }
                return SERVER_ERROR;
            }
            return ERRORTYPE_NOT_SET;
        }

        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static ErrorTypeCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    /* loaded from: classes6.dex */
    public static final class ServerError extends GeneratedMessageLite<ServerError, a> implements MessageLiteOrBuilder {
        private static final ServerError DEFAULT_INSTANCE;
        private static volatile Parser<ServerError> PARSER = null;
        public static final int SERVER_HTTP_STATUS_FIELD_NUMBER = 1;
        private int bitField0_;
        private int serverHttpStatus_;

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<ServerError, a> implements MessageLiteOrBuilder {
            public a a(int i10) {
                copyOnWrite();
                ((ServerError) this.instance).setServerHttpStatus(i10);
                return this;
            }

            private a() {
                super(ServerError.DEFAULT_INSTANCE);
            }
        }

        static {
            ServerError serverError = new ServerError();
            DEFAULT_INSTANCE = serverError;
            GeneratedMessageLite.registerDefaultInstance(ServerError.class, serverError);
        }

        private ServerError() {
        }

        private void clearServerHttpStatus() {
            this.bitField0_ &= -2;
            this.serverHttpStatus_ = 0;
        }

        public static ServerError getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static ServerError parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ServerError) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ServerError parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<ServerError> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setServerHttpStatus(int i10) {
            this.bitField0_ |= 1;
            this.serverHttpStatus_ = i10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (l.f33594a[methodToInvoke.ordinal()]) {
                case 1:
                    return new ServerError();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဋ\u0000", new Object[]{"bitField0_", "serverHttpStatus_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ServerError> parser = PARSER;
                    if (parser == null) {
                        synchronized (ServerError.class) {
                            try {
                                parser = PARSER;
                                if (parser == null) {
                                    parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                    PARSER = parser;
                                }
                            } finally {
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public int getServerHttpStatus() {
            return this.serverHttpStatus_;
        }

        public boolean hasServerHttpStatus() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(ServerError serverError) {
            return DEFAULT_INSTANCE.createBuilder(serverError);
        }

        public static ServerError parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServerError) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ServerError parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ServerError parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ServerError parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ServerError parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ServerError parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static ServerError parseFrom(InputStream inputStream) throws IOException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ServerError parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ServerError parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ServerError parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ServerError) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class a extends GeneratedMessageLite.Builder<MetricsRequest$SDKInitFailureTrackingRequest, a> implements MessageLiteOrBuilder {
        public a a(ClientError clientError) {
            copyOnWrite();
            ((MetricsRequest$SDKInitFailureTrackingRequest) this.instance).setClientError(clientError);
            return this;
        }

        public a b(ServerError serverError) {
            copyOnWrite();
            ((MetricsRequest$SDKInitFailureTrackingRequest) this.instance).setServerError(serverError);
            return this;
        }

        private a() {
            super(MetricsRequest$SDKInitFailureTrackingRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        MetricsRequest$SDKInitFailureTrackingRequest metricsRequest$SDKInitFailureTrackingRequest = new MetricsRequest$SDKInitFailureTrackingRequest();
        DEFAULT_INSTANCE = metricsRequest$SDKInitFailureTrackingRequest;
        GeneratedMessageLite.registerDefaultInstance(MetricsRequest$SDKInitFailureTrackingRequest.class, metricsRequest$SDKInitFailureTrackingRequest);
    }

    private MetricsRequest$SDKInitFailureTrackingRequest() {
    }

    private void clearClientError() {
        if (this.errorTypeCase_ == 2) {
            this.errorTypeCase_ = 0;
            this.errorType_ = null;
        }
    }

    private void clearErrorType() {
        this.errorTypeCase_ = 0;
        this.errorType_ = null;
    }

    private void clearServerError() {
        if (this.errorTypeCase_ == 1) {
            this.errorTypeCase_ = 0;
            this.errorType_ = null;
        }
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private void mergeClientError(ClientError clientError) {
        clientError.getClass();
        if (this.errorTypeCase_ == 2 && this.errorType_ != ClientError.getDefaultInstance()) {
            this.errorType_ = ClientError.newBuilder((ClientError) this.errorType_).mergeFrom((ClientError.a) clientError).buildPartial();
        } else {
            this.errorType_ = clientError;
        }
        this.errorTypeCase_ = 2;
    }

    private void mergeServerError(ServerError serverError) {
        serverError.getClass();
        if (this.errorTypeCase_ == 1 && this.errorType_ != ServerError.getDefaultInstance()) {
            this.errorType_ = ServerError.newBuilder((ServerError) this.errorType_).mergeFrom((ServerError.a) serverError).buildPartial();
        } else {
            this.errorType_ = serverError;
        }
        this.errorTypeCase_ = 1;
    }

    public static a newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Parser<MetricsRequest$SDKInitFailureTrackingRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClientError(ClientError clientError) {
        clientError.getClass();
        this.errorType_ = clientError;
        this.errorTypeCase_ = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setServerError(ServerError serverError) {
        serverError.getClass();
        this.errorType_ = serverError;
        this.errorTypeCase_ = 1;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (l.f33594a[methodToInvoke.ordinal()]) {
            case 1:
                return new MetricsRequest$SDKInitFailureTrackingRequest();
            case 2:
                return new a();
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000", new Object[]{"errorType_", "errorTypeCase_", ServerError.class, ClientError.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<MetricsRequest$SDKInitFailureTrackingRequest> parser = PARSER;
                if (parser == null) {
                    synchronized (MetricsRequest$SDKInitFailureTrackingRequest.class) {
                        try {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        } finally {
                        }
                    }
                }
                return parser;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public ClientError getClientError() {
        if (this.errorTypeCase_ == 2) {
            return (ClientError) this.errorType_;
        }
        return ClientError.getDefaultInstance();
    }

    public ErrorTypeCase getErrorTypeCase() {
        return ErrorTypeCase.forNumber(this.errorTypeCase_);
    }

    public ServerError getServerError() {
        if (this.errorTypeCase_ == 1) {
            return (ServerError) this.errorType_;
        }
        return ServerError.getDefaultInstance();
    }

    public boolean hasClientError() {
        if (this.errorTypeCase_ == 2) {
            return true;
        }
        return false;
    }

    public boolean hasServerError() {
        if (this.errorTypeCase_ == 1) {
            return true;
        }
        return false;
    }

    public static a newBuilder(MetricsRequest$SDKInitFailureTrackingRequest metricsRequest$SDKInitFailureTrackingRequest) {
        return DEFAULT_INSTANCE.createBuilder(metricsRequest$SDKInitFailureTrackingRequest);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(InputStream inputStream) throws IOException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static MetricsRequest$SDKInitFailureTrackingRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (MetricsRequest$SDKInitFailureTrackingRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
