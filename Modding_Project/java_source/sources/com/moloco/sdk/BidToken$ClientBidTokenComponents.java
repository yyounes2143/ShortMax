package com.moloco.sdk;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public final class BidToken$ClientBidTokenComponents extends GeneratedMessageLite<BidToken$ClientBidTokenComponents, a> implements MessageLiteOrBuilder {
    public static final int ACCESSIBILITY_INFO_FIELD_NUMBER = 11;
    public static final int AD_INFO_FIELD_NUMBER = 8;
    public static final int AUDIO_INFO_FIELD_NUMBER = 10;
    public static final int BATTERY_INFO_FIELD_NUMBER = 9;
    private static final BidToken$ClientBidTokenComponents DEFAULT_INSTANCE;
    public static final int DEVICE_FIELD_NUMBER = 3;
    public static final int DIR_INFO_FIELD_NUMBER = 6;
    public static final int IDFV_FIELD_NUMBER = 1;
    public static final int IMP_LVL_REV_DATA_FIELD_NUMBER = 12;
    public static final int INFO_FIELD_NUMBER = 4;
    public static final int MEMORY_INFO_FIELD_NUMBER = 5;
    public static final int NETWORK_INFO_FIELD_NUMBER = 7;
    private static volatile Parser<BidToken$ClientBidTokenComponents> PARSER = null;
    public static final int PRIVACY_FIELD_NUMBER = 2;
    private AccessibilityInfo accessibilityInfo_;
    private AdvertisingInfo adInfo_;
    private AudioInfo audioInfo_;
    private BatteryInfo batteryInfo_;
    private int bitField0_;
    private Device device_;
    private DirInfo dirInfo_;
    private String idfv_ = "";
    private ImpLvlRevData impLvlRevData_;
    private SdkInfo info_;
    private MemoryInfo memoryInfo_;
    private NetworkInfo networkInfo_;
    private Privacy privacy_;

    /* loaded from: classes6.dex */
    public static final class AccessibilityInfo extends GeneratedMessageLite<AccessibilityInfo, a> implements MessageLiteOrBuilder {
        public static final int ACCESSIBILITY_CAPTIONING_ENABLED_FIELD_NUMBER = 1;
        public static final int ACCESSIBILITY_LARGE_POINTER_ICON_FIELD_NUMBER = 2;
        private static final AccessibilityInfo DEFAULT_INSTANCE;
        public static final int FONT_SCALE_FIELD_NUMBER = 4;
        private static volatile Parser<AccessibilityInfo> PARSER = null;
        public static final int REDUCE_BRIGHT_COLORS_ACTIVATED_FIELD_NUMBER = 3;
        private boolean accessibilityCaptioningEnabled_;
        private boolean accessibilityLargePointerIcon_;
        private int bitField0_;
        private float fontScale_;
        private boolean reduceBrightColorsActivated_;

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<AccessibilityInfo, a> implements MessageLiteOrBuilder {
            public a a(boolean z10) {
                copyOnWrite();
                ((AccessibilityInfo) this.instance).setAccessibilityCaptioningEnabled(z10);
                return this;
            }

            public a b(boolean z10) {
                copyOnWrite();
                ((AccessibilityInfo) this.instance).setAccessibilityLargePointerIcon(z10);
                return this;
            }

            public a c(float f10) {
                copyOnWrite();
                ((AccessibilityInfo) this.instance).setFontScale(f10);
                return this;
            }

            public a e(boolean z10) {
                copyOnWrite();
                ((AccessibilityInfo) this.instance).setReduceBrightColorsActivated(z10);
                return this;
            }

            private a() {
                super(AccessibilityInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            AccessibilityInfo accessibilityInfo = new AccessibilityInfo();
            DEFAULT_INSTANCE = accessibilityInfo;
            GeneratedMessageLite.registerDefaultInstance(AccessibilityInfo.class, accessibilityInfo);
        }

        private AccessibilityInfo() {
        }

        private void clearAccessibilityCaptioningEnabled() {
            this.bitField0_ &= -2;
            this.accessibilityCaptioningEnabled_ = false;
        }

        private void clearAccessibilityLargePointerIcon() {
            this.bitField0_ &= -3;
            this.accessibilityLargePointerIcon_ = false;
        }

        private void clearFontScale() {
            this.bitField0_ &= -9;
            this.fontScale_ = 0.0f;
        }

        private void clearReduceBrightColorsActivated() {
            this.bitField0_ &= -5;
            this.reduceBrightColorsActivated_ = false;
        }

        public static AccessibilityInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static AccessibilityInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AccessibilityInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AccessibilityInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<AccessibilityInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccessibilityCaptioningEnabled(boolean z10) {
            this.bitField0_ |= 1;
            this.accessibilityCaptioningEnabled_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccessibilityLargePointerIcon(boolean z10) {
            this.bitField0_ |= 2;
            this.accessibilityLargePointerIcon_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFontScale(float f10) {
            this.bitField0_ |= 8;
            this.fontScale_ = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReduceBrightColorsActivated(boolean z10) {
            this.bitField0_ |= 4;
            this.reduceBrightColorsActivated_ = z10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new AccessibilityInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ခ\u0003", new Object[]{"bitField0_", "accessibilityCaptioningEnabled_", "accessibilityLargePointerIcon_", "reduceBrightColorsActivated_", "fontScale_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AccessibilityInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (AccessibilityInfo.class) {
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

        public boolean getAccessibilityCaptioningEnabled() {
            return this.accessibilityCaptioningEnabled_;
        }

        public boolean getAccessibilityLargePointerIcon() {
            return this.accessibilityLargePointerIcon_;
        }

        public float getFontScale() {
            return this.fontScale_;
        }

        public boolean getReduceBrightColorsActivated() {
            return this.reduceBrightColorsActivated_;
        }

        public boolean hasAccessibilityCaptioningEnabled() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasAccessibilityLargePointerIcon() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasFontScale() {
            if ((this.bitField0_ & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasReduceBrightColorsActivated() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(AccessibilityInfo accessibilityInfo) {
            return DEFAULT_INSTANCE.createBuilder(accessibilityInfo);
        }

        public static AccessibilityInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AccessibilityInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AccessibilityInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static AccessibilityInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static AccessibilityInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static AccessibilityInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static AccessibilityInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static AccessibilityInfo parseFrom(InputStream inputStream) throws IOException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AccessibilityInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AccessibilityInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static AccessibilityInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AccessibilityInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class AdvertisingInfo extends GeneratedMessageLite<AdvertisingInfo, a> implements MessageLiteOrBuilder {
        private static final AdvertisingInfo DEFAULT_INSTANCE;
        public static final int DNT_FIELD_NUMBER = 2;
        public static final int ID_FIELD_NUMBER = 1;
        private static volatile Parser<AdvertisingInfo> PARSER;
        private int bitField0_;
        private boolean dnt_;
        private String id_ = "";

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<AdvertisingInfo, a> implements MessageLiteOrBuilder {
            public a a(boolean z10) {
                copyOnWrite();
                ((AdvertisingInfo) this.instance).setDnt(z10);
                return this;
            }

            public a b(String str) {
                copyOnWrite();
                ((AdvertisingInfo) this.instance).setId(str);
                return this;
            }

            private a() {
                super(AdvertisingInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            AdvertisingInfo advertisingInfo = new AdvertisingInfo();
            DEFAULT_INSTANCE = advertisingInfo;
            GeneratedMessageLite.registerDefaultInstance(AdvertisingInfo.class, advertisingInfo);
        }

        private AdvertisingInfo() {
        }

        private void clearDnt() {
            this.bitField0_ &= -3;
            this.dnt_ = false;
        }

        private void clearId() {
            this.bitField0_ &= -2;
            this.id_ = getDefaultInstance().getId();
        }

        public static AdvertisingInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static AdvertisingInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdvertisingInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AdvertisingInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<AdvertisingInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDnt(boolean z10) {
            this.bitField0_ |= 2;
            this.dnt_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(String str) {
            str.getClass();
            this.bitField0_ |= 1;
            this.id_ = str;
        }

        private void setIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.id_ = byteString.toStringUtf8();
            this.bitField0_ |= 1;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new AdvertisingInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ለ\u0000\u0002ဇ\u0001", new Object[]{"bitField0_", "id_", "dnt_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AdvertisingInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (AdvertisingInfo.class) {
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

        public boolean getDnt() {
            return this.dnt_;
        }

        public String getId() {
            return this.id_;
        }

        public ByteString getIdBytes() {
            return ByteString.copyFromUtf8(this.id_);
        }

        public boolean hasDnt() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasId() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(AdvertisingInfo advertisingInfo) {
            return DEFAULT_INSTANCE.createBuilder(advertisingInfo);
        }

        public static AdvertisingInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdvertisingInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AdvertisingInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static AdvertisingInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static AdvertisingInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static AdvertisingInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static AdvertisingInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static AdvertisingInfo parseFrom(InputStream inputStream) throws IOException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AdvertisingInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AdvertisingInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static AdvertisingInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdvertisingInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class AudioInfo extends GeneratedMessageLite<AudioInfo, a> implements MessageLiteOrBuilder {
        private static final AudioInfo DEFAULT_INSTANCE;
        public static final int MUTE_SWITCH_FIELD_NUMBER = 1;
        private static volatile Parser<AudioInfo> PARSER = null;
        public static final int VOL_FIELD_NUMBER = 2;
        private int bitField0_;
        private int muteSwitch_;
        private int vol_;

        /* loaded from: classes6.dex */
        public enum MuteSwitchState implements Internal.EnumLite {
            SILENT(0),
            VIBRATE(1),
            NORMAL(2),
            UNRECOGNIZED(-1);
            
            public static final int NORMAL_VALUE = 2;
            public static final int SILENT_VALUE = 0;
            public static final int VIBRATE_VALUE = 1;
            private static final Internal.EnumLiteMap<MuteSwitchState> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<MuteSwitchState> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public MuteSwitchState findValueByNumber(int i10) {
                    return MuteSwitchState.forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            private static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31787a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (MuteSwitchState.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            MuteSwitchState(int i10) {
                this.value = i10;
            }

            public static MuteSwitchState forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return NORMAL;
                    }
                    return VIBRATE;
                }
                return SILENT;
            }

            public static Internal.EnumLiteMap<MuteSwitchState> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31787a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Deprecated
            public static MuteSwitchState valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<AudioInfo, a> implements MessageLiteOrBuilder {
            public a a(MuteSwitchState muteSwitchState) {
                copyOnWrite();
                ((AudioInfo) this.instance).setMuteSwitch(muteSwitchState);
                return this;
            }

            public a b(int i10) {
                copyOnWrite();
                ((AudioInfo) this.instance).setVol(i10);
                return this;
            }

            private a() {
                super(AudioInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            AudioInfo audioInfo = new AudioInfo();
            DEFAULT_INSTANCE = audioInfo;
            GeneratedMessageLite.registerDefaultInstance(AudioInfo.class, audioInfo);
        }

        private AudioInfo() {
        }

        private void clearMuteSwitch() {
            this.bitField0_ &= -2;
            this.muteSwitch_ = 0;
        }

        private void clearVol() {
            this.bitField0_ &= -3;
            this.vol_ = 0;
        }

        public static AudioInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static AudioInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AudioInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AudioInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<AudioInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMuteSwitch(MuteSwitchState muteSwitchState) {
            this.muteSwitch_ = muteSwitchState.getNumber();
            this.bitField0_ |= 1;
        }

        private void setMuteSwitchValue(int i10) {
            this.bitField0_ |= 1;
            this.muteSwitch_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVol(int i10) {
            this.bitField0_ |= 2;
            this.vol_ = i10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new AudioInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဋ\u0001", new Object[]{"bitField0_", "muteSwitch_", "vol_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<AudioInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (AudioInfo.class) {
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

        public MuteSwitchState getMuteSwitch() {
            MuteSwitchState forNumber = MuteSwitchState.forNumber(this.muteSwitch_);
            if (forNumber == null) {
                return MuteSwitchState.UNRECOGNIZED;
            }
            return forNumber;
        }

        public int getMuteSwitchValue() {
            return this.muteSwitch_;
        }

        public int getVol() {
            return this.vol_;
        }

        public boolean hasMuteSwitch() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasVol() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(AudioInfo audioInfo) {
            return DEFAULT_INSTANCE.createBuilder(audioInfo);
        }

        public static AudioInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AudioInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AudioInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static AudioInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static AudioInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static AudioInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static AudioInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static AudioInfo parseFrom(InputStream inputStream) throws IOException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AudioInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AudioInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static AudioInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AudioInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class BatteryInfo extends GeneratedMessageLite<BatteryInfo, a> implements MessageLiteOrBuilder {
        public static final int BATTERY_STATUS_FIELD_NUMBER = 2;
        private static final BatteryInfo DEFAULT_INSTANCE;
        public static final int LOW_POW_MODE_FIELD_NUMBER = 3;
        public static final int MAX_BATTERY_LEVEL_FIELD_NUMBER = 1;
        private static volatile Parser<BatteryInfo> PARSER;
        private int batteryStatus_;
        private int bitField0_;
        private boolean lowPowMode_;
        private int maxBatteryLevel_;

        /* loaded from: classes6.dex */
        public enum BatteryStatus implements Internal.EnumLite {
            UNKNOWN(0),
            CHARGING(1),
            DISCHARGING(2),
            NOT_CHARGING(3),
            FULL(4),
            UNRECOGNIZED(-1);
            
            public static final int CHARGING_VALUE = 1;
            public static final int DISCHARGING_VALUE = 2;
            public static final int FULL_VALUE = 4;
            public static final int NOT_CHARGING_VALUE = 3;
            public static final int UNKNOWN_VALUE = 0;
            private static final Internal.EnumLiteMap<BatteryStatus> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<BatteryStatus> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public BatteryStatus findValueByNumber(int i10) {
                    return BatteryStatus.forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            private static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31788a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (BatteryStatus.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            BatteryStatus(int i10) {
                this.value = i10;
            }

            public static BatteryStatus forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    return null;
                                }
                                return FULL;
                            }
                            return NOT_CHARGING;
                        }
                        return DISCHARGING;
                    }
                    return CHARGING;
                }
                return UNKNOWN;
            }

            public static Internal.EnumLiteMap<BatteryStatus> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31788a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Deprecated
            public static BatteryStatus valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<BatteryInfo, a> implements MessageLiteOrBuilder {
            public a a(BatteryStatus batteryStatus) {
                copyOnWrite();
                ((BatteryInfo) this.instance).setBatteryStatus(batteryStatus);
                return this;
            }

            public a b(boolean z10) {
                copyOnWrite();
                ((BatteryInfo) this.instance).setLowPowMode(z10);
                return this;
            }

            public a c(int i10) {
                copyOnWrite();
                ((BatteryInfo) this.instance).setMaxBatteryLevel(i10);
                return this;
            }

            private a() {
                super(BatteryInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            BatteryInfo batteryInfo = new BatteryInfo();
            DEFAULT_INSTANCE = batteryInfo;
            GeneratedMessageLite.registerDefaultInstance(BatteryInfo.class, batteryInfo);
        }

        private BatteryInfo() {
        }

        private void clearBatteryStatus() {
            this.bitField0_ &= -3;
            this.batteryStatus_ = 0;
        }

        private void clearLowPowMode() {
            this.bitField0_ &= -5;
            this.lowPowMode_ = false;
        }

        private void clearMaxBatteryLevel() {
            this.bitField0_ &= -2;
            this.maxBatteryLevel_ = 0;
        }

        public static BatteryInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static BatteryInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BatteryInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static BatteryInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<BatteryInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBatteryStatus(BatteryStatus batteryStatus) {
            this.batteryStatus_ = batteryStatus.getNumber();
            this.bitField0_ |= 2;
        }

        private void setBatteryStatusValue(int i10) {
            this.bitField0_ |= 2;
            this.batteryStatus_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLowPowMode(boolean z10) {
            this.bitField0_ |= 4;
            this.lowPowMode_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxBatteryLevel(int i10) {
            this.bitField0_ |= 1;
            this.maxBatteryLevel_ = i10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new BatteryInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဌ\u0001\u0003ဇ\u0002", new Object[]{"bitField0_", "maxBatteryLevel_", "batteryStatus_", "lowPowMode_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<BatteryInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (BatteryInfo.class) {
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

        public BatteryStatus getBatteryStatus() {
            BatteryStatus forNumber = BatteryStatus.forNumber(this.batteryStatus_);
            if (forNumber == null) {
                return BatteryStatus.UNRECOGNIZED;
            }
            return forNumber;
        }

        public int getBatteryStatusValue() {
            return this.batteryStatus_;
        }

        public boolean getLowPowMode() {
            return this.lowPowMode_;
        }

        public int getMaxBatteryLevel() {
            return this.maxBatteryLevel_;
        }

        public boolean hasBatteryStatus() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasLowPowMode() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasMaxBatteryLevel() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(BatteryInfo batteryInfo) {
            return DEFAULT_INSTANCE.createBuilder(batteryInfo);
        }

        public static BatteryInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BatteryInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static BatteryInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static BatteryInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static BatteryInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static BatteryInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static BatteryInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static BatteryInfo parseFrom(InputStream inputStream) throws IOException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static BatteryInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static BatteryInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static BatteryInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (BatteryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Device extends GeneratedMessageLite<Device, a> implements MessageLiteOrBuilder {
        public static final int BRAND_FIELD_NUMBER = 23;
        public static final int CARRIER_FIELD_NUMBER = 6;
        public static final int DBT_FIELD_NUMBER = 15;
        private static final Device DEFAULT_INSTANCE;
        public static final int DEVICETYPE_FIELD_NUMBER = 7;
        public static final int GEO_FIELD_NUMBER = 9;
        public static final int HARDWARE_FIELD_NUMBER = 22;
        public static final int HAS_GY_FIELD_NUMBER = 17;
        public static final int HWV_FIELD_NUMBER = 5;
        public static final int H_FIELD_NUMBER = 11;
        public static final int JS_FIELD_NUMBER = 8;
        public static final int KB_LOC_FIELD_NUMBER = 18;
        public static final int LANGUAGE_FIELD_NUMBER = 1;
        public static final int LOCALE_FIELD_NUMBER = 19;
        public static final int MAKE_FIELD_NUMBER = 3;
        public static final int MODEL_FIELD_NUMBER = 4;
        public static final int ORTN_FIELD_NUMBER = 16;
        public static final int OSV_FIELD_NUMBER = 2;
        public static final int OS_FIELD_NUMBER = 14;
        private static volatile Parser<Device> PARSER = null;
        public static final int PPI_FIELD_NUMBER = 12;
        public static final int PXRATIO_FIELD_NUMBER = 13;
        public static final int W_FIELD_NUMBER = 10;
        public static final int XDPI_FIELD_NUMBER = 20;
        public static final int YDPI_FIELD_NUMBER = 21;
        private int bitField0_;
        private long dbt_;
        private int devicetype_;
        private Geo geo_;
        private int h_;
        private boolean hasGy_;
        private int js_;
        private int ortn_;
        private int ppi_;
        private double pxratio_;
        private int w_;
        private float xdpi_;
        private float ydpi_;
        private String language_ = "";
        private String osv_ = "";
        private String make_ = "";
        private String model_ = "";
        private String hwv_ = "";
        private String carrier_ = "";
        private String os_ = "";
        private String kbLoc_ = "";
        private String locale_ = "";
        private String hardware_ = "";
        private String brand_ = "";

        /* loaded from: classes6.dex */
        public enum Orientation implements Internal.EnumLite {
            UNKNOWN(0),
            PORTRAIT(1),
            LANDSCAPE(2),
            UNRECOGNIZED(-1);
            
            public static final int LANDSCAPE_VALUE = 2;
            public static final int PORTRAIT_VALUE = 1;
            public static final int UNKNOWN_VALUE = 0;
            private static final Internal.EnumLiteMap<Orientation> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<Orientation> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public Orientation findValueByNumber(int i10) {
                    return Orientation.forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            private static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31789a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (Orientation.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            Orientation(int i10) {
                this.value = i10;
            }

            public static Orientation forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return LANDSCAPE;
                    }
                    return PORTRAIT;
                }
                return UNKNOWN;
            }

            public static Internal.EnumLiteMap<Orientation> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31789a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Deprecated
            public static Orientation valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<Device, a> implements MessageLiteOrBuilder {
            public a a(String str) {
                copyOnWrite();
                ((Device) this.instance).setBrand(str);
                return this;
            }

            public a b(String str) {
                copyOnWrite();
                ((Device) this.instance).setCarrier(str);
                return this;
            }

            public a c(long j10) {
                copyOnWrite();
                ((Device) this.instance).setDbt(j10);
                return this;
            }

            public a e(int i10) {
                copyOnWrite();
                ((Device) this.instance).setDevicetype(i10);
                return this;
            }

            public a f(Geo geo) {
                copyOnWrite();
                ((Device) this.instance).setGeo(geo);
                return this;
            }

            public a g(int i10) {
                copyOnWrite();
                ((Device) this.instance).setH(i10);
                return this;
            }

            public a h(String str) {
                copyOnWrite();
                ((Device) this.instance).setHardware(str);
                return this;
            }

            public a i(boolean z10) {
                copyOnWrite();
                ((Device) this.instance).setHasGy(z10);
                return this;
            }

            public a j(String str) {
                copyOnWrite();
                ((Device) this.instance).setHwv(str);
                return this;
            }

            public a k(int i10) {
                copyOnWrite();
                ((Device) this.instance).setJs(i10);
                return this;
            }

            public a l(String str) {
                copyOnWrite();
                ((Device) this.instance).setKbLoc(str);
                return this;
            }

            public a m(String str) {
                copyOnWrite();
                ((Device) this.instance).setLanguage(str);
                return this;
            }

            public a n(String str) {
                copyOnWrite();
                ((Device) this.instance).setLocale(str);
                return this;
            }

            public a o(String str) {
                copyOnWrite();
                ((Device) this.instance).setMake(str);
                return this;
            }

            public a p(String str) {
                copyOnWrite();
                ((Device) this.instance).setModel(str);
                return this;
            }

            public a q(Orientation orientation) {
                copyOnWrite();
                ((Device) this.instance).setOrtn(orientation);
                return this;
            }

            public a r(String str) {
                copyOnWrite();
                ((Device) this.instance).setOs(str);
                return this;
            }

            public a s(String str) {
                copyOnWrite();
                ((Device) this.instance).setOsv(str);
                return this;
            }

            public a t(int i10) {
                copyOnWrite();
                ((Device) this.instance).setPpi(i10);
                return this;
            }

            public a u(double d10) {
                copyOnWrite();
                ((Device) this.instance).setPxratio(d10);
                return this;
            }

            public a v(int i10) {
                copyOnWrite();
                ((Device) this.instance).setW(i10);
                return this;
            }

            public a w(float f10) {
                copyOnWrite();
                ((Device) this.instance).setXdpi(f10);
                return this;
            }

            public a x(float f10) {
                copyOnWrite();
                ((Device) this.instance).setYdpi(f10);
                return this;
            }

            private a() {
                super(Device.DEFAULT_INSTANCE);
            }
        }

        static {
            Device device = new Device();
            DEFAULT_INSTANCE = device;
            GeneratedMessageLite.registerDefaultInstance(Device.class, device);
        }

        private Device() {
        }

        private void clearBrand() {
            this.bitField0_ &= -4194305;
            this.brand_ = getDefaultInstance().getBrand();
        }

        private void clearCarrier() {
            this.bitField0_ &= -33;
            this.carrier_ = getDefaultInstance().getCarrier();
        }

        private void clearDbt() {
            this.bitField0_ &= -16385;
            this.dbt_ = 0L;
        }

        private void clearDevicetype() {
            this.bitField0_ &= -65;
            this.devicetype_ = 0;
        }

        private void clearGeo() {
            this.geo_ = null;
            this.bitField0_ &= -257;
        }

        private void clearH() {
            this.bitField0_ &= VideoEventOnePlay.EXIT_CODE_BEFORE_SURFACE_NOT_SET;
            this.h_ = 0;
        }

        private void clearHardware() {
            this.bitField0_ &= -2097153;
            this.hardware_ = getDefaultInstance().getHardware();
        }

        private void clearHasGy() {
            this.bitField0_ &= -65537;
            this.hasGy_ = false;
        }

        private void clearHwv() {
            this.bitField0_ &= -17;
            this.hwv_ = getDefaultInstance().getHwv();
        }

        private void clearJs() {
            this.bitField0_ &= -129;
            this.js_ = 0;
        }

        private void clearKbLoc() {
            this.bitField0_ &= -131073;
            this.kbLoc_ = getDefaultInstance().getKbLoc();
        }

        private void clearLanguage() {
            this.bitField0_ &= -2;
            this.language_ = getDefaultInstance().getLanguage();
        }

        private void clearLocale() {
            this.bitField0_ &= -262145;
            this.locale_ = getDefaultInstance().getLocale();
        }

        private void clearMake() {
            this.bitField0_ &= -5;
            this.make_ = getDefaultInstance().getMake();
        }

        private void clearModel() {
            this.bitField0_ &= -9;
            this.model_ = getDefaultInstance().getModel();
        }

        private void clearOrtn() {
            this.bitField0_ &= -32769;
            this.ortn_ = 0;
        }

        private void clearOs() {
            this.bitField0_ &= -8193;
            this.os_ = getDefaultInstance().getOs();
        }

        private void clearOsv() {
            this.bitField0_ &= -3;
            this.osv_ = getDefaultInstance().getOsv();
        }

        private void clearPpi() {
            this.bitField0_ &= -2049;
            this.ppi_ = 0;
        }

        private void clearPxratio() {
            this.bitField0_ &= -4097;
            this.pxratio_ = 0.0d;
        }

        private void clearW() {
            this.bitField0_ &= -513;
            this.w_ = 0;
        }

        private void clearXdpi() {
            this.bitField0_ &= -524289;
            this.xdpi_ = 0.0f;
        }

        private void clearYdpi() {
            this.bitField0_ &= -1048577;
            this.ydpi_ = 0.0f;
        }

        public static Device getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        private void mergeGeo(Geo geo) {
            geo.getClass();
            Geo geo2 = this.geo_;
            if (geo2 != null && geo2 != Geo.getDefaultInstance()) {
                this.geo_ = Geo.newBuilder(this.geo_).mergeFrom((Geo.a) geo).buildPartial();
            } else {
                this.geo_ = geo;
            }
            this.bitField0_ |= 256;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Device parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Device) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Device parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<Device> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBrand(String str) {
            str.getClass();
            this.bitField0_ |= 4194304;
            this.brand_ = str;
        }

        private void setBrandBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.brand_ = byteString.toStringUtf8();
            this.bitField0_ |= 4194304;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCarrier(String str) {
            str.getClass();
            this.bitField0_ |= 32;
            this.carrier_ = str;
        }

        private void setCarrierBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.carrier_ = byteString.toStringUtf8();
            this.bitField0_ |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDbt(long j10) {
            this.bitField0_ |= 16384;
            this.dbt_ = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDevicetype(int i10) {
            this.bitField0_ |= 64;
            this.devicetype_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGeo(Geo geo) {
            geo.getClass();
            this.geo_ = geo;
            this.bitField0_ |= 256;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setH(int i10) {
            this.bitField0_ |= 1024;
            this.h_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHardware(String str) {
            str.getClass();
            this.bitField0_ |= 2097152;
            this.hardware_ = str;
        }

        private void setHardwareBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.hardware_ = byteString.toStringUtf8();
            this.bitField0_ |= 2097152;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHasGy(boolean z10) {
            this.bitField0_ |= 65536;
            this.hasGy_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHwv(String str) {
            str.getClass();
            this.bitField0_ |= 16;
            this.hwv_ = str;
        }

        private void setHwvBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.hwv_ = byteString.toStringUtf8();
            this.bitField0_ |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJs(int i10) {
            this.bitField0_ |= 128;
            this.js_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setKbLoc(String str) {
            str.getClass();
            this.bitField0_ |= 131072;
            this.kbLoc_ = str;
        }

        private void setKbLocBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.kbLoc_ = byteString.toStringUtf8();
            this.bitField0_ |= 131072;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLanguage(String str) {
            str.getClass();
            this.bitField0_ |= 1;
            this.language_ = str;
        }

        private void setLanguageBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.language_ = byteString.toStringUtf8();
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLocale(String str) {
            str.getClass();
            this.bitField0_ |= 262144;
            this.locale_ = str;
        }

        private void setLocaleBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.locale_ = byteString.toStringUtf8();
            this.bitField0_ |= 262144;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMake(String str) {
            str.getClass();
            this.bitField0_ |= 4;
            this.make_ = str;
        }

        private void setMakeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.make_ = byteString.toStringUtf8();
            this.bitField0_ |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setModel(String str) {
            str.getClass();
            this.bitField0_ |= 8;
            this.model_ = str;
        }

        private void setModelBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.model_ = byteString.toStringUtf8();
            this.bitField0_ |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOrtn(Orientation orientation) {
            this.ortn_ = orientation.getNumber();
            this.bitField0_ |= 32768;
        }

        private void setOrtnValue(int i10) {
            this.bitField0_ |= 32768;
            this.ortn_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOs(String str) {
            str.getClass();
            this.bitField0_ |= 8192;
            this.os_ = str;
        }

        private void setOsBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.os_ = byteString.toStringUtf8();
            this.bitField0_ |= 8192;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOsv(String str) {
            str.getClass();
            this.bitField0_ |= 2;
            this.osv_ = str;
        }

        private void setOsvBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.osv_ = byteString.toStringUtf8();
            this.bitField0_ |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPpi(int i10) {
            this.bitField0_ |= 2048;
            this.ppi_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPxratio(double d10) {
            this.bitField0_ |= 4096;
            this.pxratio_ = d10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setW(int i10) {
            this.bitField0_ |= 512;
            this.w_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setXdpi(float f10) {
            this.bitField0_ |= 524288;
            this.xdpi_ = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setYdpi(float f10) {
            this.bitField0_ |= 1048576;
            this.ydpi_ = f10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new Device();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0017\u0000\u0001\u0001\u0017\u0017\u0000\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001\u0003ለ\u0002\u0004ለ\u0003\u0005ለ\u0004\u0006ለ\u0005\u0007ဋ\u0006\bဋ\u0007\tဉ\b\nဋ\t\u000bဋ\n\fဋ\u000b\rက\f\u000eለ\r\u000fဃ\u000e\u0010ဌ\u000f\u0011ဇ\u0010\u0012ለ\u0011\u0013ለ\u0012\u0014ခ\u0013\u0015ခ\u0014\u0016ለ\u0015\u0017ለ\u0016", new Object[]{"bitField0_", "language_", "osv_", "make_", "model_", "hwv_", "carrier_", "devicetype_", "js_", "geo_", "w_", "h_", "ppi_", "pxratio_", "os_", "dbt_", "ortn_", "hasGy_", "kbLoc_", "locale_", "xdpi_", "ydpi_", "hardware_", "brand_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Device> parser = PARSER;
                    if (parser == null) {
                        synchronized (Device.class) {
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

        public String getBrand() {
            return this.brand_;
        }

        public ByteString getBrandBytes() {
            return ByteString.copyFromUtf8(this.brand_);
        }

        public String getCarrier() {
            return this.carrier_;
        }

        public ByteString getCarrierBytes() {
            return ByteString.copyFromUtf8(this.carrier_);
        }

        public long getDbt() {
            return this.dbt_;
        }

        public int getDevicetype() {
            return this.devicetype_;
        }

        public Geo getGeo() {
            Geo geo = this.geo_;
            if (geo == null) {
                return Geo.getDefaultInstance();
            }
            return geo;
        }

        public int getH() {
            return this.h_;
        }

        public String getHardware() {
            return this.hardware_;
        }

        public ByteString getHardwareBytes() {
            return ByteString.copyFromUtf8(this.hardware_);
        }

        public boolean getHasGy() {
            return this.hasGy_;
        }

        public String getHwv() {
            return this.hwv_;
        }

        public ByteString getHwvBytes() {
            return ByteString.copyFromUtf8(this.hwv_);
        }

        public int getJs() {
            return this.js_;
        }

        public String getKbLoc() {
            return this.kbLoc_;
        }

        public ByteString getKbLocBytes() {
            return ByteString.copyFromUtf8(this.kbLoc_);
        }

        public String getLanguage() {
            return this.language_;
        }

        public ByteString getLanguageBytes() {
            return ByteString.copyFromUtf8(this.language_);
        }

        public String getLocale() {
            return this.locale_;
        }

        public ByteString getLocaleBytes() {
            return ByteString.copyFromUtf8(this.locale_);
        }

        public String getMake() {
            return this.make_;
        }

        public ByteString getMakeBytes() {
            return ByteString.copyFromUtf8(this.make_);
        }

        public String getModel() {
            return this.model_;
        }

        public ByteString getModelBytes() {
            return ByteString.copyFromUtf8(this.model_);
        }

        public Orientation getOrtn() {
            Orientation forNumber = Orientation.forNumber(this.ortn_);
            if (forNumber == null) {
                return Orientation.UNRECOGNIZED;
            }
            return forNumber;
        }

        public int getOrtnValue() {
            return this.ortn_;
        }

        public String getOs() {
            return this.os_;
        }

        public ByteString getOsBytes() {
            return ByteString.copyFromUtf8(this.os_);
        }

        public String getOsv() {
            return this.osv_;
        }

        public ByteString getOsvBytes() {
            return ByteString.copyFromUtf8(this.osv_);
        }

        public int getPpi() {
            return this.ppi_;
        }

        public double getPxratio() {
            return this.pxratio_;
        }

        public int getW() {
            return this.w_;
        }

        public float getXdpi() {
            return this.xdpi_;
        }

        public float getYdpi() {
            return this.ydpi_;
        }

        public boolean hasBrand() {
            if ((this.bitField0_ & 4194304) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasCarrier() {
            if ((this.bitField0_ & 32) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasDbt() {
            if ((this.bitField0_ & 16384) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasDevicetype() {
            if ((this.bitField0_ & 64) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasGeo() {
            if ((this.bitField0_ & 256) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasH() {
            if ((this.bitField0_ & 1024) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasHardware() {
            if ((this.bitField0_ & 2097152) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasHasGy() {
            if ((this.bitField0_ & 65536) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasHwv() {
            if ((this.bitField0_ & 16) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasJs() {
            if ((this.bitField0_ & 128) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasKbLoc() {
            if ((this.bitField0_ & 131072) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasLanguage() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasLocale() {
            if ((this.bitField0_ & 262144) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasMake() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasModel() {
            if ((this.bitField0_ & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasOrtn() {
            if ((this.bitField0_ & 32768) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasOs() {
            if ((this.bitField0_ & 8192) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasOsv() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasPpi() {
            if ((this.bitField0_ & 2048) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasPxratio() {
            if ((this.bitField0_ & 4096) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasW() {
            if ((this.bitField0_ & 512) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasXdpi() {
            if ((this.bitField0_ & 524288) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasYdpi() {
            if ((this.bitField0_ & 1048576) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(Device device) {
            return DEFAULT_INSTANCE.createBuilder(device);
        }

        public static Device parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Device) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Device parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Device parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Device parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Device parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Device parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Device parseFrom(InputStream inputStream) throws IOException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Device parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Device parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Device parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Device) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class DirInfo extends GeneratedMessageLite<DirInfo, a> implements MessageLiteOrBuilder {
        private static final DirInfo DEFAULT_INSTANCE;
        public static final int DSIZE_BYTES_FIELD_NUMBER = 1;
        private static volatile Parser<DirInfo> PARSER;
        private int bitField0_;
        private long dsizeBytes_;

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<DirInfo, a> implements MessageLiteOrBuilder {
            public a a(long j10) {
                copyOnWrite();
                ((DirInfo) this.instance).setDsizeBytes(j10);
                return this;
            }

            private a() {
                super(DirInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            DirInfo dirInfo = new DirInfo();
            DEFAULT_INSTANCE = dirInfo;
            GeneratedMessageLite.registerDefaultInstance(DirInfo.class, dirInfo);
        }

        private DirInfo() {
        }

        private void clearDsizeBytes() {
            this.bitField0_ &= -2;
            this.dsizeBytes_ = 0L;
        }

        public static DirInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static DirInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DirInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DirInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<DirInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDsizeBytes(long j10) {
            this.bitField0_ |= 1;
            this.dsizeBytes_ = j10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new DirInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဃ\u0000", new Object[]{"bitField0_", "dsizeBytes_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DirInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (DirInfo.class) {
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

        public long getDsizeBytes() {
            return this.dsizeBytes_;
        }

        public boolean hasDsizeBytes() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(DirInfo dirInfo) {
            return DEFAULT_INSTANCE.createBuilder(dirInfo);
        }

        public static DirInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DirInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static DirInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static DirInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static DirInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static DirInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static DirInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static DirInfo parseFrom(InputStream inputStream) throws IOException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DirInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static DirInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static DirInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DirInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Geo extends GeneratedMessageLite<Geo, a> implements MessageLiteOrBuilder {
        private static final Geo DEFAULT_INSTANCE;
        private static volatile Parser<Geo> PARSER = null;
        public static final int UTCOFFSET_FIELD_NUMBER = 1;
        private int bitField0_;
        private int utcoffset_;

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<Geo, a> implements MessageLiteOrBuilder {
            public a a(int i10) {
                copyOnWrite();
                ((Geo) this.instance).setUtcoffset(i10);
                return this;
            }

            private a() {
                super(Geo.DEFAULT_INSTANCE);
            }
        }

        static {
            Geo geo = new Geo();
            DEFAULT_INSTANCE = geo;
            GeneratedMessageLite.registerDefaultInstance(Geo.class, geo);
        }

        private Geo() {
        }

        private void clearUtcoffset() {
            this.bitField0_ &= -2;
            this.utcoffset_ = 0;
        }

        public static Geo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Geo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Geo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Geo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<Geo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUtcoffset(int i10) {
            this.bitField0_ |= 1;
            this.utcoffset_ = i10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new Geo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"bitField0_", "utcoffset_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Geo> parser = PARSER;
                    if (parser == null) {
                        synchronized (Geo.class) {
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

        public int getUtcoffset() {
            return this.utcoffset_;
        }

        public boolean hasUtcoffset() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(Geo geo) {
            return DEFAULT_INSTANCE.createBuilder(geo);
        }

        public static Geo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Geo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Geo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Geo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Geo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Geo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Geo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Geo parseFrom(InputStream inputStream) throws IOException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Geo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Geo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Geo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Geo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class ImpLvlRevData extends GeneratedMessageLite<ImpLvlRevData, a> implements MessageLiteOrBuilder {
        private static final ImpLvlRevData DEFAULT_INSTANCE;
        public static final int IMP_COUNTS_FIELD_NUMBER = 4;
        public static final int LAST_IMP_TS_FIELD_NUMBER = 2;
        private static volatile Parser<ImpLvlRevData> PARSER = null;
        public static final int SESSION_ID_FIELD_NUMBER = 1;
        public static final int SESSION_START_TS_FIELD_NUMBER = 3;
        private ImpCounts impCounts_;
        private long lastImpTs_;
        private String sessionId_ = "";
        private long sessionStartTs_;

        /* loaded from: classes6.dex */
        public static final class ImpCounts extends GeneratedMessageLite<ImpCounts, a> implements MessageLiteOrBuilder {
            public static final int BANNER_FIELD_NUMBER = 4;
            private static final ImpCounts DEFAULT_INSTANCE;
            public static final int INTERSTITIAL_FIELD_NUMBER = 1;
            public static final int MREC_FIELD_NUMBER = 3;
            public static final int NATIVE_FIELD_NUMBER = 5;
            private static volatile Parser<ImpCounts> PARSER = null;
            public static final int REWARDED_FIELD_NUMBER = 2;
            private int banner_;
            private int interstitial_;
            private int mrec_;
            private int native_;
            private int rewarded_;

            /* loaded from: classes6.dex */
            public static final class a extends GeneratedMessageLite.Builder<ImpCounts, a> implements MessageLiteOrBuilder {
                public a a(int i10) {
                    copyOnWrite();
                    ((ImpCounts) this.instance).setBanner(i10);
                    return this;
                }

                public a b(int i10) {
                    copyOnWrite();
                    ((ImpCounts) this.instance).setInterstitial(i10);
                    return this;
                }

                public a c(int i10) {
                    copyOnWrite();
                    ((ImpCounts) this.instance).setMrec(i10);
                    return this;
                }

                public a e(int i10) {
                    copyOnWrite();
                    ((ImpCounts) this.instance).setNative(i10);
                    return this;
                }

                public a f(int i10) {
                    copyOnWrite();
                    ((ImpCounts) this.instance).setRewarded(i10);
                    return this;
                }

                private a() {
                    super(ImpCounts.DEFAULT_INSTANCE);
                }
            }

            static {
                ImpCounts impCounts = new ImpCounts();
                DEFAULT_INSTANCE = impCounts;
                GeneratedMessageLite.registerDefaultInstance(ImpCounts.class, impCounts);
            }

            private ImpCounts() {
            }

            private void clearBanner() {
                this.banner_ = 0;
            }

            private void clearInterstitial() {
                this.interstitial_ = 0;
            }

            private void clearMrec() {
                this.mrec_ = 0;
            }

            private void clearNative() {
                this.native_ = 0;
            }

            private void clearRewarded() {
                this.rewarded_ = 0;
            }

            public static ImpCounts getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static ImpCounts parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (ImpCounts) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static ImpCounts parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<ImpCounts> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setBanner(int i10) {
                this.banner_ = i10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setInterstitial(int i10) {
                this.interstitial_ = i10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setMrec(int i10) {
                this.mrec_ = i10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setNative(int i10) {
                this.native_ = i10;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setRewarded(int i10) {
                this.rewarded_ = i10;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                switch (c.f31990a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new ImpCounts();
                    case 2:
                        return new a();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004\u0005\u0004", new Object[]{"interstitial_", "rewarded_", "mrec_", "banner_", "native_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<ImpCounts> parser = PARSER;
                        if (parser == null) {
                            synchronized (ImpCounts.class) {
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

            public int getBanner() {
                return this.banner_;
            }

            public int getInterstitial() {
                return this.interstitial_;
            }

            public int getMrec() {
                return this.mrec_;
            }

            public int getNative() {
                return this.native_;
            }

            public int getRewarded() {
                return this.rewarded_;
            }

            public static a newBuilder(ImpCounts impCounts) {
                return DEFAULT_INSTANCE.createBuilder(impCounts);
            }

            public static ImpCounts parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ImpCounts) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static ImpCounts parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static ImpCounts parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static ImpCounts parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static ImpCounts parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static ImpCounts parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static ImpCounts parseFrom(InputStream inputStream) throws IOException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static ImpCounts parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static ImpCounts parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static ImpCounts parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (ImpCounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<ImpLvlRevData, a> implements MessageLiteOrBuilder {
            public a a(ImpCounts impCounts) {
                copyOnWrite();
                ((ImpLvlRevData) this.instance).setImpCounts(impCounts);
                return this;
            }

            public a b(long j10) {
                copyOnWrite();
                ((ImpLvlRevData) this.instance).setLastImpTs(j10);
                return this;
            }

            public a c(String str) {
                copyOnWrite();
                ((ImpLvlRevData) this.instance).setSessionId(str);
                return this;
            }

            public a e(long j10) {
                copyOnWrite();
                ((ImpLvlRevData) this.instance).setSessionStartTs(j10);
                return this;
            }

            private a() {
                super(ImpLvlRevData.DEFAULT_INSTANCE);
            }
        }

        static {
            ImpLvlRevData impLvlRevData = new ImpLvlRevData();
            DEFAULT_INSTANCE = impLvlRevData;
            GeneratedMessageLite.registerDefaultInstance(ImpLvlRevData.class, impLvlRevData);
        }

        private ImpLvlRevData() {
        }

        private void clearImpCounts() {
            this.impCounts_ = null;
        }

        private void clearLastImpTs() {
            this.lastImpTs_ = 0L;
        }

        private void clearSessionId() {
            this.sessionId_ = getDefaultInstance().getSessionId();
        }

        private void clearSessionStartTs() {
            this.sessionStartTs_ = 0L;
        }

        public static ImpLvlRevData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        private void mergeImpCounts(ImpCounts impCounts) {
            impCounts.getClass();
            ImpCounts impCounts2 = this.impCounts_;
            if (impCounts2 != null && impCounts2 != ImpCounts.getDefaultInstance()) {
                this.impCounts_ = ImpCounts.newBuilder(this.impCounts_).mergeFrom((ImpCounts.a) impCounts).buildPartial();
            } else {
                this.impCounts_ = impCounts;
            }
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static ImpLvlRevData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ImpLvlRevData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ImpLvlRevData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<ImpLvlRevData> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImpCounts(ImpCounts impCounts) {
            impCounts.getClass();
            this.impCounts_ = impCounts;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLastImpTs(long j10) {
            this.lastImpTs_ = j10;
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

        /* JADX INFO: Access modifiers changed from: private */
        public void setSessionStartTs(long j10) {
            this.sessionStartTs_ = j10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new ImpLvlRevData();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003\u0002\u0004\t", new Object[]{"sessionId_", "lastImpTs_", "sessionStartTs_", "impCounts_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ImpLvlRevData> parser = PARSER;
                    if (parser == null) {
                        synchronized (ImpLvlRevData.class) {
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

        public ImpCounts getImpCounts() {
            ImpCounts impCounts = this.impCounts_;
            if (impCounts == null) {
                return ImpCounts.getDefaultInstance();
            }
            return impCounts;
        }

        public long getLastImpTs() {
            return this.lastImpTs_;
        }

        public String getSessionId() {
            return this.sessionId_;
        }

        public ByteString getSessionIdBytes() {
            return ByteString.copyFromUtf8(this.sessionId_);
        }

        public long getSessionStartTs() {
            return this.sessionStartTs_;
        }

        public boolean hasImpCounts() {
            if (this.impCounts_ != null) {
                return true;
            }
            return false;
        }

        public static a newBuilder(ImpLvlRevData impLvlRevData) {
            return DEFAULT_INSTANCE.createBuilder(impLvlRevData);
        }

        public static ImpLvlRevData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ImpLvlRevData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ImpLvlRevData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ImpLvlRevData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ImpLvlRevData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ImpLvlRevData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ImpLvlRevData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static ImpLvlRevData parseFrom(InputStream inputStream) throws IOException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ImpLvlRevData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ImpLvlRevData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ImpLvlRevData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ImpLvlRevData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class MemoryInfo extends GeneratedMessageLite<MemoryInfo, a> implements MessageLiteOrBuilder {
        private static final MemoryInfo DEFAULT_INSTANCE;
        public static final int LOW_MEM_FIELD_NUMBER = 1;
        public static final int LOW_MEM_THRESHOLD_BYTES_FIELD_NUMBER = 2;
        private static volatile Parser<MemoryInfo> PARSER = null;
        public static final int TOTAL_MEM_BYTES_FIELD_NUMBER = 3;
        private int bitField0_;
        private long lowMemThresholdBytes_;
        private boolean lowMem_;
        private long totalMemBytes_;

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<MemoryInfo, a> implements MessageLiteOrBuilder {
            public a a(boolean z10) {
                copyOnWrite();
                ((MemoryInfo) this.instance).setLowMem(z10);
                return this;
            }

            public a b(long j10) {
                copyOnWrite();
                ((MemoryInfo) this.instance).setLowMemThresholdBytes(j10);
                return this;
            }

            public a c(long j10) {
                copyOnWrite();
                ((MemoryInfo) this.instance).setTotalMemBytes(j10);
                return this;
            }

            private a() {
                super(MemoryInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            MemoryInfo memoryInfo = new MemoryInfo();
            DEFAULT_INSTANCE = memoryInfo;
            GeneratedMessageLite.registerDefaultInstance(MemoryInfo.class, memoryInfo);
        }

        private MemoryInfo() {
        }

        private void clearLowMem() {
            this.bitField0_ &= -2;
            this.lowMem_ = false;
        }

        private void clearLowMemThresholdBytes() {
            this.bitField0_ &= -3;
            this.lowMemThresholdBytes_ = 0L;
        }

        private void clearTotalMemBytes() {
            this.bitField0_ &= -5;
            this.totalMemBytes_ = 0L;
        }

        public static MemoryInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static MemoryInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (MemoryInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MemoryInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<MemoryInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLowMem(boolean z10) {
            this.bitField0_ |= 1;
            this.lowMem_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLowMemThresholdBytes(long j10) {
            this.bitField0_ |= 2;
            this.lowMemThresholdBytes_ = j10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTotalMemBytes(long j10) {
            this.bitField0_ |= 4;
            this.totalMemBytes_ = j10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new MemoryInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဃ\u0001\u0003ဃ\u0002", new Object[]{"bitField0_", "lowMem_", "lowMemThresholdBytes_", "totalMemBytes_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<MemoryInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (MemoryInfo.class) {
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

        public boolean getLowMem() {
            return this.lowMem_;
        }

        public long getLowMemThresholdBytes() {
            return this.lowMemThresholdBytes_;
        }

        public long getTotalMemBytes() {
            return this.totalMemBytes_;
        }

        public boolean hasLowMem() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasLowMemThresholdBytes() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasTotalMemBytes() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(MemoryInfo memoryInfo) {
            return DEFAULT_INSTANCE.createBuilder(memoryInfo);
        }

        public static MemoryInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MemoryInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MemoryInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static MemoryInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static MemoryInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static MemoryInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static MemoryInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static MemoryInfo parseFrom(InputStream inputStream) throws IOException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MemoryInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MemoryInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static MemoryInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (MemoryInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class NetworkInfo extends GeneratedMessageLite<NetworkInfo, a> implements MessageLiteOrBuilder {
        private static final NetworkInfo DEFAULT_INSTANCE;
        public static final int MCC_FIELD_NUMBER = 3;
        public static final int MNC_FIELD_NUMBER = 4;
        private static volatile Parser<NetworkInfo> PARSER = null;
        public static final int RESTRICTED_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        private int bitField0_;
        private int mcc_;
        private int mnc_;
        private boolean restricted_;
        private int type_;

        /* loaded from: classes6.dex */
        public enum ConnectionType implements Internal.EnumLite {
            UNKNOWN(0),
            WIFI(1),
            CELLULAR(2),
            NO_NETWORK(3),
            UNRECOGNIZED(-1);
            
            public static final int CELLULAR_VALUE = 2;
            public static final int NO_NETWORK_VALUE = 3;
            public static final int UNKNOWN_VALUE = 0;
            public static final int WIFI_VALUE = 1;
            private static final Internal.EnumLiteMap<ConnectionType> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<ConnectionType> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public ConnectionType findValueByNumber(int i10) {
                    return ConnectionType.forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            private static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31790a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (ConnectionType.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            ConnectionType(int i10) {
                this.value = i10;
            }

            public static ConnectionType forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                return null;
                            }
                            return NO_NETWORK;
                        }
                        return CELLULAR;
                    }
                    return WIFI;
                }
                return UNKNOWN;
            }

            public static Internal.EnumLiteMap<ConnectionType> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31790a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            @Deprecated
            public static ConnectionType valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<NetworkInfo, a> implements MessageLiteOrBuilder {
            public a a(int i10) {
                copyOnWrite();
                ((NetworkInfo) this.instance).setMcc(i10);
                return this;
            }

            public a b(int i10) {
                copyOnWrite();
                ((NetworkInfo) this.instance).setMnc(i10);
                return this;
            }

            public a c(boolean z10) {
                copyOnWrite();
                ((NetworkInfo) this.instance).setRestricted(z10);
                return this;
            }

            public a e(ConnectionType connectionType) {
                copyOnWrite();
                ((NetworkInfo) this.instance).setType(connectionType);
                return this;
            }

            private a() {
                super(NetworkInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            NetworkInfo networkInfo = new NetworkInfo();
            DEFAULT_INSTANCE = networkInfo;
            GeneratedMessageLite.registerDefaultInstance(NetworkInfo.class, networkInfo);
        }

        private NetworkInfo() {
        }

        private void clearMcc() {
            this.bitField0_ &= -5;
            this.mcc_ = 0;
        }

        private void clearMnc() {
            this.bitField0_ &= -9;
            this.mnc_ = 0;
        }

        private void clearRestricted() {
            this.bitField0_ &= -3;
            this.restricted_ = false;
        }

        private void clearType() {
            this.bitField0_ &= -2;
            this.type_ = 0;
        }

        public static NetworkInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static NetworkInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (NetworkInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static NetworkInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<NetworkInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMcc(int i10) {
            this.bitField0_ |= 4;
            this.mcc_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMnc(int i10) {
            this.bitField0_ |= 8;
            this.mnc_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRestricted(boolean z10) {
            this.bitField0_ |= 2;
            this.restricted_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(ConnectionType connectionType) {
            this.type_ = connectionType.getNumber();
            this.bitField0_ |= 1;
        }

        private void setTypeValue(int i10) {
            this.bitField0_ |= 1;
            this.type_ = i10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new NetworkInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဋ\u0002\u0004ဋ\u0003", new Object[]{"bitField0_", "type_", "restricted_", "mcc_", "mnc_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<NetworkInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (NetworkInfo.class) {
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

        public int getMcc() {
            return this.mcc_;
        }

        public int getMnc() {
            return this.mnc_;
        }

        public boolean getRestricted() {
            return this.restricted_;
        }

        public ConnectionType getType() {
            ConnectionType forNumber = ConnectionType.forNumber(this.type_);
            if (forNumber == null) {
                return ConnectionType.UNRECOGNIZED;
            }
            return forNumber;
        }

        public int getTypeValue() {
            return this.type_;
        }

        public boolean hasMcc() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasMnc() {
            if ((this.bitField0_ & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasRestricted() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasType() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(NetworkInfo networkInfo) {
            return DEFAULT_INSTANCE.createBuilder(networkInfo);
        }

        public static NetworkInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NetworkInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static NetworkInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static NetworkInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static NetworkInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static NetworkInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static NetworkInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static NetworkInfo parseFrom(InputStream inputStream) throws IOException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static NetworkInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static NetworkInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static NetworkInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (NetworkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Privacy extends GeneratedMessageLite<Privacy, a> implements MessageLiteOrBuilder {
        public static final int CCPA_FIELD_NUMBER = 1;
        public static final int COPPA_FIELD_NUMBER = 3;
        private static final Privacy DEFAULT_INSTANCE;
        public static final int GDPR_FIELD_NUMBER = 2;
        private static volatile Parser<Privacy> PARSER = null;
        public static final int TCF_CONSENT_STRING_FIELD_NUMBER = 5;
        public static final int US_PRIVACY_FIELD_NUMBER = 4;
        private int bitField0_;
        private boolean ccpa_;
        private boolean coppa_;
        private boolean gdpr_;
        private String usPrivacy_ = "";
        private String tcfConsentString_ = "";

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<Privacy, a> implements MessageLiteOrBuilder {
            public a a(boolean z10) {
                copyOnWrite();
                ((Privacy) this.instance).setCcpa(z10);
                return this;
            }

            public a b(boolean z10) {
                copyOnWrite();
                ((Privacy) this.instance).setCoppa(z10);
                return this;
            }

            public a c(boolean z10) {
                copyOnWrite();
                ((Privacy) this.instance).setGdpr(z10);
                return this;
            }

            public a e(String str) {
                copyOnWrite();
                ((Privacy) this.instance).setTcfConsentString(str);
                return this;
            }

            public a f(String str) {
                copyOnWrite();
                ((Privacy) this.instance).setUsPrivacy(str);
                return this;
            }

            private a() {
                super(Privacy.DEFAULT_INSTANCE);
            }
        }

        static {
            Privacy privacy = new Privacy();
            DEFAULT_INSTANCE = privacy;
            GeneratedMessageLite.registerDefaultInstance(Privacy.class, privacy);
        }

        private Privacy() {
        }

        private void clearCcpa() {
            this.bitField0_ &= -2;
            this.ccpa_ = false;
        }

        private void clearCoppa() {
            this.bitField0_ &= -5;
            this.coppa_ = false;
        }

        private void clearGdpr() {
            this.bitField0_ &= -3;
            this.gdpr_ = false;
        }

        private void clearTcfConsentString() {
            this.bitField0_ &= -17;
            this.tcfConsentString_ = getDefaultInstance().getTcfConsentString();
        }

        private void clearUsPrivacy() {
            this.bitField0_ &= -9;
            this.usPrivacy_ = getDefaultInstance().getUsPrivacy();
        }

        public static Privacy getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Privacy parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Privacy) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Privacy parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<Privacy> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCcpa(boolean z10) {
            this.bitField0_ |= 1;
            this.ccpa_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCoppa(boolean z10) {
            this.bitField0_ |= 4;
            this.coppa_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGdpr(boolean z10) {
            this.bitField0_ |= 2;
            this.gdpr_ = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTcfConsentString(String str) {
            str.getClass();
            this.bitField0_ |= 16;
            this.tcfConsentString_ = str;
        }

        private void setTcfConsentStringBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.tcfConsentString_ = byteString.toStringUtf8();
            this.bitField0_ |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUsPrivacy(String str) {
            str.getClass();
            this.bitField0_ |= 8;
            this.usPrivacy_ = str;
        }

        private void setUsPrivacyBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.usPrivacy_ = byteString.toStringUtf8();
            this.bitField0_ |= 8;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new Privacy();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ለ\u0003\u0005ለ\u0004", new Object[]{"bitField0_", "ccpa_", "gdpr_", "coppa_", "usPrivacy_", "tcfConsentString_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Privacy> parser = PARSER;
                    if (parser == null) {
                        synchronized (Privacy.class) {
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

        public boolean getCcpa() {
            return this.ccpa_;
        }

        public boolean getCoppa() {
            return this.coppa_;
        }

        public boolean getGdpr() {
            return this.gdpr_;
        }

        public String getTcfConsentString() {
            return this.tcfConsentString_;
        }

        public ByteString getTcfConsentStringBytes() {
            return ByteString.copyFromUtf8(this.tcfConsentString_);
        }

        public String getUsPrivacy() {
            return this.usPrivacy_;
        }

        public ByteString getUsPrivacyBytes() {
            return ByteString.copyFromUtf8(this.usPrivacy_);
        }

        public boolean hasCcpa() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasCoppa() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasGdpr() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasTcfConsentString() {
            if ((this.bitField0_ & 16) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasUsPrivacy() {
            if ((this.bitField0_ & 8) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(Privacy privacy) {
            return DEFAULT_INSTANCE.createBuilder(privacy);
        }

        public static Privacy parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Privacy) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Privacy parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Privacy parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Privacy parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Privacy parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Privacy parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Privacy parseFrom(InputStream inputStream) throws IOException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Privacy parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Privacy parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Privacy parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Privacy) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class SdkInfo extends GeneratedMessageLite<SdkInfo, a> implements MessageLiteOrBuilder {
        private static final SdkInfo DEFAULT_INSTANCE;
        public static final int INITIALIZED_FIELD_NUMBER = 1;
        private static volatile Parser<SdkInfo> PARSER;
        private int bitField0_;
        private boolean initialized_;

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<SdkInfo, a> implements MessageLiteOrBuilder {
            public a a(boolean z10) {
                copyOnWrite();
                ((SdkInfo) this.instance).setInitialized(z10);
                return this;
            }

            private a() {
                super(SdkInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            SdkInfo sdkInfo = new SdkInfo();
            DEFAULT_INSTANCE = sdkInfo;
            GeneratedMessageLite.registerDefaultInstance(SdkInfo.class, sdkInfo);
        }

        private SdkInfo() {
        }

        private void clearInitialized() {
            this.bitField0_ &= -2;
            this.initialized_ = false;
        }

        public static SdkInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static SdkInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (SdkInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static SdkInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<SdkInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setInitialized(boolean z10) {
            this.bitField0_ |= 1;
            this.initialized_ = z10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            switch (c.f31990a[methodToInvoke.ordinal()]) {
                case 1:
                    return new SdkInfo();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"bitField0_", "initialized_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SdkInfo> parser = PARSER;
                    if (parser == null) {
                        synchronized (SdkInfo.class) {
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

        public boolean getInitialized() {
            return this.initialized_;
        }

        public boolean hasInitialized() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(SdkInfo sdkInfo) {
            return DEFAULT_INSTANCE.createBuilder(sdkInfo);
        }

        public static SdkInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SdkInfo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static SdkInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static SdkInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static SdkInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static SdkInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static SdkInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static SdkInfo parseFrom(InputStream inputStream) throws IOException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static SdkInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static SdkInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static SdkInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (SdkInfo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class a extends GeneratedMessageLite.Builder<BidToken$ClientBidTokenComponents, a> implements MessageLiteOrBuilder {
        public a a(AccessibilityInfo accessibilityInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setAccessibilityInfo(accessibilityInfo);
            return this;
        }

        public a b(AdvertisingInfo advertisingInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setAdInfo(advertisingInfo);
            return this;
        }

        public a c(AudioInfo audioInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setAudioInfo(audioInfo);
            return this;
        }

        public a e(BatteryInfo batteryInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setBatteryInfo(batteryInfo);
            return this;
        }

        public a f(Device device) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setDevice(device);
            return this;
        }

        public a g(DirInfo dirInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setDirInfo(dirInfo);
            return this;
        }

        public a h(ImpLvlRevData impLvlRevData) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setImpLvlRevData(impLvlRevData);
            return this;
        }

        public a i(SdkInfo sdkInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setInfo(sdkInfo);
            return this;
        }

        public a j(MemoryInfo memoryInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setMemoryInfo(memoryInfo);
            return this;
        }

        public a k(NetworkInfo networkInfo) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setNetworkInfo(networkInfo);
            return this;
        }

        public a l(Privacy privacy) {
            copyOnWrite();
            ((BidToken$ClientBidTokenComponents) this.instance).setPrivacy(privacy);
            return this;
        }

        private a() {
            super(BidToken$ClientBidTokenComponents.DEFAULT_INSTANCE);
        }
    }

    static {
        BidToken$ClientBidTokenComponents bidToken$ClientBidTokenComponents = new BidToken$ClientBidTokenComponents();
        DEFAULT_INSTANCE = bidToken$ClientBidTokenComponents;
        GeneratedMessageLite.registerDefaultInstance(BidToken$ClientBidTokenComponents.class, bidToken$ClientBidTokenComponents);
    }

    private BidToken$ClientBidTokenComponents() {
    }

    private void clearAccessibilityInfo() {
        this.accessibilityInfo_ = null;
        this.bitField0_ &= -257;
    }

    private void clearAdInfo() {
        this.adInfo_ = null;
        this.bitField0_ &= -33;
    }

    private void clearAudioInfo() {
        this.audioInfo_ = null;
        this.bitField0_ &= -129;
    }

    private void clearBatteryInfo() {
        this.batteryInfo_ = null;
        this.bitField0_ &= -65;
    }

    private void clearDevice() {
        this.device_ = null;
    }

    private void clearDirInfo() {
        this.dirInfo_ = null;
        this.bitField0_ &= -9;
    }

    private void clearIdfv() {
        this.bitField0_ &= -2;
        this.idfv_ = getDefaultInstance().getIdfv();
    }

    private void clearImpLvlRevData() {
        this.impLvlRevData_ = null;
        this.bitField0_ &= -513;
    }

    private void clearInfo() {
        this.info_ = null;
        this.bitField0_ &= -3;
    }

    private void clearMemoryInfo() {
        this.memoryInfo_ = null;
        this.bitField0_ &= -5;
    }

    private void clearNetworkInfo() {
        this.networkInfo_ = null;
        this.bitField0_ &= -17;
    }

    private void clearPrivacy() {
        this.privacy_ = null;
    }

    public static BidToken$ClientBidTokenComponents getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private void mergeAccessibilityInfo(AccessibilityInfo accessibilityInfo) {
        accessibilityInfo.getClass();
        AccessibilityInfo accessibilityInfo2 = this.accessibilityInfo_;
        if (accessibilityInfo2 != null && accessibilityInfo2 != AccessibilityInfo.getDefaultInstance()) {
            this.accessibilityInfo_ = AccessibilityInfo.newBuilder(this.accessibilityInfo_).mergeFrom((AccessibilityInfo.a) accessibilityInfo).buildPartial();
        } else {
            this.accessibilityInfo_ = accessibilityInfo;
        }
        this.bitField0_ |= 256;
    }

    private void mergeAdInfo(AdvertisingInfo advertisingInfo) {
        advertisingInfo.getClass();
        AdvertisingInfo advertisingInfo2 = this.adInfo_;
        if (advertisingInfo2 != null && advertisingInfo2 != AdvertisingInfo.getDefaultInstance()) {
            this.adInfo_ = AdvertisingInfo.newBuilder(this.adInfo_).mergeFrom((AdvertisingInfo.a) advertisingInfo).buildPartial();
        } else {
            this.adInfo_ = advertisingInfo;
        }
        this.bitField0_ |= 32;
    }

    private void mergeAudioInfo(AudioInfo audioInfo) {
        audioInfo.getClass();
        AudioInfo audioInfo2 = this.audioInfo_;
        if (audioInfo2 != null && audioInfo2 != AudioInfo.getDefaultInstance()) {
            this.audioInfo_ = AudioInfo.newBuilder(this.audioInfo_).mergeFrom((AudioInfo.a) audioInfo).buildPartial();
        } else {
            this.audioInfo_ = audioInfo;
        }
        this.bitField0_ |= 128;
    }

    private void mergeBatteryInfo(BatteryInfo batteryInfo) {
        batteryInfo.getClass();
        BatteryInfo batteryInfo2 = this.batteryInfo_;
        if (batteryInfo2 != null && batteryInfo2 != BatteryInfo.getDefaultInstance()) {
            this.batteryInfo_ = BatteryInfo.newBuilder(this.batteryInfo_).mergeFrom((BatteryInfo.a) batteryInfo).buildPartial();
        } else {
            this.batteryInfo_ = batteryInfo;
        }
        this.bitField0_ |= 64;
    }

    private void mergeDevice(Device device) {
        device.getClass();
        Device device2 = this.device_;
        if (device2 != null && device2 != Device.getDefaultInstance()) {
            this.device_ = Device.newBuilder(this.device_).mergeFrom((Device.a) device).buildPartial();
        } else {
            this.device_ = device;
        }
    }

    private void mergeDirInfo(DirInfo dirInfo) {
        dirInfo.getClass();
        DirInfo dirInfo2 = this.dirInfo_;
        if (dirInfo2 != null && dirInfo2 != DirInfo.getDefaultInstance()) {
            this.dirInfo_ = DirInfo.newBuilder(this.dirInfo_).mergeFrom((DirInfo.a) dirInfo).buildPartial();
        } else {
            this.dirInfo_ = dirInfo;
        }
        this.bitField0_ |= 8;
    }

    private void mergeImpLvlRevData(ImpLvlRevData impLvlRevData) {
        impLvlRevData.getClass();
        ImpLvlRevData impLvlRevData2 = this.impLvlRevData_;
        if (impLvlRevData2 != null && impLvlRevData2 != ImpLvlRevData.getDefaultInstance()) {
            this.impLvlRevData_ = ImpLvlRevData.newBuilder(this.impLvlRevData_).mergeFrom((ImpLvlRevData.a) impLvlRevData).buildPartial();
        } else {
            this.impLvlRevData_ = impLvlRevData;
        }
        this.bitField0_ |= 512;
    }

    private void mergeInfo(SdkInfo sdkInfo) {
        sdkInfo.getClass();
        SdkInfo sdkInfo2 = this.info_;
        if (sdkInfo2 != null && sdkInfo2 != SdkInfo.getDefaultInstance()) {
            this.info_ = SdkInfo.newBuilder(this.info_).mergeFrom((SdkInfo.a) sdkInfo).buildPartial();
        } else {
            this.info_ = sdkInfo;
        }
        this.bitField0_ |= 2;
    }

    private void mergeMemoryInfo(MemoryInfo memoryInfo) {
        memoryInfo.getClass();
        MemoryInfo memoryInfo2 = this.memoryInfo_;
        if (memoryInfo2 != null && memoryInfo2 != MemoryInfo.getDefaultInstance()) {
            this.memoryInfo_ = MemoryInfo.newBuilder(this.memoryInfo_).mergeFrom((MemoryInfo.a) memoryInfo).buildPartial();
        } else {
            this.memoryInfo_ = memoryInfo;
        }
        this.bitField0_ |= 4;
    }

    private void mergeNetworkInfo(NetworkInfo networkInfo) {
        networkInfo.getClass();
        NetworkInfo networkInfo2 = this.networkInfo_;
        if (networkInfo2 != null && networkInfo2 != NetworkInfo.getDefaultInstance()) {
            this.networkInfo_ = NetworkInfo.newBuilder(this.networkInfo_).mergeFrom((NetworkInfo.a) networkInfo).buildPartial();
        } else {
            this.networkInfo_ = networkInfo;
        }
        this.bitField0_ |= 16;
    }

    private void mergePrivacy(Privacy privacy) {
        privacy.getClass();
        Privacy privacy2 = this.privacy_;
        if (privacy2 != null && privacy2 != Privacy.getDefaultInstance()) {
            this.privacy_ = Privacy.newBuilder(this.privacy_).mergeFrom((Privacy.a) privacy).buildPartial();
        } else {
            this.privacy_ = privacy;
        }
    }

    public static a newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static BidToken$ClientBidTokenComponents parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Parser<BidToken$ClientBidTokenComponents> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAccessibilityInfo(AccessibilityInfo accessibilityInfo) {
        accessibilityInfo.getClass();
        this.accessibilityInfo_ = accessibilityInfo;
        this.bitField0_ |= 256;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdInfo(AdvertisingInfo advertisingInfo) {
        advertisingInfo.getClass();
        this.adInfo_ = advertisingInfo;
        this.bitField0_ |= 32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAudioInfo(AudioInfo audioInfo) {
        audioInfo.getClass();
        this.audioInfo_ = audioInfo;
        this.bitField0_ |= 128;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBatteryInfo(BatteryInfo batteryInfo) {
        batteryInfo.getClass();
        this.batteryInfo_ = batteryInfo;
        this.bitField0_ |= 64;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDevice(Device device) {
        device.getClass();
        this.device_ = device;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDirInfo(DirInfo dirInfo) {
        dirInfo.getClass();
        this.dirInfo_ = dirInfo;
        this.bitField0_ |= 8;
    }

    private void setIdfv(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.idfv_ = str;
    }

    private void setIdfvBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.idfv_ = byteString.toStringUtf8();
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImpLvlRevData(ImpLvlRevData impLvlRevData) {
        impLvlRevData.getClass();
        this.impLvlRevData_ = impLvlRevData;
        this.bitField0_ |= 512;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInfo(SdkInfo sdkInfo) {
        sdkInfo.getClass();
        this.info_ = sdkInfo;
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMemoryInfo(MemoryInfo memoryInfo) {
        memoryInfo.getClass();
        this.memoryInfo_ = memoryInfo;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNetworkInfo(NetworkInfo networkInfo) {
        networkInfo.getClass();
        this.networkInfo_ = networkInfo;
        this.bitField0_ |= 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPrivacy(Privacy privacy) {
        privacy.getClass();
        this.privacy_ = privacy;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (c.f31990a[methodToInvoke.ordinal()]) {
            case 1:
                return new BidToken$ClientBidTokenComponents();
            case 2:
                return new a();
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\f\u0000\u0001\u0001\f\f\u0000\u0000\u0000\u0001ለ\u0000\u0002\t\u0003\t\u0004ဉ\u0001\u0005ဉ\u0002\u0006ဉ\u0003\u0007ဉ\u0004\bဉ\u0005\tဉ\u0006\nဉ\u0007\u000bဉ\b\fဉ\t", new Object[]{"bitField0_", "idfv_", "privacy_", "device_", "info_", "memoryInfo_", "dirInfo_", "networkInfo_", "adInfo_", "batteryInfo_", "audioInfo_", "accessibilityInfo_", "impLvlRevData_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<BidToken$ClientBidTokenComponents> parser = PARSER;
                if (parser == null) {
                    synchronized (BidToken$ClientBidTokenComponents.class) {
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

    public AccessibilityInfo getAccessibilityInfo() {
        AccessibilityInfo accessibilityInfo = this.accessibilityInfo_;
        if (accessibilityInfo == null) {
            return AccessibilityInfo.getDefaultInstance();
        }
        return accessibilityInfo;
    }

    public AdvertisingInfo getAdInfo() {
        AdvertisingInfo advertisingInfo = this.adInfo_;
        if (advertisingInfo == null) {
            return AdvertisingInfo.getDefaultInstance();
        }
        return advertisingInfo;
    }

    public AudioInfo getAudioInfo() {
        AudioInfo audioInfo = this.audioInfo_;
        if (audioInfo == null) {
            return AudioInfo.getDefaultInstance();
        }
        return audioInfo;
    }

    public BatteryInfo getBatteryInfo() {
        BatteryInfo batteryInfo = this.batteryInfo_;
        if (batteryInfo == null) {
            return BatteryInfo.getDefaultInstance();
        }
        return batteryInfo;
    }

    public Device getDevice() {
        Device device = this.device_;
        if (device == null) {
            return Device.getDefaultInstance();
        }
        return device;
    }

    public DirInfo getDirInfo() {
        DirInfo dirInfo = this.dirInfo_;
        if (dirInfo == null) {
            return DirInfo.getDefaultInstance();
        }
        return dirInfo;
    }

    public String getIdfv() {
        return this.idfv_;
    }

    public ByteString getIdfvBytes() {
        return ByteString.copyFromUtf8(this.idfv_);
    }

    public ImpLvlRevData getImpLvlRevData() {
        ImpLvlRevData impLvlRevData = this.impLvlRevData_;
        if (impLvlRevData == null) {
            return ImpLvlRevData.getDefaultInstance();
        }
        return impLvlRevData;
    }

    public SdkInfo getInfo() {
        SdkInfo sdkInfo = this.info_;
        if (sdkInfo == null) {
            return SdkInfo.getDefaultInstance();
        }
        return sdkInfo;
    }

    public MemoryInfo getMemoryInfo() {
        MemoryInfo memoryInfo = this.memoryInfo_;
        if (memoryInfo == null) {
            return MemoryInfo.getDefaultInstance();
        }
        return memoryInfo;
    }

    public NetworkInfo getNetworkInfo() {
        NetworkInfo networkInfo = this.networkInfo_;
        if (networkInfo == null) {
            return NetworkInfo.getDefaultInstance();
        }
        return networkInfo;
    }

    public Privacy getPrivacy() {
        Privacy privacy = this.privacy_;
        if (privacy == null) {
            return Privacy.getDefaultInstance();
        }
        return privacy;
    }

    public boolean hasAccessibilityInfo() {
        if ((this.bitField0_ & 256) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasAdInfo() {
        if ((this.bitField0_ & 32) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasAudioInfo() {
        if ((this.bitField0_ & 128) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasBatteryInfo() {
        if ((this.bitField0_ & 64) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasDevice() {
        if (this.device_ != null) {
            return true;
        }
        return false;
    }

    public boolean hasDirInfo() {
        if ((this.bitField0_ & 8) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasIdfv() {
        if ((this.bitField0_ & 1) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasImpLvlRevData() {
        if ((this.bitField0_ & 512) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasInfo() {
        if ((this.bitField0_ & 2) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasMemoryInfo() {
        if ((this.bitField0_ & 4) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasNetworkInfo() {
        if ((this.bitField0_ & 16) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasPrivacy() {
        if (this.privacy_ != null) {
            return true;
        }
        return false;
    }

    public static a newBuilder(BidToken$ClientBidTokenComponents bidToken$ClientBidTokenComponents) {
        return DEFAULT_INSTANCE.createBuilder(bidToken$ClientBidTokenComponents);
    }

    public static BidToken$ClientBidTokenComponents parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(InputStream inputStream) throws IOException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BidToken$ClientBidTokenComponents parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidToken$ClientBidTokenComponents) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
