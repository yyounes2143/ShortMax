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
import java.util.List;
/* loaded from: classes6.dex */
public final class BidRequest$SdkBidRequest extends GeneratedMessageLite<BidRequest$SdkBidRequest, a> implements MessageLiteOrBuilder {
    public static final int APP_FIELD_NUMBER = 1;
    private static final BidRequest$SdkBidRequest DEFAULT_INSTANCE;
    public static final int DEVICE_FIELD_NUMBER = 2;
    public static final int IMP_FIELD_NUMBER = 3;
    private static volatile Parser<BidRequest$SdkBidRequest> PARSER = null;
    public static final int REGS_FIELD_NUMBER = 4;
    public static final int TMAX_FIELD_NUMBER = 5;
    public static final int USER_FIELD_NUMBER = 6;
    private App app_;
    private int bitField0_;
    private Device device_;
    private Imp imp_;
    private byte memoizedIsInitialized = 2;
    private Regs regs_;
    private int tmax_;
    private User user_;

    /* loaded from: classes6.dex */
    public static final class App extends GeneratedMessageLite<App, a> implements MessageLiteOrBuilder {
        public static final int BUNDLE_FIELD_NUMBER = 1;
        private static final App DEFAULT_INSTANCE;
        private static volatile Parser<App> PARSER = null;
        public static final int VER_FIELD_NUMBER = 2;
        private int bitField0_;
        private byte memoizedIsInitialized = 2;
        private String bundle_ = "";
        private String ver_ = "";

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<App, a> implements MessageLiteOrBuilder {
            private a() {
                super(App.DEFAULT_INSTANCE);
            }
        }

        static {
            App app = new App();
            DEFAULT_INSTANCE = app;
            GeneratedMessageLite.registerDefaultInstance(App.class, app);
        }

        private App() {
        }

        private void clearBundle() {
            this.bitField0_ &= -2;
            this.bundle_ = getDefaultInstance().getBundle();
        }

        private void clearVer() {
            this.bitField0_ &= -3;
            this.ver_ = getDefaultInstance().getVer();
        }

        public static App getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static App parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (App) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static App parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<App> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        private void setBundle(String str) {
            str.getClass();
            this.bitField0_ |= 1;
            this.bundle_ = str;
        }

        private void setBundleBytes(ByteString byteString) {
            this.bundle_ = byteString.toStringUtf8();
            this.bitField0_ |= 1;
        }

        private void setVer(String str) {
            str.getClass();
            this.bitField0_ |= 2;
            this.ver_ = str;
        }

        private void setVerBytes(ByteString byteString) {
            this.ver_ = byteString.toStringUtf8();
            this.bitField0_ |= 2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            int i10;
            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                case 1:
                    return new App();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001ᔈ\u0000\u0002ᔈ\u0001", new Object[]{"bitField0_", "bundle_", "ver_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<App> parser = PARSER;
                    if (parser == null) {
                        synchronized (App.class) {
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
                    return Byte.valueOf(this.memoizedIsInitialized);
                case 7:
                    if (obj == null) {
                        i10 = 0;
                    } else {
                        i10 = 1;
                    }
                    this.memoizedIsInitialized = (byte) i10;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public String getBundle() {
            return this.bundle_;
        }

        public ByteString getBundleBytes() {
            return ByteString.copyFromUtf8(this.bundle_);
        }

        public String getVer() {
            return this.ver_;
        }

        public ByteString getVerBytes() {
            return ByteString.copyFromUtf8(this.ver_);
        }

        public boolean hasBundle() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasVer() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(App app) {
            return DEFAULT_INSTANCE.createBuilder(app);
        }

        public static App parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (App) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static App parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static App parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static App parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static App parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static App parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static App parseFrom(InputStream inputStream) throws IOException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static App parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static App parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static App parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (App) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Device extends GeneratedMessageLite.ExtendableMessage<Device, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
        public static final int CARRIER_FIELD_NUMBER = 10;
        public static final int CONNECTIONTYPE_FIELD_NUMBER = 17;
        private static final Device DEFAULT_INSTANCE;
        public static final int DEVICETYPE_FIELD_NUMBER = 18;
        public static final int DIDMD5_FIELD_NUMBER = 6;
        public static final int DIDSHA1_FIELD_NUMBER = 5;
        public static final int DNT_FIELD_NUMBER = 1;
        public static final int DPIDMD5_FIELD_NUMBER = 8;
        public static final int DPIDSHA1_FIELD_NUMBER = 7;
        public static final int FLASHVER_FIELD_NUMBER = 19;
        public static final int GEOFETCH_FIELD_NUMBER = 29;
        public static final int GEO_FIELD_NUMBER = 4;
        public static final int HWV_FIELD_NUMBER = 24;
        public static final int H_FIELD_NUMBER = 26;
        public static final int IFA_FIELD_NUMBER = 20;
        public static final int IPV6_FIELD_NUMBER = 9;
        public static final int IP_FIELD_NUMBER = 3;
        public static final int JS_FIELD_NUMBER = 16;
        public static final int LANGB_FIELD_NUMBER = 32;
        public static final int LANGUAGE_FIELD_NUMBER = 11;
        public static final int LMT_FIELD_NUMBER = 23;
        public static final int MACMD5_FIELD_NUMBER = 22;
        public static final int MACSHA1_FIELD_NUMBER = 21;
        public static final int MAKE_FIELD_NUMBER = 12;
        public static final int MCCMNC_FIELD_NUMBER = 30;
        public static final int MODEL_FIELD_NUMBER = 13;
        public static final int OSV_FIELD_NUMBER = 15;
        public static final int OS_FIELD_NUMBER = 14;
        private static volatile Parser<Device> PARSER = null;
        public static final int PPI_FIELD_NUMBER = 27;
        public static final int PXRATIO_FIELD_NUMBER = 28;
        public static final int SUA_FIELD_NUMBER = 31;
        public static final int UA_FIELD_NUMBER = 2;
        public static final int W_FIELD_NUMBER = 25;
        private int bitField0_;
        private int connectiontype_;
        private boolean dnt_;
        private Geo geo_;
        private boolean geofetch_;
        private int h_;
        private boolean js_;
        private boolean lmt_;
        private int ppi_;
        private double pxratio_;
        private UserAgent sua_;
        private int w_;
        private byte memoizedIsInitialized = 2;
        private String ua_ = "";
        private String ip_ = "";
        private String ipv6_ = "";
        private int devicetype_ = 1;
        private String make_ = "";
        private String model_ = "";
        private String os_ = "";
        private String osv_ = "";
        private String hwv_ = "";
        private String flashver_ = "";
        private String language_ = "";
        private String langb_ = "";
        private String carrier_ = "";
        private String mccmnc_ = "";
        private String ifa_ = "";
        private String didsha1_ = "";
        private String didmd5_ = "";
        private String dpidsha1_ = "";
        private String dpidmd5_ = "";
        private String macsha1_ = "";
        private String macmd5_ = "";

        /* loaded from: classes6.dex */
        public enum ConnectionType implements Internal.EnumLite {
            CONNECTION_UNKNOWN(0),
            ETHERNET(1),
            WIFI(2),
            CELL_UNKNOWN(3),
            CELL_2G(4),
            CELL_3G(5),
            CELL_4G(6),
            CELL_5G(7);
            
            public static final int CELL_2G_VALUE = 4;
            public static final int CELL_3G_VALUE = 5;
            public static final int CELL_4G_VALUE = 6;
            public static final int CELL_5G_VALUE = 7;
            public static final int CELL_UNKNOWN_VALUE = 3;
            public static final int CONNECTION_UNKNOWN_VALUE = 0;
            public static final int ETHERNET_VALUE = 1;
            public static final int WIFI_VALUE = 2;
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

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31757a = new b();

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
                switch (i10) {
                    case 0:
                        return CONNECTION_UNKNOWN;
                    case 1:
                        return ETHERNET;
                    case 2:
                        return WIFI;
                    case 3:
                        return CELL_UNKNOWN;
                    case 4:
                        return CELL_2G;
                    case 5:
                        return CELL_3G;
                    case 6:
                        return CELL_4G;
                    case 7:
                        return CELL_5G;
                    default:
                        return null;
                }
            }

            public static Internal.EnumLiteMap<ConnectionType> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31757a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ConnectionType valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public enum DeviceType implements Internal.EnumLite {
            MOBILE(1),
            PERSONAL_COMPUTER(2),
            CONNECTED_TV(3),
            HIGHEND_PHONE(4),
            TABLET(5),
            CONNECTED_DEVICE(6),
            SET_TOP_BOX(7),
            OOH_DEVICE(8);
            
            public static final int CONNECTED_DEVICE_VALUE = 6;
            public static final int CONNECTED_TV_VALUE = 3;
            public static final int HIGHEND_PHONE_VALUE = 4;
            public static final int MOBILE_VALUE = 1;
            public static final int OOH_DEVICE_VALUE = 8;
            public static final int PERSONAL_COMPUTER_VALUE = 2;
            public static final int SET_TOP_BOX_VALUE = 7;
            public static final int TABLET_VALUE = 5;
            private static final Internal.EnumLiteMap<DeviceType> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<DeviceType> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public DeviceType findValueByNumber(int i10) {
                    return DeviceType.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31758a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (DeviceType.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            DeviceType(int i10) {
                this.value = i10;
            }

            public static DeviceType forNumber(int i10) {
                switch (i10) {
                    case 1:
                        return MOBILE;
                    case 2:
                        return PERSONAL_COMPUTER;
                    case 3:
                        return CONNECTED_TV;
                    case 4:
                        return HIGHEND_PHONE;
                    case 5:
                        return TABLET;
                    case 6:
                        return CONNECTED_DEVICE;
                    case 7:
                        return SET_TOP_BOX;
                    case 8:
                        return OOH_DEVICE;
                    default:
                        return null;
                }
            }

            public static Internal.EnumLiteMap<DeviceType> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31758a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static DeviceType valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Geo extends GeneratedMessageLite.ExtendableMessage<Geo, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
            public static final int ACCURACY_FIELD_NUMBER = 11;
            public static final int CITY_FIELD_NUMBER = 7;
            public static final int COUNTRY_FIELD_NUMBER = 3;
            private static final Geo DEFAULT_INSTANCE;
            public static final int IPSERVICE_FIELD_NUMBER = 13;
            public static final int LASTFIX_FIELD_NUMBER = 12;
            public static final int LAT_FIELD_NUMBER = 1;
            public static final int LON_FIELD_NUMBER = 2;
            public static final int METRO_FIELD_NUMBER = 6;
            private static volatile Parser<Geo> PARSER = null;
            public static final int REGIONFIPS104_FIELD_NUMBER = 5;
            public static final int REGION_FIELD_NUMBER = 4;
            public static final int TYPE_FIELD_NUMBER = 9;
            public static final int UTCOFFSET_FIELD_NUMBER = 10;
            public static final int ZIP_FIELD_NUMBER = 8;
            private int accuracy_;
            private int bitField0_;
            private int lastfix_;
            private double lat_;
            private double lon_;
            private int utcoffset_;
            private byte memoizedIsInitialized = 2;
            private String country_ = "";
            private String region_ = "";
            private String regionfips104_ = "";
            private String metro_ = "";
            private String city_ = "";
            private String zip_ = "";
            private int type_ = 1;
            private int ipservice_ = 1;

            /* loaded from: classes6.dex */
            public enum LocationService implements Internal.EnumLite {
                IP2LOCATION(1),
                NEUSTAR(2),
                MAXMIND(3),
                NETACUITY(4);
                
                public static final int IP2LOCATION_VALUE = 1;
                public static final int MAXMIND_VALUE = 3;
                public static final int NETACUITY_VALUE = 4;
                public static final int NEUSTAR_VALUE = 2;
                private static final Internal.EnumLiteMap<LocationService> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<LocationService> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public LocationService findValueByNumber(int i10) {
                        return LocationService.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31759a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (LocationService.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                LocationService(int i10) {
                    this.value = i10;
                }

                public static LocationService forNumber(int i10) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    return null;
                                }
                                return NETACUITY;
                            }
                            return MAXMIND;
                        }
                        return NEUSTAR;
                    }
                    return IP2LOCATION;
                }

                public static Internal.EnumLiteMap<LocationService> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31759a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static LocationService valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public enum LocationType implements Internal.EnumLite {
                GPS_LOCATION(1),
                IP(2),
                USER_PROVIDED(3);
                
                public static final int GPS_LOCATION_VALUE = 1;
                public static final int IP_VALUE = 2;
                public static final int USER_PROVIDED_VALUE = 3;
                private static final Internal.EnumLiteMap<LocationType> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<LocationType> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public LocationType findValueByNumber(int i10) {
                        return LocationType.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31760a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (LocationType.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                LocationType(int i10) {
                    this.value = i10;
                }

                public static LocationType forNumber(int i10) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                return null;
                            }
                            return USER_PROVIDED;
                        }
                        return IP;
                    }
                    return GPS_LOCATION;
                }

                public static Internal.EnumLiteMap<LocationType> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31760a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static LocationType valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public static final class a extends GeneratedMessageLite.ExtendableBuilder<Geo, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
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

            private void clearAccuracy() {
                this.bitField0_ &= -513;
                this.accuracy_ = 0;
            }

            private void clearCity() {
                this.bitField0_ &= -65;
                this.city_ = getDefaultInstance().getCity();
            }

            private void clearCountry() {
                this.bitField0_ &= -5;
                this.country_ = getDefaultInstance().getCountry();
            }

            private void clearIpservice() {
                this.bitField0_ &= -2049;
                this.ipservice_ = 1;
            }

            private void clearLastfix() {
                this.bitField0_ &= VideoEventOnePlay.EXIT_CODE_BEFORE_SURFACE_NOT_SET;
                this.lastfix_ = 0;
            }

            private void clearLat() {
                this.bitField0_ &= -2;
                this.lat_ = 0.0d;
            }

            private void clearLon() {
                this.bitField0_ &= -3;
                this.lon_ = 0.0d;
            }

            private void clearMetro() {
                this.bitField0_ &= -33;
                this.metro_ = getDefaultInstance().getMetro();
            }

            private void clearRegion() {
                this.bitField0_ &= -9;
                this.region_ = getDefaultInstance().getRegion();
            }

            private void clearRegionfips104() {
                this.bitField0_ &= -17;
                this.regionfips104_ = getDefaultInstance().getRegionfips104();
            }

            private void clearType() {
                this.bitField0_ &= -257;
                this.type_ = 1;
            }

            private void clearUtcoffset() {
                this.bitField0_ &= -4097;
                this.utcoffset_ = 0;
            }

            private void clearZip() {
                this.bitField0_ &= -129;
                this.zip_ = getDefaultInstance().getZip();
            }

            public static Geo getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static a newBuilder() {
                return (a) DEFAULT_INSTANCE.createBuilder();
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

            private void setAccuracy(int i10) {
                this.bitField0_ |= 512;
                this.accuracy_ = i10;
            }

            private void setCity(String str) {
                str.getClass();
                this.bitField0_ |= 64;
                this.city_ = str;
            }

            private void setCityBytes(ByteString byteString) {
                this.city_ = byteString.toStringUtf8();
                this.bitField0_ |= 64;
            }

            private void setCountry(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.country_ = str;
            }

            private void setCountryBytes(ByteString byteString) {
                this.country_ = byteString.toStringUtf8();
                this.bitField0_ |= 4;
            }

            private void setIpservice(LocationService locationService) {
                this.ipservice_ = locationService.getNumber();
                this.bitField0_ |= 2048;
            }

            private void setLastfix(int i10) {
                this.bitField0_ |= 1024;
                this.lastfix_ = i10;
            }

            private void setLat(double d10) {
                this.bitField0_ |= 1;
                this.lat_ = d10;
            }

            private void setLon(double d10) {
                this.bitField0_ |= 2;
                this.lon_ = d10;
            }

            private void setMetro(String str) {
                str.getClass();
                this.bitField0_ |= 32;
                this.metro_ = str;
            }

            private void setMetroBytes(ByteString byteString) {
                this.metro_ = byteString.toStringUtf8();
                this.bitField0_ |= 32;
            }

            private void setRegion(String str) {
                str.getClass();
                this.bitField0_ |= 8;
                this.region_ = str;
            }

            private void setRegionBytes(ByteString byteString) {
                this.region_ = byteString.toStringUtf8();
                this.bitField0_ |= 8;
            }

            private void setRegionfips104(String str) {
                str.getClass();
                this.bitField0_ |= 16;
                this.regionfips104_ = str;
            }

            private void setRegionfips104Bytes(ByteString byteString) {
                this.regionfips104_ = byteString.toStringUtf8();
                this.bitField0_ |= 16;
            }

            private void setType(LocationType locationType) {
                this.type_ = locationType.getNumber();
                this.bitField0_ |= 256;
            }

            private void setUtcoffset(int i10) {
                this.bitField0_ |= 4096;
                this.utcoffset_ = i10;
            }

            private void setZip(String str) {
                str.getClass();
                this.bitField0_ |= 128;
                this.zip_ = str;
            }

            private void setZipBytes(ByteString byteString) {
                this.zip_ = byteString.toStringUtf8();
                this.bitField0_ |= 128;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Geo();
                    case 2:
                        return new a();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0000\u0000\u0001က\u0000\u0002က\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဈ\u0007\tဌ\b\nင\f\u000bင\t\fင\n\rဌ\u000b", new Object[]{"bitField0_", "lat_", "lon_", "country_", "region_", "regionfips104_", "metro_", "city_", "zip_", "type_", LocationType.internalGetVerifier(), "utcoffset_", "accuracy_", "lastfix_", "ipservice_", LocationService.internalGetVerifier()});
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public int getAccuracy() {
                return this.accuracy_;
            }

            public String getCity() {
                return this.city_;
            }

            public ByteString getCityBytes() {
                return ByteString.copyFromUtf8(this.city_);
            }

            public String getCountry() {
                return this.country_;
            }

            public ByteString getCountryBytes() {
                return ByteString.copyFromUtf8(this.country_);
            }

            public LocationService getIpservice() {
                LocationService forNumber = LocationService.forNumber(this.ipservice_);
                if (forNumber == null) {
                    return LocationService.IP2LOCATION;
                }
                return forNumber;
            }

            public int getLastfix() {
                return this.lastfix_;
            }

            public double getLat() {
                return this.lat_;
            }

            public double getLon() {
                return this.lon_;
            }

            public String getMetro() {
                return this.metro_;
            }

            public ByteString getMetroBytes() {
                return ByteString.copyFromUtf8(this.metro_);
            }

            public String getRegion() {
                return this.region_;
            }

            public ByteString getRegionBytes() {
                return ByteString.copyFromUtf8(this.region_);
            }

            public String getRegionfips104() {
                return this.regionfips104_;
            }

            public ByteString getRegionfips104Bytes() {
                return ByteString.copyFromUtf8(this.regionfips104_);
            }

            public LocationType getType() {
                LocationType forNumber = LocationType.forNumber(this.type_);
                if (forNumber == null) {
                    return LocationType.GPS_LOCATION;
                }
                return forNumber;
            }

            public int getUtcoffset() {
                return this.utcoffset_;
            }

            public String getZip() {
                return this.zip_;
            }

            public ByteString getZipBytes() {
                return ByteString.copyFromUtf8(this.zip_);
            }

            public boolean hasAccuracy() {
                if ((this.bitField0_ & 512) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasCity() {
                if ((this.bitField0_ & 64) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasCountry() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasIpservice() {
                if ((this.bitField0_ & 2048) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasLastfix() {
                if ((this.bitField0_ & 1024) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasLat() {
                if ((this.bitField0_ & 1) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasLon() {
                if ((this.bitField0_ & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMetro() {
                if ((this.bitField0_ & 32) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasRegion() {
                if ((this.bitField0_ & 8) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasRegionfips104() {
                if ((this.bitField0_ & 16) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasType() {
                if ((this.bitField0_ & 256) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasUtcoffset() {
                if ((this.bitField0_ & 4096) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasZip() {
                if ((this.bitField0_ & 128) != 0) {
                    return true;
                }
                return false;
            }

            public static a newBuilder(Geo geo) {
                return (a) DEFAULT_INSTANCE.createBuilder(geo);
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
        public static final class UserAgent extends GeneratedMessageLite<UserAgent, b> implements MessageLiteOrBuilder {
            public static final int ARCHITECTURE_FIELD_NUMBER = 4;
            public static final int BITNESS_FIELD_NUMBER = 5;
            public static final int BROWSERS_FIELD_NUMBER = 1;
            private static final UserAgent DEFAULT_INSTANCE;
            public static final int MOBILE_FIELD_NUMBER = 3;
            public static final int MODEL_FIELD_NUMBER = 6;
            private static volatile Parser<UserAgent> PARSER = null;
            public static final int PLATFORM_FIELD_NUMBER = 2;
            public static final int SOURCE_FIELD_NUMBER = 7;
            private int bitField0_;
            private boolean mobile_;
            private BrandVersion platform_;
            private int source_;
            private Internal.ProtobufList<BrandVersion> browsers_ = GeneratedMessageLite.emptyProtobufList();
            private String architecture_ = "";
            private String bitness_ = "";
            private String model_ = "";

            /* loaded from: classes6.dex */
            public static final class BrandVersion extends GeneratedMessageLite<BrandVersion, a> implements a {
                public static final int BRAND_FIELD_NUMBER = 1;
                private static final BrandVersion DEFAULT_INSTANCE;
                private static volatile Parser<BrandVersion> PARSER = null;
                public static final int VERSION_FIELD_NUMBER = 2;
                private int bitField0_;
                private String brand_ = "";
                private Internal.ProtobufList<String> version_ = GeneratedMessageLite.emptyProtobufList();

                /* loaded from: classes6.dex */
                public static final class a extends GeneratedMessageLite.Builder<BrandVersion, a> implements a {
                    private a() {
                        super(BrandVersion.DEFAULT_INSTANCE);
                    }
                }

                static {
                    BrandVersion brandVersion = new BrandVersion();
                    DEFAULT_INSTANCE = brandVersion;
                    GeneratedMessageLite.registerDefaultInstance(BrandVersion.class, brandVersion);
                }

                private BrandVersion() {
                }

                private void addAllVersion(Iterable<String> iterable) {
                    ensureVersionIsMutable();
                    AbstractMessageLite.addAll((Iterable) iterable, (List) this.version_);
                }

                private void addVersion(String str) {
                    str.getClass();
                    ensureVersionIsMutable();
                    this.version_.add(str);
                }

                private void addVersionBytes(ByteString byteString) {
                    ensureVersionIsMutable();
                    this.version_.add(byteString.toStringUtf8());
                }

                private void clearBrand() {
                    this.bitField0_ &= -2;
                    this.brand_ = getDefaultInstance().getBrand();
                }

                private void clearVersion() {
                    this.version_ = GeneratedMessageLite.emptyProtobufList();
                }

                private void ensureVersionIsMutable() {
                    Internal.ProtobufList<String> protobufList = this.version_;
                    if (!protobufList.isModifiable()) {
                        this.version_ = GeneratedMessageLite.mutableCopy(protobufList);
                    }
                }

                public static BrandVersion getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static a newBuilder() {
                    return DEFAULT_INSTANCE.createBuilder();
                }

                public static BrandVersion parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (BrandVersion) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static BrandVersion parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                }

                public static Parser<BrandVersion> parser() {
                    return DEFAULT_INSTANCE.getParserForType();
                }

                private void setBrand(String str) {
                    str.getClass();
                    this.bitField0_ |= 1;
                    this.brand_ = str;
                }

                private void setBrandBytes(ByteString byteString) {
                    this.brand_ = byteString.toStringUtf8();
                    this.bitField0_ |= 1;
                }

                private void setVersion(int i10, String str) {
                    str.getClass();
                    ensureVersionIsMutable();
                    this.version_.set(i10, str);
                }

                @Override // com.google.protobuf.GeneratedMessageLite
                protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                    switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                        case 1:
                            return new BrandVersion();
                        case 2:
                            return new a();
                        case 3:
                            return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001a", new Object[]{"bitField0_", "brand_", "version_"});
                        case 4:
                            return DEFAULT_INSTANCE;
                        case 5:
                            Parser<BrandVersion> parser = PARSER;
                            if (parser == null) {
                                synchronized (BrandVersion.class) {
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

                public String getVersion(int i10) {
                    return this.version_.get(i10);
                }

                public ByteString getVersionBytes(int i10) {
                    return ByteString.copyFromUtf8(this.version_.get(i10));
                }

                public int getVersionCount() {
                    return this.version_.size();
                }

                public List<String> getVersionList() {
                    return this.version_;
                }

                public boolean hasBrand() {
                    if ((this.bitField0_ & 1) != 0) {
                        return true;
                    }
                    return false;
                }

                public static a newBuilder(BrandVersion brandVersion) {
                    return DEFAULT_INSTANCE.createBuilder(brandVersion);
                }

                public static BrandVersion parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (BrandVersion) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static BrandVersion parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                }

                public static BrandVersion parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                }

                public static BrandVersion parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                }

                public static BrandVersion parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                }

                public static BrandVersion parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                }

                public static BrandVersion parseFrom(InputStream inputStream) throws IOException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static BrandVersion parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static BrandVersion parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                }

                public static BrandVersion parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (BrandVersion) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                }
            }

            /* loaded from: classes6.dex */
            public enum UserAgentSource implements Internal.EnumLite {
                UNKNOWN_SOURCE(0),
                CLIENT_HINTS_LOW_ENTROPY(1),
                CLIENT_HINTS_HIGH_ENTROPY(2),
                USER_AGENT_STRING(3);
                
                public static final int CLIENT_HINTS_HIGH_ENTROPY_VALUE = 2;
                public static final int CLIENT_HINTS_LOW_ENTROPY_VALUE = 1;
                public static final int UNKNOWN_SOURCE_VALUE = 0;
                public static final int USER_AGENT_STRING_VALUE = 3;
                private static final Internal.EnumLiteMap<UserAgentSource> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<UserAgentSource> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public UserAgentSource findValueByNumber(int i10) {
                        return UserAgentSource.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31761a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (UserAgentSource.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                UserAgentSource(int i10) {
                    this.value = i10;
                }

                public static UserAgentSource forNumber(int i10) {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 != 3) {
                                    return null;
                                }
                                return USER_AGENT_STRING;
                            }
                            return CLIENT_HINTS_HIGH_ENTROPY;
                        }
                        return CLIENT_HINTS_LOW_ENTROPY;
                    }
                    return UNKNOWN_SOURCE;
                }

                public static Internal.EnumLiteMap<UserAgentSource> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31761a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static UserAgentSource valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public interface a extends MessageLiteOrBuilder {
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageLite.Builder<UserAgent, b> implements MessageLiteOrBuilder {
                private b() {
                    super(UserAgent.DEFAULT_INSTANCE);
                }
            }

            static {
                UserAgent userAgent = new UserAgent();
                DEFAULT_INSTANCE = userAgent;
                GeneratedMessageLite.registerDefaultInstance(UserAgent.class, userAgent);
            }

            private UserAgent() {
            }

            private void addAllBrowsers(Iterable<? extends BrandVersion> iterable) {
                ensureBrowsersIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.browsers_);
            }

            private void addBrowsers(BrandVersion brandVersion) {
                brandVersion.getClass();
                ensureBrowsersIsMutable();
                this.browsers_.add(brandVersion);
            }

            private void clearArchitecture() {
                this.bitField0_ &= -5;
                this.architecture_ = getDefaultInstance().getArchitecture();
            }

            private void clearBitness() {
                this.bitField0_ &= -9;
                this.bitness_ = getDefaultInstance().getBitness();
            }

            private void clearBrowsers() {
                this.browsers_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearMobile() {
                this.bitField0_ &= -3;
                this.mobile_ = false;
            }

            private void clearModel() {
                this.bitField0_ &= -17;
                this.model_ = getDefaultInstance().getModel();
            }

            private void clearPlatform() {
                this.platform_ = null;
                this.bitField0_ &= -2;
            }

            private void clearSource() {
                this.bitField0_ &= -33;
                this.source_ = 0;
            }

            private void ensureBrowsersIsMutable() {
                Internal.ProtobufList<BrandVersion> protobufList = this.browsers_;
                if (!protobufList.isModifiable()) {
                    this.browsers_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            public static UserAgent getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            private void mergePlatform(BrandVersion brandVersion) {
                brandVersion.getClass();
                BrandVersion brandVersion2 = this.platform_;
                if (brandVersion2 != null && brandVersion2 != BrandVersion.getDefaultInstance()) {
                    this.platform_ = BrandVersion.newBuilder(this.platform_).mergeFrom((BrandVersion.a) brandVersion).buildPartial();
                } else {
                    this.platform_ = brandVersion;
                }
                this.bitField0_ |= 1;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static UserAgent parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (UserAgent) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static UserAgent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<UserAgent> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void removeBrowsers(int i10) {
                ensureBrowsersIsMutable();
                this.browsers_.remove(i10);
            }

            private void setArchitecture(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.architecture_ = str;
            }

            private void setArchitectureBytes(ByteString byteString) {
                this.architecture_ = byteString.toStringUtf8();
                this.bitField0_ |= 4;
            }

            private void setBitness(String str) {
                str.getClass();
                this.bitField0_ |= 8;
                this.bitness_ = str;
            }

            private void setBitnessBytes(ByteString byteString) {
                this.bitness_ = byteString.toStringUtf8();
                this.bitField0_ |= 8;
            }

            private void setBrowsers(int i10, BrandVersion brandVersion) {
                brandVersion.getClass();
                ensureBrowsersIsMutable();
                this.browsers_.set(i10, brandVersion);
            }

            private void setMobile(boolean z10) {
                this.bitField0_ |= 2;
                this.mobile_ = z10;
            }

            private void setModel(String str) {
                str.getClass();
                this.bitField0_ |= 16;
                this.model_ = str;
            }

            private void setModelBytes(ByteString byteString) {
                this.model_ = byteString.toStringUtf8();
                this.bitField0_ |= 16;
            }

            private void setPlatform(BrandVersion brandVersion) {
                brandVersion.getClass();
                this.platform_ = brandVersion;
                this.bitField0_ |= 1;
            }

            private void setSource(UserAgentSource userAgentSource) {
                this.source_ = userAgentSource.getNumber();
                this.bitField0_ |= 32;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new UserAgent();
                    case 2:
                        return new b();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000\u0003ဇ\u0001\u0004ဈ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဌ\u0005", new Object[]{"bitField0_", "browsers_", BrandVersion.class, "platform_", "mobile_", "architecture_", "bitness_", "model_", "source_", UserAgentSource.internalGetVerifier()});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<UserAgent> parser = PARSER;
                        if (parser == null) {
                            synchronized (UserAgent.class) {
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

            public String getArchitecture() {
                return this.architecture_;
            }

            public ByteString getArchitectureBytes() {
                return ByteString.copyFromUtf8(this.architecture_);
            }

            public String getBitness() {
                return this.bitness_;
            }

            public ByteString getBitnessBytes() {
                return ByteString.copyFromUtf8(this.bitness_);
            }

            public BrandVersion getBrowsers(int i10) {
                return this.browsers_.get(i10);
            }

            public int getBrowsersCount() {
                return this.browsers_.size();
            }

            public List<BrandVersion> getBrowsersList() {
                return this.browsers_;
            }

            public a getBrowsersOrBuilder(int i10) {
                return this.browsers_.get(i10);
            }

            public List<? extends a> getBrowsersOrBuilderList() {
                return this.browsers_;
            }

            public boolean getMobile() {
                return this.mobile_;
            }

            public String getModel() {
                return this.model_;
            }

            public ByteString getModelBytes() {
                return ByteString.copyFromUtf8(this.model_);
            }

            public BrandVersion getPlatform() {
                BrandVersion brandVersion = this.platform_;
                if (brandVersion == null) {
                    return BrandVersion.getDefaultInstance();
                }
                return brandVersion;
            }

            public UserAgentSource getSource() {
                UserAgentSource forNumber = UserAgentSource.forNumber(this.source_);
                if (forNumber == null) {
                    return UserAgentSource.UNKNOWN_SOURCE;
                }
                return forNumber;
            }

            public boolean hasArchitecture() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasBitness() {
                if ((this.bitField0_ & 8) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMobile() {
                if ((this.bitField0_ & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasModel() {
                if ((this.bitField0_ & 16) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPlatform() {
                if ((this.bitField0_ & 1) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasSource() {
                if ((this.bitField0_ & 32) != 0) {
                    return true;
                }
                return false;
            }

            public static b newBuilder(UserAgent userAgent) {
                return DEFAULT_INSTANCE.createBuilder(userAgent);
            }

            public static UserAgent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (UserAgent) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static UserAgent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static UserAgent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            private void addBrowsers(int i10, BrandVersion brandVersion) {
                brandVersion.getClass();
                ensureBrowsersIsMutable();
                this.browsers_.add(i10, brandVersion);
            }

            public static UserAgent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static UserAgent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static UserAgent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static UserAgent parseFrom(InputStream inputStream) throws IOException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static UserAgent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static UserAgent parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static UserAgent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (UserAgent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.ExtendableBuilder<Device, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
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

        private void clearCarrier() {
            this.bitField0_ &= -4194305;
            this.carrier_ = getDefaultInstance().getCarrier();
        }

        private void clearConnectiontype() {
            this.bitField0_ &= -16777217;
            this.connectiontype_ = 0;
        }

        private void clearDevicetype() {
            this.bitField0_ &= -129;
            this.devicetype_ = 1;
        }

        private void clearDidmd5() {
            this.bitField0_ &= -134217729;
            this.didmd5_ = getDefaultInstance().getDidmd5();
        }

        private void clearDidsha1() {
            this.bitField0_ &= -67108865;
            this.didsha1_ = getDefaultInstance().getDidsha1();
        }

        private void clearDnt() {
            this.bitField0_ &= -3;
            this.dnt_ = false;
        }

        private void clearDpidmd5() {
            this.bitField0_ &= -536870913;
            this.dpidmd5_ = getDefaultInstance().getDpidmd5();
        }

        private void clearDpidsha1() {
            this.bitField0_ &= -268435457;
            this.dpidsha1_ = getDefaultInstance().getDpidsha1();
        }

        private void clearFlashver() {
            this.bitField0_ &= -524289;
            this.flashver_ = getDefaultInstance().getFlashver();
        }

        private void clearGeo() {
            this.geo_ = null;
            this.bitField0_ &= -2;
        }

        private void clearGeofetch() {
            this.bitField0_ &= -262145;
            this.geofetch_ = false;
        }

        private void clearH() {
            this.bitField0_ &= -16385;
            this.h_ = 0;
        }

        private void clearHwv() {
            this.bitField0_ &= -4097;
            this.hwv_ = getDefaultInstance().getHwv();
        }

        private void clearIfa() {
            this.bitField0_ &= -33554433;
            this.ifa_ = getDefaultInstance().getIfa();
        }

        private void clearIp() {
            this.bitField0_ &= -33;
            this.ip_ = getDefaultInstance().getIp();
        }

        private void clearIpv6() {
            this.bitField0_ &= -65;
            this.ipv6_ = getDefaultInstance().getIpv6();
        }

        private void clearJs() {
            this.bitField0_ &= -131073;
            this.js_ = false;
        }

        private void clearLangb() {
            this.bitField0_ &= -2097153;
            this.langb_ = getDefaultInstance().getLangb();
        }

        private void clearLanguage() {
            this.bitField0_ &= -1048577;
            this.language_ = getDefaultInstance().getLanguage();
        }

        private void clearLmt() {
            this.bitField0_ &= -5;
            this.lmt_ = false;
        }

        private void clearMacmd5() {
            this.bitField0_ &= Integer.MAX_VALUE;
            this.macmd5_ = getDefaultInstance().getMacmd5();
        }

        private void clearMacsha1() {
            this.bitField0_ &= -1073741825;
            this.macsha1_ = getDefaultInstance().getMacsha1();
        }

        private void clearMake() {
            this.bitField0_ &= -257;
            this.make_ = getDefaultInstance().getMake();
        }

        private void clearMccmnc() {
            this.bitField0_ &= -8388609;
            this.mccmnc_ = getDefaultInstance().getMccmnc();
        }

        private void clearModel() {
            this.bitField0_ &= -513;
            this.model_ = getDefaultInstance().getModel();
        }

        private void clearOs() {
            this.bitField0_ &= VideoEventOnePlay.EXIT_CODE_BEFORE_SURFACE_NOT_SET;
            this.os_ = getDefaultInstance().getOs();
        }

        private void clearOsv() {
            this.bitField0_ &= -2049;
            this.osv_ = getDefaultInstance().getOsv();
        }

        private void clearPpi() {
            this.bitField0_ &= -32769;
            this.ppi_ = 0;
        }

        private void clearPxratio() {
            this.bitField0_ &= -65537;
            this.pxratio_ = 0.0d;
        }

        private void clearSua() {
            this.sua_ = null;
            this.bitField0_ &= -17;
        }

        private void clearUa() {
            this.bitField0_ &= -9;
            this.ua_ = getDefaultInstance().getUa();
        }

        private void clearW() {
            this.bitField0_ &= -8193;
            this.w_ = 0;
        }

        public static Device getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        private void mergeGeo(Geo geo) {
            geo.getClass();
            Geo geo2 = this.geo_;
            if (geo2 != null && geo2 != Geo.getDefaultInstance()) {
                this.geo_ = ((Geo.a) Geo.newBuilder(this.geo_).mergeFrom((Geo.a) geo)).buildPartial();
            } else {
                this.geo_ = geo;
            }
            this.bitField0_ |= 1;
        }

        private void mergeSua(UserAgent userAgent) {
            userAgent.getClass();
            UserAgent userAgent2 = this.sua_;
            if (userAgent2 != null && userAgent2 != UserAgent.getDefaultInstance()) {
                this.sua_ = UserAgent.newBuilder(this.sua_).mergeFrom((UserAgent.b) userAgent).buildPartial();
            } else {
                this.sua_ = userAgent;
            }
            this.bitField0_ |= 16;
        }

        public static a newBuilder() {
            return (a) DEFAULT_INSTANCE.createBuilder();
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

        private void setCarrier(String str) {
            str.getClass();
            this.bitField0_ |= 4194304;
            this.carrier_ = str;
        }

        private void setCarrierBytes(ByteString byteString) {
            this.carrier_ = byteString.toStringUtf8();
            this.bitField0_ |= 4194304;
        }

        private void setConnectiontype(ConnectionType connectionType) {
            this.connectiontype_ = connectionType.getNumber();
            this.bitField0_ |= 16777216;
        }

        private void setDevicetype(DeviceType deviceType) {
            this.devicetype_ = deviceType.getNumber();
            this.bitField0_ |= 128;
        }

        private void setDidmd5(String str) {
            str.getClass();
            this.bitField0_ |= 134217728;
            this.didmd5_ = str;
        }

        private void setDidmd5Bytes(ByteString byteString) {
            this.didmd5_ = byteString.toStringUtf8();
            this.bitField0_ |= 134217728;
        }

        private void setDidsha1(String str) {
            str.getClass();
            this.bitField0_ |= 67108864;
            this.didsha1_ = str;
        }

        private void setDidsha1Bytes(ByteString byteString) {
            this.didsha1_ = byteString.toStringUtf8();
            this.bitField0_ |= 67108864;
        }

        private void setDnt(boolean z10) {
            this.bitField0_ |= 2;
            this.dnt_ = z10;
        }

        private void setDpidmd5(String str) {
            str.getClass();
            this.bitField0_ |= 536870912;
            this.dpidmd5_ = str;
        }

        private void setDpidmd5Bytes(ByteString byteString) {
            this.dpidmd5_ = byteString.toStringUtf8();
            this.bitField0_ |= 536870912;
        }

        private void setDpidsha1(String str) {
            str.getClass();
            this.bitField0_ |= 268435456;
            this.dpidsha1_ = str;
        }

        private void setDpidsha1Bytes(ByteString byteString) {
            this.dpidsha1_ = byteString.toStringUtf8();
            this.bitField0_ |= 268435456;
        }

        private void setFlashver(String str) {
            str.getClass();
            this.bitField0_ |= 524288;
            this.flashver_ = str;
        }

        private void setFlashverBytes(ByteString byteString) {
            this.flashver_ = byteString.toStringUtf8();
            this.bitField0_ |= 524288;
        }

        private void setGeo(Geo geo) {
            geo.getClass();
            this.geo_ = geo;
            this.bitField0_ |= 1;
        }

        private void setGeofetch(boolean z10) {
            this.bitField0_ |= 262144;
            this.geofetch_ = z10;
        }

        private void setH(int i10) {
            this.bitField0_ |= 16384;
            this.h_ = i10;
        }

        private void setHwv(String str) {
            str.getClass();
            this.bitField0_ |= 4096;
            this.hwv_ = str;
        }

        private void setHwvBytes(ByteString byteString) {
            this.hwv_ = byteString.toStringUtf8();
            this.bitField0_ |= 4096;
        }

        private void setIfa(String str) {
            str.getClass();
            this.bitField0_ |= 33554432;
            this.ifa_ = str;
        }

        private void setIfaBytes(ByteString byteString) {
            this.ifa_ = byteString.toStringUtf8();
            this.bitField0_ |= 33554432;
        }

        private void setIp(String str) {
            str.getClass();
            this.bitField0_ |= 32;
            this.ip_ = str;
        }

        private void setIpBytes(ByteString byteString) {
            this.ip_ = byteString.toStringUtf8();
            this.bitField0_ |= 32;
        }

        private void setIpv6(String str) {
            str.getClass();
            this.bitField0_ |= 64;
            this.ipv6_ = str;
        }

        private void setIpv6Bytes(ByteString byteString) {
            this.ipv6_ = byteString.toStringUtf8();
            this.bitField0_ |= 64;
        }

        private void setJs(boolean z10) {
            this.bitField0_ |= 131072;
            this.js_ = z10;
        }

        private void setLangb(String str) {
            str.getClass();
            this.bitField0_ |= 2097152;
            this.langb_ = str;
        }

        private void setLangbBytes(ByteString byteString) {
            this.langb_ = byteString.toStringUtf8();
            this.bitField0_ |= 2097152;
        }

        private void setLanguage(String str) {
            str.getClass();
            this.bitField0_ |= 1048576;
            this.language_ = str;
        }

        private void setLanguageBytes(ByteString byteString) {
            this.language_ = byteString.toStringUtf8();
            this.bitField0_ |= 1048576;
        }

        private void setLmt(boolean z10) {
            this.bitField0_ |= 4;
            this.lmt_ = z10;
        }

        private void setMacmd5(String str) {
            str.getClass();
            this.bitField0_ |= Integer.MIN_VALUE;
            this.macmd5_ = str;
        }

        private void setMacmd5Bytes(ByteString byteString) {
            this.macmd5_ = byteString.toStringUtf8();
            this.bitField0_ |= Integer.MIN_VALUE;
        }

        private void setMacsha1(String str) {
            str.getClass();
            this.bitField0_ |= 1073741824;
            this.macsha1_ = str;
        }

        private void setMacsha1Bytes(ByteString byteString) {
            this.macsha1_ = byteString.toStringUtf8();
            this.bitField0_ |= 1073741824;
        }

        private void setMake(String str) {
            str.getClass();
            this.bitField0_ |= 256;
            this.make_ = str;
        }

        private void setMakeBytes(ByteString byteString) {
            this.make_ = byteString.toStringUtf8();
            this.bitField0_ |= 256;
        }

        private void setMccmnc(String str) {
            str.getClass();
            this.bitField0_ |= 8388608;
            this.mccmnc_ = str;
        }

        private void setMccmncBytes(ByteString byteString) {
            this.mccmnc_ = byteString.toStringUtf8();
            this.bitField0_ |= 8388608;
        }

        private void setModel(String str) {
            str.getClass();
            this.bitField0_ |= 512;
            this.model_ = str;
        }

        private void setModelBytes(ByteString byteString) {
            this.model_ = byteString.toStringUtf8();
            this.bitField0_ |= 512;
        }

        private void setOs(String str) {
            str.getClass();
            this.bitField0_ |= 1024;
            this.os_ = str;
        }

        private void setOsBytes(ByteString byteString) {
            this.os_ = byteString.toStringUtf8();
            this.bitField0_ |= 1024;
        }

        private void setOsv(String str) {
            str.getClass();
            this.bitField0_ |= 2048;
            this.osv_ = str;
        }

        private void setOsvBytes(ByteString byteString) {
            this.osv_ = byteString.toStringUtf8();
            this.bitField0_ |= 2048;
        }

        private void setPpi(int i10) {
            this.bitField0_ |= 32768;
            this.ppi_ = i10;
        }

        private void setPxratio(double d10) {
            this.bitField0_ |= 65536;
            this.pxratio_ = d10;
        }

        private void setSua(UserAgent userAgent) {
            userAgent.getClass();
            this.sua_ = userAgent;
            this.bitField0_ |= 16;
        }

        private void setUa(String str) {
            str.getClass();
            this.bitField0_ |= 8;
            this.ua_ = str;
        }

        private void setUaBytes(ByteString byteString) {
            this.ua_ = byteString.toStringUtf8();
            this.bitField0_ |= 8;
        }

        private void setW(int i10) {
            this.bitField0_ |= 8192;
            this.w_ = i10;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            int i10;
            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                case 1:
                    return new Device();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001 \u0000\u0001\u0001  \u0000\u0000\u0001\u0001ဇ\u0001\u0002ဈ\u0003\u0003ဈ\u0005\u0004ᐉ\u0000\u0005ဈ\u001a\u0006ဈ\u001b\u0007ဈ\u001c\bဈ\u001d\tဈ\u0006\nဈ\u0016\u000bဈ\u0014\fဈ\b\rဈ\t\u000eဈ\n\u000fဈ\u000b\u0010ဇ\u0011\u0011ဌ\u0018\u0012ဌ\u0007\u0013ဈ\u0013\u0014ဈ\u0019\u0015ဈ\u001e\u0016ဈ\u001f\u0017ဇ\u0002\u0018ဈ\f\u0019င\r\u001aင\u000e\u001bင\u000f\u001cက\u0010\u001dဇ\u0012\u001eဈ\u0017\u001fဉ\u0004 ဈ\u0015", new Object[]{"bitField0_", "dnt_", "ua_", "ip_", "geo_", "didsha1_", "didmd5_", "dpidsha1_", "dpidmd5_", "ipv6_", "carrier_", "language_", "make_", "model_", "os_", "osv_", "js_", "connectiontype_", ConnectionType.internalGetVerifier(), "devicetype_", DeviceType.internalGetVerifier(), "flashver_", "ifa_", "macsha1_", "macmd5_", "lmt_", "hwv_", "w_", "h_", "ppi_", "pxratio_", "geofetch_", "mccmnc_", "sua_", "langb_"});
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
                    return Byte.valueOf(this.memoizedIsInitialized);
                case 7:
                    if (obj == null) {
                        i10 = 0;
                    } else {
                        i10 = 1;
                    }
                    this.memoizedIsInitialized = (byte) i10;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public String getCarrier() {
            return this.carrier_;
        }

        public ByteString getCarrierBytes() {
            return ByteString.copyFromUtf8(this.carrier_);
        }

        public ConnectionType getConnectiontype() {
            ConnectionType forNumber = ConnectionType.forNumber(this.connectiontype_);
            if (forNumber == null) {
                return ConnectionType.CONNECTION_UNKNOWN;
            }
            return forNumber;
        }

        public DeviceType getDevicetype() {
            DeviceType forNumber = DeviceType.forNumber(this.devicetype_);
            if (forNumber == null) {
                return DeviceType.MOBILE;
            }
            return forNumber;
        }

        @Deprecated
        public String getDidmd5() {
            return this.didmd5_;
        }

        @Deprecated
        public ByteString getDidmd5Bytes() {
            return ByteString.copyFromUtf8(this.didmd5_);
        }

        @Deprecated
        public String getDidsha1() {
            return this.didsha1_;
        }

        @Deprecated
        public ByteString getDidsha1Bytes() {
            return ByteString.copyFromUtf8(this.didsha1_);
        }

        public boolean getDnt() {
            return this.dnt_;
        }

        @Deprecated
        public String getDpidmd5() {
            return this.dpidmd5_;
        }

        @Deprecated
        public ByteString getDpidmd5Bytes() {
            return ByteString.copyFromUtf8(this.dpidmd5_);
        }

        @Deprecated
        public String getDpidsha1() {
            return this.dpidsha1_;
        }

        @Deprecated
        public ByteString getDpidsha1Bytes() {
            return ByteString.copyFromUtf8(this.dpidsha1_);
        }

        public String getFlashver() {
            return this.flashver_;
        }

        public ByteString getFlashverBytes() {
            return ByteString.copyFromUtf8(this.flashver_);
        }

        public Geo getGeo() {
            Geo geo = this.geo_;
            if (geo == null) {
                return Geo.getDefaultInstance();
            }
            return geo;
        }

        public boolean getGeofetch() {
            return this.geofetch_;
        }

        public int getH() {
            return this.h_;
        }

        public String getHwv() {
            return this.hwv_;
        }

        public ByteString getHwvBytes() {
            return ByteString.copyFromUtf8(this.hwv_);
        }

        public String getIfa() {
            return this.ifa_;
        }

        public ByteString getIfaBytes() {
            return ByteString.copyFromUtf8(this.ifa_);
        }

        public String getIp() {
            return this.ip_;
        }

        public ByteString getIpBytes() {
            return ByteString.copyFromUtf8(this.ip_);
        }

        public String getIpv6() {
            return this.ipv6_;
        }

        public ByteString getIpv6Bytes() {
            return ByteString.copyFromUtf8(this.ipv6_);
        }

        public boolean getJs() {
            return this.js_;
        }

        public String getLangb() {
            return this.langb_;
        }

        public ByteString getLangbBytes() {
            return ByteString.copyFromUtf8(this.langb_);
        }

        public String getLanguage() {
            return this.language_;
        }

        public ByteString getLanguageBytes() {
            return ByteString.copyFromUtf8(this.language_);
        }

        public boolean getLmt() {
            return this.lmt_;
        }

        @Deprecated
        public String getMacmd5() {
            return this.macmd5_;
        }

        @Deprecated
        public ByteString getMacmd5Bytes() {
            return ByteString.copyFromUtf8(this.macmd5_);
        }

        @Deprecated
        public String getMacsha1() {
            return this.macsha1_;
        }

        @Deprecated
        public ByteString getMacsha1Bytes() {
            return ByteString.copyFromUtf8(this.macsha1_);
        }

        public String getMake() {
            return this.make_;
        }

        public ByteString getMakeBytes() {
            return ByteString.copyFromUtf8(this.make_);
        }

        public String getMccmnc() {
            return this.mccmnc_;
        }

        public ByteString getMccmncBytes() {
            return ByteString.copyFromUtf8(this.mccmnc_);
        }

        public String getModel() {
            return this.model_;
        }

        public ByteString getModelBytes() {
            return ByteString.copyFromUtf8(this.model_);
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

        public UserAgent getSua() {
            UserAgent userAgent = this.sua_;
            if (userAgent == null) {
                return UserAgent.getDefaultInstance();
            }
            return userAgent;
        }

        public String getUa() {
            return this.ua_;
        }

        public ByteString getUaBytes() {
            return ByteString.copyFromUtf8(this.ua_);
        }

        public int getW() {
            return this.w_;
        }

        public boolean hasCarrier() {
            if ((this.bitField0_ & 4194304) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasConnectiontype() {
            if ((this.bitField0_ & 16777216) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasDevicetype() {
            if ((this.bitField0_ & 128) != 0) {
                return true;
            }
            return false;
        }

        @Deprecated
        public boolean hasDidmd5() {
            if ((this.bitField0_ & 134217728) != 0) {
                return true;
            }
            return false;
        }

        @Deprecated
        public boolean hasDidsha1() {
            if ((this.bitField0_ & 67108864) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasDnt() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        @Deprecated
        public boolean hasDpidmd5() {
            if ((this.bitField0_ & 536870912) != 0) {
                return true;
            }
            return false;
        }

        @Deprecated
        public boolean hasDpidsha1() {
            if ((this.bitField0_ & 268435456) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasFlashver() {
            if ((this.bitField0_ & 524288) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasGeo() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasGeofetch() {
            if ((this.bitField0_ & 262144) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasH() {
            if ((this.bitField0_ & 16384) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasHwv() {
            if ((this.bitField0_ & 4096) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasIfa() {
            if ((this.bitField0_ & 33554432) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasIp() {
            if ((this.bitField0_ & 32) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasIpv6() {
            if ((this.bitField0_ & 64) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasJs() {
            if ((this.bitField0_ & 131072) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasLangb() {
            if ((this.bitField0_ & 2097152) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasLanguage() {
            if ((this.bitField0_ & 1048576) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasLmt() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        @Deprecated
        public boolean hasMacmd5() {
            if ((this.bitField0_ & Integer.MIN_VALUE) != 0) {
                return true;
            }
            return false;
        }

        @Deprecated
        public boolean hasMacsha1() {
            if ((this.bitField0_ & 1073741824) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasMake() {
            if ((this.bitField0_ & 256) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasMccmnc() {
            if ((this.bitField0_ & 8388608) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasModel() {
            if ((this.bitField0_ & 512) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasOs() {
            if ((this.bitField0_ & 1024) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasOsv() {
            if ((this.bitField0_ & 2048) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasPpi() {
            if ((this.bitField0_ & 32768) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasPxratio() {
            if ((this.bitField0_ & 65536) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasSua() {
            if ((this.bitField0_ & 16) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasUa() {
            if ((this.bitField0_ & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasW() {
            if ((this.bitField0_ & 8192) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(Device device) {
            return (a) DEFAULT_INSTANCE.createBuilder(device);
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
    public static final class Imp extends GeneratedMessageLite.ExtendableMessage<Imp, b> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
        public static final int AUDIO_FIELD_NUMBER = 15;
        public static final int BANNER_FIELD_NUMBER = 2;
        public static final int BIDFLOORCUR_FIELD_NUMBER = 9;
        public static final int BIDFLOOR_FIELD_NUMBER = 8;
        public static final int CLICKBROWSER_FIELD_NUMBER = 16;
        private static final Imp DEFAULT_INSTANCE;
        public static final int DISPLAYMANAGERVER_FIELD_NUMBER = 5;
        public static final int DISPLAYMANAGER_FIELD_NUMBER = 4;
        public static final int EXP_FIELD_NUMBER = 14;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int IFRAMEBUSTER_FIELD_NUMBER = 10;
        public static final int INSTL_FIELD_NUMBER = 6;
        public static final int METRIC_FIELD_NUMBER = 17;
        public static final int NATIVE_FIELD_NUMBER = 13;
        private static volatile Parser<Imp> PARSER = null;
        public static final int PMP_FIELD_NUMBER = 11;
        public static final int RWDD_FIELD_NUMBER = 18;
        public static final int SECURE_FIELD_NUMBER = 12;
        public static final int SSAI_FIELD_NUMBER = 19;
        public static final int TAGID_FIELD_NUMBER = 7;
        public static final int VIDEO_FIELD_NUMBER = 3;
        private Audio audio_;
        private Banner banner_;
        private double bidfloor_;
        private int bitField0_;
        private boolean clickbrowser_;
        private int exp_;
        private boolean instl_;
        private Native native_;
        private Pmp pmp_;
        private boolean rwdd_;
        private boolean secure_;
        private int ssai_;
        private Video video_;
        private byte memoizedIsInitialized = 2;
        private String id_ = "";
        private String displaymanager_ = "";
        private String displaymanagerver_ = "";
        private String tagid_ = "";
        private String bidfloorcur_ = "USD";
        private Internal.ProtobufList<String> iframebuster_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<Metric> metric_ = GeneratedMessageLite.emptyProtobufList();

        /* loaded from: classes6.dex */
        public enum APIFramework implements Internal.EnumLite {
            VPAID_1(1),
            VPAID_2(2),
            MRAID_1(3),
            ORMMA(4),
            MRAID_2(5),
            MRAID_3(6),
            OMID_1(7),
            SIMID_1_0(8),
            SIMID_1_1(9);
            
            public static final int MRAID_1_VALUE = 3;
            public static final int MRAID_2_VALUE = 5;
            public static final int MRAID_3_VALUE = 6;
            public static final int OMID_1_VALUE = 7;
            public static final int ORMMA_VALUE = 4;
            public static final int SIMID_1_0_VALUE = 8;
            public static final int SIMID_1_1_VALUE = 9;
            public static final int VPAID_1_VALUE = 1;
            public static final int VPAID_2_VALUE = 2;
            private static final Internal.EnumLiteMap<APIFramework> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<APIFramework> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public APIFramework findValueByNumber(int i10) {
                    return APIFramework.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31762a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (APIFramework.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            APIFramework(int i10) {
                this.value = i10;
            }

            public static APIFramework forNumber(int i10) {
                switch (i10) {
                    case 1:
                        return VPAID_1;
                    case 2:
                        return VPAID_2;
                    case 3:
                        return MRAID_1;
                    case 4:
                        return ORMMA;
                    case 5:
                        return MRAID_2;
                    case 6:
                        return MRAID_3;
                    case 7:
                        return OMID_1;
                    case 8:
                        return SIMID_1_0;
                    case 9:
                        return SIMID_1_1;
                    default:
                        return null;
                }
            }

            public static Internal.EnumLiteMap<APIFramework> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31762a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static APIFramework valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public enum AdPosition implements Internal.EnumLite {
            UNKNOWN(0),
            ABOVE_THE_FOLD(1),
            LOCKED(2),
            BELOW_THE_FOLD(3),
            HEADER(4),
            FOOTER(5),
            SIDEBAR(6),
            AD_POSITION_FULLSCREEN(7);
            
            public static final int ABOVE_THE_FOLD_VALUE = 1;
            public static final int AD_POSITION_FULLSCREEN_VALUE = 7;
            public static final int BELOW_THE_FOLD_VALUE = 3;
            public static final int FOOTER_VALUE = 5;
            public static final int HEADER_VALUE = 4;
            public static final int LOCKED_VALUE = 2;
            public static final int SIDEBAR_VALUE = 6;
            public static final int UNKNOWN_VALUE = 0;
            private static final Internal.EnumLiteMap<AdPosition> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<AdPosition> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public AdPosition findValueByNumber(int i10) {
                    return AdPosition.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31763a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (AdPosition.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            AdPosition(int i10) {
                this.value = i10;
            }

            public static AdPosition forNumber(int i10) {
                switch (i10) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return ABOVE_THE_FOLD;
                    case 2:
                        return LOCKED;
                    case 3:
                        return BELOW_THE_FOLD;
                    case 4:
                        return HEADER;
                    case 5:
                        return FOOTER;
                    case 6:
                        return SIDEBAR;
                    case 7:
                        return AD_POSITION_FULLSCREEN;
                    default:
                        return null;
                }
            }

            public static Internal.EnumLiteMap<AdPosition> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31763a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static AdPosition valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Audio extends GeneratedMessageLite.ExtendableMessage<Audio, f> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
            public static final int API_FIELD_NUMBER = 13;
            public static final int BATTR_FIELD_NUMBER = 7;
            public static final int COMPANIONAD_FIELD_NUMBER = 12;
            public static final int COMPANIONTYPE_FIELD_NUMBER = 20;
            private static final Audio DEFAULT_INSTANCE;
            public static final int DELIVERY_FIELD_NUMBER = 11;
            public static final int FEED_FIELD_NUMBER = 22;
            public static final int MAXBITRATE_FIELD_NUMBER = 10;
            public static final int MAXDURATION_FIELD_NUMBER = 3;
            public static final int MAXEXTENDED_FIELD_NUMBER = 8;
            public static final int MAXSEQ_FIELD_NUMBER = 21;
            public static final int MIMES_FIELD_NUMBER = 1;
            public static final int MINBITRATE_FIELD_NUMBER = 9;
            public static final int MINCPMPERSEC_FIELD_NUMBER = 30;
            public static final int MINDURATION_FIELD_NUMBER = 2;
            public static final int NVOL_FIELD_NUMBER = 24;
            private static volatile Parser<Audio> PARSER = null;
            public static final int PODDUR_FIELD_NUMBER = 25;
            public static final int PODID_FIELD_NUMBER = 27;
            public static final int PODSEQ_FIELD_NUMBER = 28;
            public static final int PROTOCOLS_FIELD_NUMBER = 4;
            public static final int RQDDURS_FIELD_NUMBER = 26;
            public static final int SEQUENCE_FIELD_NUMBER = 6;
            public static final int SLOTINPOD_FIELD_NUMBER = 29;
            public static final int STARTDELAY_FIELD_NUMBER = 5;
            public static final int STITCHED_FIELD_NUMBER = 23;
            private int apiMemoizedSerializedSize;
            private int battrMemoizedSerializedSize;
            private int bitField0_;
            private int companiontypeMemoizedSerializedSize;
            private int deliveryMemoizedSerializedSize;
            private int maxbitrate_;
            private int maxduration_;
            private int maxextended_;
            private int maxseq_;
            private int minbitrate_;
            private double mincpmpersec_;
            private int minduration_;
            private int nvol_;
            private int poddur_;
            private int podseq_;
            private int protocolsMemoizedSerializedSize;
            private int slotinpod_;
            private int startdelay_;
            private boolean stitched_;
            private static final Internal.ListAdapter.Converter<Integer, Protocol> protocols_converter_ = new a();
            private static final Internal.ListAdapter.Converter<Integer, CreativeAttribute> battr_converter_ = new b();
            private static final Internal.ListAdapter.Converter<Integer, ContentDeliveryMethod> delivery_converter_ = new c();
            private static final Internal.ListAdapter.Converter<Integer, APIFramework> api_converter_ = new d();
            private static final Internal.ListAdapter.Converter<Integer, CompanionType> companiontype_converter_ = new e();
            private int rqddursMemoizedSerializedSize = -1;
            private byte memoizedIsInitialized = 2;
            private Internal.ProtobufList<String> mimes_ = GeneratedMessageLite.emptyProtobufList();
            private Internal.IntList protocols_ = GeneratedMessageLite.emptyIntList();
            private Internal.IntList rqddurs_ = GeneratedMessageLite.emptyIntList();
            private String podid_ = "";
            private int sequence_ = 1;
            private Internal.IntList battr_ = GeneratedMessageLite.emptyIntList();
            private Internal.IntList delivery_ = GeneratedMessageLite.emptyIntList();
            private Internal.ProtobufList<Banner> companionad_ = GeneratedMessageLite.emptyProtobufList();
            private Internal.IntList api_ = GeneratedMessageLite.emptyIntList();
            private Internal.IntList companiontype_ = GeneratedMessageLite.emptyIntList();
            private int feed_ = 1;

            /* loaded from: classes6.dex */
            public enum FeedType implements Internal.EnumLite {
                MUSIC_SERVICE(1),
                BROADCAST(2),
                PODCAST(3);
                
                public static final int BROADCAST_VALUE = 2;
                public static final int MUSIC_SERVICE_VALUE = 1;
                public static final int PODCAST_VALUE = 3;
                private static final Internal.EnumLiteMap<FeedType> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<FeedType> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public FeedType findValueByNumber(int i10) {
                        return FeedType.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31764a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (FeedType.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                FeedType(int i10) {
                    this.value = i10;
                }

                public static FeedType forNumber(int i10) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                return null;
                            }
                            return PODCAST;
                        }
                        return BROADCAST;
                    }
                    return MUSIC_SERVICE;
                }

                public static Internal.EnumLiteMap<FeedType> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31764a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static FeedType valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public enum VolumeNormalizationMode implements Internal.EnumLite {
                NONE(0),
                AVERAGE_VOLUME(1),
                PEAK_VOLUME(2),
                LOUDNESS(3),
                CUSTOM_VOLUME(4);
                
                public static final int AVERAGE_VOLUME_VALUE = 1;
                public static final int CUSTOM_VOLUME_VALUE = 4;
                public static final int LOUDNESS_VALUE = 3;
                public static final int NONE_VALUE = 0;
                public static final int PEAK_VOLUME_VALUE = 2;
                private static final Internal.EnumLiteMap<VolumeNormalizationMode> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<VolumeNormalizationMode> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public VolumeNormalizationMode findValueByNumber(int i10) {
                        return VolumeNormalizationMode.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31765a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (VolumeNormalizationMode.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                VolumeNormalizationMode(int i10) {
                    this.value = i10;
                }

                public static VolumeNormalizationMode forNumber(int i10) {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 != 3) {
                                    if (i10 != 4) {
                                        return null;
                                    }
                                    return CUSTOM_VOLUME;
                                }
                                return LOUDNESS;
                            }
                            return PEAK_VOLUME;
                        }
                        return AVERAGE_VOLUME;
                    }
                    return NONE;
                }

                public static Internal.EnumLiteMap<VolumeNormalizationMode> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31765a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static VolumeNormalizationMode valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            class a implements Internal.ListAdapter.Converter<Integer, Protocol> {
                a() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public Protocol convert(Integer num) {
                    Protocol forNumber = Protocol.forNumber(num.intValue());
                    if (forNumber == null) {
                        return Protocol.VAST_1_0;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class b implements Internal.ListAdapter.Converter<Integer, CreativeAttribute> {
                b() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public CreativeAttribute convert(Integer num) {
                    CreativeAttribute forNumber = CreativeAttribute.forNumber(num.intValue());
                    if (forNumber == null) {
                        return CreativeAttribute.AUDIO_AUTO_PLAY;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class c implements Internal.ListAdapter.Converter<Integer, ContentDeliveryMethod> {
                c() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public ContentDeliveryMethod convert(Integer num) {
                    ContentDeliveryMethod forNumber = ContentDeliveryMethod.forNumber(num.intValue());
                    if (forNumber == null) {
                        return ContentDeliveryMethod.STREAMING;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class d implements Internal.ListAdapter.Converter<Integer, APIFramework> {
                d() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public APIFramework convert(Integer num) {
                    APIFramework forNumber = APIFramework.forNumber(num.intValue());
                    if (forNumber == null) {
                        return APIFramework.VPAID_1;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class e implements Internal.ListAdapter.Converter<Integer, CompanionType> {
                e() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public CompanionType convert(Integer num) {
                    CompanionType forNumber = CompanionType.forNumber(num.intValue());
                    if (forNumber == null) {
                        return CompanionType.STATIC;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            public static final class f extends GeneratedMessageLite.ExtendableBuilder<Audio, f> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                private f() {
                    super(Audio.DEFAULT_INSTANCE);
                }
            }

            static {
                Audio audio = new Audio();
                DEFAULT_INSTANCE = audio;
                GeneratedMessageLite.registerDefaultInstance(Audio.class, audio);
            }

            private Audio() {
            }

            private void addAllApi(Iterable<? extends APIFramework> iterable) {
                ensureApiIsMutable();
                for (APIFramework aPIFramework : iterable) {
                    this.api_.addInt(aPIFramework.getNumber());
                }
            }

            private void addAllBattr(Iterable<? extends CreativeAttribute> iterable) {
                ensureBattrIsMutable();
                for (CreativeAttribute creativeAttribute : iterable) {
                    this.battr_.addInt(creativeAttribute.getNumber());
                }
            }

            private void addAllCompanionad(Iterable<? extends Banner> iterable) {
                ensureCompanionadIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.companionad_);
            }

            private void addAllCompaniontype(Iterable<? extends CompanionType> iterable) {
                ensureCompaniontypeIsMutable();
                for (CompanionType companionType : iterable) {
                    this.companiontype_.addInt(companionType.getNumber());
                }
            }

            private void addAllDelivery(Iterable<? extends ContentDeliveryMethod> iterable) {
                ensureDeliveryIsMutable();
                for (ContentDeliveryMethod contentDeliveryMethod : iterable) {
                    this.delivery_.addInt(contentDeliveryMethod.getNumber());
                }
            }

            private void addAllMimes(Iterable<String> iterable) {
                ensureMimesIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.mimes_);
            }

            private void addAllProtocols(Iterable<? extends Protocol> iterable) {
                ensureProtocolsIsMutable();
                for (Protocol protocol : iterable) {
                    this.protocols_.addInt(protocol.getNumber());
                }
            }

            private void addAllRqddurs(Iterable<? extends Integer> iterable) {
                ensureRqddursIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.rqddurs_);
            }

            private void addApi(APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.addInt(aPIFramework.getNumber());
            }

            private void addBattr(CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.addInt(creativeAttribute.getNumber());
            }

            private void addCompanionad(Banner banner) {
                banner.getClass();
                ensureCompanionadIsMutable();
                this.companionad_.add(banner);
            }

            private void addCompaniontype(CompanionType companionType) {
                companionType.getClass();
                ensureCompaniontypeIsMutable();
                this.companiontype_.addInt(companionType.getNumber());
            }

            private void addDelivery(ContentDeliveryMethod contentDeliveryMethod) {
                contentDeliveryMethod.getClass();
                ensureDeliveryIsMutable();
                this.delivery_.addInt(contentDeliveryMethod.getNumber());
            }

            private void addMimes(String str) {
                str.getClass();
                ensureMimesIsMutable();
                this.mimes_.add(str);
            }

            private void addMimesBytes(ByteString byteString) {
                ensureMimesIsMutable();
                this.mimes_.add(byteString.toStringUtf8());
            }

            private void addProtocols(Protocol protocol) {
                protocol.getClass();
                ensureProtocolsIsMutable();
                this.protocols_.addInt(protocol.getNumber());
            }

            private void addRqddurs(int i10) {
                ensureRqddursIsMutable();
                this.rqddurs_.addInt(i10);
            }

            private void clearApi() {
                this.api_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearBattr() {
                this.battr_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearCompanionad() {
                this.companionad_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearCompaniontype() {
                this.companiontype_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearDelivery() {
                this.delivery_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearFeed() {
                this.bitField0_ &= -8193;
                this.feed_ = 1;
            }

            private void clearMaxbitrate() {
                this.bitField0_ &= -2049;
                this.maxbitrate_ = 0;
            }

            private void clearMaxduration() {
                this.bitField0_ &= -3;
                this.maxduration_ = 0;
            }

            private void clearMaxextended() {
                this.bitField0_ &= -513;
                this.maxextended_ = 0;
            }

            private void clearMaxseq() {
                this.bitField0_ &= -4097;
                this.maxseq_ = 0;
            }

            private void clearMimes() {
                this.mimes_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearMinbitrate() {
                this.bitField0_ &= VideoEventOnePlay.EXIT_CODE_BEFORE_SURFACE_NOT_SET;
                this.minbitrate_ = 0;
            }

            private void clearMincpmpersec() {
                this.bitField0_ &= -257;
                this.mincpmpersec_ = 0.0d;
            }

            private void clearMinduration() {
                this.bitField0_ &= -2;
                this.minduration_ = 0;
            }

            private void clearNvol() {
                this.bitField0_ &= -32769;
                this.nvol_ = 0;
            }

            private void clearPoddur() {
                this.bitField0_ &= -5;
                this.poddur_ = 0;
            }

            private void clearPodid() {
                this.bitField0_ &= -17;
                this.podid_ = getDefaultInstance().getPodid();
            }

            private void clearPodseq() {
                this.bitField0_ &= -33;
                this.podseq_ = 0;
            }

            private void clearProtocols() {
                this.protocols_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearRqddurs() {
                this.rqddurs_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearSequence() {
                this.bitField0_ &= -65;
                this.sequence_ = 1;
            }

            private void clearSlotinpod() {
                this.bitField0_ &= -129;
                this.slotinpod_ = 0;
            }

            private void clearStartdelay() {
                this.bitField0_ &= -9;
                this.startdelay_ = 0;
            }

            private void clearStitched() {
                this.bitField0_ &= -16385;
                this.stitched_ = false;
            }

            private void ensureApiIsMutable() {
                Internal.IntList intList = this.api_;
                if (!intList.isModifiable()) {
                    this.api_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureBattrIsMutable() {
                Internal.IntList intList = this.battr_;
                if (!intList.isModifiable()) {
                    this.battr_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureCompanionadIsMutable() {
                Internal.ProtobufList<Banner> protobufList = this.companionad_;
                if (!protobufList.isModifiable()) {
                    this.companionad_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            private void ensureCompaniontypeIsMutable() {
                Internal.IntList intList = this.companiontype_;
                if (!intList.isModifiable()) {
                    this.companiontype_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureDeliveryIsMutable() {
                Internal.IntList intList = this.delivery_;
                if (!intList.isModifiable()) {
                    this.delivery_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureMimesIsMutable() {
                Internal.ProtobufList<String> protobufList = this.mimes_;
                if (!protobufList.isModifiable()) {
                    this.mimes_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            private void ensureProtocolsIsMutable() {
                Internal.IntList intList = this.protocols_;
                if (!intList.isModifiable()) {
                    this.protocols_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureRqddursIsMutable() {
                Internal.IntList intList = this.rqddurs_;
                if (!intList.isModifiable()) {
                    this.rqddurs_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            public static Audio getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static f newBuilder() {
                return (f) DEFAULT_INSTANCE.createBuilder();
            }

            public static Audio parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Audio) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Audio parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<Audio> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void removeCompanionad(int i10) {
                ensureCompanionadIsMutable();
                this.companionad_.remove(i10);
            }

            private void setApi(int i10, APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.setInt(i10, aPIFramework.getNumber());
            }

            private void setBattr(int i10, CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.setInt(i10, creativeAttribute.getNumber());
            }

            private void setCompanionad(int i10, Banner banner) {
                banner.getClass();
                ensureCompanionadIsMutable();
                this.companionad_.set(i10, banner);
            }

            private void setCompaniontype(int i10, CompanionType companionType) {
                companionType.getClass();
                ensureCompaniontypeIsMutable();
                this.companiontype_.setInt(i10, companionType.getNumber());
            }

            private void setDelivery(int i10, ContentDeliveryMethod contentDeliveryMethod) {
                contentDeliveryMethod.getClass();
                ensureDeliveryIsMutable();
                this.delivery_.setInt(i10, contentDeliveryMethod.getNumber());
            }

            private void setFeed(FeedType feedType) {
                this.feed_ = feedType.getNumber();
                this.bitField0_ |= 8192;
            }

            private void setMaxbitrate(int i10) {
                this.bitField0_ |= 2048;
                this.maxbitrate_ = i10;
            }

            private void setMaxduration(int i10) {
                this.bitField0_ |= 2;
                this.maxduration_ = i10;
            }

            private void setMaxextended(int i10) {
                this.bitField0_ |= 512;
                this.maxextended_ = i10;
            }

            private void setMaxseq(int i10) {
                this.bitField0_ |= 4096;
                this.maxseq_ = i10;
            }

            private void setMimes(int i10, String str) {
                str.getClass();
                ensureMimesIsMutable();
                this.mimes_.set(i10, str);
            }

            private void setMinbitrate(int i10) {
                this.bitField0_ |= 1024;
                this.minbitrate_ = i10;
            }

            private void setMincpmpersec(double d10) {
                this.bitField0_ |= 256;
                this.mincpmpersec_ = d10;
            }

            private void setMinduration(int i10) {
                this.bitField0_ |= 1;
                this.minduration_ = i10;
            }

            private void setNvol(VolumeNormalizationMode volumeNormalizationMode) {
                this.nvol_ = volumeNormalizationMode.getNumber();
                this.bitField0_ |= 32768;
            }

            private void setPoddur(int i10) {
                this.bitField0_ |= 4;
                this.poddur_ = i10;
            }

            private void setPodid(String str) {
                str.getClass();
                this.bitField0_ |= 16;
                this.podid_ = str;
            }

            private void setPodidBytes(ByteString byteString) {
                this.podid_ = byteString.toStringUtf8();
                this.bitField0_ |= 16;
            }

            private void setPodseq(PodSequence podSequence) {
                this.podseq_ = podSequence.getNumber();
                this.bitField0_ |= 32;
            }

            private void setProtocols(int i10, Protocol protocol) {
                protocol.getClass();
                ensureProtocolsIsMutable();
                this.protocols_.setInt(i10, protocol.getNumber());
            }

            private void setRqddurs(int i10, int i11) {
                ensureRqddursIsMutable();
                this.rqddurs_.setInt(i10, i11);
            }

            private void setSequence(int i10) {
                this.bitField0_ |= 64;
                this.sequence_ = i10;
            }

            private void setSlotinpod(SlotPositionInPod slotPositionInPod) {
                this.slotinpod_ = slotPositionInPod.getNumber();
                this.bitField0_ |= 128;
            }

            private void setStartdelay(int i10) {
                this.bitField0_ |= 8;
                this.startdelay_ = i10;
            }

            private void setStitched(boolean z10) {
                this.bitField0_ |= 16384;
                this.stitched_ = z10;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Audio();
                    case 2:
                        return new f();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0018\u0000\u0001\u0001\u001e\u0018\u0000\b\u0001\u0001\u001a\u0002င\u0000\u0003င\u0001\u0004,\u0005င\u0003\u0006င\u0006\u0007,\bင\t\tင\n\nင\u000b\u000b,\fЛ\r,\u0014,\u0015င\f\u0016ဌ\r\u0017ဇ\u000e\u0018ဌ\u000f\u0019င\u0002\u001a'\u001bဈ\u0004\u001cဌ\u0005\u001dဌ\u0007\u001eက\b", new Object[]{"bitField0_", "mimes_", "minduration_", "maxduration_", "protocols_", Protocol.internalGetVerifier(), "startdelay_", "sequence_", "battr_", CreativeAttribute.internalGetVerifier(), "maxextended_", "minbitrate_", "maxbitrate_", "delivery_", ContentDeliveryMethod.internalGetVerifier(), "companionad_", Banner.class, "api_", APIFramework.internalGetVerifier(), "companiontype_", CompanionType.internalGetVerifier(), "maxseq_", "feed_", FeedType.internalGetVerifier(), "stitched_", "nvol_", VolumeNormalizationMode.internalGetVerifier(), "poddur_", "rqddurs_", "podid_", "podseq_", PodSequence.internalGetVerifier(), "slotinpod_", SlotPositionInPod.internalGetVerifier(), "mincpmpersec_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Audio> parser = PARSER;
                        if (parser == null) {
                            synchronized (Audio.class) {
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public APIFramework getApi(int i10) {
                APIFramework forNumber = APIFramework.forNumber(this.api_.getInt(i10));
                if (forNumber == null) {
                    return APIFramework.VPAID_1;
                }
                return forNumber;
            }

            public int getApiCount() {
                return this.api_.size();
            }

            public List<APIFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, api_converter_);
            }

            public CreativeAttribute getBattr(int i10) {
                CreativeAttribute forNumber = CreativeAttribute.forNumber(this.battr_.getInt(i10));
                if (forNumber == null) {
                    return CreativeAttribute.AUDIO_AUTO_PLAY;
                }
                return forNumber;
            }

            public int getBattrCount() {
                return this.battr_.size();
            }

            public List<CreativeAttribute> getBattrList() {
                return new Internal.ListAdapter(this.battr_, battr_converter_);
            }

            public Banner getCompanionad(int i10) {
                return this.companionad_.get(i10);
            }

            public int getCompanionadCount() {
                return this.companionad_.size();
            }

            public List<Banner> getCompanionadList() {
                return this.companionad_;
            }

            public a getCompanionadOrBuilder(int i10) {
                return this.companionad_.get(i10);
            }

            public List<? extends a> getCompanionadOrBuilderList() {
                return this.companionad_;
            }

            public CompanionType getCompaniontype(int i10) {
                CompanionType forNumber = CompanionType.forNumber(this.companiontype_.getInt(i10));
                if (forNumber == null) {
                    return CompanionType.STATIC;
                }
                return forNumber;
            }

            public int getCompaniontypeCount() {
                return this.companiontype_.size();
            }

            public List<CompanionType> getCompaniontypeList() {
                return new Internal.ListAdapter(this.companiontype_, companiontype_converter_);
            }

            public ContentDeliveryMethod getDelivery(int i10) {
                ContentDeliveryMethod forNumber = ContentDeliveryMethod.forNumber(this.delivery_.getInt(i10));
                if (forNumber == null) {
                    return ContentDeliveryMethod.STREAMING;
                }
                return forNumber;
            }

            public int getDeliveryCount() {
                return this.delivery_.size();
            }

            public List<ContentDeliveryMethod> getDeliveryList() {
                return new Internal.ListAdapter(this.delivery_, delivery_converter_);
            }

            public FeedType getFeed() {
                FeedType forNumber = FeedType.forNumber(this.feed_);
                if (forNumber == null) {
                    return FeedType.MUSIC_SERVICE;
                }
                return forNumber;
            }

            public int getMaxbitrate() {
                return this.maxbitrate_;
            }

            public int getMaxduration() {
                return this.maxduration_;
            }

            public int getMaxextended() {
                return this.maxextended_;
            }

            public int getMaxseq() {
                return this.maxseq_;
            }

            public String getMimes(int i10) {
                return this.mimes_.get(i10);
            }

            public ByteString getMimesBytes(int i10) {
                return ByteString.copyFromUtf8(this.mimes_.get(i10));
            }

            public int getMimesCount() {
                return this.mimes_.size();
            }

            public List<String> getMimesList() {
                return this.mimes_;
            }

            public int getMinbitrate() {
                return this.minbitrate_;
            }

            public double getMincpmpersec() {
                return this.mincpmpersec_;
            }

            public int getMinduration() {
                return this.minduration_;
            }

            public VolumeNormalizationMode getNvol() {
                VolumeNormalizationMode forNumber = VolumeNormalizationMode.forNumber(this.nvol_);
                if (forNumber == null) {
                    return VolumeNormalizationMode.NONE;
                }
                return forNumber;
            }

            public int getPoddur() {
                return this.poddur_;
            }

            public String getPodid() {
                return this.podid_;
            }

            public ByteString getPodidBytes() {
                return ByteString.copyFromUtf8(this.podid_);
            }

            public PodSequence getPodseq() {
                PodSequence forNumber = PodSequence.forNumber(this.podseq_);
                if (forNumber == null) {
                    return PodSequence.POD_SEQUENCE_ANY;
                }
                return forNumber;
            }

            public Protocol getProtocols(int i10) {
                Protocol forNumber = Protocol.forNumber(this.protocols_.getInt(i10));
                if (forNumber == null) {
                    return Protocol.VAST_1_0;
                }
                return forNumber;
            }

            public int getProtocolsCount() {
                return this.protocols_.size();
            }

            public List<Protocol> getProtocolsList() {
                return new Internal.ListAdapter(this.protocols_, protocols_converter_);
            }

            public int getRqddurs(int i10) {
                return this.rqddurs_.getInt(i10);
            }

            public int getRqddursCount() {
                return this.rqddurs_.size();
            }

            public List<Integer> getRqddursList() {
                return this.rqddurs_;
            }

            @Deprecated
            public int getSequence() {
                return this.sequence_;
            }

            public SlotPositionInPod getSlotinpod() {
                SlotPositionInPod forNumber = SlotPositionInPod.forNumber(this.slotinpod_);
                if (forNumber == null) {
                    return SlotPositionInPod.SLOT_POSITION_POD_ANY;
                }
                return forNumber;
            }

            public int getStartdelay() {
                return this.startdelay_;
            }

            public boolean getStitched() {
                return this.stitched_;
            }

            public boolean hasFeed() {
                if ((this.bitField0_ & 8192) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxbitrate() {
                if ((this.bitField0_ & 2048) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxduration() {
                if ((this.bitField0_ & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxextended() {
                if ((this.bitField0_ & 512) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxseq() {
                if ((this.bitField0_ & 4096) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMinbitrate() {
                if ((this.bitField0_ & 1024) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMincpmpersec() {
                if ((this.bitField0_ & 256) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMinduration() {
                if ((this.bitField0_ & 1) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasNvol() {
                if ((this.bitField0_ & 32768) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPoddur() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPodid() {
                if ((this.bitField0_ & 16) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPodseq() {
                if ((this.bitField0_ & 32) != 0) {
                    return true;
                }
                return false;
            }

            @Deprecated
            public boolean hasSequence() {
                if ((this.bitField0_ & 64) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasSlotinpod() {
                if ((this.bitField0_ & 128) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasStartdelay() {
                if ((this.bitField0_ & 8) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasStitched() {
                if ((this.bitField0_ & 16384) != 0) {
                    return true;
                }
                return false;
            }

            public static f newBuilder(Audio audio) {
                return (f) DEFAULT_INSTANCE.createBuilder(audio);
            }

            public static Audio parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Audio) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Audio parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Audio parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            private void addCompanionad(int i10, Banner banner) {
                banner.getClass();
                ensureCompanionadIsMutable();
                this.companionad_.add(i10, banner);
            }

            public static Audio parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Audio parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Audio parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Audio parseFrom(InputStream inputStream) throws IOException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Audio parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Audio parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Audio parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Audio) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Banner extends GeneratedMessageLite.ExtendableMessage<Banner, e> implements a {
            public static final int API_FIELD_NUMBER = 10;
            public static final int BATTR_FIELD_NUMBER = 6;
            public static final int BTYPE_FIELD_NUMBER = 5;
            private static final Banner DEFAULT_INSTANCE;
            public static final int EXPDIR_FIELD_NUMBER = 9;
            public static final int FORMAT_FIELD_NUMBER = 15;
            public static final int HMAX_FIELD_NUMBER = 12;
            public static final int HMIN_FIELD_NUMBER = 14;
            public static final int H_FIELD_NUMBER = 2;
            public static final int ID_FIELD_NUMBER = 3;
            public static final int MIMES_FIELD_NUMBER = 7;
            private static volatile Parser<Banner> PARSER = null;
            public static final int POS_FIELD_NUMBER = 4;
            public static final int TOPFRAME_FIELD_NUMBER = 8;
            public static final int VCM_FIELD_NUMBER = 16;
            public static final int WMAX_FIELD_NUMBER = 11;
            public static final int WMIN_FIELD_NUMBER = 13;
            public static final int W_FIELD_NUMBER = 1;
            private int apiMemoizedSerializedSize;
            private int battrMemoizedSerializedSize;
            private int bitField0_;
            private int btypeMemoizedSerializedSize;
            private int expdirMemoizedSerializedSize;
            private int h_;
            private int hmax_;
            private int hmin_;
            private int pos_;
            private boolean topframe_;
            private boolean vcm_;
            private int w_;
            private int wmax_;
            private int wmin_;
            private static final Internal.ListAdapter.Converter<Integer, BannerAdType> btype_converter_ = new a();
            private static final Internal.ListAdapter.Converter<Integer, CreativeAttribute> battr_converter_ = new b();
            private static final Internal.ListAdapter.Converter<Integer, ExpandableDirection> expdir_converter_ = new c();
            private static final Internal.ListAdapter.Converter<Integer, APIFramework> api_converter_ = new d();
            private byte memoizedIsInitialized = 2;
            private Internal.ProtobufList<Format> format_ = GeneratedMessageLite.emptyProtobufList();
            private String id_ = "";
            private Internal.IntList btype_ = GeneratedMessageLite.emptyIntList();
            private Internal.IntList battr_ = GeneratedMessageLite.emptyIntList();
            private Internal.ProtobufList<String> mimes_ = GeneratedMessageLite.emptyProtobufList();
            private Internal.IntList expdir_ = GeneratedMessageLite.emptyIntList();
            private Internal.IntList api_ = GeneratedMessageLite.emptyIntList();

            /* loaded from: classes6.dex */
            public enum BannerAdType implements Internal.EnumLite {
                XHTML_TEXT_AD(1),
                XHTML_BANNER_AD(2),
                JAVASCRIPT_AD(3),
                IFRAME(4);
                
                public static final int IFRAME_VALUE = 4;
                public static final int JAVASCRIPT_AD_VALUE = 3;
                public static final int XHTML_BANNER_AD_VALUE = 2;
                public static final int XHTML_TEXT_AD_VALUE = 1;
                private static final Internal.EnumLiteMap<BannerAdType> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<BannerAdType> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public BannerAdType findValueByNumber(int i10) {
                        return BannerAdType.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31766a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (BannerAdType.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                BannerAdType(int i10) {
                    this.value = i10;
                }

                public static BannerAdType forNumber(int i10) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    return null;
                                }
                                return IFRAME;
                            }
                            return JAVASCRIPT_AD;
                        }
                        return XHTML_BANNER_AD;
                    }
                    return XHTML_TEXT_AD;
                }

                public static Internal.EnumLiteMap<BannerAdType> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31766a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static BannerAdType valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public enum ExpandableDirection implements Internal.EnumLite {
                LEFT(1),
                RIGHT(2),
                UP(3),
                DOWN(4),
                EXPANDABLE_FULLSCREEN(5),
                RESIZE_MINIMIZE(6);
                
                public static final int DOWN_VALUE = 4;
                public static final int EXPANDABLE_FULLSCREEN_VALUE = 5;
                public static final int LEFT_VALUE = 1;
                public static final int RESIZE_MINIMIZE_VALUE = 6;
                public static final int RIGHT_VALUE = 2;
                public static final int UP_VALUE = 3;
                private static final Internal.EnumLiteMap<ExpandableDirection> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<ExpandableDirection> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public ExpandableDirection findValueByNumber(int i10) {
                        return ExpandableDirection.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31767a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (ExpandableDirection.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                ExpandableDirection(int i10) {
                    this.value = i10;
                }

                public static ExpandableDirection forNumber(int i10) {
                    switch (i10) {
                        case 1:
                            return LEFT;
                        case 2:
                            return RIGHT;
                        case 3:
                            return UP;
                        case 4:
                            return DOWN;
                        case 5:
                            return EXPANDABLE_FULLSCREEN;
                        case 6:
                            return RESIZE_MINIMIZE;
                        default:
                            return null;
                    }
                }

                public static Internal.EnumLiteMap<ExpandableDirection> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31767a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static ExpandableDirection valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public static final class Format extends GeneratedMessageLite.ExtendableMessage<Format, a> implements f {
                private static final Format DEFAULT_INSTANCE;
                public static final int HRATIO_FIELD_NUMBER = 4;
                public static final int H_FIELD_NUMBER = 2;
                private static volatile Parser<Format> PARSER = null;
                public static final int WMIN_FIELD_NUMBER = 5;
                public static final int WRATIO_FIELD_NUMBER = 3;
                public static final int W_FIELD_NUMBER = 1;
                private int bitField0_;
                private int h_;
                private int hratio_;
                private byte memoizedIsInitialized = 2;
                private int w_;
                private int wmin_;
                private int wratio_;

                /* loaded from: classes6.dex */
                public static final class a extends GeneratedMessageLite.ExtendableBuilder<Format, a> implements f {
                    private a() {
                        super(Format.DEFAULT_INSTANCE);
                    }
                }

                static {
                    Format format = new Format();
                    DEFAULT_INSTANCE = format;
                    GeneratedMessageLite.registerDefaultInstance(Format.class, format);
                }

                private Format() {
                }

                private void clearH() {
                    this.bitField0_ &= -3;
                    this.h_ = 0;
                }

                private void clearHratio() {
                    this.bitField0_ &= -9;
                    this.hratio_ = 0;
                }

                private void clearW() {
                    this.bitField0_ &= -2;
                    this.w_ = 0;
                }

                private void clearWmin() {
                    this.bitField0_ &= -17;
                    this.wmin_ = 0;
                }

                private void clearWratio() {
                    this.bitField0_ &= -5;
                    this.wratio_ = 0;
                }

                public static Format getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static a newBuilder() {
                    return (a) DEFAULT_INSTANCE.createBuilder();
                }

                public static Format parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Format) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Format parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                }

                public static Parser<Format> parser() {
                    return DEFAULT_INSTANCE.getParserForType();
                }

                private void setH(int i10) {
                    this.bitField0_ |= 2;
                    this.h_ = i10;
                }

                private void setHratio(int i10) {
                    this.bitField0_ |= 8;
                    this.hratio_ = i10;
                }

                private void setW(int i10) {
                    this.bitField0_ |= 1;
                    this.w_ = i10;
                }

                private void setWmin(int i10) {
                    this.bitField0_ |= 16;
                    this.wmin_ = i10;
                }

                private void setWratio(int i10) {
                    this.bitField0_ |= 4;
                    this.wratio_ = i10;
                }

                @Override // com.google.protobuf.GeneratedMessageLite
                protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                    int i10;
                    switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                        case 1:
                            return new Format();
                        case 2:
                            return new a();
                        case 3:
                            return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"bitField0_", "w_", "h_", "wratio_", "hratio_", "wmin_"});
                        case 4:
                            return DEFAULT_INSTANCE;
                        case 5:
                            Parser<Format> parser = PARSER;
                            if (parser == null) {
                                synchronized (Format.class) {
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
                            return Byte.valueOf(this.memoizedIsInitialized);
                        case 7:
                            if (obj == null) {
                                i10 = 0;
                            } else {
                                i10 = 1;
                            }
                            this.memoizedIsInitialized = (byte) i10;
                            return null;
                        default:
                            throw new UnsupportedOperationException();
                    }
                }

                public int getH() {
                    return this.h_;
                }

                public int getHratio() {
                    return this.hratio_;
                }

                public int getW() {
                    return this.w_;
                }

                public int getWmin() {
                    return this.wmin_;
                }

                public int getWratio() {
                    return this.wratio_;
                }

                public boolean hasH() {
                    if ((this.bitField0_ & 2) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasHratio() {
                    if ((this.bitField0_ & 8) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasW() {
                    if ((this.bitField0_ & 1) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasWmin() {
                    if ((this.bitField0_ & 16) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasWratio() {
                    if ((this.bitField0_ & 4) != 0) {
                        return true;
                    }
                    return false;
                }

                public static a newBuilder(Format format) {
                    return (a) DEFAULT_INSTANCE.createBuilder(format);
                }

                public static Format parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Format) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Format parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                }

                public static Format parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                }

                public static Format parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                }

                public static Format parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                }

                public static Format parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                }

                public static Format parseFrom(InputStream inputStream) throws IOException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Format parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Format parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                }

                public static Format parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Format) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                }
            }

            /* loaded from: classes6.dex */
            class a implements Internal.ListAdapter.Converter<Integer, BannerAdType> {
                a() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public BannerAdType convert(Integer num) {
                    BannerAdType forNumber = BannerAdType.forNumber(num.intValue());
                    if (forNumber == null) {
                        return BannerAdType.XHTML_TEXT_AD;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class b implements Internal.ListAdapter.Converter<Integer, CreativeAttribute> {
                b() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public CreativeAttribute convert(Integer num) {
                    CreativeAttribute forNumber = CreativeAttribute.forNumber(num.intValue());
                    if (forNumber == null) {
                        return CreativeAttribute.AUDIO_AUTO_PLAY;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class c implements Internal.ListAdapter.Converter<Integer, ExpandableDirection> {
                c() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public ExpandableDirection convert(Integer num) {
                    ExpandableDirection forNumber = ExpandableDirection.forNumber(num.intValue());
                    if (forNumber == null) {
                        return ExpandableDirection.LEFT;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class d implements Internal.ListAdapter.Converter<Integer, APIFramework> {
                d() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public APIFramework convert(Integer num) {
                    APIFramework forNumber = APIFramework.forNumber(num.intValue());
                    if (forNumber == null) {
                        return APIFramework.VPAID_1;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            public static final class e extends GeneratedMessageLite.ExtendableBuilder<Banner, e> implements a {
                private e() {
                    super(Banner.DEFAULT_INSTANCE);
                }
            }

            /* loaded from: classes6.dex */
            public interface f extends GeneratedMessageLite.ExtendableMessageOrBuilder<Format, Format.a> {
            }

            static {
                Banner banner = new Banner();
                DEFAULT_INSTANCE = banner;
                GeneratedMessageLite.registerDefaultInstance(Banner.class, banner);
            }

            private Banner() {
            }

            private void addAllApi(Iterable<? extends APIFramework> iterable) {
                ensureApiIsMutable();
                for (APIFramework aPIFramework : iterable) {
                    this.api_.addInt(aPIFramework.getNumber());
                }
            }

            private void addAllBattr(Iterable<? extends CreativeAttribute> iterable) {
                ensureBattrIsMutable();
                for (CreativeAttribute creativeAttribute : iterable) {
                    this.battr_.addInt(creativeAttribute.getNumber());
                }
            }

            private void addAllBtype(Iterable<? extends BannerAdType> iterable) {
                ensureBtypeIsMutable();
                for (BannerAdType bannerAdType : iterable) {
                    this.btype_.addInt(bannerAdType.getNumber());
                }
            }

            private void addAllExpdir(Iterable<? extends ExpandableDirection> iterable) {
                ensureExpdirIsMutable();
                for (ExpandableDirection expandableDirection : iterable) {
                    this.expdir_.addInt(expandableDirection.getNumber());
                }
            }

            private void addAllFormat(Iterable<? extends Format> iterable) {
                ensureFormatIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.format_);
            }

            private void addAllMimes(Iterable<String> iterable) {
                ensureMimesIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.mimes_);
            }

            private void addApi(APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.addInt(aPIFramework.getNumber());
            }

            private void addBattr(CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.addInt(creativeAttribute.getNumber());
            }

            private void addBtype(BannerAdType bannerAdType) {
                bannerAdType.getClass();
                ensureBtypeIsMutable();
                this.btype_.addInt(bannerAdType.getNumber());
            }

            private void addExpdir(ExpandableDirection expandableDirection) {
                expandableDirection.getClass();
                ensureExpdirIsMutable();
                this.expdir_.addInt(expandableDirection.getNumber());
            }

            private void addFormat(Format format) {
                format.getClass();
                ensureFormatIsMutable();
                this.format_.add(format);
            }

            private void addMimes(String str) {
                str.getClass();
                ensureMimesIsMutable();
                this.mimes_.add(str);
            }

            private void addMimesBytes(ByteString byteString) {
                ensureMimesIsMutable();
                this.mimes_.add(byteString.toStringUtf8());
            }

            private void clearApi() {
                this.api_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearBattr() {
                this.battr_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearBtype() {
                this.btype_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearExpdir() {
                this.expdir_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearFormat() {
                this.format_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearH() {
                this.bitField0_ &= -3;
                this.h_ = 0;
            }

            private void clearHmax() {
                this.bitField0_ &= -129;
                this.hmax_ = 0;
            }

            private void clearHmin() {
                this.bitField0_ &= -513;
                this.hmin_ = 0;
            }

            private void clearId() {
                this.bitField0_ &= -5;
                this.id_ = getDefaultInstance().getId();
            }

            private void clearMimes() {
                this.mimes_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearPos() {
                this.bitField0_ &= -9;
                this.pos_ = 0;
            }

            private void clearTopframe() {
                this.bitField0_ &= -17;
                this.topframe_ = false;
            }

            private void clearVcm() {
                this.bitField0_ &= -33;
                this.vcm_ = false;
            }

            private void clearW() {
                this.bitField0_ &= -2;
                this.w_ = 0;
            }

            private void clearWmax() {
                this.bitField0_ &= -65;
                this.wmax_ = 0;
            }

            private void clearWmin() {
                this.bitField0_ &= -257;
                this.wmin_ = 0;
            }

            private void ensureApiIsMutable() {
                Internal.IntList intList = this.api_;
                if (!intList.isModifiable()) {
                    this.api_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureBattrIsMutable() {
                Internal.IntList intList = this.battr_;
                if (!intList.isModifiable()) {
                    this.battr_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureBtypeIsMutable() {
                Internal.IntList intList = this.btype_;
                if (!intList.isModifiable()) {
                    this.btype_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureExpdirIsMutable() {
                Internal.IntList intList = this.expdir_;
                if (!intList.isModifiable()) {
                    this.expdir_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureFormatIsMutable() {
                Internal.ProtobufList<Format> protobufList = this.format_;
                if (!protobufList.isModifiable()) {
                    this.format_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            private void ensureMimesIsMutable() {
                Internal.ProtobufList<String> protobufList = this.mimes_;
                if (!protobufList.isModifiable()) {
                    this.mimes_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            public static Banner getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static e newBuilder() {
                return (e) DEFAULT_INSTANCE.createBuilder();
            }

            public static Banner parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Banner) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Banner parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<Banner> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void removeFormat(int i10) {
                ensureFormatIsMutable();
                this.format_.remove(i10);
            }

            private void setApi(int i10, APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.setInt(i10, aPIFramework.getNumber());
            }

            private void setBattr(int i10, CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.setInt(i10, creativeAttribute.getNumber());
            }

            private void setBtype(int i10, BannerAdType bannerAdType) {
                bannerAdType.getClass();
                ensureBtypeIsMutable();
                this.btype_.setInt(i10, bannerAdType.getNumber());
            }

            private void setExpdir(int i10, ExpandableDirection expandableDirection) {
                expandableDirection.getClass();
                ensureExpdirIsMutable();
                this.expdir_.setInt(i10, expandableDirection.getNumber());
            }

            private void setFormat(int i10, Format format) {
                format.getClass();
                ensureFormatIsMutable();
                this.format_.set(i10, format);
            }

            private void setH(int i10) {
                this.bitField0_ |= 2;
                this.h_ = i10;
            }

            private void setHmax(int i10) {
                this.bitField0_ |= 128;
                this.hmax_ = i10;
            }

            private void setHmin(int i10) {
                this.bitField0_ |= 512;
                this.hmin_ = i10;
            }

            private void setId(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.id_ = str;
            }

            private void setIdBytes(ByteString byteString) {
                this.id_ = byteString.toStringUtf8();
                this.bitField0_ |= 4;
            }

            private void setMimes(int i10, String str) {
                str.getClass();
                ensureMimesIsMutable();
                this.mimes_.set(i10, str);
            }

            private void setPos(AdPosition adPosition) {
                this.pos_ = adPosition.getNumber();
                this.bitField0_ |= 8;
            }

            private void setTopframe(boolean z10) {
                this.bitField0_ |= 16;
                this.topframe_ = z10;
            }

            private void setVcm(boolean z10) {
                this.bitField0_ |= 32;
                this.vcm_ = z10;
            }

            private void setW(int i10) {
                this.bitField0_ |= 1;
                this.w_ = i10;
            }

            private void setWmax(int i10) {
                this.bitField0_ |= 64;
                this.wmax_ = i10;
            }

            private void setWmin(int i10) {
                this.bitField0_ |= 256;
                this.wmin_ = i10;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Banner();
                    case 2:
                        return new e();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0010\u0000\u0001\u0001\u0010\u0010\u0000\u0006\u0001\u0001င\u0000\u0002င\u0001\u0003ဈ\u0002\u0004ဌ\u0003\u0005,\u0006,\u0007\u001a\bဇ\u0004\t,\n,\u000bင\u0006\fင\u0007\rင\b\u000eင\t\u000fЛ\u0010ဇ\u0005", new Object[]{"bitField0_", "w_", "h_", "id_", "pos_", AdPosition.internalGetVerifier(), "btype_", BannerAdType.internalGetVerifier(), "battr_", CreativeAttribute.internalGetVerifier(), "mimes_", "topframe_", "expdir_", ExpandableDirection.internalGetVerifier(), "api_", APIFramework.internalGetVerifier(), "wmax_", "hmax_", "wmin_", "hmin_", "format_", Format.class, "vcm_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Banner> parser = PARSER;
                        if (parser == null) {
                            synchronized (Banner.class) {
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public APIFramework getApi(int i10) {
                APIFramework forNumber = APIFramework.forNumber(this.api_.getInt(i10));
                if (forNumber == null) {
                    return APIFramework.VPAID_1;
                }
                return forNumber;
            }

            public int getApiCount() {
                return this.api_.size();
            }

            public List<APIFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, api_converter_);
            }

            public CreativeAttribute getBattr(int i10) {
                CreativeAttribute forNumber = CreativeAttribute.forNumber(this.battr_.getInt(i10));
                if (forNumber == null) {
                    return CreativeAttribute.AUDIO_AUTO_PLAY;
                }
                return forNumber;
            }

            public int getBattrCount() {
                return this.battr_.size();
            }

            public List<CreativeAttribute> getBattrList() {
                return new Internal.ListAdapter(this.battr_, battr_converter_);
            }

            public BannerAdType getBtype(int i10) {
                BannerAdType forNumber = BannerAdType.forNumber(this.btype_.getInt(i10));
                if (forNumber == null) {
                    return BannerAdType.XHTML_TEXT_AD;
                }
                return forNumber;
            }

            public int getBtypeCount() {
                return this.btype_.size();
            }

            public List<BannerAdType> getBtypeList() {
                return new Internal.ListAdapter(this.btype_, btype_converter_);
            }

            public ExpandableDirection getExpdir(int i10) {
                ExpandableDirection forNumber = ExpandableDirection.forNumber(this.expdir_.getInt(i10));
                if (forNumber == null) {
                    return ExpandableDirection.LEFT;
                }
                return forNumber;
            }

            public int getExpdirCount() {
                return this.expdir_.size();
            }

            public List<ExpandableDirection> getExpdirList() {
                return new Internal.ListAdapter(this.expdir_, expdir_converter_);
            }

            public Format getFormat(int i10) {
                return this.format_.get(i10);
            }

            public int getFormatCount() {
                return this.format_.size();
            }

            public List<Format> getFormatList() {
                return this.format_;
            }

            public f getFormatOrBuilder(int i10) {
                return this.format_.get(i10);
            }

            public List<? extends f> getFormatOrBuilderList() {
                return this.format_;
            }

            public int getH() {
                return this.h_;
            }

            @Deprecated
            public int getHmax() {
                return this.hmax_;
            }

            @Deprecated
            public int getHmin() {
                return this.hmin_;
            }

            public String getId() {
                return this.id_;
            }

            public ByteString getIdBytes() {
                return ByteString.copyFromUtf8(this.id_);
            }

            public String getMimes(int i10) {
                return this.mimes_.get(i10);
            }

            public ByteString getMimesBytes(int i10) {
                return ByteString.copyFromUtf8(this.mimes_.get(i10));
            }

            public int getMimesCount() {
                return this.mimes_.size();
            }

            public List<String> getMimesList() {
                return this.mimes_;
            }

            public AdPosition getPos() {
                AdPosition forNumber = AdPosition.forNumber(this.pos_);
                if (forNumber == null) {
                    return AdPosition.UNKNOWN;
                }
                return forNumber;
            }

            public boolean getTopframe() {
                return this.topframe_;
            }

            public boolean getVcm() {
                return this.vcm_;
            }

            public int getW() {
                return this.w_;
            }

            @Deprecated
            public int getWmax() {
                return this.wmax_;
            }

            @Deprecated
            public int getWmin() {
                return this.wmin_;
            }

            public boolean hasH() {
                if ((this.bitField0_ & 2) != 0) {
                    return true;
                }
                return false;
            }

            @Deprecated
            public boolean hasHmax() {
                if ((this.bitField0_ & 128) != 0) {
                    return true;
                }
                return false;
            }

            @Deprecated
            public boolean hasHmin() {
                if ((this.bitField0_ & 512) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasId() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPos() {
                if ((this.bitField0_ & 8) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasTopframe() {
                if ((this.bitField0_ & 16) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasVcm() {
                if ((this.bitField0_ & 32) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasW() {
                if ((this.bitField0_ & 1) != 0) {
                    return true;
                }
                return false;
            }

            @Deprecated
            public boolean hasWmax() {
                if ((this.bitField0_ & 64) != 0) {
                    return true;
                }
                return false;
            }

            @Deprecated
            public boolean hasWmin() {
                if ((this.bitField0_ & 256) != 0) {
                    return true;
                }
                return false;
            }

            public static e newBuilder(Banner banner) {
                return (e) DEFAULT_INSTANCE.createBuilder(banner);
            }

            public static Banner parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Banner) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Banner parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Banner parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            private void addFormat(int i10, Format format) {
                format.getClass();
                ensureFormatIsMutable();
                this.format_.add(i10, format);
            }

            public static Banner parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Banner parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Banner parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Banner parseFrom(InputStream inputStream) throws IOException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Banner parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Banner parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Banner parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Banner) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public enum CompanionType implements Internal.EnumLite {
            STATIC(1),
            HTML(2),
            COMPANION_IFRAME(3);
            
            public static final int COMPANION_IFRAME_VALUE = 3;
            public static final int HTML_VALUE = 2;
            public static final int STATIC_VALUE = 1;
            private static final Internal.EnumLiteMap<CompanionType> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<CompanionType> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public CompanionType findValueByNumber(int i10) {
                    return CompanionType.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31768a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (CompanionType.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            CompanionType(int i10) {
                this.value = i10;
            }

            public static CompanionType forNumber(int i10) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return COMPANION_IFRAME;
                    }
                    return HTML;
                }
                return STATIC;
            }

            public static Internal.EnumLiteMap<CompanionType> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31768a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static CompanionType valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public enum ContentDeliveryMethod implements Internal.EnumLite {
            STREAMING(1),
            PROGRESSIVE(2),
            DOWNLOAD(3);
            
            public static final int DOWNLOAD_VALUE = 3;
            public static final int PROGRESSIVE_VALUE = 2;
            public static final int STREAMING_VALUE = 1;
            private static final Internal.EnumLiteMap<ContentDeliveryMethod> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<ContentDeliveryMethod> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public ContentDeliveryMethod findValueByNumber(int i10) {
                    return ContentDeliveryMethod.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31769a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (ContentDeliveryMethod.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            ContentDeliveryMethod(int i10) {
                this.value = i10;
            }

            public static ContentDeliveryMethod forNumber(int i10) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return DOWNLOAD;
                    }
                    return PROGRESSIVE;
                }
                return STREAMING;
            }

            public static Internal.EnumLiteMap<ContentDeliveryMethod> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31769a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ContentDeliveryMethod valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public enum CreativeAttribute implements Internal.EnumLite {
            AUDIO_AUTO_PLAY(1),
            AUDIO_USER_INITIATED(2),
            EXPANDABLE_AUTOMATIC(3),
            EXPANDABLE_CLICK_INITIATED(4),
            EXPANDABLE_ROLLOVER_INITIATED(5),
            VIDEO_IN_BANNER_AUTO_PLAY(6),
            VIDEO_IN_BANNER_USER_INITIATED(7),
            POP(8),
            PROVOCATIVE_OR_SUGGESTIVE(9),
            ANNOYING(10),
            SURVEYS(11),
            TEXT_ONLY(12),
            USER_INTERACTIVE(13),
            WINDOWS_DIALOG_OR_ALERT_STYLE(14),
            HAS_AUDIO_ON_OFF_BUTTON(15),
            AD_CAN_BE_SKIPPED(16),
            FLASH(17),
            RESPONSIVE(18);
            
            public static final int AD_CAN_BE_SKIPPED_VALUE = 16;
            public static final int ANNOYING_VALUE = 10;
            public static final int AUDIO_AUTO_PLAY_VALUE = 1;
            public static final int AUDIO_USER_INITIATED_VALUE = 2;
            public static final int EXPANDABLE_AUTOMATIC_VALUE = 3;
            public static final int EXPANDABLE_CLICK_INITIATED_VALUE = 4;
            public static final int EXPANDABLE_ROLLOVER_INITIATED_VALUE = 5;
            public static final int FLASH_VALUE = 17;
            public static final int HAS_AUDIO_ON_OFF_BUTTON_VALUE = 15;
            public static final int POP_VALUE = 8;
            public static final int PROVOCATIVE_OR_SUGGESTIVE_VALUE = 9;
            public static final int RESPONSIVE_VALUE = 18;
            public static final int SURVEYS_VALUE = 11;
            public static final int TEXT_ONLY_VALUE = 12;
            public static final int USER_INTERACTIVE_VALUE = 13;
            public static final int VIDEO_IN_BANNER_AUTO_PLAY_VALUE = 6;
            public static final int VIDEO_IN_BANNER_USER_INITIATED_VALUE = 7;
            public static final int WINDOWS_DIALOG_OR_ALERT_STYLE_VALUE = 14;
            private static final Internal.EnumLiteMap<CreativeAttribute> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<CreativeAttribute> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public CreativeAttribute findValueByNumber(int i10) {
                    return CreativeAttribute.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31770a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (CreativeAttribute.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            CreativeAttribute(int i10) {
                this.value = i10;
            }

            public static CreativeAttribute forNumber(int i10) {
                switch (i10) {
                    case 1:
                        return AUDIO_AUTO_PLAY;
                    case 2:
                        return AUDIO_USER_INITIATED;
                    case 3:
                        return EXPANDABLE_AUTOMATIC;
                    case 4:
                        return EXPANDABLE_CLICK_INITIATED;
                    case 5:
                        return EXPANDABLE_ROLLOVER_INITIATED;
                    case 6:
                        return VIDEO_IN_BANNER_AUTO_PLAY;
                    case 7:
                        return VIDEO_IN_BANNER_USER_INITIATED;
                    case 8:
                        return POP;
                    case 9:
                        return PROVOCATIVE_OR_SUGGESTIVE;
                    case 10:
                        return ANNOYING;
                    case 11:
                        return SURVEYS;
                    case 12:
                        return TEXT_ONLY;
                    case 13:
                        return USER_INTERACTIVE;
                    case 14:
                        return WINDOWS_DIALOG_OR_ALERT_STYLE;
                    case 15:
                        return HAS_AUDIO_ON_OFF_BUTTON;
                    case 16:
                        return AD_CAN_BE_SKIPPED;
                    case 17:
                        return FLASH;
                    case 18:
                        return RESPONSIVE;
                    default:
                        return null;
                }
            }

            public static Internal.EnumLiteMap<CreativeAttribute> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31770a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static CreativeAttribute valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Metric extends GeneratedMessageLite.ExtendableMessage<Metric, a> implements c {
            private static final Metric DEFAULT_INSTANCE;
            private static volatile Parser<Metric> PARSER = null;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int VALUE_FIELD_NUMBER = 2;
            public static final int VENDOR_FIELD_NUMBER = 3;
            private int bitField0_;
            private double value_;
            private byte memoizedIsInitialized = 2;
            private String type_ = "";
            private String vendor_ = "";

            /* loaded from: classes6.dex */
            public static final class a extends GeneratedMessageLite.ExtendableBuilder<Metric, a> implements c {
                private a() {
                    super(Metric.DEFAULT_INSTANCE);
                }
            }

            static {
                Metric metric = new Metric();
                DEFAULT_INSTANCE = metric;
                GeneratedMessageLite.registerDefaultInstance(Metric.class, metric);
            }

            private Metric() {
            }

            private void clearType() {
                this.bitField0_ &= -2;
                this.type_ = getDefaultInstance().getType();
            }

            private void clearValue() {
                this.bitField0_ &= -3;
                this.value_ = 0.0d;
            }

            private void clearVendor() {
                this.bitField0_ &= -5;
                this.vendor_ = getDefaultInstance().getVendor();
            }

            public static Metric getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static a newBuilder() {
                return (a) DEFAULT_INSTANCE.createBuilder();
            }

            public static Metric parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Metric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Metric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<Metric> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void setType(String str) {
                str.getClass();
                this.bitField0_ |= 1;
                this.type_ = str;
            }

            private void setTypeBytes(ByteString byteString) {
                this.type_ = byteString.toStringUtf8();
                this.bitField0_ |= 1;
            }

            private void setValue(double d10) {
                this.bitField0_ |= 2;
                this.value_ = d10;
            }

            private void setVendor(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.vendor_ = str;
            }

            private void setVendorBytes(ByteString byteString) {
                this.vendor_ = byteString.toStringUtf8();
                this.bitField0_ |= 4;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Metric();
                    case 2:
                        return new a();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002က\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "type_", "value_", "vendor_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Metric> parser = PARSER;
                        if (parser == null) {
                            synchronized (Metric.class) {
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public String getType() {
                return this.type_;
            }

            public ByteString getTypeBytes() {
                return ByteString.copyFromUtf8(this.type_);
            }

            public double getValue() {
                return this.value_;
            }

            public String getVendor() {
                return this.vendor_;
            }

            public ByteString getVendorBytes() {
                return ByteString.copyFromUtf8(this.vendor_);
            }

            public boolean hasType() {
                if ((this.bitField0_ & 1) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasValue() {
                if ((this.bitField0_ & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasVendor() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public static a newBuilder(Metric metric) {
                return (a) DEFAULT_INSTANCE.createBuilder(metric);
            }

            public static Metric parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Metric) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Metric parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Metric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Metric parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Metric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Metric parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Metric parseFrom(InputStream inputStream) throws IOException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Metric parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Metric parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Metric parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Metric) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Native extends GeneratedMessageLite.ExtendableMessage<Native, c> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
            public static final int API_FIELD_NUMBER = 3;
            public static final int BATTR_FIELD_NUMBER = 4;
            private static final Native DEFAULT_INSTANCE;
            private static volatile Parser<Native> PARSER = null;
            public static final int REQUEST_FIELD_NUMBER = 1;
            public static final int REQUEST_NATIVE_FIELD_NUMBER = 50;
            public static final int VER_FIELD_NUMBER = 2;
            private static final Internal.ListAdapter.Converter<Integer, APIFramework> api_converter_ = new a();
            private static final Internal.ListAdapter.Converter<Integer, CreativeAttribute> battr_converter_ = new b();
            private int apiMemoizedSerializedSize;
            private int battrMemoizedSerializedSize;
            private int bitField0_;
            private Object requestOneof_;
            private int requestOneofCase_ = 0;
            private byte memoizedIsInitialized = 2;
            private String ver_ = "";
            private Internal.IntList api_ = GeneratedMessageLite.emptyIntList();
            private Internal.IntList battr_ = GeneratedMessageLite.emptyIntList();

            /* loaded from: classes6.dex */
            public static final class NativeRequest extends GeneratedMessageLite.ExtendableMessage<NativeRequest, b> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                public static final int ASSETS_FIELD_NUMBER = 6;
                public static final int AURLSUPPORT_FIELD_NUMBER = 11;
                public static final int CONTEXTSUBTYPE_FIELD_NUMBER = 8;
                public static final int CONTEXT_FIELD_NUMBER = 7;
                private static final NativeRequest DEFAULT_INSTANCE;
                public static final int DURLSUPPORT_FIELD_NUMBER = 12;
                public static final int EVENTTRACKERS_FIELD_NUMBER = 13;
                private static volatile Parser<NativeRequest> PARSER = null;
                public static final int PLCMTCNT_FIELD_NUMBER = 4;
                public static final int PLCMTTYPE_FIELD_NUMBER = 9;
                public static final int PRIVACY_FIELD_NUMBER = 14;
                public static final int SEQ_FIELD_NUMBER = 5;
                public static final int VER_FIELD_NUMBER = 1;
                private boolean aurlsupport_;
                private int bitField0_;
                private boolean durlsupport_;
                private boolean privacy_;
                private int seq_;
                private byte memoizedIsInitialized = 2;
                private String ver_ = "";
                private int context_ = 1;
                private int contextsubtype_ = 10;
                private int plcmttype_ = 1;
                private int plcmtcnt_ = 1;
                private Internal.ProtobufList<Asset> assets_ = GeneratedMessageLite.emptyProtobufList();
                private Internal.ProtobufList<EventTrackers> eventtrackers_ = GeneratedMessageLite.emptyProtobufList();

                /* loaded from: classes6.dex */
                public static final class Asset extends GeneratedMessageLite.ExtendableMessage<Asset, a> implements a {
                    public static final int DATA_FIELD_NUMBER = 6;
                    private static final Asset DEFAULT_INSTANCE;
                    public static final int ID_FIELD_NUMBER = 1;
                    public static final int IMG_FIELD_NUMBER = 4;
                    private static volatile Parser<Asset> PARSER = null;
                    public static final int REQUIRED_FIELD_NUMBER = 2;
                    public static final int TITLE_FIELD_NUMBER = 3;
                    public static final int VIDEO_FIELD_NUMBER = 5;
                    private Object assetOneof_;
                    private int bitField0_;
                    private int id_;
                    private boolean required_;
                    private int assetOneofCase_ = 0;
                    private byte memoizedIsInitialized = 2;

                    /* loaded from: classes6.dex */
                    public enum AssetOneofCase {
                        TITLE(3),
                        IMG(4),
                        VIDEO(5),
                        DATA(6),
                        ASSETONEOF_NOT_SET(0);
                        
                        private final int value;

                        AssetOneofCase(int i10) {
                            this.value = i10;
                        }

                        public static AssetOneofCase forNumber(int i10) {
                            if (i10 != 0) {
                                if (i10 != 3) {
                                    if (i10 != 4) {
                                        if (i10 != 5) {
                                            if (i10 != 6) {
                                                return null;
                                            }
                                            return DATA;
                                        }
                                        return VIDEO;
                                    }
                                    return IMG;
                                }
                                return TITLE;
                            }
                            return ASSETONEOF_NOT_SET;
                        }

                        public int getNumber() {
                            return this.value;
                        }

                        @Deprecated
                        public static AssetOneofCase valueOf(int i10) {
                            return forNumber(i10);
                        }
                    }

                    /* loaded from: classes6.dex */
                    public static final class Data extends GeneratedMessageLite.ExtendableMessage<Data, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                        private static final Data DEFAULT_INSTANCE;
                        public static final int LEN_FIELD_NUMBER = 2;
                        private static volatile Parser<Data> PARSER = null;
                        public static final int TYPE_FIELD_NUMBER = 1;
                        private int bitField0_;
                        private int len_;
                        private byte memoizedIsInitialized = 2;
                        private int type_ = 1;

                        /* loaded from: classes6.dex */
                        public enum DataAssetType implements Internal.EnumLite {
                            SPONSORED(1),
                            DESC(2),
                            RATING(3),
                            LIKES(4),
                            DOWNLOADS(5),
                            PRICE(6),
                            SALEPRICE(7),
                            PHONE(8),
                            ADDRESS(9),
                            DESC2(10),
                            DISPLAYURL(11),
                            CTATEXT(12),
                            EXCHANGE_SPECIFIC(500);
                            
                            public static final int ADDRESS_VALUE = 9;
                            public static final int CTATEXT_VALUE = 12;
                            public static final int DESC2_VALUE = 10;
                            public static final int DESC_VALUE = 2;
                            public static final int DISPLAYURL_VALUE = 11;
                            public static final int DOWNLOADS_VALUE = 5;
                            public static final int EXCHANGE_SPECIFIC_VALUE = 500;
                            public static final int LIKES_VALUE = 4;
                            public static final int PHONE_VALUE = 8;
                            public static final int PRICE_VALUE = 6;
                            public static final int RATING_VALUE = 3;
                            public static final int SALEPRICE_VALUE = 7;
                            public static final int SPONSORED_VALUE = 1;
                            private static final Internal.EnumLiteMap<DataAssetType> internalValueMap = new a();
                            private final int value;

                            /* loaded from: classes6.dex */
                            class a implements Internal.EnumLiteMap<DataAssetType> {
                                a() {
                                }

                                @Override // com.google.protobuf.Internal.EnumLiteMap
                                /* renamed from: a */
                                public DataAssetType findValueByNumber(int i10) {
                                    return DataAssetType.forNumber(i10);
                                }
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            /* loaded from: classes6.dex */
                            public static final class b implements Internal.EnumVerifier {

                                /* renamed from: a  reason: collision with root package name */
                                static final Internal.EnumVerifier f31771a = new b();

                                private b() {
                                }

                                @Override // com.google.protobuf.Internal.EnumVerifier
                                public boolean isInRange(int i10) {
                                    if (DataAssetType.forNumber(i10) != null) {
                                        return true;
                                    }
                                    return false;
                                }
                            }

                            DataAssetType(int i10) {
                                this.value = i10;
                            }

                            public static DataAssetType forNumber(int i10) {
                                if (i10 != 500) {
                                    switch (i10) {
                                        case 1:
                                            return SPONSORED;
                                        case 2:
                                            return DESC;
                                        case 3:
                                            return RATING;
                                        case 4:
                                            return LIKES;
                                        case 5:
                                            return DOWNLOADS;
                                        case 6:
                                            return PRICE;
                                        case 7:
                                            return SALEPRICE;
                                        case 8:
                                            return PHONE;
                                        case 9:
                                            return ADDRESS;
                                        case 10:
                                            return DESC2;
                                        case 11:
                                            return DISPLAYURL;
                                        case 12:
                                            return CTATEXT;
                                        default:
                                            return null;
                                    }
                                }
                                return EXCHANGE_SPECIFIC;
                            }

                            public static Internal.EnumLiteMap<DataAssetType> internalGetValueMap() {
                                return internalValueMap;
                            }

                            public static Internal.EnumVerifier internalGetVerifier() {
                                return b.f31771a;
                            }

                            @Override // com.google.protobuf.Internal.EnumLite
                            public final int getNumber() {
                                return this.value;
                            }

                            @Deprecated
                            public static DataAssetType valueOf(int i10) {
                                return forNumber(i10);
                            }
                        }

                        /* loaded from: classes6.dex */
                        public static final class a extends GeneratedMessageLite.ExtendableBuilder<Data, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                            private a() {
                                super(Data.DEFAULT_INSTANCE);
                            }
                        }

                        static {
                            Data data = new Data();
                            DEFAULT_INSTANCE = data;
                            GeneratedMessageLite.registerDefaultInstance(Data.class, data);
                        }

                        private Data() {
                        }

                        private void clearLen() {
                            this.bitField0_ &= -3;
                            this.len_ = 0;
                        }

                        private void clearType() {
                            this.bitField0_ &= -2;
                            this.type_ = 1;
                        }

                        public static Data getDefaultInstance() {
                            return DEFAULT_INSTANCE;
                        }

                        public static a newBuilder() {
                            return (a) DEFAULT_INSTANCE.createBuilder();
                        }

                        public static Data parseDelimitedFrom(InputStream inputStream) throws IOException {
                            return (Data) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                        }

                        public static Data parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                        }

                        public static Parser<Data> parser() {
                            return DEFAULT_INSTANCE.getParserForType();
                        }

                        private void setLen(int i10) {
                            this.bitField0_ |= 2;
                            this.len_ = i10;
                        }

                        private void setType(DataAssetType dataAssetType) {
                            this.type_ = dataAssetType.getNumber();
                            this.bitField0_ |= 1;
                        }

                        @Override // com.google.protobuf.GeneratedMessageLite
                        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                            int i10;
                            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                                case 1:
                                    return new Data();
                                case 2:
                                    return new a();
                                case 3:
                                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔌ\u0000\u0002င\u0001", new Object[]{"bitField0_", "type_", DataAssetType.internalGetVerifier(), "len_"});
                                case 4:
                                    return DEFAULT_INSTANCE;
                                case 5:
                                    Parser<Data> parser = PARSER;
                                    if (parser == null) {
                                        synchronized (Data.class) {
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
                                    return Byte.valueOf(this.memoizedIsInitialized);
                                case 7:
                                    if (obj == null) {
                                        i10 = 0;
                                    } else {
                                        i10 = 1;
                                    }
                                    this.memoizedIsInitialized = (byte) i10;
                                    return null;
                                default:
                                    throw new UnsupportedOperationException();
                            }
                        }

                        public int getLen() {
                            return this.len_;
                        }

                        public DataAssetType getType() {
                            DataAssetType forNumber = DataAssetType.forNumber(this.type_);
                            if (forNumber == null) {
                                return DataAssetType.SPONSORED;
                            }
                            return forNumber;
                        }

                        public boolean hasLen() {
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

                        public static a newBuilder(Data data) {
                            return (a) DEFAULT_INSTANCE.createBuilder(data);
                        }

                        public static Data parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Data) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                        }

                        public static Data parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                        }

                        public static Data parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                        }

                        public static Data parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                        }

                        public static Data parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                        }

                        public static Data parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                        }

                        public static Data parseFrom(InputStream inputStream) throws IOException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                        }

                        public static Data parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                        }

                        public static Data parseFrom(CodedInputStream codedInputStream) throws IOException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                        }

                        public static Data parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                        }
                    }

                    /* loaded from: classes6.dex */
                    public static final class Image extends GeneratedMessageLite.ExtendableMessage<Image, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                        private static final Image DEFAULT_INSTANCE;
                        public static final int HMIN_FIELD_NUMBER = 5;
                        public static final int H_FIELD_NUMBER = 3;
                        public static final int MIMES_FIELD_NUMBER = 6;
                        private static volatile Parser<Image> PARSER = null;
                        public static final int TYPE_FIELD_NUMBER = 1;
                        public static final int WMIN_FIELD_NUMBER = 4;
                        public static final int W_FIELD_NUMBER = 2;
                        private int bitField0_;
                        private int h_;
                        private int hmin_;
                        private int w_;
                        private int wmin_;
                        private byte memoizedIsInitialized = 2;
                        private int type_ = 1;
                        private Internal.ProtobufList<String> mimes_ = GeneratedMessageLite.emptyProtobufList();

                        /* loaded from: classes6.dex */
                        public enum ImageAssetType implements Internal.EnumLite {
                            ICON(1),
                            LOGO(2),
                            MAIN(3);
                            
                            public static final int ICON_VALUE = 1;
                            @Deprecated
                            public static final int LOGO_VALUE = 2;
                            public static final int MAIN_VALUE = 3;
                            private static final Internal.EnumLiteMap<ImageAssetType> internalValueMap = new a();
                            private final int value;

                            /* loaded from: classes6.dex */
                            class a implements Internal.EnumLiteMap<ImageAssetType> {
                                a() {
                                }

                                @Override // com.google.protobuf.Internal.EnumLiteMap
                                /* renamed from: a */
                                public ImageAssetType findValueByNumber(int i10) {
                                    return ImageAssetType.forNumber(i10);
                                }
                            }

                            /* JADX INFO: Access modifiers changed from: private */
                            /* loaded from: classes6.dex */
                            public static final class b implements Internal.EnumVerifier {

                                /* renamed from: a  reason: collision with root package name */
                                static final Internal.EnumVerifier f31772a = new b();

                                private b() {
                                }

                                @Override // com.google.protobuf.Internal.EnumVerifier
                                public boolean isInRange(int i10) {
                                    if (ImageAssetType.forNumber(i10) != null) {
                                        return true;
                                    }
                                    return false;
                                }
                            }

                            ImageAssetType(int i10) {
                                this.value = i10;
                            }

                            public static ImageAssetType forNumber(int i10) {
                                if (i10 != 1) {
                                    if (i10 != 2) {
                                        if (i10 != 3) {
                                            return null;
                                        }
                                        return MAIN;
                                    }
                                    return LOGO;
                                }
                                return ICON;
                            }

                            public static Internal.EnumLiteMap<ImageAssetType> internalGetValueMap() {
                                return internalValueMap;
                            }

                            public static Internal.EnumVerifier internalGetVerifier() {
                                return b.f31772a;
                            }

                            @Override // com.google.protobuf.Internal.EnumLite
                            public final int getNumber() {
                                return this.value;
                            }

                            @Deprecated
                            public static ImageAssetType valueOf(int i10) {
                                return forNumber(i10);
                            }
                        }

                        /* loaded from: classes6.dex */
                        public static final class a extends GeneratedMessageLite.ExtendableBuilder<Image, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                            private a() {
                                super(Image.DEFAULT_INSTANCE);
                            }
                        }

                        static {
                            Image image = new Image();
                            DEFAULT_INSTANCE = image;
                            GeneratedMessageLite.registerDefaultInstance(Image.class, image);
                        }

                        private Image() {
                        }

                        private void addAllMimes(Iterable<String> iterable) {
                            ensureMimesIsMutable();
                            AbstractMessageLite.addAll((Iterable) iterable, (List) this.mimes_);
                        }

                        private void addMimes(String str) {
                            str.getClass();
                            ensureMimesIsMutable();
                            this.mimes_.add(str);
                        }

                        private void addMimesBytes(ByteString byteString) {
                            ensureMimesIsMutable();
                            this.mimes_.add(byteString.toStringUtf8());
                        }

                        private void clearH() {
                            this.bitField0_ &= -5;
                            this.h_ = 0;
                        }

                        private void clearHmin() {
                            this.bitField0_ &= -17;
                            this.hmin_ = 0;
                        }

                        private void clearMimes() {
                            this.mimes_ = GeneratedMessageLite.emptyProtobufList();
                        }

                        private void clearType() {
                            this.bitField0_ &= -2;
                            this.type_ = 1;
                        }

                        private void clearW() {
                            this.bitField0_ &= -3;
                            this.w_ = 0;
                        }

                        private void clearWmin() {
                            this.bitField0_ &= -9;
                            this.wmin_ = 0;
                        }

                        private void ensureMimesIsMutable() {
                            Internal.ProtobufList<String> protobufList = this.mimes_;
                            if (!protobufList.isModifiable()) {
                                this.mimes_ = GeneratedMessageLite.mutableCopy(protobufList);
                            }
                        }

                        public static Image getDefaultInstance() {
                            return DEFAULT_INSTANCE;
                        }

                        public static a newBuilder() {
                            return (a) DEFAULT_INSTANCE.createBuilder();
                        }

                        public static Image parseDelimitedFrom(InputStream inputStream) throws IOException {
                            return (Image) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                        }

                        public static Image parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                        }

                        public static Parser<Image> parser() {
                            return DEFAULT_INSTANCE.getParserForType();
                        }

                        private void setH(int i10) {
                            this.bitField0_ |= 4;
                            this.h_ = i10;
                        }

                        private void setHmin(int i10) {
                            this.bitField0_ |= 16;
                            this.hmin_ = i10;
                        }

                        private void setMimes(int i10, String str) {
                            str.getClass();
                            ensureMimesIsMutable();
                            this.mimes_.set(i10, str);
                        }

                        private void setType(ImageAssetType imageAssetType) {
                            this.type_ = imageAssetType.getNumber();
                            this.bitField0_ |= 1;
                        }

                        private void setW(int i10) {
                            this.bitField0_ |= 2;
                            this.w_ = i10;
                        }

                        private void setWmin(int i10) {
                            this.bitField0_ |= 8;
                            this.wmin_ = i10;
                        }

                        @Override // com.google.protobuf.GeneratedMessageLite
                        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                            int i10;
                            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                                case 1:
                                    return new Image();
                                case 2:
                                    return new a();
                                case 3:
                                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006\u001a", new Object[]{"bitField0_", "type_", ImageAssetType.internalGetVerifier(), "w_", "h_", "wmin_", "hmin_", "mimes_"});
                                case 4:
                                    return DEFAULT_INSTANCE;
                                case 5:
                                    Parser<Image> parser = PARSER;
                                    if (parser == null) {
                                        synchronized (Image.class) {
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
                                    return Byte.valueOf(this.memoizedIsInitialized);
                                case 7:
                                    if (obj == null) {
                                        i10 = 0;
                                    } else {
                                        i10 = 1;
                                    }
                                    this.memoizedIsInitialized = (byte) i10;
                                    return null;
                                default:
                                    throw new UnsupportedOperationException();
                            }
                        }

                        public int getH() {
                            return this.h_;
                        }

                        public int getHmin() {
                            return this.hmin_;
                        }

                        public String getMimes(int i10) {
                            return this.mimes_.get(i10);
                        }

                        public ByteString getMimesBytes(int i10) {
                            return ByteString.copyFromUtf8(this.mimes_.get(i10));
                        }

                        public int getMimesCount() {
                            return this.mimes_.size();
                        }

                        public List<String> getMimesList() {
                            return this.mimes_;
                        }

                        public ImageAssetType getType() {
                            ImageAssetType forNumber = ImageAssetType.forNumber(this.type_);
                            if (forNumber == null) {
                                return ImageAssetType.ICON;
                            }
                            return forNumber;
                        }

                        public int getW() {
                            return this.w_;
                        }

                        public int getWmin() {
                            return this.wmin_;
                        }

                        public boolean hasH() {
                            if ((this.bitField0_ & 4) != 0) {
                                return true;
                            }
                            return false;
                        }

                        public boolean hasHmin() {
                            if ((this.bitField0_ & 16) != 0) {
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

                        public boolean hasW() {
                            if ((this.bitField0_ & 2) != 0) {
                                return true;
                            }
                            return false;
                        }

                        public boolean hasWmin() {
                            if ((this.bitField0_ & 8) != 0) {
                                return true;
                            }
                            return false;
                        }

                        public static a newBuilder(Image image) {
                            return (a) DEFAULT_INSTANCE.createBuilder(image);
                        }

                        public static Image parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Image) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                        }

                        public static Image parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                        }

                        public static Image parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                        }

                        public static Image parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                        }

                        public static Image parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                        }

                        public static Image parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                        }

                        public static Image parseFrom(InputStream inputStream) throws IOException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                        }

                        public static Image parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                        }

                        public static Image parseFrom(CodedInputStream codedInputStream) throws IOException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                        }

                        public static Image parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Image) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                        }
                    }

                    /* loaded from: classes6.dex */
                    public static final class Title extends GeneratedMessageLite.ExtendableMessage<Title, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                        private static final Title DEFAULT_INSTANCE;
                        public static final int LEN_FIELD_NUMBER = 1;
                        private static volatile Parser<Title> PARSER;
                        private int bitField0_;
                        private int len_;
                        private byte memoizedIsInitialized = 2;

                        /* loaded from: classes6.dex */
                        public static final class a extends GeneratedMessageLite.ExtendableBuilder<Title, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                            private a() {
                                super(Title.DEFAULT_INSTANCE);
                            }
                        }

                        static {
                            Title title = new Title();
                            DEFAULT_INSTANCE = title;
                            GeneratedMessageLite.registerDefaultInstance(Title.class, title);
                        }

                        private Title() {
                        }

                        private void clearLen() {
                            this.bitField0_ &= -2;
                            this.len_ = 0;
                        }

                        public static Title getDefaultInstance() {
                            return DEFAULT_INSTANCE;
                        }

                        public static a newBuilder() {
                            return (a) DEFAULT_INSTANCE.createBuilder();
                        }

                        public static Title parseDelimitedFrom(InputStream inputStream) throws IOException {
                            return (Title) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                        }

                        public static Title parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                        }

                        public static Parser<Title> parser() {
                            return DEFAULT_INSTANCE.getParserForType();
                        }

                        private void setLen(int i10) {
                            this.bitField0_ |= 1;
                            this.len_ = i10;
                        }

                        @Override // com.google.protobuf.GeneratedMessageLite
                        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                            int i10;
                            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                                case 1:
                                    return new Title();
                                case 2:
                                    return new a();
                                case 3:
                                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᔄ\u0000", new Object[]{"bitField0_", "len_"});
                                case 4:
                                    return DEFAULT_INSTANCE;
                                case 5:
                                    Parser<Title> parser = PARSER;
                                    if (parser == null) {
                                        synchronized (Title.class) {
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
                                    return Byte.valueOf(this.memoizedIsInitialized);
                                case 7:
                                    if (obj == null) {
                                        i10 = 0;
                                    } else {
                                        i10 = 1;
                                    }
                                    this.memoizedIsInitialized = (byte) i10;
                                    return null;
                                default:
                                    throw new UnsupportedOperationException();
                            }
                        }

                        public int getLen() {
                            return this.len_;
                        }

                        public boolean hasLen() {
                            if ((this.bitField0_ & 1) != 0) {
                                return true;
                            }
                            return false;
                        }

                        public static a newBuilder(Title title) {
                            return (a) DEFAULT_INSTANCE.createBuilder(title);
                        }

                        public static Title parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Title) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                        }

                        public static Title parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                        }

                        public static Title parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                        }

                        public static Title parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                        }

                        public static Title parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                        }

                        public static Title parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                        }

                        public static Title parseFrom(InputStream inputStream) throws IOException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                        }

                        public static Title parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                        }

                        public static Title parseFrom(CodedInputStream codedInputStream) throws IOException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                        }

                        public static Title parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                            return (Title) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                        }
                    }

                    /* loaded from: classes6.dex */
                    public static final class a extends GeneratedMessageLite.ExtendableBuilder<Asset, a> implements a {
                        private a() {
                            super(Asset.DEFAULT_INSTANCE);
                        }
                    }

                    static {
                        Asset asset = new Asset();
                        DEFAULT_INSTANCE = asset;
                        GeneratedMessageLite.registerDefaultInstance(Asset.class, asset);
                    }

                    private Asset() {
                    }

                    private void clearAssetOneof() {
                        this.assetOneofCase_ = 0;
                        this.assetOneof_ = null;
                    }

                    private void clearData() {
                        if (this.assetOneofCase_ == 6) {
                            this.assetOneofCase_ = 0;
                            this.assetOneof_ = null;
                        }
                    }

                    private void clearId() {
                        this.bitField0_ &= -2;
                        this.id_ = 0;
                    }

                    private void clearImg() {
                        if (this.assetOneofCase_ == 4) {
                            this.assetOneofCase_ = 0;
                            this.assetOneof_ = null;
                        }
                    }

                    private void clearRequired() {
                        this.bitField0_ &= -3;
                        this.required_ = false;
                    }

                    private void clearTitle() {
                        if (this.assetOneofCase_ == 3) {
                            this.assetOneofCase_ = 0;
                            this.assetOneof_ = null;
                        }
                    }

                    private void clearVideo() {
                        if (this.assetOneofCase_ == 5) {
                            this.assetOneofCase_ = 0;
                            this.assetOneof_ = null;
                        }
                    }

                    public static Asset getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    private void mergeData(Data data) {
                        data.getClass();
                        if (this.assetOneofCase_ == 6 && this.assetOneof_ != Data.getDefaultInstance()) {
                            this.assetOneof_ = ((Data.a) Data.newBuilder((Data) this.assetOneof_).mergeFrom((Data.a) data)).buildPartial();
                        } else {
                            this.assetOneof_ = data;
                        }
                        this.assetOneofCase_ = 6;
                    }

                    private void mergeImg(Image image) {
                        image.getClass();
                        if (this.assetOneofCase_ == 4 && this.assetOneof_ != Image.getDefaultInstance()) {
                            this.assetOneof_ = ((Image.a) Image.newBuilder((Image) this.assetOneof_).mergeFrom((Image.a) image)).buildPartial();
                        } else {
                            this.assetOneof_ = image;
                        }
                        this.assetOneofCase_ = 4;
                    }

                    private void mergeTitle(Title title) {
                        title.getClass();
                        if (this.assetOneofCase_ == 3 && this.assetOneof_ != Title.getDefaultInstance()) {
                            this.assetOneof_ = ((Title.a) Title.newBuilder((Title) this.assetOneof_).mergeFrom((Title.a) title)).buildPartial();
                        } else {
                            this.assetOneof_ = title;
                        }
                        this.assetOneofCase_ = 3;
                    }

                    private void mergeVideo(Video video) {
                        video.getClass();
                        if (this.assetOneofCase_ == 5 && this.assetOneof_ != Video.getDefaultInstance()) {
                            this.assetOneof_ = ((Video.g) Video.newBuilder((Video) this.assetOneof_).mergeFrom((Video.g) video)).buildPartial();
                        } else {
                            this.assetOneof_ = video;
                        }
                        this.assetOneofCase_ = 5;
                    }

                    public static a newBuilder() {
                        return (a) DEFAULT_INSTANCE.createBuilder();
                    }

                    public static Asset parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (Asset) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                    }

                    public static Asset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                    }

                    public static Parser<Asset> parser() {
                        return DEFAULT_INSTANCE.getParserForType();
                    }

                    private void setData(Data data) {
                        data.getClass();
                        this.assetOneof_ = data;
                        this.assetOneofCase_ = 6;
                    }

                    private void setId(int i10) {
                        this.bitField0_ |= 1;
                        this.id_ = i10;
                    }

                    private void setImg(Image image) {
                        image.getClass();
                        this.assetOneof_ = image;
                        this.assetOneofCase_ = 4;
                    }

                    private void setRequired(boolean z10) {
                        this.bitField0_ |= 2;
                        this.required_ = z10;
                    }

                    private void setTitle(Title title) {
                        title.getClass();
                        this.assetOneof_ = title;
                        this.assetOneofCase_ = 3;
                    }

                    private void setVideo(Video video) {
                        video.getClass();
                        this.assetOneof_ = video;
                        this.assetOneofCase_ = 5;
                    }

                    @Override // com.google.protobuf.GeneratedMessageLite
                    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                        int i10;
                        switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                            case 1:
                                return new Asset();
                            case 2:
                                return new a();
                            case 3:
                                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0005\u0001ᔄ\u0000\u0002ဇ\u0001\u0003ᐼ\u0000\u0004ᐼ\u0000\u0005ᐼ\u0000\u0006ᐼ\u0000", new Object[]{"assetOneof_", "assetOneofCase_", "bitField0_", "id_", "required_", Title.class, Image.class, Video.class, Data.class});
                            case 4:
                                return DEFAULT_INSTANCE;
                            case 5:
                                Parser<Asset> parser = PARSER;
                                if (parser == null) {
                                    synchronized (Asset.class) {
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
                                return Byte.valueOf(this.memoizedIsInitialized);
                            case 7:
                                if (obj == null) {
                                    i10 = 0;
                                } else {
                                    i10 = 1;
                                }
                                this.memoizedIsInitialized = (byte) i10;
                                return null;
                            default:
                                throw new UnsupportedOperationException();
                        }
                    }

                    public AssetOneofCase getAssetOneofCase() {
                        return AssetOneofCase.forNumber(this.assetOneofCase_);
                    }

                    public Data getData() {
                        if (this.assetOneofCase_ == 6) {
                            return (Data) this.assetOneof_;
                        }
                        return Data.getDefaultInstance();
                    }

                    public int getId() {
                        return this.id_;
                    }

                    public Image getImg() {
                        if (this.assetOneofCase_ == 4) {
                            return (Image) this.assetOneof_;
                        }
                        return Image.getDefaultInstance();
                    }

                    public boolean getRequired() {
                        return this.required_;
                    }

                    public Title getTitle() {
                        if (this.assetOneofCase_ == 3) {
                            return (Title) this.assetOneof_;
                        }
                        return Title.getDefaultInstance();
                    }

                    public Video getVideo() {
                        if (this.assetOneofCase_ == 5) {
                            return (Video) this.assetOneof_;
                        }
                        return Video.getDefaultInstance();
                    }

                    public boolean hasData() {
                        if (this.assetOneofCase_ == 6) {
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

                    public boolean hasImg() {
                        if (this.assetOneofCase_ == 4) {
                            return true;
                        }
                        return false;
                    }

                    public boolean hasRequired() {
                        if ((this.bitField0_ & 2) != 0) {
                            return true;
                        }
                        return false;
                    }

                    public boolean hasTitle() {
                        if (this.assetOneofCase_ == 3) {
                            return true;
                        }
                        return false;
                    }

                    public boolean hasVideo() {
                        if (this.assetOneofCase_ == 5) {
                            return true;
                        }
                        return false;
                    }

                    public static a newBuilder(Asset asset) {
                        return (a) DEFAULT_INSTANCE.createBuilder(asset);
                    }

                    public static Asset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (Asset) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                    }

                    public static Asset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                    }

                    public static Asset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                    }

                    public static Asset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                    }

                    public static Asset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                    }

                    public static Asset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                    }

                    public static Asset parseFrom(InputStream inputStream) throws IOException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                    }

                    public static Asset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                    }

                    public static Asset parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                    }

                    public static Asset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                    }
                }

                /* loaded from: classes6.dex */
                public enum ContextSubtype implements Internal.EnumLite {
                    CONTENT_GENERAL_OR_MIXED(10),
                    CONTENT_ARTICLE(11),
                    CONTENT_VIDEO(12),
                    CONTENT_AUDIO(13),
                    CONTENT_IMAGE(14),
                    CONTENT_USER_GENERATED(15),
                    SOCIAL_GENERAL(20),
                    SOCIAL_EMAIL(21),
                    SOCIAL_CHAT_IM(22),
                    PRODUCT_SELLING(30),
                    PRODUCT_MARKETPLACE(31),
                    PRODUCT_REVIEW(32);
                    
                    public static final int CONTENT_ARTICLE_VALUE = 11;
                    public static final int CONTENT_AUDIO_VALUE = 13;
                    public static final int CONTENT_GENERAL_OR_MIXED_VALUE = 10;
                    public static final int CONTENT_IMAGE_VALUE = 14;
                    public static final int CONTENT_USER_GENERATED_VALUE = 15;
                    public static final int CONTENT_VIDEO_VALUE = 12;
                    public static final int PRODUCT_MARKETPLACE_VALUE = 31;
                    public static final int PRODUCT_REVIEW_VALUE = 32;
                    public static final int PRODUCT_SELLING_VALUE = 30;
                    public static final int SOCIAL_CHAT_IM_VALUE = 22;
                    public static final int SOCIAL_EMAIL_VALUE = 21;
                    public static final int SOCIAL_GENERAL_VALUE = 20;
                    private static final Internal.EnumLiteMap<ContextSubtype> internalValueMap = new a();
                    private final int value;

                    /* loaded from: classes6.dex */
                    class a implements Internal.EnumLiteMap<ContextSubtype> {
                        a() {
                        }

                        @Override // com.google.protobuf.Internal.EnumLiteMap
                        /* renamed from: a */
                        public ContextSubtype findValueByNumber(int i10) {
                            return ContextSubtype.forNumber(i10);
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* loaded from: classes6.dex */
                    public static final class b implements Internal.EnumVerifier {

                        /* renamed from: a  reason: collision with root package name */
                        static final Internal.EnumVerifier f31773a = new b();

                        private b() {
                        }

                        @Override // com.google.protobuf.Internal.EnumVerifier
                        public boolean isInRange(int i10) {
                            if (ContextSubtype.forNumber(i10) != null) {
                                return true;
                            }
                            return false;
                        }
                    }

                    ContextSubtype(int i10) {
                        this.value = i10;
                    }

                    public static ContextSubtype forNumber(int i10) {
                        switch (i10) {
                            case 10:
                                return CONTENT_GENERAL_OR_MIXED;
                            case 11:
                                return CONTENT_ARTICLE;
                            case 12:
                                return CONTENT_VIDEO;
                            case 13:
                                return CONTENT_AUDIO;
                            case 14:
                                return CONTENT_IMAGE;
                            case 15:
                                return CONTENT_USER_GENERATED;
                            default:
                                switch (i10) {
                                    case 20:
                                        return SOCIAL_GENERAL;
                                    case 21:
                                        return SOCIAL_EMAIL;
                                    case 22:
                                        return SOCIAL_CHAT_IM;
                                    default:
                                        switch (i10) {
                                            case 30:
                                                return PRODUCT_SELLING;
                                            case 31:
                                                return PRODUCT_MARKETPLACE;
                                            case 32:
                                                return PRODUCT_REVIEW;
                                            default:
                                                return null;
                                        }
                                }
                        }
                    }

                    public static Internal.EnumLiteMap<ContextSubtype> internalGetValueMap() {
                        return internalValueMap;
                    }

                    public static Internal.EnumVerifier internalGetVerifier() {
                        return b.f31773a;
                    }

                    @Override // com.google.protobuf.Internal.EnumLite
                    public final int getNumber() {
                        return this.value;
                    }

                    @Deprecated
                    public static ContextSubtype valueOf(int i10) {
                        return forNumber(i10);
                    }
                }

                /* loaded from: classes6.dex */
                public enum ContextType implements Internal.EnumLite {
                    CONTENT(1),
                    SOCIAL(2),
                    PRODUCT(3);
                    
                    public static final int CONTENT_VALUE = 1;
                    public static final int PRODUCT_VALUE = 3;
                    public static final int SOCIAL_VALUE = 2;
                    private static final Internal.EnumLiteMap<ContextType> internalValueMap = new a();
                    private final int value;

                    /* loaded from: classes6.dex */
                    class a implements Internal.EnumLiteMap<ContextType> {
                        a() {
                        }

                        @Override // com.google.protobuf.Internal.EnumLiteMap
                        /* renamed from: a */
                        public ContextType findValueByNumber(int i10) {
                            return ContextType.forNumber(i10);
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* loaded from: classes6.dex */
                    public static final class b implements Internal.EnumVerifier {

                        /* renamed from: a  reason: collision with root package name */
                        static final Internal.EnumVerifier f31774a = new b();

                        private b() {
                        }

                        @Override // com.google.protobuf.Internal.EnumVerifier
                        public boolean isInRange(int i10) {
                            if (ContextType.forNumber(i10) != null) {
                                return true;
                            }
                            return false;
                        }
                    }

                    ContextType(int i10) {
                        this.value = i10;
                    }

                    public static ContextType forNumber(int i10) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 != 3) {
                                    return null;
                                }
                                return PRODUCT;
                            }
                            return SOCIAL;
                        }
                        return CONTENT;
                    }

                    public static Internal.EnumLiteMap<ContextType> internalGetValueMap() {
                        return internalValueMap;
                    }

                    public static Internal.EnumVerifier internalGetVerifier() {
                        return b.f31774a;
                    }

                    @Override // com.google.protobuf.Internal.EnumLite
                    public final int getNumber() {
                        return this.value;
                    }

                    @Deprecated
                    public static ContextType valueOf(int i10) {
                        return forNumber(i10);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class EventTrackers extends GeneratedMessageLite.ExtendableMessage<EventTrackers, b> implements c {
                    private static final EventTrackers DEFAULT_INSTANCE;
                    public static final int EVENT_FIELD_NUMBER = 1;
                    public static final int METHODS_FIELD_NUMBER = 2;
                    private static volatile Parser<EventTrackers> PARSER;
                    private static final Internal.ListAdapter.Converter<Integer, EventTrackingMethod> methods_converter_ = new a();
                    private int bitField0_;
                    private int event_;
                    private byte memoizedIsInitialized = 2;
                    private Internal.IntList methods_ = GeneratedMessageLite.emptyIntList();

                    /* loaded from: classes6.dex */
                    public enum EventTrackingMethod implements Internal.EnumLite {
                        IMG(1),
                        JS(2);
                        
                        public static final int IMG_VALUE = 1;
                        public static final int JS_VALUE = 2;
                        private static final Internal.EnumLiteMap<EventTrackingMethod> internalValueMap = new a();
                        private final int value;

                        /* loaded from: classes6.dex */
                        class a implements Internal.EnumLiteMap<EventTrackingMethod> {
                            a() {
                            }

                            @Override // com.google.protobuf.Internal.EnumLiteMap
                            /* renamed from: a */
                            public EventTrackingMethod findValueByNumber(int i10) {
                                return EventTrackingMethod.forNumber(i10);
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        /* loaded from: classes6.dex */
                        public static final class b implements Internal.EnumVerifier {

                            /* renamed from: a  reason: collision with root package name */
                            static final Internal.EnumVerifier f31775a = new b();

                            private b() {
                            }

                            @Override // com.google.protobuf.Internal.EnumVerifier
                            public boolean isInRange(int i10) {
                                if (EventTrackingMethod.forNumber(i10) != null) {
                                    return true;
                                }
                                return false;
                            }
                        }

                        EventTrackingMethod(int i10) {
                            this.value = i10;
                        }

                        public static EventTrackingMethod forNumber(int i10) {
                            if (i10 != 1) {
                                if (i10 != 2) {
                                    return null;
                                }
                                return JS;
                            }
                            return IMG;
                        }

                        public static Internal.EnumLiteMap<EventTrackingMethod> internalGetValueMap() {
                            return internalValueMap;
                        }

                        public static Internal.EnumVerifier internalGetVerifier() {
                            return b.f31775a;
                        }

                        @Override // com.google.protobuf.Internal.EnumLite
                        public final int getNumber() {
                            return this.value;
                        }

                        @Deprecated
                        public static EventTrackingMethod valueOf(int i10) {
                            return forNumber(i10);
                        }
                    }

                    /* loaded from: classes6.dex */
                    public enum EventType implements Internal.EnumLite {
                        UNKNOWN_EVENT(0),
                        MAKE_BID(6),
                        WIN(1),
                        IMP(2),
                        IMP_EXTRA(14),
                        CLICK(3),
                        POSTBACK(5),
                        INSTALL(4),
                        CUSTOM_ACTION(23),
                        CUSTOM_KPI_ACTION(24),
                        FIRST_PURCHASE(9),
                        PURCHASE(10),
                        LEGACY_FIRST_PURCHASE(11),
                        CALL(12),
                        FIRST_CALL(13),
                        DELIVERY(15),
                        REENGAGE(16),
                        REGISTER(17),
                        AUTHORIZE(20),
                        VAST(7),
                        SPEND(8),
                        OPEN_COMMUNITY(18),
                        INVITE(19),
                        INSTALL_CT(21),
                        INSTALL_VT(22),
                        CUSTOM_ACTION_00(100),
                        CUSTOM_ACTION_01(101),
                        CUSTOM_ACTION_02(102),
                        CUSTOM_ACTION_03(103),
                        CUSTOM_ACTION_04(104),
                        CUSTOM_ACTION_05(105),
                        CUSTOM_ACTION_06(106),
                        CUSTOM_ACTION_07(107),
                        CUSTOM_ACTION_08(108),
                        CUSTOM_ACTION_09(109),
                        CUSTOM_ACTION_10(110),
                        CUSTOM_ACTION_11(111),
                        CUSTOM_ACTION_12(112),
                        CUSTOM_ACTION_13(113),
                        CUSTOM_ACTION_14(114),
                        CUSTOM_ACTION_15(115);
                        
                        public static final int AUTHORIZE_VALUE = 20;
                        public static final int CALL_VALUE = 12;
                        public static final int CLICK_VALUE = 3;
                        public static final int CUSTOM_ACTION_00_VALUE = 100;
                        public static final int CUSTOM_ACTION_01_VALUE = 101;
                        public static final int CUSTOM_ACTION_02_VALUE = 102;
                        public static final int CUSTOM_ACTION_03_VALUE = 103;
                        public static final int CUSTOM_ACTION_04_VALUE = 104;
                        public static final int CUSTOM_ACTION_05_VALUE = 105;
                        public static final int CUSTOM_ACTION_06_VALUE = 106;
                        public static final int CUSTOM_ACTION_07_VALUE = 107;
                        public static final int CUSTOM_ACTION_08_VALUE = 108;
                        public static final int CUSTOM_ACTION_09_VALUE = 109;
                        public static final int CUSTOM_ACTION_10_VALUE = 110;
                        public static final int CUSTOM_ACTION_11_VALUE = 111;
                        public static final int CUSTOM_ACTION_12_VALUE = 112;
                        public static final int CUSTOM_ACTION_13_VALUE = 113;
                        public static final int CUSTOM_ACTION_14_VALUE = 114;
                        public static final int CUSTOM_ACTION_15_VALUE = 115;
                        public static final int CUSTOM_ACTION_VALUE = 23;
                        public static final int CUSTOM_KPI_ACTION_VALUE = 24;
                        public static final int DELIVERY_VALUE = 15;
                        public static final int FIRST_CALL_VALUE = 13;
                        public static final int FIRST_PURCHASE_VALUE = 9;
                        public static final int IMP_EXTRA_VALUE = 14;
                        public static final int IMP_VALUE = 2;
                        public static final int INSTALL_CT_VALUE = 21;
                        public static final int INSTALL_VALUE = 4;
                        public static final int INSTALL_VT_VALUE = 22;
                        public static final int INVITE_VALUE = 19;
                        public static final int LEGACY_FIRST_PURCHASE_VALUE = 11;
                        public static final int MAKE_BID_VALUE = 6;
                        public static final int OPEN_COMMUNITY_VALUE = 18;
                        public static final int POSTBACK_VALUE = 5;
                        public static final int PURCHASE_VALUE = 10;
                        public static final int REENGAGE_VALUE = 16;
                        public static final int REGISTER_VALUE = 17;
                        public static final int SPEND_VALUE = 8;
                        public static final int UNKNOWN_EVENT_VALUE = 0;
                        public static final int VAST_VALUE = 7;
                        public static final int WIN_VALUE = 1;
                        private static final Internal.EnumLiteMap<EventType> internalValueMap = new a();
                        private final int value;

                        /* loaded from: classes6.dex */
                        class a implements Internal.EnumLiteMap<EventType> {
                            a() {
                            }

                            @Override // com.google.protobuf.Internal.EnumLiteMap
                            /* renamed from: a */
                            public EventType findValueByNumber(int i10) {
                                return EventType.forNumber(i10);
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        /* loaded from: classes6.dex */
                        public static final class b implements Internal.EnumVerifier {

                            /* renamed from: a  reason: collision with root package name */
                            static final Internal.EnumVerifier f31776a = new b();

                            private b() {
                            }

                            @Override // com.google.protobuf.Internal.EnumVerifier
                            public boolean isInRange(int i10) {
                                if (EventType.forNumber(i10) != null) {
                                    return true;
                                }
                                return false;
                            }
                        }

                        EventType(int i10) {
                            this.value = i10;
                        }

                        public static EventType forNumber(int i10) {
                            switch (i10) {
                                case 0:
                                    return UNKNOWN_EVENT;
                                case 1:
                                    return WIN;
                                case 2:
                                    return IMP;
                                case 3:
                                    return CLICK;
                                case 4:
                                    return INSTALL;
                                case 5:
                                    return POSTBACK;
                                case 6:
                                    return MAKE_BID;
                                case 7:
                                    return VAST;
                                case 8:
                                    return SPEND;
                                case 9:
                                    return FIRST_PURCHASE;
                                case 10:
                                    return PURCHASE;
                                case 11:
                                    return LEGACY_FIRST_PURCHASE;
                                case 12:
                                    return CALL;
                                case 13:
                                    return FIRST_CALL;
                                case 14:
                                    return IMP_EXTRA;
                                case 15:
                                    return DELIVERY;
                                case 16:
                                    return REENGAGE;
                                case 17:
                                    return REGISTER;
                                case 18:
                                    return OPEN_COMMUNITY;
                                case 19:
                                    return INVITE;
                                case 20:
                                    return AUTHORIZE;
                                case 21:
                                    return INSTALL_CT;
                                case 22:
                                    return INSTALL_VT;
                                case 23:
                                    return CUSTOM_ACTION;
                                case 24:
                                    return CUSTOM_KPI_ACTION;
                                default:
                                    switch (i10) {
                                        case 100:
                                            return CUSTOM_ACTION_00;
                                        case 101:
                                            return CUSTOM_ACTION_01;
                                        case 102:
                                            return CUSTOM_ACTION_02;
                                        case 103:
                                            return CUSTOM_ACTION_03;
                                        case 104:
                                            return CUSTOM_ACTION_04;
                                        case 105:
                                            return CUSTOM_ACTION_05;
                                        case 106:
                                            return CUSTOM_ACTION_06;
                                        case 107:
                                            return CUSTOM_ACTION_07;
                                        case 108:
                                            return CUSTOM_ACTION_08;
                                        case 109:
                                            return CUSTOM_ACTION_09;
                                        case 110:
                                            return CUSTOM_ACTION_10;
                                        case 111:
                                            return CUSTOM_ACTION_11;
                                        case 112:
                                            return CUSTOM_ACTION_12;
                                        case 113:
                                            return CUSTOM_ACTION_13;
                                        case 114:
                                            return CUSTOM_ACTION_14;
                                        case 115:
                                            return CUSTOM_ACTION_15;
                                        default:
                                            return null;
                                    }
                            }
                        }

                        public static Internal.EnumLiteMap<EventType> internalGetValueMap() {
                            return internalValueMap;
                        }

                        public static Internal.EnumVerifier internalGetVerifier() {
                            return b.f31776a;
                        }

                        @Override // com.google.protobuf.Internal.EnumLite
                        public final int getNumber() {
                            return this.value;
                        }

                        @Deprecated
                        public static EventType valueOf(int i10) {
                            return forNumber(i10);
                        }
                    }

                    /* loaded from: classes6.dex */
                    class a implements Internal.ListAdapter.Converter<Integer, EventTrackingMethod> {
                        a() {
                        }

                        @Override // com.google.protobuf.Internal.ListAdapter.Converter
                        /* renamed from: a */
                        public EventTrackingMethod convert(Integer num) {
                            EventTrackingMethod forNumber = EventTrackingMethod.forNumber(num.intValue());
                            if (forNumber == null) {
                                return EventTrackingMethod.IMG;
                            }
                            return forNumber;
                        }
                    }

                    /* loaded from: classes6.dex */
                    public static final class b extends GeneratedMessageLite.ExtendableBuilder<EventTrackers, b> implements c {
                        private b() {
                            super(EventTrackers.DEFAULT_INSTANCE);
                        }
                    }

                    static {
                        EventTrackers eventTrackers = new EventTrackers();
                        DEFAULT_INSTANCE = eventTrackers;
                        GeneratedMessageLite.registerDefaultInstance(EventTrackers.class, eventTrackers);
                    }

                    private EventTrackers() {
                    }

                    private void addAllMethods(Iterable<? extends EventTrackingMethod> iterable) {
                        ensureMethodsIsMutable();
                        for (EventTrackingMethod eventTrackingMethod : iterable) {
                            this.methods_.addInt(eventTrackingMethod.getNumber());
                        }
                    }

                    private void addMethods(EventTrackingMethod eventTrackingMethod) {
                        eventTrackingMethod.getClass();
                        ensureMethodsIsMutable();
                        this.methods_.addInt(eventTrackingMethod.getNumber());
                    }

                    private void clearEvent() {
                        this.bitField0_ &= -2;
                        this.event_ = 0;
                    }

                    private void clearMethods() {
                        this.methods_ = GeneratedMessageLite.emptyIntList();
                    }

                    private void ensureMethodsIsMutable() {
                        Internal.IntList intList = this.methods_;
                        if (!intList.isModifiable()) {
                            this.methods_ = GeneratedMessageLite.mutableCopy(intList);
                        }
                    }

                    public static EventTrackers getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static b newBuilder() {
                        return (b) DEFAULT_INSTANCE.createBuilder();
                    }

                    public static EventTrackers parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (EventTrackers) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                    }

                    public static EventTrackers parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                    }

                    public static Parser<EventTrackers> parser() {
                        return DEFAULT_INSTANCE.getParserForType();
                    }

                    private void setEvent(EventType eventType) {
                        this.event_ = eventType.getNumber();
                        this.bitField0_ |= 1;
                    }

                    private void setMethods(int i10, EventTrackingMethod eventTrackingMethod) {
                        eventTrackingMethod.getClass();
                        ensureMethodsIsMutable();
                        this.methods_.setInt(i10, eventTrackingMethod.getNumber());
                    }

                    @Override // com.google.protobuf.GeneratedMessageLite
                    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                        int i10;
                        switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                            case 1:
                                return new EventTrackers();
                            case 2:
                                return new b();
                            case 3:
                                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0001\u0001ᔌ\u0000\u0002\u001e", new Object[]{"bitField0_", "event_", EventType.internalGetVerifier(), "methods_", EventTrackingMethod.internalGetVerifier()});
                            case 4:
                                return DEFAULT_INSTANCE;
                            case 5:
                                Parser<EventTrackers> parser = PARSER;
                                if (parser == null) {
                                    synchronized (EventTrackers.class) {
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
                                return Byte.valueOf(this.memoizedIsInitialized);
                            case 7:
                                if (obj == null) {
                                    i10 = 0;
                                } else {
                                    i10 = 1;
                                }
                                this.memoizedIsInitialized = (byte) i10;
                                return null;
                            default:
                                throw new UnsupportedOperationException();
                        }
                    }

                    public EventType getEvent() {
                        EventType forNumber = EventType.forNumber(this.event_);
                        if (forNumber == null) {
                            return EventType.UNKNOWN_EVENT;
                        }
                        return forNumber;
                    }

                    public EventTrackingMethod getMethods(int i10) {
                        EventTrackingMethod forNumber = EventTrackingMethod.forNumber(this.methods_.getInt(i10));
                        if (forNumber == null) {
                            return EventTrackingMethod.IMG;
                        }
                        return forNumber;
                    }

                    public int getMethodsCount() {
                        return this.methods_.size();
                    }

                    public List<EventTrackingMethod> getMethodsList() {
                        return new Internal.ListAdapter(this.methods_, methods_converter_);
                    }

                    public boolean hasEvent() {
                        if ((this.bitField0_ & 1) != 0) {
                            return true;
                        }
                        return false;
                    }

                    public static b newBuilder(EventTrackers eventTrackers) {
                        return (b) DEFAULT_INSTANCE.createBuilder(eventTrackers);
                    }

                    public static EventTrackers parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (EventTrackers) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                    }

                    public static EventTrackers parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                    }

                    public static EventTrackers parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                    }

                    public static EventTrackers parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                    }

                    public static EventTrackers parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                    }

                    public static EventTrackers parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                    }

                    public static EventTrackers parseFrom(InputStream inputStream) throws IOException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                    }

                    public static EventTrackers parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                    }

                    public static EventTrackers parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                    }

                    public static EventTrackers parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (EventTrackers) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                    }
                }

                /* loaded from: classes6.dex */
                public enum PlacementType implements Internal.EnumLite {
                    IN_FEED(1),
                    ATOMIC_UNIT(2),
                    OUTSIDE(3),
                    RECOMMENDATION(4);
                    
                    public static final int ATOMIC_UNIT_VALUE = 2;
                    public static final int IN_FEED_VALUE = 1;
                    public static final int OUTSIDE_VALUE = 3;
                    public static final int RECOMMENDATION_VALUE = 4;
                    private static final Internal.EnumLiteMap<PlacementType> internalValueMap = new a();
                    private final int value;

                    /* loaded from: classes6.dex */
                    class a implements Internal.EnumLiteMap<PlacementType> {
                        a() {
                        }

                        @Override // com.google.protobuf.Internal.EnumLiteMap
                        /* renamed from: a */
                        public PlacementType findValueByNumber(int i10) {
                            return PlacementType.forNumber(i10);
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* loaded from: classes6.dex */
                    public static final class b implements Internal.EnumVerifier {

                        /* renamed from: a  reason: collision with root package name */
                        static final Internal.EnumVerifier f31777a = new b();

                        private b() {
                        }

                        @Override // com.google.protobuf.Internal.EnumVerifier
                        public boolean isInRange(int i10) {
                            if (PlacementType.forNumber(i10) != null) {
                                return true;
                            }
                            return false;
                        }
                    }

                    PlacementType(int i10) {
                        this.value = i10;
                    }

                    public static PlacementType forNumber(int i10) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 != 3) {
                                    if (i10 != 4) {
                                        return null;
                                    }
                                    return RECOMMENDATION;
                                }
                                return OUTSIDE;
                            }
                            return ATOMIC_UNIT;
                        }
                        return IN_FEED;
                    }

                    public static Internal.EnumLiteMap<PlacementType> internalGetValueMap() {
                        return internalValueMap;
                    }

                    public static Internal.EnumVerifier internalGetVerifier() {
                        return b.f31777a;
                    }

                    @Override // com.google.protobuf.Internal.EnumLite
                    public final int getNumber() {
                        return this.value;
                    }

                    @Deprecated
                    public static PlacementType valueOf(int i10) {
                        return forNumber(i10);
                    }
                }

                /* loaded from: classes6.dex */
                public interface a extends GeneratedMessageLite.ExtendableMessageOrBuilder<Asset, Asset.a> {
                }

                /* loaded from: classes6.dex */
                public static final class b extends GeneratedMessageLite.ExtendableBuilder<NativeRequest, b> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                    private b() {
                        super(NativeRequest.DEFAULT_INSTANCE);
                    }
                }

                /* loaded from: classes6.dex */
                public interface c extends GeneratedMessageLite.ExtendableMessageOrBuilder<EventTrackers, EventTrackers.b> {
                }

                static {
                    NativeRequest nativeRequest = new NativeRequest();
                    DEFAULT_INSTANCE = nativeRequest;
                    GeneratedMessageLite.registerDefaultInstance(NativeRequest.class, nativeRequest);
                }

                private NativeRequest() {
                }

                private void addAllAssets(Iterable<? extends Asset> iterable) {
                    ensureAssetsIsMutable();
                    AbstractMessageLite.addAll((Iterable) iterable, (List) this.assets_);
                }

                private void addAllEventtrackers(Iterable<? extends EventTrackers> iterable) {
                    ensureEventtrackersIsMutable();
                    AbstractMessageLite.addAll((Iterable) iterable, (List) this.eventtrackers_);
                }

                private void addAssets(Asset asset) {
                    asset.getClass();
                    ensureAssetsIsMutable();
                    this.assets_.add(asset);
                }

                private void addEventtrackers(EventTrackers eventTrackers) {
                    eventTrackers.getClass();
                    ensureEventtrackersIsMutable();
                    this.eventtrackers_.add(eventTrackers);
                }

                private void clearAssets() {
                    this.assets_ = GeneratedMessageLite.emptyProtobufList();
                }

                private void clearAurlsupport() {
                    this.bitField0_ &= -65;
                    this.aurlsupport_ = false;
                }

                private void clearContext() {
                    this.bitField0_ &= -3;
                    this.context_ = 1;
                }

                private void clearContextsubtype() {
                    this.bitField0_ &= -5;
                    this.contextsubtype_ = 10;
                }

                private void clearDurlsupport() {
                    this.bitField0_ &= -129;
                    this.durlsupport_ = false;
                }

                private void clearEventtrackers() {
                    this.eventtrackers_ = GeneratedMessageLite.emptyProtobufList();
                }

                private void clearPlcmtcnt() {
                    this.bitField0_ &= -17;
                    this.plcmtcnt_ = 1;
                }

                private void clearPlcmttype() {
                    this.bitField0_ &= -9;
                    this.plcmttype_ = 1;
                }

                private void clearPrivacy() {
                    this.bitField0_ &= -257;
                    this.privacy_ = false;
                }

                private void clearSeq() {
                    this.bitField0_ &= -33;
                    this.seq_ = 0;
                }

                private void clearVer() {
                    this.bitField0_ &= -2;
                    this.ver_ = getDefaultInstance().getVer();
                }

                private void ensureAssetsIsMutable() {
                    Internal.ProtobufList<Asset> protobufList = this.assets_;
                    if (!protobufList.isModifiable()) {
                        this.assets_ = GeneratedMessageLite.mutableCopy(protobufList);
                    }
                }

                private void ensureEventtrackersIsMutable() {
                    Internal.ProtobufList<EventTrackers> protobufList = this.eventtrackers_;
                    if (!protobufList.isModifiable()) {
                        this.eventtrackers_ = GeneratedMessageLite.mutableCopy(protobufList);
                    }
                }

                public static NativeRequest getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static b newBuilder() {
                    return (b) DEFAULT_INSTANCE.createBuilder();
                }

                public static NativeRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (NativeRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static NativeRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                }

                public static Parser<NativeRequest> parser() {
                    return DEFAULT_INSTANCE.getParserForType();
                }

                private void removeAssets(int i10) {
                    ensureAssetsIsMutable();
                    this.assets_.remove(i10);
                }

                private void removeEventtrackers(int i10) {
                    ensureEventtrackersIsMutable();
                    this.eventtrackers_.remove(i10);
                }

                private void setAssets(int i10, Asset asset) {
                    asset.getClass();
                    ensureAssetsIsMutable();
                    this.assets_.set(i10, asset);
                }

                private void setAurlsupport(boolean z10) {
                    this.bitField0_ |= 64;
                    this.aurlsupport_ = z10;
                }

                private void setContext(ContextType contextType) {
                    this.context_ = contextType.getNumber();
                    this.bitField0_ |= 2;
                }

                private void setContextsubtype(ContextSubtype contextSubtype) {
                    this.contextsubtype_ = contextSubtype.getNumber();
                    this.bitField0_ |= 4;
                }

                private void setDurlsupport(boolean z10) {
                    this.bitField0_ |= 128;
                    this.durlsupport_ = z10;
                }

                private void setEventtrackers(int i10, EventTrackers eventTrackers) {
                    eventTrackers.getClass();
                    ensureEventtrackersIsMutable();
                    this.eventtrackers_.set(i10, eventTrackers);
                }

                private void setPlcmtcnt(int i10) {
                    this.bitField0_ |= 16;
                    this.plcmtcnt_ = i10;
                }

                private void setPlcmttype(PlacementType placementType) {
                    this.plcmttype_ = placementType.getNumber();
                    this.bitField0_ |= 8;
                }

                private void setPrivacy(boolean z10) {
                    this.bitField0_ |= 256;
                    this.privacy_ = z10;
                }

                private void setSeq(int i10) {
                    this.bitField0_ |= 32;
                    this.seq_ = i10;
                }

                private void setVer(String str) {
                    str.getClass();
                    this.bitField0_ |= 1;
                    this.ver_ = str;
                }

                private void setVerBytes(ByteString byteString) {
                    this.ver_ = byteString.toStringUtf8();
                    this.bitField0_ |= 1;
                }

                @Override // com.google.protobuf.GeneratedMessageLite
                protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                    int i10;
                    switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                        case 1:
                            return new NativeRequest();
                        case 2:
                            return new b();
                        case 3:
                            return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u000b\u0000\u0001\u0001\u000e\u000b\u0000\u0002\u0002\u0001ဈ\u0000\u0004င\u0004\u0005င\u0005\u0006Л\u0007ဌ\u0001\bဌ\u0002\tဌ\u0003\u000bဇ\u0006\fဇ\u0007\rЛ\u000eဇ\b", new Object[]{"bitField0_", "ver_", "plcmtcnt_", "seq_", "assets_", Asset.class, "context_", ContextType.internalGetVerifier(), "contextsubtype_", ContextSubtype.internalGetVerifier(), "plcmttype_", PlacementType.internalGetVerifier(), "aurlsupport_", "durlsupport_", "eventtrackers_", EventTrackers.class, "privacy_"});
                        case 4:
                            return DEFAULT_INSTANCE;
                        case 5:
                            Parser<NativeRequest> parser = PARSER;
                            if (parser == null) {
                                synchronized (NativeRequest.class) {
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
                            return Byte.valueOf(this.memoizedIsInitialized);
                        case 7:
                            if (obj == null) {
                                i10 = 0;
                            } else {
                                i10 = 1;
                            }
                            this.memoizedIsInitialized = (byte) i10;
                            return null;
                        default:
                            throw new UnsupportedOperationException();
                    }
                }

                public Asset getAssets(int i10) {
                    return this.assets_.get(i10);
                }

                public int getAssetsCount() {
                    return this.assets_.size();
                }

                public List<Asset> getAssetsList() {
                    return this.assets_;
                }

                public a getAssetsOrBuilder(int i10) {
                    return this.assets_.get(i10);
                }

                public List<? extends a> getAssetsOrBuilderList() {
                    return this.assets_;
                }

                public boolean getAurlsupport() {
                    return this.aurlsupport_;
                }

                public ContextType getContext() {
                    ContextType forNumber = ContextType.forNumber(this.context_);
                    if (forNumber == null) {
                        return ContextType.CONTENT;
                    }
                    return forNumber;
                }

                public ContextSubtype getContextsubtype() {
                    ContextSubtype forNumber = ContextSubtype.forNumber(this.contextsubtype_);
                    if (forNumber == null) {
                        return ContextSubtype.CONTENT_GENERAL_OR_MIXED;
                    }
                    return forNumber;
                }

                public boolean getDurlsupport() {
                    return this.durlsupport_;
                }

                public EventTrackers getEventtrackers(int i10) {
                    return this.eventtrackers_.get(i10);
                }

                public int getEventtrackersCount() {
                    return this.eventtrackers_.size();
                }

                public List<EventTrackers> getEventtrackersList() {
                    return this.eventtrackers_;
                }

                public c getEventtrackersOrBuilder(int i10) {
                    return this.eventtrackers_.get(i10);
                }

                public List<? extends c> getEventtrackersOrBuilderList() {
                    return this.eventtrackers_;
                }

                public int getPlcmtcnt() {
                    return this.plcmtcnt_;
                }

                public PlacementType getPlcmttype() {
                    PlacementType forNumber = PlacementType.forNumber(this.plcmttype_);
                    if (forNumber == null) {
                        return PlacementType.IN_FEED;
                    }
                    return forNumber;
                }

                public boolean getPrivacy() {
                    return this.privacy_;
                }

                public int getSeq() {
                    return this.seq_;
                }

                public String getVer() {
                    return this.ver_;
                }

                public ByteString getVerBytes() {
                    return ByteString.copyFromUtf8(this.ver_);
                }

                public boolean hasAurlsupport() {
                    if ((this.bitField0_ & 64) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasContext() {
                    if ((this.bitField0_ & 2) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasContextsubtype() {
                    if ((this.bitField0_ & 4) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasDurlsupport() {
                    if ((this.bitField0_ & 128) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasPlcmtcnt() {
                    if ((this.bitField0_ & 16) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasPlcmttype() {
                    if ((this.bitField0_ & 8) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasPrivacy() {
                    if ((this.bitField0_ & 256) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasSeq() {
                    if ((this.bitField0_ & 32) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasVer() {
                    if ((this.bitField0_ & 1) != 0) {
                        return true;
                    }
                    return false;
                }

                public static b newBuilder(NativeRequest nativeRequest) {
                    return (b) DEFAULT_INSTANCE.createBuilder(nativeRequest);
                }

                public static NativeRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (NativeRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static NativeRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                }

                public static NativeRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                }

                private void addAssets(int i10, Asset asset) {
                    asset.getClass();
                    ensureAssetsIsMutable();
                    this.assets_.add(i10, asset);
                }

                private void addEventtrackers(int i10, EventTrackers eventTrackers) {
                    eventTrackers.getClass();
                    ensureEventtrackersIsMutable();
                    this.eventtrackers_.add(i10, eventTrackers);
                }

                public static NativeRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                }

                public static NativeRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                }

                public static NativeRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                }

                public static NativeRequest parseFrom(InputStream inputStream) throws IOException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static NativeRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static NativeRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                }

                public static NativeRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (NativeRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                }
            }

            /* loaded from: classes6.dex */
            public enum RequestOneofCase {
                REQUEST(1),
                REQUEST_NATIVE(50),
                REQUESTONEOF_NOT_SET(0);
                
                private final int value;

                RequestOneofCase(int i10) {
                    this.value = i10;
                }

                public static RequestOneofCase forNumber(int i10) {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 != 50) {
                                return null;
                            }
                            return REQUEST_NATIVE;
                        }
                        return REQUEST;
                    }
                    return REQUESTONEOF_NOT_SET;
                }

                public int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static RequestOneofCase valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            class a implements Internal.ListAdapter.Converter<Integer, APIFramework> {
                a() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public APIFramework convert(Integer num) {
                    APIFramework forNumber = APIFramework.forNumber(num.intValue());
                    if (forNumber == null) {
                        return APIFramework.VPAID_1;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class b implements Internal.ListAdapter.Converter<Integer, CreativeAttribute> {
                b() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public CreativeAttribute convert(Integer num) {
                    CreativeAttribute forNumber = CreativeAttribute.forNumber(num.intValue());
                    if (forNumber == null) {
                        return CreativeAttribute.AUDIO_AUTO_PLAY;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            public static final class c extends GeneratedMessageLite.ExtendableBuilder<Native, c> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                private c() {
                    super(Native.DEFAULT_INSTANCE);
                }
            }

            static {
                Native r02 = new Native();
                DEFAULT_INSTANCE = r02;
                GeneratedMessageLite.registerDefaultInstance(Native.class, r02);
            }

            private Native() {
            }

            private void addAllApi(Iterable<? extends APIFramework> iterable) {
                ensureApiIsMutable();
                for (APIFramework aPIFramework : iterable) {
                    this.api_.addInt(aPIFramework.getNumber());
                }
            }

            private void addAllBattr(Iterable<? extends CreativeAttribute> iterable) {
                ensureBattrIsMutable();
                for (CreativeAttribute creativeAttribute : iterable) {
                    this.battr_.addInt(creativeAttribute.getNumber());
                }
            }

            private void addApi(APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.addInt(aPIFramework.getNumber());
            }

            private void addBattr(CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.addInt(creativeAttribute.getNumber());
            }

            private void clearApi() {
                this.api_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearBattr() {
                this.battr_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearRequest() {
                if (this.requestOneofCase_ == 1) {
                    this.requestOneofCase_ = 0;
                    this.requestOneof_ = null;
                }
            }

            private void clearRequestNative() {
                if (this.requestOneofCase_ == 50) {
                    this.requestOneofCase_ = 0;
                    this.requestOneof_ = null;
                }
            }

            private void clearRequestOneof() {
                this.requestOneofCase_ = 0;
                this.requestOneof_ = null;
            }

            private void clearVer() {
                this.bitField0_ &= -5;
                this.ver_ = getDefaultInstance().getVer();
            }

            private void ensureApiIsMutable() {
                Internal.IntList intList = this.api_;
                if (!intList.isModifiable()) {
                    this.api_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureBattrIsMutable() {
                Internal.IntList intList = this.battr_;
                if (!intList.isModifiable()) {
                    this.battr_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            public static Native getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            private void mergeRequestNative(NativeRequest nativeRequest) {
                nativeRequest.getClass();
                if (this.requestOneofCase_ == 50 && this.requestOneof_ != NativeRequest.getDefaultInstance()) {
                    this.requestOneof_ = ((NativeRequest.b) NativeRequest.newBuilder((NativeRequest) this.requestOneof_).mergeFrom((NativeRequest.b) nativeRequest)).buildPartial();
                } else {
                    this.requestOneof_ = nativeRequest;
                }
                this.requestOneofCase_ = 50;
            }

            public static c newBuilder() {
                return (c) DEFAULT_INSTANCE.createBuilder();
            }

            public static Native parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Native) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Native parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<Native> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void setApi(int i10, APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.setInt(i10, aPIFramework.getNumber());
            }

            private void setBattr(int i10, CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.setInt(i10, creativeAttribute.getNumber());
            }

            private void setRequest(String str) {
                str.getClass();
                this.requestOneofCase_ = 1;
                this.requestOneof_ = str;
            }

            private void setRequestBytes(ByteString byteString) {
                this.requestOneof_ = byteString.toStringUtf8();
                this.requestOneofCase_ = 1;
            }

            private void setRequestNative(NativeRequest nativeRequest) {
                nativeRequest.getClass();
                this.requestOneof_ = nativeRequest;
                this.requestOneofCase_ = 50;
            }

            private void setVer(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.ver_ = str;
            }

            private void setVerBytes(ByteString byteString) {
                this.ver_ = byteString.toStringUtf8();
                this.bitField0_ |= 4;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Native();
                    case 2:
                        return new c();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0005\u0001\u0001\u00012\u0005\u0000\u0002\u0001\u0001ျ\u0000\u0002ဈ\u0002\u0003,\u0004,2ᐼ\u0000", new Object[]{"requestOneof_", "requestOneofCase_", "bitField0_", "ver_", "api_", APIFramework.internalGetVerifier(), "battr_", CreativeAttribute.internalGetVerifier(), NativeRequest.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Native> parser = PARSER;
                        if (parser == null) {
                            synchronized (Native.class) {
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public APIFramework getApi(int i10) {
                APIFramework forNumber = APIFramework.forNumber(this.api_.getInt(i10));
                if (forNumber == null) {
                    return APIFramework.VPAID_1;
                }
                return forNumber;
            }

            public int getApiCount() {
                return this.api_.size();
            }

            public List<APIFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, api_converter_);
            }

            public CreativeAttribute getBattr(int i10) {
                CreativeAttribute forNumber = CreativeAttribute.forNumber(this.battr_.getInt(i10));
                if (forNumber == null) {
                    return CreativeAttribute.AUDIO_AUTO_PLAY;
                }
                return forNumber;
            }

            public int getBattrCount() {
                return this.battr_.size();
            }

            public List<CreativeAttribute> getBattrList() {
                return new Internal.ListAdapter(this.battr_, battr_converter_);
            }

            public String getRequest() {
                if (this.requestOneofCase_ == 1) {
                    return (String) this.requestOneof_;
                }
                return "";
            }

            public ByteString getRequestBytes() {
                String str;
                if (this.requestOneofCase_ == 1) {
                    str = (String) this.requestOneof_;
                } else {
                    str = "";
                }
                return ByteString.copyFromUtf8(str);
            }

            public NativeRequest getRequestNative() {
                if (this.requestOneofCase_ == 50) {
                    return (NativeRequest) this.requestOneof_;
                }
                return NativeRequest.getDefaultInstance();
            }

            public RequestOneofCase getRequestOneofCase() {
                return RequestOneofCase.forNumber(this.requestOneofCase_);
            }

            public String getVer() {
                return this.ver_;
            }

            public ByteString getVerBytes() {
                return ByteString.copyFromUtf8(this.ver_);
            }

            public boolean hasRequest() {
                if (this.requestOneofCase_ == 1) {
                    return true;
                }
                return false;
            }

            public boolean hasRequestNative() {
                if (this.requestOneofCase_ == 50) {
                    return true;
                }
                return false;
            }

            public boolean hasVer() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public static c newBuilder(Native r12) {
                return (c) DEFAULT_INSTANCE.createBuilder(r12);
            }

            public static Native parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Native) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Native parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Native parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Native parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Native parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Native parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Native parseFrom(InputStream inputStream) throws IOException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Native parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Native parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Native parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Native) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Pmp extends GeneratedMessageLite.ExtendableMessage<Pmp, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
            public static final int DEALS_FIELD_NUMBER = 2;
            private static final Pmp DEFAULT_INSTANCE;
            private static volatile Parser<Pmp> PARSER = null;
            public static final int PRIVATE_AUCTION_FIELD_NUMBER = 1;
            private int bitField0_;
            private boolean privateAuction_;
            private byte memoizedIsInitialized = 2;
            private Internal.ProtobufList<Deal> deals_ = GeneratedMessageLite.emptyProtobufList();

            /* loaded from: classes6.dex */
            public static final class Deal extends GeneratedMessageLite.ExtendableMessage<Deal, a> implements b {
                public static final int AT_FIELD_NUMBER = 6;
                public static final int BIDFLOORCUR_FIELD_NUMBER = 3;
                public static final int BIDFLOOR_FIELD_NUMBER = 2;
                private static final Deal DEFAULT_INSTANCE;
                public static final int ID_FIELD_NUMBER = 1;
                private static volatile Parser<Deal> PARSER = null;
                public static final int WADOMAIN_FIELD_NUMBER = 5;
                public static final int WSEAT_FIELD_NUMBER = 4;
                private double bidfloor_;
                private int bitField0_;
                private byte memoizedIsInitialized = 2;
                private String id_ = "";
                private String bidfloorcur_ = "USD";
                private Internal.ProtobufList<String> wseat_ = GeneratedMessageLite.emptyProtobufList();
                private Internal.ProtobufList<String> wadomain_ = GeneratedMessageLite.emptyProtobufList();
                private int at_ = 1;

                /* loaded from: classes6.dex */
                public enum AuctionType implements Internal.EnumLite {
                    FIRST_PRICE(1),
                    SECOND_PRICE(2),
                    FIXED_PRICE(3);
                    
                    public static final int FIRST_PRICE_VALUE = 1;
                    public static final int FIXED_PRICE_VALUE = 3;
                    public static final int SECOND_PRICE_VALUE = 2;
                    private static final Internal.EnumLiteMap<AuctionType> internalValueMap = new a();
                    private final int value;

                    /* loaded from: classes6.dex */
                    class a implements Internal.EnumLiteMap<AuctionType> {
                        a() {
                        }

                        @Override // com.google.protobuf.Internal.EnumLiteMap
                        /* renamed from: a */
                        public AuctionType findValueByNumber(int i10) {
                            return AuctionType.forNumber(i10);
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    /* loaded from: classes6.dex */
                    public static final class b implements Internal.EnumVerifier {

                        /* renamed from: a  reason: collision with root package name */
                        static final Internal.EnumVerifier f31778a = new b();

                        private b() {
                        }

                        @Override // com.google.protobuf.Internal.EnumVerifier
                        public boolean isInRange(int i10) {
                            if (AuctionType.forNumber(i10) != null) {
                                return true;
                            }
                            return false;
                        }
                    }

                    AuctionType(int i10) {
                        this.value = i10;
                    }

                    public static AuctionType forNumber(int i10) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 != 3) {
                                    return null;
                                }
                                return FIXED_PRICE;
                            }
                            return SECOND_PRICE;
                        }
                        return FIRST_PRICE;
                    }

                    public static Internal.EnumLiteMap<AuctionType> internalGetValueMap() {
                        return internalValueMap;
                    }

                    public static Internal.EnumVerifier internalGetVerifier() {
                        return b.f31778a;
                    }

                    @Override // com.google.protobuf.Internal.EnumLite
                    public final int getNumber() {
                        return this.value;
                    }

                    @Deprecated
                    public static AuctionType valueOf(int i10) {
                        return forNumber(i10);
                    }
                }

                /* loaded from: classes6.dex */
                public static final class a extends GeneratedMessageLite.ExtendableBuilder<Deal, a> implements b {
                    private a() {
                        super(Deal.DEFAULT_INSTANCE);
                    }
                }

                static {
                    Deal deal = new Deal();
                    DEFAULT_INSTANCE = deal;
                    GeneratedMessageLite.registerDefaultInstance(Deal.class, deal);
                }

                private Deal() {
                }

                private void addAllWadomain(Iterable<String> iterable) {
                    ensureWadomainIsMutable();
                    AbstractMessageLite.addAll((Iterable) iterable, (List) this.wadomain_);
                }

                private void addAllWseat(Iterable<String> iterable) {
                    ensureWseatIsMutable();
                    AbstractMessageLite.addAll((Iterable) iterable, (List) this.wseat_);
                }

                private void addWadomain(String str) {
                    str.getClass();
                    ensureWadomainIsMutable();
                    this.wadomain_.add(str);
                }

                private void addWadomainBytes(ByteString byteString) {
                    ensureWadomainIsMutable();
                    this.wadomain_.add(byteString.toStringUtf8());
                }

                private void addWseat(String str) {
                    str.getClass();
                    ensureWseatIsMutable();
                    this.wseat_.add(str);
                }

                private void addWseatBytes(ByteString byteString) {
                    ensureWseatIsMutable();
                    this.wseat_.add(byteString.toStringUtf8());
                }

                private void clearAt() {
                    this.bitField0_ &= -9;
                    this.at_ = 1;
                }

                private void clearBidfloor() {
                    this.bitField0_ &= -3;
                    this.bidfloor_ = 0.0d;
                }

                private void clearBidfloorcur() {
                    this.bitField0_ &= -5;
                    this.bidfloorcur_ = getDefaultInstance().getBidfloorcur();
                }

                private void clearId() {
                    this.bitField0_ &= -2;
                    this.id_ = getDefaultInstance().getId();
                }

                private void clearWadomain() {
                    this.wadomain_ = GeneratedMessageLite.emptyProtobufList();
                }

                private void clearWseat() {
                    this.wseat_ = GeneratedMessageLite.emptyProtobufList();
                }

                private void ensureWadomainIsMutable() {
                    Internal.ProtobufList<String> protobufList = this.wadomain_;
                    if (!protobufList.isModifiable()) {
                        this.wadomain_ = GeneratedMessageLite.mutableCopy(protobufList);
                    }
                }

                private void ensureWseatIsMutable() {
                    Internal.ProtobufList<String> protobufList = this.wseat_;
                    if (!protobufList.isModifiable()) {
                        this.wseat_ = GeneratedMessageLite.mutableCopy(protobufList);
                    }
                }

                public static Deal getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static a newBuilder() {
                    return (a) DEFAULT_INSTANCE.createBuilder();
                }

                public static Deal parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Deal) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Deal parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                }

                public static Parser<Deal> parser() {
                    return DEFAULT_INSTANCE.getParserForType();
                }

                private void setAt(AuctionType auctionType) {
                    this.at_ = auctionType.getNumber();
                    this.bitField0_ |= 8;
                }

                private void setBidfloor(double d10) {
                    this.bitField0_ |= 2;
                    this.bidfloor_ = d10;
                }

                private void setBidfloorcur(String str) {
                    str.getClass();
                    this.bitField0_ |= 4;
                    this.bidfloorcur_ = str;
                }

                private void setBidfloorcurBytes(ByteString byteString) {
                    this.bidfloorcur_ = byteString.toStringUtf8();
                    this.bitField0_ |= 4;
                }

                private void setId(String str) {
                    str.getClass();
                    this.bitField0_ |= 1;
                    this.id_ = str;
                }

                private void setIdBytes(ByteString byteString) {
                    this.id_ = byteString.toStringUtf8();
                    this.bitField0_ |= 1;
                }

                private void setWadomain(int i10, String str) {
                    str.getClass();
                    ensureWadomainIsMutable();
                    this.wadomain_.set(i10, str);
                }

                private void setWseat(int i10, String str) {
                    str.getClass();
                    ensureWseatIsMutable();
                    this.wseat_.set(i10, str);
                }

                @Override // com.google.protobuf.GeneratedMessageLite
                protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                    int i10;
                    switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                        case 1:
                            return new Deal();
                        case 2:
                            return new a();
                        case 3:
                            return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0001\u0001ᔈ\u0000\u0002က\u0001\u0003ဈ\u0002\u0004\u001a\u0005\u001a\u0006ဌ\u0003", new Object[]{"bitField0_", "id_", "bidfloor_", "bidfloorcur_", "wseat_", "wadomain_", "at_", AuctionType.internalGetVerifier()});
                        case 4:
                            return DEFAULT_INSTANCE;
                        case 5:
                            Parser<Deal> parser = PARSER;
                            if (parser == null) {
                                synchronized (Deal.class) {
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
                            return Byte.valueOf(this.memoizedIsInitialized);
                        case 7:
                            if (obj == null) {
                                i10 = 0;
                            } else {
                                i10 = 1;
                            }
                            this.memoizedIsInitialized = (byte) i10;
                            return null;
                        default:
                            throw new UnsupportedOperationException();
                    }
                }

                public AuctionType getAt() {
                    AuctionType forNumber = AuctionType.forNumber(this.at_);
                    if (forNumber == null) {
                        return AuctionType.FIRST_PRICE;
                    }
                    return forNumber;
                }

                public double getBidfloor() {
                    return this.bidfloor_;
                }

                public String getBidfloorcur() {
                    return this.bidfloorcur_;
                }

                public ByteString getBidfloorcurBytes() {
                    return ByteString.copyFromUtf8(this.bidfloorcur_);
                }

                public String getId() {
                    return this.id_;
                }

                public ByteString getIdBytes() {
                    return ByteString.copyFromUtf8(this.id_);
                }

                public String getWadomain(int i10) {
                    return this.wadomain_.get(i10);
                }

                public ByteString getWadomainBytes(int i10) {
                    return ByteString.copyFromUtf8(this.wadomain_.get(i10));
                }

                public int getWadomainCount() {
                    return this.wadomain_.size();
                }

                public List<String> getWadomainList() {
                    return this.wadomain_;
                }

                public String getWseat(int i10) {
                    return this.wseat_.get(i10);
                }

                public ByteString getWseatBytes(int i10) {
                    return ByteString.copyFromUtf8(this.wseat_.get(i10));
                }

                public int getWseatCount() {
                    return this.wseat_.size();
                }

                public List<String> getWseatList() {
                    return this.wseat_;
                }

                public boolean hasAt() {
                    if ((this.bitField0_ & 8) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasBidfloor() {
                    if ((this.bitField0_ & 2) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean hasBidfloorcur() {
                    if ((this.bitField0_ & 4) != 0) {
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

                public static a newBuilder(Deal deal) {
                    return (a) DEFAULT_INSTANCE.createBuilder(deal);
                }

                public static Deal parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Deal) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Deal parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                }

                public static Deal parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                }

                public static Deal parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                }

                public static Deal parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                }

                public static Deal parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                }

                public static Deal parseFrom(InputStream inputStream) throws IOException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Deal parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Deal parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                }

                public static Deal parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Deal) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                }
            }

            /* loaded from: classes6.dex */
            public static final class a extends GeneratedMessageLite.ExtendableBuilder<Pmp, a> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                private a() {
                    super(Pmp.DEFAULT_INSTANCE);
                }
            }

            /* loaded from: classes6.dex */
            public interface b extends GeneratedMessageLite.ExtendableMessageOrBuilder<Deal, Deal.a> {
            }

            static {
                Pmp pmp = new Pmp();
                DEFAULT_INSTANCE = pmp;
                GeneratedMessageLite.registerDefaultInstance(Pmp.class, pmp);
            }

            private Pmp() {
            }

            private void addAllDeals(Iterable<? extends Deal> iterable) {
                ensureDealsIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.deals_);
            }

            private void addDeals(Deal deal) {
                deal.getClass();
                ensureDealsIsMutable();
                this.deals_.add(deal);
            }

            private void clearDeals() {
                this.deals_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearPrivateAuction() {
                this.bitField0_ &= -2;
                this.privateAuction_ = false;
            }

            private void ensureDealsIsMutable() {
                Internal.ProtobufList<Deal> protobufList = this.deals_;
                if (!protobufList.isModifiable()) {
                    this.deals_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            public static Pmp getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static a newBuilder() {
                return (a) DEFAULT_INSTANCE.createBuilder();
            }

            public static Pmp parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Pmp) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Pmp parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<Pmp> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void removeDeals(int i10) {
                ensureDealsIsMutable();
                this.deals_.remove(i10);
            }

            private void setDeals(int i10, Deal deal) {
                deal.getClass();
                ensureDealsIsMutable();
                this.deals_.set(i10, deal);
            }

            private void setPrivateAuction(boolean z10) {
                this.bitField0_ |= 1;
                this.privateAuction_ = z10;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Pmp();
                    case 2:
                        return new a();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0001\u0001ဇ\u0000\u0002Л", new Object[]{"bitField0_", "privateAuction_", "deals_", Deal.class});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Pmp> parser = PARSER;
                        if (parser == null) {
                            synchronized (Pmp.class) {
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public Deal getDeals(int i10) {
                return this.deals_.get(i10);
            }

            public int getDealsCount() {
                return this.deals_.size();
            }

            public List<Deal> getDealsList() {
                return this.deals_;
            }

            public b getDealsOrBuilder(int i10) {
                return this.deals_.get(i10);
            }

            public List<? extends b> getDealsOrBuilderList() {
                return this.deals_;
            }

            public boolean getPrivateAuction() {
                return this.privateAuction_;
            }

            public boolean hasPrivateAuction() {
                if ((this.bitField0_ & 1) != 0) {
                    return true;
                }
                return false;
            }

            public static a newBuilder(Pmp pmp) {
                return (a) DEFAULT_INSTANCE.createBuilder(pmp);
            }

            public static Pmp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Pmp) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Pmp parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Pmp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            private void addDeals(int i10, Deal deal) {
                deal.getClass();
                ensureDealsIsMutable();
                this.deals_.add(i10, deal);
            }

            public static Pmp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Pmp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Pmp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Pmp parseFrom(InputStream inputStream) throws IOException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Pmp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Pmp parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Pmp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Pmp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public enum PodSequence implements Internal.EnumLite {
            POD_SEQUENCE_ANY(0),
            POD_SEQUENCE_LAST(-1),
            POD_SEQUENCE_FIRST(1);
            
            public static final int POD_SEQUENCE_ANY_VALUE = 0;
            public static final int POD_SEQUENCE_FIRST_VALUE = 1;
            public static final int POD_SEQUENCE_LAST_VALUE = -1;
            private static final Internal.EnumLiteMap<PodSequence> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<PodSequence> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public PodSequence findValueByNumber(int i10) {
                    return PodSequence.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31779a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (PodSequence.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            PodSequence(int i10) {
                this.value = i10;
            }

            public static PodSequence forNumber(int i10) {
                if (i10 != -1) {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            return null;
                        }
                        return POD_SEQUENCE_FIRST;
                    }
                    return POD_SEQUENCE_ANY;
                }
                return POD_SEQUENCE_LAST;
            }

            public static Internal.EnumLiteMap<PodSequence> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31779a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static PodSequence valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public enum Protocol implements Internal.EnumLite {
            VAST_1_0(1),
            VAST_2_0(2),
            VAST_3_0(3),
            VAST_1_0_WRAPPER(4),
            VAST_2_0_WRAPPER(5),
            VAST_3_0_WRAPPER(6),
            VAST_4_0(7),
            VAST_4_0_WRAPPER(8),
            DAAST_1_0(9),
            DAAST_1_0_WRAPPER(10),
            VAST_4_1(11),
            VAST_4_1_WRAPPER(12),
            VAST_4_2(13),
            VAST_4_2_WRAPPER(14);
            
            public static final int DAAST_1_0_VALUE = 9;
            public static final int DAAST_1_0_WRAPPER_VALUE = 10;
            public static final int VAST_1_0_VALUE = 1;
            public static final int VAST_1_0_WRAPPER_VALUE = 4;
            public static final int VAST_2_0_VALUE = 2;
            public static final int VAST_2_0_WRAPPER_VALUE = 5;
            public static final int VAST_3_0_VALUE = 3;
            public static final int VAST_3_0_WRAPPER_VALUE = 6;
            public static final int VAST_4_0_VALUE = 7;
            public static final int VAST_4_0_WRAPPER_VALUE = 8;
            public static final int VAST_4_1_VALUE = 11;
            public static final int VAST_4_1_WRAPPER_VALUE = 12;
            public static final int VAST_4_2_VALUE = 13;
            public static final int VAST_4_2_WRAPPER_VALUE = 14;
            private static final Internal.EnumLiteMap<Protocol> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<Protocol> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public Protocol findValueByNumber(int i10) {
                    return Protocol.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31780a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (Protocol.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            Protocol(int i10) {
                this.value = i10;
            }

            public static Protocol forNumber(int i10) {
                switch (i10) {
                    case 1:
                        return VAST_1_0;
                    case 2:
                        return VAST_2_0;
                    case 3:
                        return VAST_3_0;
                    case 4:
                        return VAST_1_0_WRAPPER;
                    case 5:
                        return VAST_2_0_WRAPPER;
                    case 6:
                        return VAST_3_0_WRAPPER;
                    case 7:
                        return VAST_4_0;
                    case 8:
                        return VAST_4_0_WRAPPER;
                    case 9:
                        return DAAST_1_0;
                    case 10:
                        return DAAST_1_0_WRAPPER;
                    case 11:
                        return VAST_4_1;
                    case 12:
                        return VAST_4_1_WRAPPER;
                    case 13:
                        return VAST_4_2;
                    case 14:
                        return VAST_4_2_WRAPPER;
                    default:
                        return null;
                }
            }

            public static Internal.EnumLiteMap<Protocol> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31780a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static Protocol valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public enum ServerSideAdInsertionType implements Internal.EnumLite {
            SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN(0),
            CLIENT_SIDE_ONLY(1),
            SERVER_SIDE_STITCHED_CLIENT_TRACKER(2),
            SERVER_SIDE_ONLY(3);
            
            public static final int CLIENT_SIDE_ONLY_VALUE = 1;
            public static final int SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN_VALUE = 0;
            public static final int SERVER_SIDE_ONLY_VALUE = 3;
            public static final int SERVER_SIDE_STITCHED_CLIENT_TRACKER_VALUE = 2;
            private static final Internal.EnumLiteMap<ServerSideAdInsertionType> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<ServerSideAdInsertionType> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public ServerSideAdInsertionType findValueByNumber(int i10) {
                    return ServerSideAdInsertionType.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31781a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (ServerSideAdInsertionType.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            ServerSideAdInsertionType(int i10) {
                this.value = i10;
            }

            public static ServerSideAdInsertionType forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                return null;
                            }
                            return SERVER_SIDE_ONLY;
                        }
                        return SERVER_SIDE_STITCHED_CLIENT_TRACKER;
                    }
                    return CLIENT_SIDE_ONLY;
                }
                return SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN;
            }

            public static Internal.EnumLiteMap<ServerSideAdInsertionType> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31781a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ServerSideAdInsertionType valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public enum SlotPositionInPod implements Internal.EnumLite {
            SLOT_POSITION_POD_ANY(0),
            SLOT_POSITION_POD_LAST(-1),
            SLOT_POSITION_POD_FIRST(1),
            SLOT_POSITION_POD_FIRST_OR_LAST(2);
            
            public static final int SLOT_POSITION_POD_ANY_VALUE = 0;
            public static final int SLOT_POSITION_POD_FIRST_OR_LAST_VALUE = 2;
            public static final int SLOT_POSITION_POD_FIRST_VALUE = 1;
            public static final int SLOT_POSITION_POD_LAST_VALUE = -1;
            private static final Internal.EnumLiteMap<SlotPositionInPod> internalValueMap = new a();
            private final int value;

            /* loaded from: classes6.dex */
            class a implements Internal.EnumLiteMap<SlotPositionInPod> {
                a() {
                }

                @Override // com.google.protobuf.Internal.EnumLiteMap
                /* renamed from: a */
                public SlotPositionInPod findValueByNumber(int i10) {
                    return SlotPositionInPod.forNumber(i10);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes6.dex */
            public static final class b implements Internal.EnumVerifier {

                /* renamed from: a  reason: collision with root package name */
                static final Internal.EnumVerifier f31782a = new b();

                private b() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i10) {
                    if (SlotPositionInPod.forNumber(i10) != null) {
                        return true;
                    }
                    return false;
                }
            }

            SlotPositionInPod(int i10) {
                this.value = i10;
            }

            public static SlotPositionInPod forNumber(int i10) {
                if (i10 != -1) {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                return null;
                            }
                            return SLOT_POSITION_POD_FIRST_OR_LAST;
                        }
                        return SLOT_POSITION_POD_FIRST;
                    }
                    return SLOT_POSITION_POD_ANY;
                }
                return SLOT_POSITION_POD_LAST;
            }

            public static Internal.EnumLiteMap<SlotPositionInPod> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return b.f31782a;
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            @Deprecated
            public static SlotPositionInPod valueOf(int i10) {
                return forNumber(i10);
            }
        }

        /* loaded from: classes6.dex */
        public static final class Video extends GeneratedMessageLite.ExtendableMessage<Video, g> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
            public static final int API_FIELD_NUMBER = 19;
            public static final int BATTR_FIELD_NUMBER = 10;
            public static final int BOXINGALLOWED_FIELD_NUMBER = 14;
            public static final int COMPANIONAD_FIELD_NUMBER = 18;
            public static final int COMPANIONTYPE_FIELD_NUMBER = 20;
            private static final Video DEFAULT_INSTANCE;
            public static final int DELIVERY_FIELD_NUMBER = 16;
            public static final int H_FIELD_NUMBER = 7;
            public static final int LINEARITY_FIELD_NUMBER = 2;
            public static final int MAXBITRATE_FIELD_NUMBER = 13;
            public static final int MAXDURATION_FIELD_NUMBER = 4;
            public static final int MAXEXTENDED_FIELD_NUMBER = 11;
            public static final int MAXSEQ_FIELD_NUMBER = 28;
            public static final int MIMES_FIELD_NUMBER = 1;
            public static final int MINBITRATE_FIELD_NUMBER = 12;
            public static final int MINCPMPERSEC_FIELD_NUMBER = 34;
            public static final int MINDURATION_FIELD_NUMBER = 3;
            private static volatile Parser<Video> PARSER = null;
            public static final int PLACEMENT_FIELD_NUMBER = 26;
            public static final int PLAYBACKEND_FIELD_NUMBER = 27;
            public static final int PLAYBACKMETHOD_FIELD_NUMBER = 15;
            public static final int PODDUR_FIELD_NUMBER = 29;
            public static final int PODID_FIELD_NUMBER = 30;
            public static final int PODSEQ_FIELD_NUMBER = 31;
            public static final int POS_FIELD_NUMBER = 17;
            public static final int PROTOCOLS_FIELD_NUMBER = 21;
            public static final int PROTOCOL_FIELD_NUMBER = 5;
            public static final int RQDDURS_FIELD_NUMBER = 32;
            public static final int SEQUENCE_FIELD_NUMBER = 9;
            public static final int SKIPAFTER_FIELD_NUMBER = 25;
            public static final int SKIPMIN_FIELD_NUMBER = 24;
            public static final int SKIP_FIELD_NUMBER = 23;
            public static final int SLOTINPOD_FIELD_NUMBER = 33;
            public static final int STARTDELAY_FIELD_NUMBER = 8;
            public static final int W_FIELD_NUMBER = 6;
            private int apiMemoizedSerializedSize;
            private int battrMemoizedSerializedSize;
            private int bitField0_;
            private int companiontypeMemoizedSerializedSize;
            private int deliveryMemoizedSerializedSize;
            private int h_;
            private int maxbitrate_;
            private int maxduration_;
            private int maxextended_;
            private int maxseq_;
            private int minbitrate_;
            private double mincpmpersec_;
            private int minduration_;
            private int placement_;
            private int playbackmethodMemoizedSerializedSize;
            private int poddur_;
            private int podseq_;
            private int pos_;
            private int protocolsMemoizedSerializedSize;
            private boolean skip_;
            private int skipafter_;
            private int skipmin_;
            private int slotinpod_;
            private int startdelay_;
            private int w_;
            private static final Internal.ListAdapter.Converter<Integer, Protocol> protocols_converter_ = new a();
            private static final Internal.ListAdapter.Converter<Integer, CreativeAttribute> battr_converter_ = new b();
            private static final Internal.ListAdapter.Converter<Integer, PlaybackMethod> playbackmethod_converter_ = new c();
            private static final Internal.ListAdapter.Converter<Integer, ContentDeliveryMethod> delivery_converter_ = new d();
            private static final Internal.ListAdapter.Converter<Integer, APIFramework> api_converter_ = new e();
            private static final Internal.ListAdapter.Converter<Integer, CompanionType> companiontype_converter_ = new f();
            private int rqddursMemoizedSerializedSize = -1;
            private byte memoizedIsInitialized = 2;
            private Internal.ProtobufList<String> mimes_ = GeneratedMessageLite.emptyProtobufList();
            private Internal.IntList protocols_ = GeneratedMessageLite.emptyIntList();
            private String podid_ = "";
            private Internal.IntList rqddurs_ = GeneratedMessageLite.emptyIntList();
            private int linearity_ = 1;
            private int sequence_ = 1;
            private Internal.IntList battr_ = GeneratedMessageLite.emptyIntList();
            private boolean boxingallowed_ = true;
            private Internal.IntList playbackmethod_ = GeneratedMessageLite.emptyIntList();
            private int playbackend_ = 1;
            private Internal.IntList delivery_ = GeneratedMessageLite.emptyIntList();
            private Internal.ProtobufList<Banner> companionad_ = GeneratedMessageLite.emptyProtobufList();
            private Internal.IntList api_ = GeneratedMessageLite.emptyIntList();
            private Internal.IntList companiontype_ = GeneratedMessageLite.emptyIntList();
            private int protocol_ = 1;

            /* loaded from: classes6.dex */
            public enum PlaybackCessationMode implements Internal.EnumLite {
                COMPLETION_OR_USER(1),
                LEAVING_OR_USER(2),
                LEAVING_CONTINUES_OR_USER(3);
                
                public static final int COMPLETION_OR_USER_VALUE = 1;
                public static final int LEAVING_CONTINUES_OR_USER_VALUE = 3;
                public static final int LEAVING_OR_USER_VALUE = 2;
                private static final Internal.EnumLiteMap<PlaybackCessationMode> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<PlaybackCessationMode> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public PlaybackCessationMode findValueByNumber(int i10) {
                        return PlaybackCessationMode.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31783a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (PlaybackCessationMode.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                PlaybackCessationMode(int i10) {
                    this.value = i10;
                }

                public static PlaybackCessationMode forNumber(int i10) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                return null;
                            }
                            return LEAVING_CONTINUES_OR_USER;
                        }
                        return LEAVING_OR_USER;
                    }
                    return COMPLETION_OR_USER;
                }

                public static Internal.EnumLiteMap<PlaybackCessationMode> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31783a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static PlaybackCessationMode valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public enum PlaybackMethod implements Internal.EnumLite {
                AUTO_PLAY_SOUND_ON(1),
                AUTO_PLAY_SOUND_OFF(2),
                CLICK_TO_PLAY(3),
                MOUSE_OVER(4),
                ENTER_SOUND_ON(5),
                ENTER_SOUND_OFF(6),
                CONTINUOUS(7);
                
                public static final int AUTO_PLAY_SOUND_OFF_VALUE = 2;
                public static final int AUTO_PLAY_SOUND_ON_VALUE = 1;
                public static final int CLICK_TO_PLAY_VALUE = 3;
                public static final int CONTINUOUS_VALUE = 7;
                public static final int ENTER_SOUND_OFF_VALUE = 6;
                public static final int ENTER_SOUND_ON_VALUE = 5;
                public static final int MOUSE_OVER_VALUE = 4;
                private static final Internal.EnumLiteMap<PlaybackMethod> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<PlaybackMethod> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public PlaybackMethod findValueByNumber(int i10) {
                        return PlaybackMethod.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31784a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (PlaybackMethod.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                PlaybackMethod(int i10) {
                    this.value = i10;
                }

                public static PlaybackMethod forNumber(int i10) {
                    switch (i10) {
                        case 1:
                            return AUTO_PLAY_SOUND_ON;
                        case 2:
                            return AUTO_PLAY_SOUND_OFF;
                        case 3:
                            return CLICK_TO_PLAY;
                        case 4:
                            return MOUSE_OVER;
                        case 5:
                            return ENTER_SOUND_ON;
                        case 6:
                            return ENTER_SOUND_OFF;
                        case 7:
                            return CONTINUOUS;
                        default:
                            return null;
                    }
                }

                public static Internal.EnumLiteMap<PlaybackMethod> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31784a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static PlaybackMethod valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public enum VideoLinearity implements Internal.EnumLite {
                LINEAR(1),
                NON_LINEAR(2);
                
                public static final int LINEAR_VALUE = 1;
                public static final int NON_LINEAR_VALUE = 2;
                private static final Internal.EnumLiteMap<VideoLinearity> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<VideoLinearity> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public VideoLinearity findValueByNumber(int i10) {
                        return VideoLinearity.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31785a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (VideoLinearity.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                VideoLinearity(int i10) {
                    this.value = i10;
                }

                public static VideoLinearity forNumber(int i10) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return NON_LINEAR;
                    }
                    return LINEAR;
                }

                public static Internal.EnumLiteMap<VideoLinearity> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31785a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static VideoLinearity valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            public enum VideoPlacementType implements Internal.EnumLite {
                UNDEFINED_VIDEO_PLACEMENT(0),
                IN_STREAM_PLACEMENT(1),
                IN_BANNER_PLACEMENT(2),
                IN_ARTICLE_PLACEMENT(3),
                IN_FEED_PLACEMENT(4),
                FLOATING_PLACEMENT(5);
                
                public static final int FLOATING_PLACEMENT_VALUE = 5;
                public static final int IN_ARTICLE_PLACEMENT_VALUE = 3;
                public static final int IN_BANNER_PLACEMENT_VALUE = 2;
                public static final int IN_FEED_PLACEMENT_VALUE = 4;
                public static final int IN_STREAM_PLACEMENT_VALUE = 1;
                public static final int UNDEFINED_VIDEO_PLACEMENT_VALUE = 0;
                private static final Internal.EnumLiteMap<VideoPlacementType> internalValueMap = new a();
                private final int value;

                /* loaded from: classes6.dex */
                class a implements Internal.EnumLiteMap<VideoPlacementType> {
                    a() {
                    }

                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    /* renamed from: a */
                    public VideoPlacementType findValueByNumber(int i10) {
                        return VideoPlacementType.forNumber(i10);
                    }
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* loaded from: classes6.dex */
                public static final class b implements Internal.EnumVerifier {

                    /* renamed from: a  reason: collision with root package name */
                    static final Internal.EnumVerifier f31786a = new b();

                    private b() {
                    }

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i10) {
                        if (VideoPlacementType.forNumber(i10) != null) {
                            return true;
                        }
                        return false;
                    }
                }

                VideoPlacementType(int i10) {
                    this.value = i10;
                }

                public static VideoPlacementType forNumber(int i10) {
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 != 3) {
                                    if (i10 != 4) {
                                        if (i10 != 5) {
                                            return null;
                                        }
                                        return FLOATING_PLACEMENT;
                                    }
                                    return IN_FEED_PLACEMENT;
                                }
                                return IN_ARTICLE_PLACEMENT;
                            }
                            return IN_BANNER_PLACEMENT;
                        }
                        return IN_STREAM_PLACEMENT;
                    }
                    return UNDEFINED_VIDEO_PLACEMENT;
                }

                public static Internal.EnumLiteMap<VideoPlacementType> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return b.f31786a;
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    return this.value;
                }

                @Deprecated
                public static VideoPlacementType valueOf(int i10) {
                    return forNumber(i10);
                }
            }

            /* loaded from: classes6.dex */
            class a implements Internal.ListAdapter.Converter<Integer, Protocol> {
                a() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public Protocol convert(Integer num) {
                    Protocol forNumber = Protocol.forNumber(num.intValue());
                    if (forNumber == null) {
                        return Protocol.VAST_1_0;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class b implements Internal.ListAdapter.Converter<Integer, CreativeAttribute> {
                b() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public CreativeAttribute convert(Integer num) {
                    CreativeAttribute forNumber = CreativeAttribute.forNumber(num.intValue());
                    if (forNumber == null) {
                        return CreativeAttribute.AUDIO_AUTO_PLAY;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class c implements Internal.ListAdapter.Converter<Integer, PlaybackMethod> {
                c() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public PlaybackMethod convert(Integer num) {
                    PlaybackMethod forNumber = PlaybackMethod.forNumber(num.intValue());
                    if (forNumber == null) {
                        return PlaybackMethod.AUTO_PLAY_SOUND_ON;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class d implements Internal.ListAdapter.Converter<Integer, ContentDeliveryMethod> {
                d() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public ContentDeliveryMethod convert(Integer num) {
                    ContentDeliveryMethod forNumber = ContentDeliveryMethod.forNumber(num.intValue());
                    if (forNumber == null) {
                        return ContentDeliveryMethod.STREAMING;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class e implements Internal.ListAdapter.Converter<Integer, APIFramework> {
                e() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public APIFramework convert(Integer num) {
                    APIFramework forNumber = APIFramework.forNumber(num.intValue());
                    if (forNumber == null) {
                        return APIFramework.VPAID_1;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            class f implements Internal.ListAdapter.Converter<Integer, CompanionType> {
                f() {
                }

                @Override // com.google.protobuf.Internal.ListAdapter.Converter
                /* renamed from: a */
                public CompanionType convert(Integer num) {
                    CompanionType forNumber = CompanionType.forNumber(num.intValue());
                    if (forNumber == null) {
                        return CompanionType.STATIC;
                    }
                    return forNumber;
                }
            }

            /* loaded from: classes6.dex */
            public static final class g extends GeneratedMessageLite.ExtendableBuilder<Video, g> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
                private g() {
                    super(Video.DEFAULT_INSTANCE);
                }
            }

            static {
                Video video = new Video();
                DEFAULT_INSTANCE = video;
                GeneratedMessageLite.registerDefaultInstance(Video.class, video);
            }

            private Video() {
            }

            private void addAllApi(Iterable<? extends APIFramework> iterable) {
                ensureApiIsMutable();
                for (APIFramework aPIFramework : iterable) {
                    this.api_.addInt(aPIFramework.getNumber());
                }
            }

            private void addAllBattr(Iterable<? extends CreativeAttribute> iterable) {
                ensureBattrIsMutable();
                for (CreativeAttribute creativeAttribute : iterable) {
                    this.battr_.addInt(creativeAttribute.getNumber());
                }
            }

            private void addAllCompanionad(Iterable<? extends Banner> iterable) {
                ensureCompanionadIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.companionad_);
            }

            private void addAllCompaniontype(Iterable<? extends CompanionType> iterable) {
                ensureCompaniontypeIsMutable();
                for (CompanionType companionType : iterable) {
                    this.companiontype_.addInt(companionType.getNumber());
                }
            }

            private void addAllDelivery(Iterable<? extends ContentDeliveryMethod> iterable) {
                ensureDeliveryIsMutable();
                for (ContentDeliveryMethod contentDeliveryMethod : iterable) {
                    this.delivery_.addInt(contentDeliveryMethod.getNumber());
                }
            }

            private void addAllMimes(Iterable<String> iterable) {
                ensureMimesIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.mimes_);
            }

            private void addAllPlaybackmethod(Iterable<? extends PlaybackMethod> iterable) {
                ensurePlaybackmethodIsMutable();
                for (PlaybackMethod playbackMethod : iterable) {
                    this.playbackmethod_.addInt(playbackMethod.getNumber());
                }
            }

            private void addAllProtocols(Iterable<? extends Protocol> iterable) {
                ensureProtocolsIsMutable();
                for (Protocol protocol : iterable) {
                    this.protocols_.addInt(protocol.getNumber());
                }
            }

            private void addAllRqddurs(Iterable<? extends Integer> iterable) {
                ensureRqddursIsMutable();
                AbstractMessageLite.addAll((Iterable) iterable, (List) this.rqddurs_);
            }

            private void addApi(APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.addInt(aPIFramework.getNumber());
            }

            private void addBattr(CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.addInt(creativeAttribute.getNumber());
            }

            private void addCompanionad(Banner banner) {
                banner.getClass();
                ensureCompanionadIsMutable();
                this.companionad_.add(banner);
            }

            private void addCompaniontype(CompanionType companionType) {
                companionType.getClass();
                ensureCompaniontypeIsMutable();
                this.companiontype_.addInt(companionType.getNumber());
            }

            private void addDelivery(ContentDeliveryMethod contentDeliveryMethod) {
                contentDeliveryMethod.getClass();
                ensureDeliveryIsMutable();
                this.delivery_.addInt(contentDeliveryMethod.getNumber());
            }

            private void addMimes(String str) {
                str.getClass();
                ensureMimesIsMutable();
                this.mimes_.add(str);
            }

            private void addMimesBytes(ByteString byteString) {
                ensureMimesIsMutable();
                this.mimes_.add(byteString.toStringUtf8());
            }

            private void addPlaybackmethod(PlaybackMethod playbackMethod) {
                playbackMethod.getClass();
                ensurePlaybackmethodIsMutable();
                this.playbackmethod_.addInt(playbackMethod.getNumber());
            }

            private void addProtocols(Protocol protocol) {
                protocol.getClass();
                ensureProtocolsIsMutable();
                this.protocols_.addInt(protocol.getNumber());
            }

            private void addRqddurs(int i10) {
                ensureRqddursIsMutable();
                this.rqddurs_.addInt(i10);
            }

            private void clearApi() {
                this.api_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearBattr() {
                this.battr_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearBoxingallowed() {
                this.bitField0_ &= -1048577;
                this.boxingallowed_ = true;
            }

            private void clearCompanionad() {
                this.companionad_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearCompaniontype() {
                this.companiontype_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearDelivery() {
                this.delivery_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearH() {
                this.bitField0_ &= -65;
                this.h_ = 0;
            }

            private void clearLinearity() {
                this.bitField0_ &= VideoEventOnePlay.EXIT_CODE_BEFORE_SURFACE_NOT_SET;
                this.linearity_ = 1;
            }

            private void clearMaxbitrate() {
                this.bitField0_ &= -524289;
                this.maxbitrate_ = 0;
            }

            private void clearMaxduration() {
                this.bitField0_ &= -3;
                this.maxduration_ = 0;
            }

            private void clearMaxextended() {
                this.bitField0_ &= -131073;
                this.maxextended_ = 0;
            }

            private void clearMaxseq() {
                this.bitField0_ &= -9;
                this.maxseq_ = 0;
            }

            private void clearMimes() {
                this.mimes_ = GeneratedMessageLite.emptyProtobufList();
            }

            private void clearMinbitrate() {
                this.bitField0_ &= -262145;
                this.minbitrate_ = 0;
            }

            private void clearMincpmpersec() {
                this.bitField0_ &= -65537;
                this.mincpmpersec_ = 0.0d;
            }

            private void clearMinduration() {
                this.bitField0_ &= -2;
                this.minduration_ = 0;
            }

            private void clearPlacement() {
                this.bitField0_ &= -513;
                this.placement_ = 0;
            }

            private void clearPlaybackend() {
                this.bitField0_ &= -2097153;
                this.playbackend_ = 1;
            }

            private void clearPlaybackmethod() {
                this.playbackmethod_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearPoddur() {
                this.bitField0_ &= -17;
                this.poddur_ = 0;
            }

            private void clearPodid() {
                this.bitField0_ &= -129;
                this.podid_ = getDefaultInstance().getPodid();
            }

            private void clearPodseq() {
                this.bitField0_ &= -257;
                this.podseq_ = 0;
            }

            private void clearPos() {
                this.bitField0_ &= -4194305;
                this.pos_ = 0;
            }

            private void clearProtocol() {
                this.bitField0_ &= -8388609;
                this.protocol_ = 1;
            }

            private void clearProtocols() {
                this.protocols_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearRqddurs() {
                this.rqddurs_ = GeneratedMessageLite.emptyIntList();
            }

            private void clearSequence() {
                this.bitField0_ &= -16385;
                this.sequence_ = 1;
            }

            private void clearSkip() {
                this.bitField0_ &= -2049;
                this.skip_ = false;
            }

            private void clearSkipafter() {
                this.bitField0_ &= -8193;
                this.skipafter_ = 0;
            }

            private void clearSkipmin() {
                this.bitField0_ &= -4097;
                this.skipmin_ = 0;
            }

            private void clearSlotinpod() {
                this.bitField0_ &= -32769;
                this.slotinpod_ = 0;
            }

            private void clearStartdelay() {
                this.bitField0_ &= -5;
                this.startdelay_ = 0;
            }

            private void clearW() {
                this.bitField0_ &= -33;
                this.w_ = 0;
            }

            private void ensureApiIsMutable() {
                Internal.IntList intList = this.api_;
                if (!intList.isModifiable()) {
                    this.api_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureBattrIsMutable() {
                Internal.IntList intList = this.battr_;
                if (!intList.isModifiable()) {
                    this.battr_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureCompanionadIsMutable() {
                Internal.ProtobufList<Banner> protobufList = this.companionad_;
                if (!protobufList.isModifiable()) {
                    this.companionad_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            private void ensureCompaniontypeIsMutable() {
                Internal.IntList intList = this.companiontype_;
                if (!intList.isModifiable()) {
                    this.companiontype_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureDeliveryIsMutable() {
                Internal.IntList intList = this.delivery_;
                if (!intList.isModifiable()) {
                    this.delivery_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureMimesIsMutable() {
                Internal.ProtobufList<String> protobufList = this.mimes_;
                if (!protobufList.isModifiable()) {
                    this.mimes_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            private void ensurePlaybackmethodIsMutable() {
                Internal.IntList intList = this.playbackmethod_;
                if (!intList.isModifiable()) {
                    this.playbackmethod_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureProtocolsIsMutable() {
                Internal.IntList intList = this.protocols_;
                if (!intList.isModifiable()) {
                    this.protocols_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            private void ensureRqddursIsMutable() {
                Internal.IntList intList = this.rqddurs_;
                if (!intList.isModifiable()) {
                    this.rqddurs_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            public static Video getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static g newBuilder() {
                return (g) DEFAULT_INSTANCE.createBuilder();
            }

            public static Video parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Video) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Video parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<Video> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void removeCompanionad(int i10) {
                ensureCompanionadIsMutable();
                this.companionad_.remove(i10);
            }

            private void setApi(int i10, APIFramework aPIFramework) {
                aPIFramework.getClass();
                ensureApiIsMutable();
                this.api_.setInt(i10, aPIFramework.getNumber());
            }

            private void setBattr(int i10, CreativeAttribute creativeAttribute) {
                creativeAttribute.getClass();
                ensureBattrIsMutable();
                this.battr_.setInt(i10, creativeAttribute.getNumber());
            }

            private void setBoxingallowed(boolean z10) {
                this.bitField0_ |= 1048576;
                this.boxingallowed_ = z10;
            }

            private void setCompanionad(int i10, Banner banner) {
                banner.getClass();
                ensureCompanionadIsMutable();
                this.companionad_.set(i10, banner);
            }

            private void setCompaniontype(int i10, CompanionType companionType) {
                companionType.getClass();
                ensureCompaniontypeIsMutable();
                this.companiontype_.setInt(i10, companionType.getNumber());
            }

            private void setDelivery(int i10, ContentDeliveryMethod contentDeliveryMethod) {
                contentDeliveryMethod.getClass();
                ensureDeliveryIsMutable();
                this.delivery_.setInt(i10, contentDeliveryMethod.getNumber());
            }

            private void setH(int i10) {
                this.bitField0_ |= 64;
                this.h_ = i10;
            }

            private void setLinearity(VideoLinearity videoLinearity) {
                this.linearity_ = videoLinearity.getNumber();
                this.bitField0_ |= 1024;
            }

            private void setMaxbitrate(int i10) {
                this.bitField0_ |= 524288;
                this.maxbitrate_ = i10;
            }

            private void setMaxduration(int i10) {
                this.bitField0_ |= 2;
                this.maxduration_ = i10;
            }

            private void setMaxextended(int i10) {
                this.bitField0_ |= 131072;
                this.maxextended_ = i10;
            }

            private void setMaxseq(int i10) {
                this.bitField0_ |= 8;
                this.maxseq_ = i10;
            }

            private void setMimes(int i10, String str) {
                str.getClass();
                ensureMimesIsMutable();
                this.mimes_.set(i10, str);
            }

            private void setMinbitrate(int i10) {
                this.bitField0_ |= 262144;
                this.minbitrate_ = i10;
            }

            private void setMincpmpersec(double d10) {
                this.bitField0_ |= 65536;
                this.mincpmpersec_ = d10;
            }

            private void setMinduration(int i10) {
                this.bitField0_ |= 1;
                this.minduration_ = i10;
            }

            private void setPlacement(VideoPlacementType videoPlacementType) {
                this.placement_ = videoPlacementType.getNumber();
                this.bitField0_ |= 512;
            }

            private void setPlaybackend(PlaybackCessationMode playbackCessationMode) {
                this.playbackend_ = playbackCessationMode.getNumber();
                this.bitField0_ |= 2097152;
            }

            private void setPlaybackmethod(int i10, PlaybackMethod playbackMethod) {
                playbackMethod.getClass();
                ensurePlaybackmethodIsMutable();
                this.playbackmethod_.setInt(i10, playbackMethod.getNumber());
            }

            private void setPoddur(int i10) {
                this.bitField0_ |= 16;
                this.poddur_ = i10;
            }

            private void setPodid(String str) {
                str.getClass();
                this.bitField0_ |= 128;
                this.podid_ = str;
            }

            private void setPodidBytes(ByteString byteString) {
                this.podid_ = byteString.toStringUtf8();
                this.bitField0_ |= 128;
            }

            private void setPodseq(PodSequence podSequence) {
                this.podseq_ = podSequence.getNumber();
                this.bitField0_ |= 256;
            }

            private void setPos(AdPosition adPosition) {
                this.pos_ = adPosition.getNumber();
                this.bitField0_ |= 4194304;
            }

            private void setProtocol(Protocol protocol) {
                this.protocol_ = protocol.getNumber();
                this.bitField0_ |= 8388608;
            }

            private void setProtocols(int i10, Protocol protocol) {
                protocol.getClass();
                ensureProtocolsIsMutable();
                this.protocols_.setInt(i10, protocol.getNumber());
            }

            private void setRqddurs(int i10, int i11) {
                ensureRqddursIsMutable();
                this.rqddurs_.setInt(i10, i11);
            }

            private void setSequence(int i10) {
                this.bitField0_ |= 16384;
                this.sequence_ = i10;
            }

            private void setSkip(boolean z10) {
                this.bitField0_ |= 2048;
                this.skip_ = z10;
            }

            private void setSkipafter(int i10) {
                this.bitField0_ |= 8192;
                this.skipafter_ = i10;
            }

            private void setSkipmin(int i10) {
                this.bitField0_ |= 4096;
                this.skipmin_ = i10;
            }

            private void setSlotinpod(SlotPositionInPod slotPositionInPod) {
                this.slotinpod_ = slotPositionInPod.getNumber();
                this.bitField0_ |= 32768;
            }

            private void setStartdelay(int i10) {
                this.bitField0_ |= 4;
                this.startdelay_ = i10;
            }

            private void setW(int i10) {
                this.bitField0_ |= 32;
                this.w_ = i10;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Video();
                    case 2:
                        return new g();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001!\u0000\u0001\u0001\"!\u0000\t\u0001\u0001\u001a\u0002ဌ\n\u0003င\u0000\u0004င\u0001\u0005ဌ\u0017\u0006င\u0005\u0007င\u0006\bင\u0002\tင\u000e\n,\u000bင\u0011\fင\u0012\rင\u0013\u000eဇ\u0014\u000f,\u0010,\u0011ဌ\u0016\u0012Л\u0013,\u0014,\u0015,\u0017ဇ\u000b\u0018င\f\u0019င\r\u001aဌ\t\u001bဌ\u0015\u001cင\u0003\u001dင\u0004\u001eဈ\u0007\u001fဌ\b '!ဌ\u000f\"က\u0010", new Object[]{"bitField0_", "mimes_", "linearity_", VideoLinearity.internalGetVerifier(), "minduration_", "maxduration_", "protocol_", Protocol.internalGetVerifier(), "w_", "h_", "startdelay_", "sequence_", "battr_", CreativeAttribute.internalGetVerifier(), "maxextended_", "minbitrate_", "maxbitrate_", "boxingallowed_", "playbackmethod_", PlaybackMethod.internalGetVerifier(), "delivery_", ContentDeliveryMethod.internalGetVerifier(), "pos_", AdPosition.internalGetVerifier(), "companionad_", Banner.class, "api_", APIFramework.internalGetVerifier(), "companiontype_", CompanionType.internalGetVerifier(), "protocols_", Protocol.internalGetVerifier(), "skip_", "skipmin_", "skipafter_", "placement_", VideoPlacementType.internalGetVerifier(), "playbackend_", PlaybackCessationMode.internalGetVerifier(), "maxseq_", "poddur_", "podid_", "podseq_", PodSequence.internalGetVerifier(), "rqddurs_", "slotinpod_", SlotPositionInPod.internalGetVerifier(), "mincpmpersec_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Video> parser = PARSER;
                        if (parser == null) {
                            synchronized (Video.class) {
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public APIFramework getApi(int i10) {
                APIFramework forNumber = APIFramework.forNumber(this.api_.getInt(i10));
                if (forNumber == null) {
                    return APIFramework.VPAID_1;
                }
                return forNumber;
            }

            public int getApiCount() {
                return this.api_.size();
            }

            public List<APIFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, api_converter_);
            }

            public CreativeAttribute getBattr(int i10) {
                CreativeAttribute forNumber = CreativeAttribute.forNumber(this.battr_.getInt(i10));
                if (forNumber == null) {
                    return CreativeAttribute.AUDIO_AUTO_PLAY;
                }
                return forNumber;
            }

            public int getBattrCount() {
                return this.battr_.size();
            }

            public List<CreativeAttribute> getBattrList() {
                return new Internal.ListAdapter(this.battr_, battr_converter_);
            }

            public boolean getBoxingallowed() {
                return this.boxingallowed_;
            }

            public Banner getCompanionad(int i10) {
                return this.companionad_.get(i10);
            }

            public int getCompanionadCount() {
                return this.companionad_.size();
            }

            public List<Banner> getCompanionadList() {
                return this.companionad_;
            }

            public a getCompanionadOrBuilder(int i10) {
                return this.companionad_.get(i10);
            }

            public List<? extends a> getCompanionadOrBuilderList() {
                return this.companionad_;
            }

            public CompanionType getCompaniontype(int i10) {
                CompanionType forNumber = CompanionType.forNumber(this.companiontype_.getInt(i10));
                if (forNumber == null) {
                    return CompanionType.STATIC;
                }
                return forNumber;
            }

            public int getCompaniontypeCount() {
                return this.companiontype_.size();
            }

            public List<CompanionType> getCompaniontypeList() {
                return new Internal.ListAdapter(this.companiontype_, companiontype_converter_);
            }

            public ContentDeliveryMethod getDelivery(int i10) {
                ContentDeliveryMethod forNumber = ContentDeliveryMethod.forNumber(this.delivery_.getInt(i10));
                if (forNumber == null) {
                    return ContentDeliveryMethod.STREAMING;
                }
                return forNumber;
            }

            public int getDeliveryCount() {
                return this.delivery_.size();
            }

            public List<ContentDeliveryMethod> getDeliveryList() {
                return new Internal.ListAdapter(this.delivery_, delivery_converter_);
            }

            public int getH() {
                return this.h_;
            }

            public VideoLinearity getLinearity() {
                VideoLinearity forNumber = VideoLinearity.forNumber(this.linearity_);
                if (forNumber == null) {
                    return VideoLinearity.LINEAR;
                }
                return forNumber;
            }

            public int getMaxbitrate() {
                return this.maxbitrate_;
            }

            public int getMaxduration() {
                return this.maxduration_;
            }

            public int getMaxextended() {
                return this.maxextended_;
            }

            public int getMaxseq() {
                return this.maxseq_;
            }

            public String getMimes(int i10) {
                return this.mimes_.get(i10);
            }

            public ByteString getMimesBytes(int i10) {
                return ByteString.copyFromUtf8(this.mimes_.get(i10));
            }

            public int getMimesCount() {
                return this.mimes_.size();
            }

            public List<String> getMimesList() {
                return this.mimes_;
            }

            public int getMinbitrate() {
                return this.minbitrate_;
            }

            public double getMincpmpersec() {
                return this.mincpmpersec_;
            }

            public int getMinduration() {
                return this.minduration_;
            }

            public VideoPlacementType getPlacement() {
                VideoPlacementType forNumber = VideoPlacementType.forNumber(this.placement_);
                if (forNumber == null) {
                    return VideoPlacementType.UNDEFINED_VIDEO_PLACEMENT;
                }
                return forNumber;
            }

            public PlaybackCessationMode getPlaybackend() {
                PlaybackCessationMode forNumber = PlaybackCessationMode.forNumber(this.playbackend_);
                if (forNumber == null) {
                    return PlaybackCessationMode.COMPLETION_OR_USER;
                }
                return forNumber;
            }

            public PlaybackMethod getPlaybackmethod(int i10) {
                PlaybackMethod forNumber = PlaybackMethod.forNumber(this.playbackmethod_.getInt(i10));
                if (forNumber == null) {
                    return PlaybackMethod.AUTO_PLAY_SOUND_ON;
                }
                return forNumber;
            }

            public int getPlaybackmethodCount() {
                return this.playbackmethod_.size();
            }

            public List<PlaybackMethod> getPlaybackmethodList() {
                return new Internal.ListAdapter(this.playbackmethod_, playbackmethod_converter_);
            }

            public int getPoddur() {
                return this.poddur_;
            }

            public String getPodid() {
                return this.podid_;
            }

            public ByteString getPodidBytes() {
                return ByteString.copyFromUtf8(this.podid_);
            }

            public PodSequence getPodseq() {
                PodSequence forNumber = PodSequence.forNumber(this.podseq_);
                if (forNumber == null) {
                    return PodSequence.POD_SEQUENCE_ANY;
                }
                return forNumber;
            }

            public AdPosition getPos() {
                AdPosition forNumber = AdPosition.forNumber(this.pos_);
                if (forNumber == null) {
                    return AdPosition.UNKNOWN;
                }
                return forNumber;
            }

            @Deprecated
            public Protocol getProtocol() {
                Protocol forNumber = Protocol.forNumber(this.protocol_);
                if (forNumber == null) {
                    return Protocol.VAST_1_0;
                }
                return forNumber;
            }

            public Protocol getProtocols(int i10) {
                Protocol forNumber = Protocol.forNumber(this.protocols_.getInt(i10));
                if (forNumber == null) {
                    return Protocol.VAST_1_0;
                }
                return forNumber;
            }

            public int getProtocolsCount() {
                return this.protocols_.size();
            }

            public List<Protocol> getProtocolsList() {
                return new Internal.ListAdapter(this.protocols_, protocols_converter_);
            }

            public int getRqddurs(int i10) {
                return this.rqddurs_.getInt(i10);
            }

            public int getRqddursCount() {
                return this.rqddurs_.size();
            }

            public List<Integer> getRqddursList() {
                return this.rqddurs_;
            }

            @Deprecated
            public int getSequence() {
                return this.sequence_;
            }

            public boolean getSkip() {
                return this.skip_;
            }

            public int getSkipafter() {
                return this.skipafter_;
            }

            public int getSkipmin() {
                return this.skipmin_;
            }

            public SlotPositionInPod getSlotinpod() {
                SlotPositionInPod forNumber = SlotPositionInPod.forNumber(this.slotinpod_);
                if (forNumber == null) {
                    return SlotPositionInPod.SLOT_POSITION_POD_ANY;
                }
                return forNumber;
            }

            public int getStartdelay() {
                return this.startdelay_;
            }

            public int getW() {
                return this.w_;
            }

            public boolean hasBoxingallowed() {
                if ((this.bitField0_ & 1048576) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasH() {
                if ((this.bitField0_ & 64) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasLinearity() {
                if ((this.bitField0_ & 1024) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxbitrate() {
                if ((this.bitField0_ & 524288) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxduration() {
                if ((this.bitField0_ & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxextended() {
                if ((this.bitField0_ & 131072) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMaxseq() {
                if ((this.bitField0_ & 8) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMinbitrate() {
                if ((this.bitField0_ & 262144) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMincpmpersec() {
                if ((this.bitField0_ & 65536) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasMinduration() {
                if ((this.bitField0_ & 1) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPlacement() {
                if ((this.bitField0_ & 512) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPlaybackend() {
                if ((this.bitField0_ & 2097152) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPoddur() {
                if ((this.bitField0_ & 16) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPodid() {
                if ((this.bitField0_ & 128) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPodseq() {
                if ((this.bitField0_ & 256) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasPos() {
                if ((this.bitField0_ & 4194304) != 0) {
                    return true;
                }
                return false;
            }

            @Deprecated
            public boolean hasProtocol() {
                if ((this.bitField0_ & 8388608) != 0) {
                    return true;
                }
                return false;
            }

            @Deprecated
            public boolean hasSequence() {
                if ((this.bitField0_ & 16384) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasSkip() {
                if ((this.bitField0_ & 2048) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasSkipafter() {
                if ((this.bitField0_ & 8192) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasSkipmin() {
                if ((this.bitField0_ & 4096) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasSlotinpod() {
                if ((this.bitField0_ & 32768) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasStartdelay() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasW() {
                if ((this.bitField0_ & 32) != 0) {
                    return true;
                }
                return false;
            }

            public static g newBuilder(Video video) {
                return (g) DEFAULT_INSTANCE.createBuilder(video);
            }

            public static Video parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Video) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Video parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Video parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            private void addCompanionad(int i10, Banner banner) {
                banner.getClass();
                ensureCompanionadIsMutable();
                this.companionad_.add(i10, banner);
            }

            public static Video parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Video parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Video parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Video parseFrom(InputStream inputStream) throws IOException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Video parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Video parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Video parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Video) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public interface a extends GeneratedMessageLite.ExtendableMessageOrBuilder<Banner, Banner.e> {
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageLite.ExtendableBuilder<Imp, b> implements GeneratedMessageLite.ExtendableMessageOrBuilder {
            private b() {
                super(Imp.DEFAULT_INSTANCE);
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends GeneratedMessageLite.ExtendableMessageOrBuilder<Metric, Metric.a> {
        }

        static {
            Imp imp = new Imp();
            DEFAULT_INSTANCE = imp;
            GeneratedMessageLite.registerDefaultInstance(Imp.class, imp);
        }

        private Imp() {
        }

        private void addAllIframebuster(Iterable<String> iterable) {
            ensureIframebusterIsMutable();
            AbstractMessageLite.addAll((Iterable) iterable, (List) this.iframebuster_);
        }

        private void addAllMetric(Iterable<? extends Metric> iterable) {
            ensureMetricIsMutable();
            AbstractMessageLite.addAll((Iterable) iterable, (List) this.metric_);
        }

        private void addIframebuster(String str) {
            str.getClass();
            ensureIframebusterIsMutable();
            this.iframebuster_.add(str);
        }

        private void addIframebusterBytes(ByteString byteString) {
            ensureIframebusterIsMutable();
            this.iframebuster_.add(byteString.toStringUtf8());
        }

        private void addMetric(Metric metric) {
            metric.getClass();
            ensureMetricIsMutable();
            this.metric_.add(metric);
        }

        private void clearAudio() {
            this.audio_ = null;
            this.bitField0_ &= -9;
        }

        private void clearBanner() {
            this.banner_ = null;
            this.bitField0_ &= -3;
        }

        private void clearBidfloor() {
            this.bitField0_ &= -257;
            this.bidfloor_ = 0.0d;
        }

        private void clearBidfloorcur() {
            this.bitField0_ &= -513;
            this.bidfloorcur_ = getDefaultInstance().getBidfloorcur();
        }

        private void clearClickbrowser() {
            this.bitField0_ &= VideoEventOnePlay.EXIT_CODE_BEFORE_SURFACE_NOT_SET;
            this.clickbrowser_ = false;
        }

        private void clearDisplaymanager() {
            this.bitField0_ &= -17;
            this.displaymanager_ = getDefaultInstance().getDisplaymanager();
        }

        private void clearDisplaymanagerver() {
            this.bitField0_ &= -33;
            this.displaymanagerver_ = getDefaultInstance().getDisplaymanagerver();
        }

        private void clearExp() {
            this.bitField0_ &= -65537;
            this.exp_ = 0;
        }

        private void clearId() {
            this.bitField0_ &= -2;
            this.id_ = getDefaultInstance().getId();
        }

        private void clearIframebuster() {
            this.iframebuster_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void clearInstl() {
            this.bitField0_ &= -65;
            this.instl_ = false;
        }

        private void clearMetric() {
            this.metric_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void clearNative() {
            this.native_ = null;
            this.bitField0_ &= -32769;
        }

        private void clearPmp() {
            this.pmp_ = null;
            this.bitField0_ &= -16385;
        }

        private void clearRwdd() {
            this.bitField0_ &= -4097;
            this.rwdd_ = false;
        }

        private void clearSecure() {
            this.bitField0_ &= -2049;
            this.secure_ = false;
        }

        private void clearSsai() {
            this.bitField0_ &= -8193;
            this.ssai_ = 0;
        }

        private void clearTagid() {
            this.bitField0_ &= -129;
            this.tagid_ = getDefaultInstance().getTagid();
        }

        private void clearVideo() {
            this.video_ = null;
            this.bitField0_ &= -5;
        }

        private void ensureIframebusterIsMutable() {
            Internal.ProtobufList<String> protobufList = this.iframebuster_;
            if (!protobufList.isModifiable()) {
                this.iframebuster_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureMetricIsMutable() {
            Internal.ProtobufList<Metric> protobufList = this.metric_;
            if (!protobufList.isModifiable()) {
                this.metric_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Imp getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        private void mergeAudio(Audio audio) {
            audio.getClass();
            Audio audio2 = this.audio_;
            if (audio2 != null && audio2 != Audio.getDefaultInstance()) {
                this.audio_ = ((Audio.f) Audio.newBuilder(this.audio_).mergeFrom((Audio.f) audio)).buildPartial();
            } else {
                this.audio_ = audio;
            }
            this.bitField0_ |= 8;
        }

        private void mergeBanner(Banner banner) {
            banner.getClass();
            Banner banner2 = this.banner_;
            if (banner2 != null && banner2 != Banner.getDefaultInstance()) {
                this.banner_ = ((Banner.e) Banner.newBuilder(this.banner_).mergeFrom((Banner.e) banner)).buildPartial();
            } else {
                this.banner_ = banner;
            }
            this.bitField0_ |= 2;
        }

        private void mergeNative(Native r32) {
            r32.getClass();
            Native r02 = this.native_;
            if (r02 != null && r02 != Native.getDefaultInstance()) {
                this.native_ = ((Native.c) Native.newBuilder(this.native_).mergeFrom((Native.c) r32)).buildPartial();
            } else {
                this.native_ = r32;
            }
            this.bitField0_ |= 32768;
        }

        private void mergePmp(Pmp pmp) {
            pmp.getClass();
            Pmp pmp2 = this.pmp_;
            if (pmp2 != null && pmp2 != Pmp.getDefaultInstance()) {
                this.pmp_ = ((Pmp.a) Pmp.newBuilder(this.pmp_).mergeFrom((Pmp.a) pmp)).buildPartial();
            } else {
                this.pmp_ = pmp;
            }
            this.bitField0_ |= 16384;
        }

        private void mergeVideo(Video video) {
            video.getClass();
            Video video2 = this.video_;
            if (video2 != null && video2 != Video.getDefaultInstance()) {
                this.video_ = ((Video.g) Video.newBuilder(this.video_).mergeFrom((Video.g) video)).buildPartial();
            } else {
                this.video_ = video;
            }
            this.bitField0_ |= 4;
        }

        public static b newBuilder() {
            return (b) DEFAULT_INSTANCE.createBuilder();
        }

        public static Imp parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Imp) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Imp parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<Imp> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        private void removeMetric(int i10) {
            ensureMetricIsMutable();
            this.metric_.remove(i10);
        }

        private void setAudio(Audio audio) {
            audio.getClass();
            this.audio_ = audio;
            this.bitField0_ |= 8;
        }

        private void setBanner(Banner banner) {
            banner.getClass();
            this.banner_ = banner;
            this.bitField0_ |= 2;
        }

        private void setBidfloor(double d10) {
            this.bitField0_ |= 256;
            this.bidfloor_ = d10;
        }

        private void setBidfloorcur(String str) {
            str.getClass();
            this.bitField0_ |= 512;
            this.bidfloorcur_ = str;
        }

        private void setBidfloorcurBytes(ByteString byteString) {
            this.bidfloorcur_ = byteString.toStringUtf8();
            this.bitField0_ |= 512;
        }

        private void setClickbrowser(boolean z10) {
            this.bitField0_ |= 1024;
            this.clickbrowser_ = z10;
        }

        private void setDisplaymanager(String str) {
            str.getClass();
            this.bitField0_ |= 16;
            this.displaymanager_ = str;
        }

        private void setDisplaymanagerBytes(ByteString byteString) {
            this.displaymanager_ = byteString.toStringUtf8();
            this.bitField0_ |= 16;
        }

        private void setDisplaymanagerver(String str) {
            str.getClass();
            this.bitField0_ |= 32;
            this.displaymanagerver_ = str;
        }

        private void setDisplaymanagerverBytes(ByteString byteString) {
            this.displaymanagerver_ = byteString.toStringUtf8();
            this.bitField0_ |= 32;
        }

        private void setExp(int i10) {
            this.bitField0_ |= 65536;
            this.exp_ = i10;
        }

        private void setId(String str) {
            str.getClass();
            this.bitField0_ |= 1;
            this.id_ = str;
        }

        private void setIdBytes(ByteString byteString) {
            this.id_ = byteString.toStringUtf8();
            this.bitField0_ |= 1;
        }

        private void setIframebuster(int i10, String str) {
            str.getClass();
            ensureIframebusterIsMutable();
            this.iframebuster_.set(i10, str);
        }

        private void setInstl(boolean z10) {
            this.bitField0_ |= 64;
            this.instl_ = z10;
        }

        private void setMetric(int i10, Metric metric) {
            metric.getClass();
            ensureMetricIsMutable();
            this.metric_.set(i10, metric);
        }

        private void setNative(Native r22) {
            r22.getClass();
            this.native_ = r22;
            this.bitField0_ |= 32768;
        }

        private void setPmp(Pmp pmp) {
            pmp.getClass();
            this.pmp_ = pmp;
            this.bitField0_ |= 16384;
        }

        private void setRwdd(boolean z10) {
            this.bitField0_ |= 4096;
            this.rwdd_ = z10;
        }

        private void setSecure(boolean z10) {
            this.bitField0_ |= 2048;
            this.secure_ = z10;
        }

        private void setSsai(ServerSideAdInsertionType serverSideAdInsertionType) {
            this.ssai_ = serverSideAdInsertionType.getNumber();
            this.bitField0_ |= 8192;
        }

        private void setTagid(String str) {
            str.getClass();
            this.bitField0_ |= 128;
            this.tagid_ = str;
        }

        private void setTagidBytes(ByteString byteString) {
            this.tagid_ = byteString.toStringUtf8();
            this.bitField0_ |= 128;
        }

        private void setVideo(Video video) {
            video.getClass();
            this.video_ = video;
            this.bitField0_ |= 4;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            int i10;
            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                case 1:
                    return new Imp();
                case 2:
                    return new b();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0002\u0007\u0001ᔈ\u0000\u0002ᐉ\u0001\u0003ᐉ\u0002\u0004ဈ\u0004\u0005ဈ\u0005\u0006ဇ\u0006\u0007ဈ\u0007\bက\b\tဈ\t\n\u001a\u000bᐉ\u000e\fဇ\u000b\rᐉ\u000f\u000eင\u0010\u000fᐉ\u0003\u0010ဇ\n\u0011Л\u0012ဇ\f\u0013ဌ\r", new Object[]{"bitField0_", "id_", "banner_", "video_", "displaymanager_", "displaymanagerver_", "instl_", "tagid_", "bidfloor_", "bidfloorcur_", "iframebuster_", "pmp_", "secure_", "native_", "exp_", "audio_", "clickbrowser_", "metric_", Metric.class, "rwdd_", "ssai_", ServerSideAdInsertionType.internalGetVerifier()});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Imp> parser = PARSER;
                    if (parser == null) {
                        synchronized (Imp.class) {
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
                    return Byte.valueOf(this.memoizedIsInitialized);
                case 7:
                    if (obj == null) {
                        i10 = 0;
                    } else {
                        i10 = 1;
                    }
                    this.memoizedIsInitialized = (byte) i10;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public Audio getAudio() {
            Audio audio = this.audio_;
            if (audio == null) {
                return Audio.getDefaultInstance();
            }
            return audio;
        }

        public Banner getBanner() {
            Banner banner = this.banner_;
            if (banner == null) {
                return Banner.getDefaultInstance();
            }
            return banner;
        }

        public double getBidfloor() {
            return this.bidfloor_;
        }

        public String getBidfloorcur() {
            return this.bidfloorcur_;
        }

        public ByteString getBidfloorcurBytes() {
            return ByteString.copyFromUtf8(this.bidfloorcur_);
        }

        public boolean getClickbrowser() {
            return this.clickbrowser_;
        }

        public String getDisplaymanager() {
            return this.displaymanager_;
        }

        public ByteString getDisplaymanagerBytes() {
            return ByteString.copyFromUtf8(this.displaymanager_);
        }

        public String getDisplaymanagerver() {
            return this.displaymanagerver_;
        }

        public ByteString getDisplaymanagerverBytes() {
            return ByteString.copyFromUtf8(this.displaymanagerver_);
        }

        public int getExp() {
            return this.exp_;
        }

        public String getId() {
            return this.id_;
        }

        public ByteString getIdBytes() {
            return ByteString.copyFromUtf8(this.id_);
        }

        public String getIframebuster(int i10) {
            return this.iframebuster_.get(i10);
        }

        public ByteString getIframebusterBytes(int i10) {
            return ByteString.copyFromUtf8(this.iframebuster_.get(i10));
        }

        public int getIframebusterCount() {
            return this.iframebuster_.size();
        }

        public List<String> getIframebusterList() {
            return this.iframebuster_;
        }

        public boolean getInstl() {
            return this.instl_;
        }

        public Metric getMetric(int i10) {
            return this.metric_.get(i10);
        }

        public int getMetricCount() {
            return this.metric_.size();
        }

        public List<Metric> getMetricList() {
            return this.metric_;
        }

        public c getMetricOrBuilder(int i10) {
            return this.metric_.get(i10);
        }

        public List<? extends c> getMetricOrBuilderList() {
            return this.metric_;
        }

        public Native getNative() {
            Native r02 = this.native_;
            if (r02 == null) {
                return Native.getDefaultInstance();
            }
            return r02;
        }

        public Pmp getPmp() {
            Pmp pmp = this.pmp_;
            if (pmp == null) {
                return Pmp.getDefaultInstance();
            }
            return pmp;
        }

        public boolean getRwdd() {
            return this.rwdd_;
        }

        public boolean getSecure() {
            return this.secure_;
        }

        public ServerSideAdInsertionType getSsai() {
            ServerSideAdInsertionType forNumber = ServerSideAdInsertionType.forNumber(this.ssai_);
            if (forNumber == null) {
                return ServerSideAdInsertionType.SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN;
            }
            return forNumber;
        }

        public String getTagid() {
            return this.tagid_;
        }

        public ByteString getTagidBytes() {
            return ByteString.copyFromUtf8(this.tagid_);
        }

        public Video getVideo() {
            Video video = this.video_;
            if (video == null) {
                return Video.getDefaultInstance();
            }
            return video;
        }

        public boolean hasAudio() {
            if ((this.bitField0_ & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasBanner() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasBidfloor() {
            if ((this.bitField0_ & 256) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasBidfloorcur() {
            if ((this.bitField0_ & 512) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasClickbrowser() {
            if ((this.bitField0_ & 1024) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasDisplaymanager() {
            if ((this.bitField0_ & 16) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasDisplaymanagerver() {
            if ((this.bitField0_ & 32) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasExp() {
            if ((this.bitField0_ & 65536) != 0) {
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

        public boolean hasInstl() {
            if ((this.bitField0_ & 64) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasNative() {
            if ((this.bitField0_ & 32768) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasPmp() {
            if ((this.bitField0_ & 16384) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasRwdd() {
            if ((this.bitField0_ & 4096) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasSecure() {
            if ((this.bitField0_ & 2048) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasSsai() {
            if ((this.bitField0_ & 8192) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasTagid() {
            if ((this.bitField0_ & 128) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasVideo() {
            if ((this.bitField0_ & 4) != 0) {
                return true;
            }
            return false;
        }

        public static b newBuilder(Imp imp) {
            return (b) DEFAULT_INSTANCE.createBuilder(imp);
        }

        public static Imp parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Imp) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Imp parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Imp parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        private void addMetric(int i10, Metric metric) {
            metric.getClass();
            ensureMetricIsMutable();
            this.metric_.add(i10, metric);
        }

        public static Imp parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Imp parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Imp parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Imp parseFrom(InputStream inputStream) throws IOException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Imp parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Imp parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Imp parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Imp) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class Regs extends GeneratedMessageLite<Regs, a> implements MessageLiteOrBuilder {
        public static final int COPPA_FIELD_NUMBER = 1;
        private static final Regs DEFAULT_INSTANCE;
        public static final int EXT_FIELD_NUMBER = 2;
        private static volatile Parser<Regs> PARSER;
        private int bitField0_;
        private boolean coppa_;
        private Ext ext_;
        private byte memoizedIsInitialized = 2;

        /* loaded from: classes6.dex */
        public static final class Ext extends GeneratedMessageLite<Ext, a> implements MessageLiteOrBuilder {
            public static final int CCPA_FIELD_NUMBER = 1;
            private static final Ext DEFAULT_INSTANCE;
            public static final int GDPR_FIELD_NUMBER = 2;
            private static volatile Parser<Ext> PARSER = null;
            public static final int US_PRIVACY_FIELD_NUMBER = 3;
            private int bitField0_;
            private int ccpa_;
            private int gdpr_;
            private byte memoizedIsInitialized = 2;
            private String usPrivacy_ = "";

            /* loaded from: classes6.dex */
            public static final class a extends GeneratedMessageLite.Builder<Ext, a> implements MessageLiteOrBuilder {
                private a() {
                    super(Ext.DEFAULT_INSTANCE);
                }
            }

            static {
                Ext ext = new Ext();
                DEFAULT_INSTANCE = ext;
                GeneratedMessageLite.registerDefaultInstance(Ext.class, ext);
            }

            private Ext() {
            }

            private void clearCcpa() {
                this.bitField0_ &= -2;
                this.ccpa_ = 0;
            }

            private void clearGdpr() {
                this.bitField0_ &= -3;
                this.gdpr_ = 0;
            }

            private void clearUsPrivacy() {
                this.bitField0_ &= -5;
                this.usPrivacy_ = getDefaultInstance().getUsPrivacy();
            }

            public static Ext getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Ext parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Ext) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Ext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Parser<Ext> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            private void setCcpa(int i10) {
                this.bitField0_ |= 1;
                this.ccpa_ = i10;
            }

            private void setGdpr(int i10) {
                this.bitField0_ |= 2;
                this.gdpr_ = i10;
            }

            private void setUsPrivacy(String str) {
                str.getClass();
                this.bitField0_ |= 4;
                this.usPrivacy_ = str;
            }

            private void setUsPrivacyBytes(ByteString byteString) {
                this.usPrivacy_ = byteString.toStringUtf8();
                this.bitField0_ |= 4;
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
                int i10;
                switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                    case 1:
                        return new Ext();
                    case 2:
                        return new a();
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001ᔄ\u0000\u0002ᔄ\u0001\u0003ᔈ\u0002", new Object[]{"bitField0_", "ccpa_", "gdpr_", "usPrivacy_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Ext> parser = PARSER;
                        if (parser == null) {
                            synchronized (Ext.class) {
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
                        return Byte.valueOf(this.memoizedIsInitialized);
                    case 7:
                        if (obj == null) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        this.memoizedIsInitialized = (byte) i10;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public int getCcpa() {
                return this.ccpa_;
            }

            public int getGdpr() {
                return this.gdpr_;
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

            public boolean hasGdpr() {
                if ((this.bitField0_ & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasUsPrivacy() {
                if ((this.bitField0_ & 4) != 0) {
                    return true;
                }
                return false;
            }

            public static a newBuilder(Ext ext) {
                return DEFAULT_INSTANCE.createBuilder(ext);
            }

            public static Ext parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Ext) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Ext parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Ext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Ext parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Ext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Ext parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Ext parseFrom(InputStream inputStream) throws IOException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Ext parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Ext parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Ext parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Ext) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }
        }

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<Regs, a> implements MessageLiteOrBuilder {
            private a() {
                super(Regs.DEFAULT_INSTANCE);
            }
        }

        static {
            Regs regs = new Regs();
            DEFAULT_INSTANCE = regs;
            GeneratedMessageLite.registerDefaultInstance(Regs.class, regs);
        }

        private Regs() {
        }

        private void clearCoppa() {
            this.bitField0_ &= -2;
            this.coppa_ = false;
        }

        private void clearExt() {
            this.ext_ = null;
            this.bitField0_ &= -3;
        }

        public static Regs getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        private void mergeExt(Ext ext) {
            ext.getClass();
            Ext ext2 = this.ext_;
            if (ext2 != null && ext2 != Ext.getDefaultInstance()) {
                this.ext_ = Ext.newBuilder(this.ext_).mergeFrom((Ext.a) ext).buildPartial();
            } else {
                this.ext_ = ext;
            }
            this.bitField0_ |= 2;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Regs parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Regs) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Regs parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<Regs> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        private void setCoppa(boolean z10) {
            this.bitField0_ |= 1;
            this.coppa_ = z10;
        }

        private void setExt(Ext ext) {
            ext.getClass();
            this.ext_ = ext;
            this.bitField0_ |= 2;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            int i10;
            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                case 1:
                    return new Regs();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ဇ\u0000\u0002ᐉ\u0001", new Object[]{"bitField0_", "coppa_", "ext_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Regs> parser = PARSER;
                    if (parser == null) {
                        synchronized (Regs.class) {
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
                    return Byte.valueOf(this.memoizedIsInitialized);
                case 7:
                    if (obj == null) {
                        i10 = 0;
                    } else {
                        i10 = 1;
                    }
                    this.memoizedIsInitialized = (byte) i10;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public boolean getCoppa() {
            return this.coppa_;
        }

        public Ext getExt() {
            Ext ext = this.ext_;
            if (ext == null) {
                return Ext.getDefaultInstance();
            }
            return ext;
        }

        public boolean hasCoppa() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasExt() {
            if ((this.bitField0_ & 2) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(Regs regs) {
            return DEFAULT_INSTANCE.createBuilder(regs);
        }

        public static Regs parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Regs) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Regs parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Regs parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Regs parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Regs parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Regs parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Regs parseFrom(InputStream inputStream) throws IOException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Regs parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Regs parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Regs parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Regs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class User extends GeneratedMessageLite<User, a> implements MessageLiteOrBuilder {
        private static final User DEFAULT_INSTANCE;
        public static final int ID_FIELD_NUMBER = 1;
        private static volatile Parser<User> PARSER;
        private int bitField0_;
        private byte memoizedIsInitialized = 2;
        private String id_ = "";

        /* loaded from: classes6.dex */
        public static final class a extends GeneratedMessageLite.Builder<User, a> implements MessageLiteOrBuilder {
            private a() {
                super(User.DEFAULT_INSTANCE);
            }
        }

        static {
            User user = new User();
            DEFAULT_INSTANCE = user;
            GeneratedMessageLite.registerDefaultInstance(User.class, user);
        }

        private User() {
        }

        private void clearId() {
            this.bitField0_ &= -2;
            this.id_ = getDefaultInstance().getId();
        }

        public static User getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static User parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (User) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static User parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Parser<User> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        private void setId(String str) {
            str.getClass();
            this.bitField0_ |= 1;
            this.id_ = str;
        }

        private void setIdBytes(ByteString byteString) {
            this.id_ = byteString.toStringUtf8();
            this.bitField0_ |= 1;
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            int i10;
            switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
                case 1:
                    return new User();
                case 2:
                    return new a();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001ᔈ\u0000", new Object[]{"bitField0_", "id_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<User> parser = PARSER;
                    if (parser == null) {
                        synchronized (User.class) {
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
                    return Byte.valueOf(this.memoizedIsInitialized);
                case 7:
                    if (obj == null) {
                        i10 = 0;
                    } else {
                        i10 = 1;
                    }
                    this.memoizedIsInitialized = (byte) i10;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public String getId() {
            return this.id_;
        }

        public ByteString getIdBytes() {
            return ByteString.copyFromUtf8(this.id_);
        }

        public boolean hasId() {
            if ((this.bitField0_ & 1) != 0) {
                return true;
            }
            return false;
        }

        public static a newBuilder(User user) {
            return DEFAULT_INSTANCE.createBuilder(user);
        }

        public static User parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (User) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static User parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static User parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static User parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static User parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static User parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static User parseFrom(InputStream inputStream) throws IOException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static User parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static User parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static User parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (User) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }
    }

    /* loaded from: classes6.dex */
    public static final class a extends GeneratedMessageLite.Builder<BidRequest$SdkBidRequest, a> implements MessageLiteOrBuilder {
        private a() {
            super(BidRequest$SdkBidRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        BidRequest$SdkBidRequest bidRequest$SdkBidRequest = new BidRequest$SdkBidRequest();
        DEFAULT_INSTANCE = bidRequest$SdkBidRequest;
        GeneratedMessageLite.registerDefaultInstance(BidRequest$SdkBidRequest.class, bidRequest$SdkBidRequest);
    }

    private BidRequest$SdkBidRequest() {
    }

    private void clearApp() {
        this.app_ = null;
        this.bitField0_ &= -2;
    }

    private void clearDevice() {
        this.device_ = null;
        this.bitField0_ &= -3;
    }

    private void clearImp() {
        this.imp_ = null;
        this.bitField0_ &= -5;
    }

    private void clearRegs() {
        this.regs_ = null;
        this.bitField0_ &= -9;
    }

    private void clearTmax() {
        this.bitField0_ &= -17;
        this.tmax_ = 0;
    }

    private void clearUser() {
        this.user_ = null;
        this.bitField0_ &= -33;
    }

    public static BidRequest$SdkBidRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private void mergeApp(App app) {
        app.getClass();
        App app2 = this.app_;
        if (app2 != null && app2 != App.getDefaultInstance()) {
            this.app_ = App.newBuilder(this.app_).mergeFrom((App.a) app).buildPartial();
        } else {
            this.app_ = app;
        }
        this.bitField0_ |= 1;
    }

    private void mergeDevice(Device device) {
        device.getClass();
        Device device2 = this.device_;
        if (device2 != null && device2 != Device.getDefaultInstance()) {
            this.device_ = ((Device.a) Device.newBuilder(this.device_).mergeFrom((Device.a) device)).buildPartial();
        } else {
            this.device_ = device;
        }
        this.bitField0_ |= 2;
    }

    private void mergeImp(Imp imp) {
        imp.getClass();
        Imp imp2 = this.imp_;
        if (imp2 != null && imp2 != Imp.getDefaultInstance()) {
            this.imp_ = ((Imp.b) Imp.newBuilder(this.imp_).mergeFrom((Imp.b) imp)).buildPartial();
        } else {
            this.imp_ = imp;
        }
        this.bitField0_ |= 4;
    }

    private void mergeRegs(Regs regs) {
        regs.getClass();
        Regs regs2 = this.regs_;
        if (regs2 != null && regs2 != Regs.getDefaultInstance()) {
            this.regs_ = Regs.newBuilder(this.regs_).mergeFrom((Regs.a) regs).buildPartial();
        } else {
            this.regs_ = regs;
        }
        this.bitField0_ |= 8;
    }

    private void mergeUser(User user) {
        user.getClass();
        User user2 = this.user_;
        if (user2 != null && user2 != User.getDefaultInstance()) {
            this.user_ = User.newBuilder(this.user_).mergeFrom((User.a) user).buildPartial();
        } else {
            this.user_ = user;
        }
        this.bitField0_ |= 32;
    }

    public static a newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static BidRequest$SdkBidRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BidRequest$SdkBidRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Parser<BidRequest$SdkBidRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    private void setApp(App app) {
        app.getClass();
        this.app_ = app;
        this.bitField0_ |= 1;
    }

    private void setDevice(Device device) {
        device.getClass();
        this.device_ = device;
        this.bitField0_ |= 2;
    }

    private void setImp(Imp imp) {
        imp.getClass();
        this.imp_ = imp;
        this.bitField0_ |= 4;
    }

    private void setRegs(Regs regs) {
        regs.getClass();
        this.regs_ = regs;
        this.bitField0_ |= 8;
    }

    private void setTmax(int i10) {
        this.bitField0_ |= 16;
        this.tmax_ = i10;
    }

    private void setUser(User user) {
        user.getClass();
        this.user_ = user;
        this.bitField0_ |= 32;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        int i10;
        switch (com.moloco.sdk.a.f31799a[methodToInvoke.ordinal()]) {
            case 1:
                return new BidRequest$SdkBidRequest();
            case 2:
                return new a();
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0005\u0001ᔉ\u0000\u0002ᔉ\u0001\u0003ᔉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006ᐉ\u0005", new Object[]{"bitField0_", "app_", "device_", "imp_", "regs_", "tmax_", "user_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<BidRequest$SdkBidRequest> parser = PARSER;
                if (parser == null) {
                    synchronized (BidRequest$SdkBidRequest.class) {
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
                return Byte.valueOf(this.memoizedIsInitialized);
            case 7:
                if (obj == null) {
                    i10 = 0;
                } else {
                    i10 = 1;
                }
                this.memoizedIsInitialized = (byte) i10;
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public App getApp() {
        App app = this.app_;
        if (app == null) {
            return App.getDefaultInstance();
        }
        return app;
    }

    public Device getDevice() {
        Device device = this.device_;
        if (device == null) {
            return Device.getDefaultInstance();
        }
        return device;
    }

    public Imp getImp() {
        Imp imp = this.imp_;
        if (imp == null) {
            return Imp.getDefaultInstance();
        }
        return imp;
    }

    public Regs getRegs() {
        Regs regs = this.regs_;
        if (regs == null) {
            return Regs.getDefaultInstance();
        }
        return regs;
    }

    public int getTmax() {
        return this.tmax_;
    }

    public User getUser() {
        User user = this.user_;
        if (user == null) {
            return User.getDefaultInstance();
        }
        return user;
    }

    public boolean hasApp() {
        if ((this.bitField0_ & 1) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasDevice() {
        if ((this.bitField0_ & 2) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasImp() {
        if ((this.bitField0_ & 4) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasRegs() {
        if ((this.bitField0_ & 8) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasTmax() {
        if ((this.bitField0_ & 16) != 0) {
            return true;
        }
        return false;
    }

    public boolean hasUser() {
        if ((this.bitField0_ & 32) != 0) {
            return true;
        }
        return false;
    }

    public static a newBuilder(BidRequest$SdkBidRequest bidRequest$SdkBidRequest) {
        return DEFAULT_INSTANCE.createBuilder(bidRequest$SdkBidRequest);
    }

    public static BidRequest$SdkBidRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BidRequest$SdkBidRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BidRequest$SdkBidRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BidRequest$SdkBidRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BidRequest$SdkBidRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BidRequest$SdkBidRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static BidRequest$SdkBidRequest parseFrom(InputStream inputStream) throws IOException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BidRequest$SdkBidRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BidRequest$SdkBidRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BidRequest$SdkBidRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidRequest$SdkBidRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }
}
