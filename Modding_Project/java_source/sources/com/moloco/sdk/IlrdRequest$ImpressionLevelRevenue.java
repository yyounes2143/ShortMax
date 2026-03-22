package com.moloco.sdk;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.moloco.sdk.IlrdRequest$LevelPlayImpression;
import com.moloco.sdk.IlrdRequest$MaxImpression;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public final class IlrdRequest$ImpressionLevelRevenue extends GeneratedMessageLite<IlrdRequest$ImpressionLevelRevenue, a> implements h {
    private static final IlrdRequest$ImpressionLevelRevenue DEFAULT_INSTANCE;
    public static final int EVENT_ID_FIELD_NUMBER = 2;
    public static final int LEVELPLAY_FIELD_NUMBER = 4;
    public static final int MAX_FIELD_NUMBER = 3;
    private static volatile Parser<IlrdRequest$ImpressionLevelRevenue> PARSER = null;
    public static final int SESSION_ID_FIELD_NUMBER = 1;
    private Object platform_;
    private int platformCase_ = 0;
    private String sessionId_ = "";
    private String eventId_ = "";

    /* loaded from: classes6.dex */
    public enum PlatformCase {
        MAX(3),
        LEVELPLAY(4),
        PLATFORM_NOT_SET(0);
        
        private final int value;

        PlatformCase(int i10) {
            this.value = i10;
        }

        public static PlatformCase forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return null;
                    }
                    return LEVELPLAY;
                }
                return MAX;
            }
            return PLATFORM_NOT_SET;
        }

        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static PlatformCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    /* loaded from: classes6.dex */
    public static final class a extends GeneratedMessageLite.Builder<IlrdRequest$ImpressionLevelRevenue, a> implements h {
        public a a(String str) {
            copyOnWrite();
            ((IlrdRequest$ImpressionLevelRevenue) this.instance).setEventId(str);
            return this;
        }

        public a b(IlrdRequest$LevelPlayImpression ilrdRequest$LevelPlayImpression) {
            copyOnWrite();
            ((IlrdRequest$ImpressionLevelRevenue) this.instance).setLevelplay(ilrdRequest$LevelPlayImpression);
            return this;
        }

        public a c(IlrdRequest$MaxImpression ilrdRequest$MaxImpression) {
            copyOnWrite();
            ((IlrdRequest$ImpressionLevelRevenue) this.instance).setMax(ilrdRequest$MaxImpression);
            return this;
        }

        public a e(String str) {
            copyOnWrite();
            ((IlrdRequest$ImpressionLevelRevenue) this.instance).setSessionId(str);
            return this;
        }

        private a() {
            super(IlrdRequest$ImpressionLevelRevenue.DEFAULT_INSTANCE);
        }
    }

    static {
        IlrdRequest$ImpressionLevelRevenue ilrdRequest$ImpressionLevelRevenue = new IlrdRequest$ImpressionLevelRevenue();
        DEFAULT_INSTANCE = ilrdRequest$ImpressionLevelRevenue;
        GeneratedMessageLite.registerDefaultInstance(IlrdRequest$ImpressionLevelRevenue.class, ilrdRequest$ImpressionLevelRevenue);
    }

    private IlrdRequest$ImpressionLevelRevenue() {
    }

    private void clearEventId() {
        this.eventId_ = getDefaultInstance().getEventId();
    }

    private void clearLevelplay() {
        if (this.platformCase_ == 4) {
            this.platformCase_ = 0;
            this.platform_ = null;
        }
    }

    private void clearMax() {
        if (this.platformCase_ == 3) {
            this.platformCase_ = 0;
            this.platform_ = null;
        }
    }

    private void clearPlatform() {
        this.platformCase_ = 0;
        this.platform_ = null;
    }

    private void clearSessionId() {
        this.sessionId_ = getDefaultInstance().getSessionId();
    }

    public static IlrdRequest$ImpressionLevelRevenue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private void mergeLevelplay(IlrdRequest$LevelPlayImpression ilrdRequest$LevelPlayImpression) {
        ilrdRequest$LevelPlayImpression.getClass();
        if (this.platformCase_ == 4 && this.platform_ != IlrdRequest$LevelPlayImpression.getDefaultInstance()) {
            this.platform_ = IlrdRequest$LevelPlayImpression.newBuilder((IlrdRequest$LevelPlayImpression) this.platform_).mergeFrom((IlrdRequest$LevelPlayImpression.a) ilrdRequest$LevelPlayImpression).buildPartial();
        } else {
            this.platform_ = ilrdRequest$LevelPlayImpression;
        }
        this.platformCase_ = 4;
    }

    private void mergeMax(IlrdRequest$MaxImpression ilrdRequest$MaxImpression) {
        ilrdRequest$MaxImpression.getClass();
        if (this.platformCase_ == 3 && this.platform_ != IlrdRequest$MaxImpression.getDefaultInstance()) {
            this.platform_ = IlrdRequest$MaxImpression.newBuilder((IlrdRequest$MaxImpression) this.platform_).mergeFrom((IlrdRequest$MaxImpression.a) ilrdRequest$MaxImpression).buildPartial();
        } else {
            this.platform_ = ilrdRequest$MaxImpression;
        }
        this.platformCase_ = 3;
    }

    public static a newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static IlrdRequest$ImpressionLevelRevenue parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Parser<IlrdRequest$ImpressionLevelRevenue> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEventId(String str) {
        str.getClass();
        this.eventId_ = str;
    }

    private void setEventIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.eventId_ = byteString.toStringUtf8();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLevelplay(IlrdRequest$LevelPlayImpression ilrdRequest$LevelPlayImpression) {
        ilrdRequest$LevelPlayImpression.getClass();
        this.platform_ = ilrdRequest$LevelPlayImpression;
        this.platformCase_ = 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMax(IlrdRequest$MaxImpression ilrdRequest$MaxImpression) {
        ilrdRequest$MaxImpression.getClass();
        this.platform_ = ilrdRequest$MaxImpression;
        this.platformCase_ = 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSessionId(String str) {
        str.getClass();
        this.sessionId_ = str;
    }

    private void setSessionIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.sessionId_ = byteString.toStringUtf8();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (g.f31999a[methodToInvoke.ordinal()]) {
            case 1:
                return new IlrdRequest$ImpressionLevelRevenue();
            case 2:
                return new a();
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003<\u0000\u0004<\u0000", new Object[]{"platform_", "platformCase_", "sessionId_", "eventId_", IlrdRequest$MaxImpression.class, IlrdRequest$LevelPlayImpression.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<IlrdRequest$ImpressionLevelRevenue> parser = PARSER;
                if (parser == null) {
                    synchronized (IlrdRequest$ImpressionLevelRevenue.class) {
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

    public String getEventId() {
        return this.eventId_;
    }

    public ByteString getEventIdBytes() {
        return ByteString.copyFromUtf8(this.eventId_);
    }

    public IlrdRequest$LevelPlayImpression getLevelplay() {
        if (this.platformCase_ == 4) {
            return (IlrdRequest$LevelPlayImpression) this.platform_;
        }
        return IlrdRequest$LevelPlayImpression.getDefaultInstance();
    }

    public IlrdRequest$MaxImpression getMax() {
        if (this.platformCase_ == 3) {
            return (IlrdRequest$MaxImpression) this.platform_;
        }
        return IlrdRequest$MaxImpression.getDefaultInstance();
    }

    public PlatformCase getPlatformCase() {
        return PlatformCase.forNumber(this.platformCase_);
    }

    public String getSessionId() {
        return this.sessionId_;
    }

    public ByteString getSessionIdBytes() {
        return ByteString.copyFromUtf8(this.sessionId_);
    }

    public boolean hasLevelplay() {
        if (this.platformCase_ == 4) {
            return true;
        }
        return false;
    }

    public boolean hasMax() {
        if (this.platformCase_ == 3) {
            return true;
        }
        return false;
    }

    public static a newBuilder(IlrdRequest$ImpressionLevelRevenue ilrdRequest$ImpressionLevelRevenue) {
        return DEFAULT_INSTANCE.createBuilder(ilrdRequest$ImpressionLevelRevenue);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(InputStream inputStream) throws IOException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static IlrdRequest$ImpressionLevelRevenue parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (IlrdRequest$ImpressionLevelRevenue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
