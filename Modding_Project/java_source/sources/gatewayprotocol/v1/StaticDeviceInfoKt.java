package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StaticDeviceInfoKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStaticDeviceInfoKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StaticDeviceInfoKt.kt\ngatewayprotocol/v1/StaticDeviceInfoKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1343:1\n1#2:1344\n*E\n"})
/* loaded from: classes7.dex */
public final class StaticDeviceInfoKt {
    @NotNull
    public static final StaticDeviceInfoKt INSTANCE = new StaticDeviceInfoKt();

    /* compiled from: StaticDeviceInfoKt.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class AndroidKt {
        @NotNull
        public static final AndroidKt INSTANCE = new AndroidKt();

        /* compiled from: StaticDeviceInfoKt.kt */
        @Metadata
        @ProtoDslMarker
        /* loaded from: classes7.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder _builder;

            /* compiled from: StaticDeviceInfoKt.kt */
            @Metadata
            /* loaded from: classes7.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Android _build() {
                StaticDeviceInfoOuterClass.StaticDeviceInfo.Android build = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
                return build;
            }

            public final void clearAndroidFingerprint() {
                this._builder.clearAndroidFingerprint();
            }

            public final void clearApiLevel() {
                this._builder.clearApiLevel();
            }

            public final void clearApkDeveloperSigningCertificateHash() {
                this._builder.clearApkDeveloperSigningCertificateHash();
            }

            public final void clearAppInstaller() {
                this._builder.clearAppInstaller();
            }

            public final void clearBuildBoard() {
                this._builder.clearBuildBoard();
            }

            public final void clearBuildBootloader() {
                this._builder.clearBuildBootloader();
            }

            public final void clearBuildBrand() {
                this._builder.clearBuildBrand();
            }

            public final void clearBuildDevice() {
                this._builder.clearBuildDevice();
            }

            public final void clearBuildDisplay() {
                this._builder.clearBuildDisplay();
            }

            public final void clearBuildFingerprint() {
                this._builder.clearBuildFingerprint();
            }

            public final void clearBuildHardware() {
                this._builder.clearBuildHardware();
            }

            public final void clearBuildHost() {
                this._builder.clearBuildHost();
            }

            public final void clearBuildId() {
                this._builder.clearBuildId();
            }

            public final void clearBuildProduct() {
                this._builder.clearBuildProduct();
            }

            public final void clearExtensionVersion() {
                this._builder.clearExtensionVersion();
            }

            public final void clearPhoneType() {
                this._builder.clearPhoneType();
            }

            public final void clearSimOperator() {
                this._builder.clearSimOperator();
            }

            public final void clearVersionCode() {
                this._builder.clearVersionCode();
            }

            @NotNull
            public final String getAndroidFingerprint() {
                String androidFingerprint = this._builder.getAndroidFingerprint();
                Intrinsics.checkNotNullExpressionValue(androidFingerprint, "_builder.getAndroidFingerprint()");
                return androidFingerprint;
            }

            public final int getApiLevel() {
                return this._builder.getApiLevel();
            }

            @NotNull
            public final String getApkDeveloperSigningCertificateHash() {
                String apkDeveloperSigningCertificateHash = this._builder.getApkDeveloperSigningCertificateHash();
                Intrinsics.checkNotNullExpressionValue(apkDeveloperSigningCertificateHash, "_builder.getApkDeveloperSigningCertificateHash()");
                return apkDeveloperSigningCertificateHash;
            }

            @NotNull
            public final String getAppInstaller() {
                String appInstaller = this._builder.getAppInstaller();
                Intrinsics.checkNotNullExpressionValue(appInstaller, "_builder.getAppInstaller()");
                return appInstaller;
            }

            @NotNull
            public final String getBuildBoard() {
                String buildBoard = this._builder.getBuildBoard();
                Intrinsics.checkNotNullExpressionValue(buildBoard, "_builder.getBuildBoard()");
                return buildBoard;
            }

            @NotNull
            public final String getBuildBootloader() {
                String buildBootloader = this._builder.getBuildBootloader();
                Intrinsics.checkNotNullExpressionValue(buildBootloader, "_builder.getBuildBootloader()");
                return buildBootloader;
            }

            @NotNull
            public final String getBuildBrand() {
                String buildBrand = this._builder.getBuildBrand();
                Intrinsics.checkNotNullExpressionValue(buildBrand, "_builder.getBuildBrand()");
                return buildBrand;
            }

            @NotNull
            public final String getBuildDevice() {
                String buildDevice = this._builder.getBuildDevice();
                Intrinsics.checkNotNullExpressionValue(buildDevice, "_builder.getBuildDevice()");
                return buildDevice;
            }

            @NotNull
            public final String getBuildDisplay() {
                String buildDisplay = this._builder.getBuildDisplay();
                Intrinsics.checkNotNullExpressionValue(buildDisplay, "_builder.getBuildDisplay()");
                return buildDisplay;
            }

            @NotNull
            public final String getBuildFingerprint() {
                String buildFingerprint = this._builder.getBuildFingerprint();
                Intrinsics.checkNotNullExpressionValue(buildFingerprint, "_builder.getBuildFingerprint()");
                return buildFingerprint;
            }

            @NotNull
            public final String getBuildHardware() {
                String buildHardware = this._builder.getBuildHardware();
                Intrinsics.checkNotNullExpressionValue(buildHardware, "_builder.getBuildHardware()");
                return buildHardware;
            }

            @NotNull
            public final String getBuildHost() {
                String buildHost = this._builder.getBuildHost();
                Intrinsics.checkNotNullExpressionValue(buildHost, "_builder.getBuildHost()");
                return buildHost;
            }

            @NotNull
            public final String getBuildId() {
                String buildId = this._builder.getBuildId();
                Intrinsics.checkNotNullExpressionValue(buildId, "_builder.getBuildId()");
                return buildId;
            }

            @NotNull
            public final String getBuildProduct() {
                String buildProduct = this._builder.getBuildProduct();
                Intrinsics.checkNotNullExpressionValue(buildProduct, "_builder.getBuildProduct()");
                return buildProduct;
            }

            public final int getExtensionVersion() {
                return this._builder.getExtensionVersion();
            }

            public final int getPhoneType() {
                return this._builder.getPhoneType();
            }

            @NotNull
            public final String getSimOperator() {
                String simOperator = this._builder.getSimOperator();
                Intrinsics.checkNotNullExpressionValue(simOperator, "_builder.getSimOperator()");
                return simOperator;
            }

            public final int getVersionCode() {
                return this._builder.getVersionCode();
            }

            public final boolean hasAndroidFingerprint() {
                return this._builder.hasAndroidFingerprint();
            }

            public final boolean hasApiLevel() {
                return this._builder.hasApiLevel();
            }

            public final boolean hasApkDeveloperSigningCertificateHash() {
                return this._builder.hasApkDeveloperSigningCertificateHash();
            }

            public final boolean hasAppInstaller() {
                return this._builder.hasAppInstaller();
            }

            public final boolean hasBuildBoard() {
                return this._builder.hasBuildBoard();
            }

            public final boolean hasBuildBootloader() {
                return this._builder.hasBuildBootloader();
            }

            public final boolean hasBuildBrand() {
                return this._builder.hasBuildBrand();
            }

            public final boolean hasBuildDevice() {
                return this._builder.hasBuildDevice();
            }

            public final boolean hasBuildDisplay() {
                return this._builder.hasBuildDisplay();
            }

            public final boolean hasBuildFingerprint() {
                return this._builder.hasBuildFingerprint();
            }

            public final boolean hasBuildHardware() {
                return this._builder.hasBuildHardware();
            }

            public final boolean hasBuildHost() {
                return this._builder.hasBuildHost();
            }

            public final boolean hasBuildId() {
                return this._builder.hasBuildId();
            }

            public final boolean hasBuildProduct() {
                return this._builder.hasBuildProduct();
            }

            public final boolean hasExtensionVersion() {
                return this._builder.hasExtensionVersion();
            }

            public final boolean hasPhoneType() {
                return this._builder.hasPhoneType();
            }

            public final boolean hasSimOperator() {
                return this._builder.hasSimOperator();
            }

            public final boolean hasVersionCode() {
                return this._builder.hasVersionCode();
            }

            public final void setAndroidFingerprint(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAndroidFingerprint(value);
            }

            public final void setApiLevel(int i10) {
                this._builder.setApiLevel(i10);
            }

            public final void setApkDeveloperSigningCertificateHash(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setApkDeveloperSigningCertificateHash(value);
            }

            public final void setAppInstaller(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAppInstaller(value);
            }

            public final void setBuildBoard(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildBoard(value);
            }

            public final void setBuildBootloader(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildBootloader(value);
            }

            public final void setBuildBrand(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildBrand(value);
            }

            public final void setBuildDevice(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildDevice(value);
            }

            public final void setBuildDisplay(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildDisplay(value);
            }

            public final void setBuildFingerprint(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildFingerprint(value);
            }

            public final void setBuildHardware(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildHardware(value);
            }

            public final void setBuildHost(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildHost(value);
            }

            public final void setBuildId(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildId(value);
            }

            public final void setBuildProduct(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildProduct(value);
            }

            public final void setExtensionVersion(int i10) {
                this._builder.setExtensionVersion(i10);
            }

            public final void setPhoneType(int i10) {
                this._builder.setPhoneType(i10);
            }

            public final void setSimOperator(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSimOperator(value);
            }

            public final void setVersionCode(int i10) {
                this._builder.setVersionCode(i10);
            }

            private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder) {
                this._builder = builder;
            }
        }

        private AndroidKt() {
        }
    }

    /* compiled from: StaticDeviceInfoKt.kt */
    @Metadata
    @ProtoDslMarker
    /* loaded from: classes7.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder _builder;

        /* compiled from: StaticDeviceInfoKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        /* compiled from: StaticDeviceInfoKt.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class StoresProxy extends DslProxy {
            private StoresProxy() {
            }
        }

        public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo _build() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo build = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
            return build;
        }

        public final /* synthetic */ void addAllStores(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllStores(values);
        }

        public final /* synthetic */ void addStores(DslList dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addStores(value);
        }

        public final void clearAndroid() {
            this._builder.clearAndroid();
        }

        public final void clearAppDebuggable() {
            this._builder.clearAppDebuggable();
        }

        public final void clearBundleId() {
            this._builder.clearBundleId();
        }

        public final void clearBundleVersion() {
            this._builder.clearBundleVersion();
        }

        public final void clearCpuCount() {
            this._builder.clearCpuCount();
        }

        public final void clearCpuModel() {
            this._builder.clearCpuModel();
        }

        public final void clearDeviceMake() {
            this._builder.clearDeviceMake();
        }

        public final void clearDeviceModel() {
            this._builder.clearDeviceModel();
        }

        public final void clearGpuModel() {
            this._builder.clearGpuModel();
        }

        public final void clearIos() {
            this._builder.clearIos();
        }

        public final void clearMadeWithUnity() {
            this._builder.clearMadeWithUnity();
        }

        public final void clearOsVersion() {
            this._builder.clearOsVersion();
        }

        public final void clearPlatformSpecific() {
            this._builder.clearPlatformSpecific();
        }

        public final void clearRooted() {
            this._builder.clearRooted();
        }

        public final void clearScreenDensity() {
            this._builder.clearScreenDensity();
        }

        public final void clearScreenHeight() {
            this._builder.clearScreenHeight();
        }

        public final void clearScreenSize() {
            this._builder.clearScreenSize();
        }

        public final void clearScreenWidth() {
            this._builder.clearScreenWidth();
        }

        public final /* synthetic */ void clearStores(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearStores();
        }

        public final void clearTotalDiskSpace() {
            this._builder.clearTotalDiskSpace();
        }

        public final void clearTotalRamMemory() {
            this._builder.clearTotalRamMemory();
        }

        public final void clearWebviewUa() {
            this._builder.clearWebviewUa();
        }

        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android getAndroid() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo.Android android2 = this._builder.getAndroid();
            Intrinsics.checkNotNullExpressionValue(android2, "_builder.getAndroid()");
            return android2;
        }

        public final boolean getAppDebuggable() {
            return this._builder.getAppDebuggable();
        }

        @NotNull
        public final String getBundleId() {
            String bundleId = this._builder.getBundleId();
            Intrinsics.checkNotNullExpressionValue(bundleId, "_builder.getBundleId()");
            return bundleId;
        }

        @NotNull
        public final String getBundleVersion() {
            String bundleVersion = this._builder.getBundleVersion();
            Intrinsics.checkNotNullExpressionValue(bundleVersion, "_builder.getBundleVersion()");
            return bundleVersion;
        }

        public final long getCpuCount() {
            return this._builder.getCpuCount();
        }

        @NotNull
        public final String getCpuModel() {
            String cpuModel = this._builder.getCpuModel();
            Intrinsics.checkNotNullExpressionValue(cpuModel, "_builder.getCpuModel()");
            return cpuModel;
        }

        @NotNull
        public final String getDeviceMake() {
            String deviceMake = this._builder.getDeviceMake();
            Intrinsics.checkNotNullExpressionValue(deviceMake, "_builder.getDeviceMake()");
            return deviceMake;
        }

        @NotNull
        public final String getDeviceModel() {
            String deviceModel = this._builder.getDeviceModel();
            Intrinsics.checkNotNullExpressionValue(deviceModel, "_builder.getDeviceModel()");
            return deviceModel;
        }

        @NotNull
        public final String getGpuModel() {
            String gpuModel = this._builder.getGpuModel();
            Intrinsics.checkNotNullExpressionValue(gpuModel, "_builder.getGpuModel()");
            return gpuModel;
        }

        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios getIos() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios ios = this._builder.getIos();
            Intrinsics.checkNotNullExpressionValue(ios, "_builder.getIos()");
            return ios;
        }

        public final boolean getMadeWithUnity() {
            return this._builder.getMadeWithUnity();
        }

        @NotNull
        public final String getOsVersion() {
            String osVersion = this._builder.getOsVersion();
            Intrinsics.checkNotNullExpressionValue(osVersion, "_builder.getOsVersion()");
            return osVersion;
        }

        @NotNull
        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.PlatformSpecificCase getPlatformSpecificCase() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo.PlatformSpecificCase platformSpecificCase = this._builder.getPlatformSpecificCase();
            Intrinsics.checkNotNullExpressionValue(platformSpecificCase, "_builder.getPlatformSpecificCase()");
            return platformSpecificCase;
        }

        public final boolean getRooted() {
            return this._builder.getRooted();
        }

        public final int getScreenDensity() {
            return this._builder.getScreenDensity();
        }

        public final int getScreenHeight() {
            return this._builder.getScreenHeight();
        }

        public final int getScreenSize() {
            return this._builder.getScreenSize();
        }

        public final int getScreenWidth() {
            return this._builder.getScreenWidth();
        }

        @NotNull
        public final DslList<String, StoresProxy> getStores() {
            List<String> storesList = this._builder.getStoresList();
            Intrinsics.checkNotNullExpressionValue(storesList, "_builder.getStoresList()");
            return new DslList<>(storesList);
        }

        public final long getTotalDiskSpace() {
            return this._builder.getTotalDiskSpace();
        }

        public final long getTotalRamMemory() {
            return this._builder.getTotalRamMemory();
        }

        @NotNull
        public final String getWebviewUa() {
            String webviewUa = this._builder.getWebviewUa();
            Intrinsics.checkNotNullExpressionValue(webviewUa, "_builder.getWebviewUa()");
            return webviewUa;
        }

        public final boolean hasAndroid() {
            return this._builder.hasAndroid();
        }

        public final boolean hasAppDebuggable() {
            return this._builder.hasAppDebuggable();
        }

        public final boolean hasBundleId() {
            return this._builder.hasBundleId();
        }

        public final boolean hasBundleVersion() {
            return this._builder.hasBundleVersion();
        }

        public final boolean hasCpuCount() {
            return this._builder.hasCpuCount();
        }

        public final boolean hasCpuModel() {
            return this._builder.hasCpuModel();
        }

        public final boolean hasDeviceMake() {
            return this._builder.hasDeviceMake();
        }

        public final boolean hasDeviceModel() {
            return this._builder.hasDeviceModel();
        }

        public final boolean hasGpuModel() {
            return this._builder.hasGpuModel();
        }

        public final boolean hasIos() {
            return this._builder.hasIos();
        }

        public final boolean hasMadeWithUnity() {
            return this._builder.hasMadeWithUnity();
        }

        public final boolean hasOsVersion() {
            return this._builder.hasOsVersion();
        }

        public final boolean hasRooted() {
            return this._builder.hasRooted();
        }

        public final boolean hasScreenDensity() {
            return this._builder.hasScreenDensity();
        }

        public final boolean hasScreenHeight() {
            return this._builder.hasScreenHeight();
        }

        public final boolean hasScreenSize() {
            return this._builder.hasScreenSize();
        }

        public final boolean hasScreenWidth() {
            return this._builder.hasScreenWidth();
        }

        public final boolean hasTotalDiskSpace() {
            return this._builder.hasTotalDiskSpace();
        }

        public final boolean hasTotalRamMemory() {
            return this._builder.hasTotalRamMemory();
        }

        public final boolean hasWebviewUa() {
            return this._builder.hasWebviewUa();
        }

        public final /* synthetic */ void plusAssignAllStores(DslList<String, StoresProxy> dslList, Iterable<String> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllStores(dslList, values);
        }

        public final /* synthetic */ void plusAssignStores(DslList<String, StoresProxy> dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addStores(dslList, value);
        }

        public final void setAndroid(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo.Android value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAndroid(value);
        }

        public final void setAppDebuggable(boolean z10) {
            this._builder.setAppDebuggable(z10);
        }

        public final void setBundleId(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setBundleId(value);
        }

        public final void setBundleVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setBundleVersion(value);
        }

        public final void setCpuCount(long j10) {
            this._builder.setCpuCount(j10);
        }

        public final void setCpuModel(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCpuModel(value);
        }

        public final void setDeviceMake(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceMake(value);
        }

        public final void setDeviceModel(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceModel(value);
        }

        public final void setGpuModel(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setGpuModel(value);
        }

        public final void setIos(@NotNull StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setIos(value);
        }

        public final void setMadeWithUnity(boolean z10) {
            this._builder.setMadeWithUnity(z10);
        }

        public final void setOsVersion(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOsVersion(value);
        }

        public final void setRooted(boolean z10) {
            this._builder.setRooted(z10);
        }

        public final void setScreenDensity(int i10) {
            this._builder.setScreenDensity(i10);
        }

        public final void setScreenHeight(int i10) {
            this._builder.setScreenHeight(i10);
        }

        public final void setScreenSize(int i10) {
            this._builder.setScreenSize(i10);
        }

        public final void setScreenWidth(int i10) {
            this._builder.setScreenWidth(i10);
        }

        public final /* synthetic */ void setStores(DslList dslList, int i10, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStores(i10, value);
        }

        public final void setTotalDiskSpace(long j10) {
            this._builder.setTotalDiskSpace(j10);
        }

        public final void setTotalRamMemory(long j10) {
            this._builder.setTotalRamMemory(j10);
        }

        public final void setWebviewUa(@NotNull String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setWebviewUa(value);
        }

        private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder) {
            this._builder = builder;
        }
    }

    /* compiled from: StaticDeviceInfoKt.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class IosKt {
        @NotNull
        public static final IosKt INSTANCE = new IosKt();

        /* compiled from: StaticDeviceInfoKt.kt */
        @Metadata
        @ProtoDslMarker
        /* loaded from: classes7.dex */
        public static final class Dsl {
            @NotNull
            public static final Companion Companion = new Companion(null);
            @NotNull
            private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder _builder;

            /* compiled from: StaticDeviceInfoKt.kt */
            @Metadata
            /* loaded from: classes7.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }

                private Companion() {
                }
            }

            /* compiled from: StaticDeviceInfoKt.kt */
            @Metadata
            /* loaded from: classes7.dex */
            public static final class SkadnetworkIdProxy extends DslProxy {
                private SkadnetworkIdProxy() {
                }
            }

            public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios _build() {
                StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios build = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(build, "_builder.build()");
                return build;
            }

            public final /* synthetic */ void addAllSkadnetworkId(DslList dslList, Iterable values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                this._builder.addAllSkadnetworkId(values);
            }

            public final /* synthetic */ void addSkadnetworkId(DslList dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.addSkadnetworkId(value);
            }

            public final void clearBuiltSdkVersion() {
                this._builder.clearBuiltSdkVersion();
            }

            public final void clearCanMakePayments() {
                this._builder.clearCanMakePayments();
            }

            public final void clearScreenScale() {
                this._builder.clearScreenScale();
            }

            public final void clearSimulator() {
                this._builder.clearSimulator();
            }

            public final /* synthetic */ void clearSkadnetworkId(DslList dslList) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                this._builder.clearSkadnetworkId();
            }

            public final void clearSystemBootTime() {
                this._builder.clearSystemBootTime();
            }

            public final void clearXcodeBuildVersion() {
                this._builder.clearXcodeBuildVersion();
            }

            public final void clearXcodeSdkBuildVersion() {
                this._builder.clearXcodeSdkBuildVersion();
            }

            public final void clearXcodeVersion() {
                this._builder.clearXcodeVersion();
            }

            @NotNull
            public final String getBuiltSdkVersion() {
                String builtSdkVersion = this._builder.getBuiltSdkVersion();
                Intrinsics.checkNotNullExpressionValue(builtSdkVersion, "_builder.getBuiltSdkVersion()");
                return builtSdkVersion;
            }

            public final boolean getCanMakePayments() {
                return this._builder.getCanMakePayments();
            }

            public final int getScreenScale() {
                return this._builder.getScreenScale();
            }

            public final boolean getSimulator() {
                return this._builder.getSimulator();
            }

            @NotNull
            public final DslList<String, SkadnetworkIdProxy> getSkadnetworkId() {
                List<String> skadnetworkIdList = this._builder.getSkadnetworkIdList();
                Intrinsics.checkNotNullExpressionValue(skadnetworkIdList, "_builder.getSkadnetworkIdList()");
                return new DslList<>(skadnetworkIdList);
            }

            public final long getSystemBootTime() {
                return this._builder.getSystemBootTime();
            }

            @NotNull
            public final String getXcodeBuildVersion() {
                String xcodeBuildVersion = this._builder.getXcodeBuildVersion();
                Intrinsics.checkNotNullExpressionValue(xcodeBuildVersion, "_builder.getXcodeBuildVersion()");
                return xcodeBuildVersion;
            }

            @NotNull
            public final String getXcodeSdkBuildVersion() {
                String xcodeSdkBuildVersion = this._builder.getXcodeSdkBuildVersion();
                Intrinsics.checkNotNullExpressionValue(xcodeSdkBuildVersion, "_builder.getXcodeSdkBuildVersion()");
                return xcodeSdkBuildVersion;
            }

            @NotNull
            public final String getXcodeVersion() {
                String xcodeVersion = this._builder.getXcodeVersion();
                Intrinsics.checkNotNullExpressionValue(xcodeVersion, "_builder.getXcodeVersion()");
                return xcodeVersion;
            }

            public final boolean hasBuiltSdkVersion() {
                return this._builder.hasBuiltSdkVersion();
            }

            public final boolean hasCanMakePayments() {
                return this._builder.hasCanMakePayments();
            }

            public final boolean hasScreenScale() {
                return this._builder.hasScreenScale();
            }

            public final boolean hasSimulator() {
                return this._builder.hasSimulator();
            }

            public final boolean hasSystemBootTime() {
                return this._builder.hasSystemBootTime();
            }

            public final boolean hasXcodeBuildVersion() {
                return this._builder.hasXcodeBuildVersion();
            }

            public final boolean hasXcodeSdkBuildVersion() {
                return this._builder.hasXcodeSdkBuildVersion();
            }

            public final boolean hasXcodeVersion() {
                return this._builder.hasXcodeVersion();
            }

            public final /* synthetic */ void plusAssignAllSkadnetworkId(DslList<String, SkadnetworkIdProxy> dslList, Iterable<String> values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                addAllSkadnetworkId(dslList, values);
            }

            public final /* synthetic */ void plusAssignSkadnetworkId(DslList<String, SkadnetworkIdProxy> dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                addSkadnetworkId(dslList, value);
            }

            public final void setBuiltSdkVersion(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuiltSdkVersion(value);
            }

            public final void setCanMakePayments(boolean z10) {
                this._builder.setCanMakePayments(z10);
            }

            public final void setScreenScale(int i10) {
                this._builder.setScreenScale(i10);
            }

            public final void setSimulator(boolean z10) {
                this._builder.setSimulator(z10);
            }

            public final /* synthetic */ void setSkadnetworkId(DslList dslList, int i10, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSkadnetworkId(i10, value);
            }

            public final void setSystemBootTime(long j10) {
                this._builder.setSystemBootTime(j10);
            }

            public final void setXcodeBuildVersion(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setXcodeBuildVersion(value);
            }

            public final void setXcodeSdkBuildVersion(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setXcodeSdkBuildVersion(value);
            }

            public final void setXcodeVersion(@NotNull String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setXcodeVersion(value);
            }

            private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder) {
                this._builder = builder;
            }
        }

        private IosKt() {
        }
    }

    private StaticDeviceInfoKt() {
    }

    @NotNull
    /* renamed from: -initializeandroid  reason: not valid java name */
    public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android m4900initializeandroid(@NotNull Function1<? super AndroidKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AndroidKt.Dsl.Companion companion = AndroidKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder newBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AndroidKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    /* renamed from: -initializeios  reason: not valid java name */
    public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios m4901initializeios(@NotNull Function1<? super IosKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        IosKt.Dsl.Companion companion = IosKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder newBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        IosKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }
}
