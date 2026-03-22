package com.unity3d.ads.core.data.datasource;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.os.SystemClock;
import android.os.ext.SdkExtensions;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import androidx.autofill.HintConstants;
import com.unity3d.ads.core.data.model.StorageType;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.device.AdvertisingId;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.device.OpenAdvertisingId;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.preferences.AndroidPreferences;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import com.unity3d.services.core.properties.SdkProperties;
import gatewayprotocol.v1.StaticDeviceInfoKt;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.security.auth.x500.X500Principal;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
import ws.f;
/* compiled from: AndroidStaticDeviceInfoDataSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidStaticDeviceInfoDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidStaticDeviceInfoDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource\n+ 2 StaticDeviceInfoKt.kt\ngatewayprotocol/v1/StaticDeviceInfoKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StaticDeviceInfoKt.kt\ngatewayprotocol/v1/StaticDeviceInfoKt$Dsl\n+ 5 StaticDeviceInfoKt.kt\ngatewayprotocol/v1/StaticDeviceInfoKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,859:1\n10#2:860\n1329#2:864\n1#3:861\n1#3:865\n1#3:869\n1#3:870\n369#4,2:862\n369#4,2:866\n589#5:868\n731#6,9:871\n37#7,2:880\n*S KotlinDebug\n*F\n+ 1 AndroidStaticDeviceInfoDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource\n*L\n70#1:860\n101#1:864\n70#1:861\n101#1:865\n116#1:869\n83#1:862,2\n104#1:866,2\n116#1:868\n308#1:871,9\n309#1:880,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidStaticDeviceInfoDataSource implements StaticDeviceInfoDataSource {
    @NotNull
    public static final String ALGORITHM_SHA1 = "SHA-1";
    @NotNull
    public static final String APP_VERSION_FAKE = "FakeVersionName";
    @NotNull
    public static final String BINARY_SU = "su";
    @NotNull
    public static final String CERTIFICATE_TYPE_X509 = "X.509";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String ENVIRONMENT_VARIABLE_PATH = "PATH";
    @NotNull
    public static final String PLATFORM_ANDROID = "android";
    @NotNull
    public static final String STORE_GOOGLE = "google";
    @NotNull
    private final X500Principal DEBUG_CERT;
    @NotNull
    private final AnalyticsDataSource analyticsDataSource;
    @NotNull
    private final Context context;
    @NotNull
    private final ByteStringDataSource glInfoStore;
    @NotNull
    private StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo;
    @NotNull
    private final StoreDataSource storeDataSource;

    /* compiled from: AndroidStaticDeviceInfoDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: AndroidStaticDeviceInfoDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Device.MemoryInfoType.values().length];
            try {
                iArr[Device.MemoryInfoType.TOTAL_MEMORY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Device.MemoryInfoType.FREE_MEMORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[StorageType.values().length];
            try {
                iArr2[StorageType.INTERNAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[StorageType.EXTERNAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AndroidStaticDeviceInfoDataSource(@NotNull Context context, @NotNull ByteStringDataSource glInfoStore, @NotNull AnalyticsDataSource analyticsDataSource, @NotNull StoreDataSource storeDataSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(glInfoStore, "glInfoStore");
        Intrinsics.checkNotNullParameter(analyticsDataSource, "analyticsDataSource");
        Intrinsics.checkNotNullParameter(storeDataSource, "storeDataSource");
        this.context = context;
        this.glInfoStore = glInfoStore;
        this.analyticsDataSource = analyticsDataSource;
        this.storeDataSource = storeDataSource;
        this.DEBUG_CERT = new X500Principal("CN=Android Debug,O=Android,C=US");
        StaticDeviceInfoKt.Dsl.Companion companion = StaticDeviceInfoKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder newBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        StaticDeviceInfoKt.Dsl _create = companion._create(newBuilder);
        _create.setBundleId(getAppName());
        _create.setBundleVersion(getAppVersion());
        _create.setAppDebuggable(isAppDebuggable());
        _create.setRooted(isRooted());
        _create.setOsVersion(getOsVersion());
        _create.setDeviceMake(getManufacturer());
        _create.setDeviceModel(getModel());
        _create.setWebviewUa(getWebViewUserAgent());
        _create.setScreenDensity(getScreenDensity());
        _create.setScreenWidth(getScreenWidth());
        _create.setScreenHeight(getScreenHeight());
        _create.setScreenSize(getScreenLayout());
        _create.addAllStores(_create.getStores(), getStores$default(this, null, 1, null));
        _create.setTotalDiskSpace(getTotalSpace(getFileForStorageType(StorageType.EXTERNAL)));
        _create.setTotalRamMemory(getTotalMemory());
        _create.setCpuModel(getCPUModel());
        _create.setCpuCount(getCPUCount());
        _create.setAndroid(fetchAndroidStaticDeviceInfo());
        _create.setMadeWithUnity(MadeWithUnityDetector.isMadeWithUnity());
        this.staticDeviceInfo = _create._build();
    }

    private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android fetchAndroidStaticDeviceInfo() {
        StaticDeviceInfoKt staticDeviceInfoKt = StaticDeviceInfoKt.INSTANCE;
        StaticDeviceInfoKt.AndroidKt.Dsl.Companion companion = StaticDeviceInfoKt.AndroidKt.Dsl.Companion;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder newBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        StaticDeviceInfoKt.AndroidKt.Dsl _create = companion._create(newBuilder);
        _create.setApiLevel(getApiLevel());
        _create.setVersionCode(getVersionCode());
        _create.setAndroidFingerprint(getFingerprint());
        _create.setAppInstaller(getInstallerPackageName());
        _create.setApkDeveloperSigningCertificateHash(getCertificateFingerprint());
        _create.setBuildBoard(getBoard());
        _create.setBuildBrand(getBrand());
        _create.setBuildDevice(getDevice());
        _create.setBuildDisplay(getDisplay());
        _create.setBuildFingerprint(getFingerprint());
        _create.setBuildHardware(getHardware());
        _create.setBuildHost(getHost());
        _create.setBuildBootloader(getBootloader());
        _create.setBuildProduct(getProduct());
        _create.setExtensionVersion(getExtensionVersion());
        String buildId = getBuildId();
        if (buildId != null) {
            _create.setBuildId(buildId);
        }
        _create.setPhoneType(getPhoneType());
        _create.setSimOperator(getSimOperator());
        return _create._build();
    }

    private final int getApiLevel() {
        return Build.VERSION.SDK_INT;
    }

    private final long getAppStartTime() {
        return SdkProperties.getInitializationTimeEpoch();
    }

    private final String getAppVersion() {
        String str;
        String packageName = this.context.getPackageName();
        PackageManager packageManager = this.context.getPackageManager();
        try {
            if (packageManager.getPackageInfo(packageName, 0).versionName == null) {
                str = APP_VERSION_FAKE;
            } else {
                str = packageManager.getPackageInfo(packageName, 0).versionName;
            }
            Intrinsics.checkNotNullExpressionValue(str, "{\n            if (pm.get…e\n            }\n        }");
            return str;
        } catch (PackageManager.NameNotFoundException e10) {
            DeviceLog.exception("Error getting package info", e10);
            return "";
        }
    }

    private final long getCPUCount() {
        return Runtime.getRuntime().availableProcessors();
    }

    private final String getCPUModel() {
        String str;
        if (Build.VERSION.SDK_INT >= 31) {
            str = Build.SOC_MODEL;
            Intrinsics.checkNotNullExpressionValue(str, "{\n            Build.SOC_MODEL\n        }");
            return str;
        }
        try {
            return (String) CollectionsKt.C0(f.j(new File("/proc/cpuinfo"), null, 1, null));
        } catch (FileNotFoundException e10) {
            DeviceLog.exception("Error reading CPU model", e10);
            return "";
        }
    }

    @c
    @SuppressLint({"PackageManagerGetSignatures"})
    private final String getCertificateFingerprint() {
        boolean z10;
        try {
            Signature[] signatureArr = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 64).signatures;
            if (signatureArr != null) {
                if (signatureArr.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    Certificate generateCertificate = CertificateFactory.getInstance(CERTIFICATE_TYPE_X509).generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()));
                    Intrinsics.checkNotNull(generateCertificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    String hexString = Utilities.toHexString(MessageDigest.getInstance(ALGORITHM_SHA1).digest(((X509Certificate) generateCertificate).getEncoded()));
                    Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(publicKey)");
                    return hexString;
                }
                return "";
            }
            return "";
        } catch (Exception e10) {
            DeviceLog.exception("Exception when signing certificate fingerprint", e10);
            return "";
        }
    }

    private final float getDisplayMetricDensity() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            return displayMetrics.density;
        }
        return 0.0f;
    }

    private final int getExtensionVersion() {
        int extensionVersion;
        if (Build.VERSION.SDK_INT >= 30) {
            extensionVersion = SdkExtensions.getExtensionVersion(30);
            return extensionVersion;
        }
        return -1;
    }

    private final File getFileForStorageType(StorageType storageType) {
        int i10 = WhenMappings.$EnumSwitchMapping$1[storageType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                DeviceLog.error("Unhandled storagetype: " + storageType);
                return null;
            }
            return this.context.getExternalCacheDir();
        }
        return this.context.getCacheDir();
    }

    private final String getFingerprint() {
        String str = Build.FINGERPRINT;
        if (str == null) {
            return "";
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getGPUModel(rs.c<? super java.lang.String> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$getGPUModel$1
            if (r0 == 0) goto L13
            r0 = r5
            com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$getGPUModel$1 r0 = (com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$getGPUModel$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$getGPUModel$1 r0 = new com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$getGPUModel$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            com.unity3d.ads.core.data.datasource.ByteStringDataSource r5 = r4.glInfoStore
            r0.label = r3
            java.lang.Object r5 = r5.get(r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            com.unity3d.ads.datastore.ByteStringStoreOuterClass$ByteStringStore r5 = (com.unity3d.ads.datastore.ByteStringStoreOuterClass.ByteStringStore) r5
            com.google.protobuf.ByteString r5 = r5.getData()
            java.nio.charset.Charset r0 = kotlin.text.Charsets.UTF_8
            java.lang.String r5 = r5.toString(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource.getGPUModel(rs.c):java.lang.Object");
    }

    private final String getGameId() {
        String gameId = ClientProperties.getGameId();
        if (gameId == null) {
            return "";
        }
        return gameId;
    }

    @c
    private final String getInstallerPackageName() {
        String installerPackageName = this.context.getPackageManager().getInstallerPackageName(this.context.getPackageName());
        if (installerPackageName == null) {
            return "";
        }
        return installerPackageName;
    }

    private final long getMemoryInfo(Device.MemoryInfoType memoryInfoType) {
        int i10;
        String str;
        FileNotFoundException e10;
        int i11 = WhenMappings.$EnumSwitchMapping$0[memoryInfoType.ordinal()];
        if (i11 != 1) {
            i10 = 2;
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            i10 = 1;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MEM_INFO, "r");
            str = null;
            for (int i12 = 0; i12 < i10; i12++) {
                try {
                    str = randomAccessFile.readLine();
                } catch (FileNotFoundException e11) {
                    e10 = e11;
                    DeviceLog.exception("Error reading memory info", e10);
                    return getMemoryValueFromString(str);
                }
            }
            Unit unit = Unit.f60915a;
            b.a(randomAccessFile, null);
        } catch (FileNotFoundException e12) {
            str = null;
            e10 = e12;
        }
        return getMemoryValueFromString(str);
    }

    private final long getMemoryValueFromString(String str) {
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
            String str2 = null;
            while (matcher.find()) {
                str2 = matcher.group(1);
            }
            if (str2 != null) {
                return Long.parseLong(str2);
            }
            return -1L;
        }
        return 0L;
    }

    @TargetApi(21)
    private final ArrayList<String> getNewAbiList() {
        ArrayList<String> arrayList = new ArrayList<>();
        String[] SUPPORTED_ABIS = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_ABIS, "SUPPORTED_ABIS");
        arrayList.addAll(CollectionsKt.q(Arrays.copyOf(SUPPORTED_ABIS, SUPPORTED_ABIS.length)));
        return arrayList;
    }

    private final List<String> getOldAbiList() {
        ArrayList arrayList = new ArrayList();
        String CPU_ABI = Build.CPU_ABI;
        Intrinsics.checkNotNullExpressionValue(CPU_ABI, "CPU_ABI");
        arrayList.add(CPU_ABI);
        String CPU_ABI2 = Build.CPU_ABI2;
        Intrinsics.checkNotNullExpressionValue(CPU_ABI2, "CPU_ABI2");
        arrayList.add(CPU_ABI2);
        return arrayList;
    }

    private final String getOpenAdvertisingTrackingId() {
        String openAdvertisingTrackingId = OpenAdvertisingId.getOpenAdvertisingTrackingId();
        if (openAdvertisingTrackingId == null) {
            return "";
        }
        return openAdvertisingTrackingId;
    }

    private final int getPhoneType() {
        Object systemService = this.context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        return ((TelephonyManager) systemService).getPhoneType();
    }

    private final String getPlatform() {
        return "android";
    }

    private final int getScreenDensity() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            return displayMetrics.densityDpi;
        }
        return -1;
    }

    private final int getScreenHeight() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            return displayMetrics.heightPixels;
        }
        return -1;
    }

    private final int getScreenLayout() {
        return this.context.getResources().getConfiguration().screenLayout;
    }

    private final int getScreenWidth() {
        DisplayMetrics displayMetrics;
        Resources resources = this.context.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            return displayMetrics.widthPixels;
        }
        return -1;
    }

    private final String getSimOperator() {
        Object systemService = this.context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String simOperator = ((TelephonyManager) systemService).getSimOperator();
        Intrinsics.checkNotNullExpressionValue(simOperator, "telephonyManager.simOperator");
        return simOperator;
    }

    private final List<String> getStores(List<String> list) {
        return this.storeDataSource.fetchStores(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ List getStores$default(AndroidStaticDeviceInfoDataSource androidStaticDeviceInfoDataSource, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = CollectionsKt.n();
        }
        return androidStaticDeviceInfoDataSource.getStores(list);
    }

    private final int getVersionCode() {
        return 41601;
    }

    private final String getVersionName() {
        return "4.16.1";
    }

    private final String getWebViewUserAgent() {
        try {
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.context);
            Intrinsics.checkNotNullExpressionValue(defaultUserAgent, "{\n        WebSettings.ge…tUserAgent(context)\n    }");
            return defaultUserAgent;
        } catch (Exception e10) {
            DeviceLog.exception("Exception getting webview user agent", e10);
            return "";
        }
    }

    private final boolean isAppDebuggable() {
        boolean z10;
        PackageManager packageManager = this.context.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "context.packageManager");
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        boolean z11 = true;
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
            Intrinsics.checkNotNullExpressionValue(applicationInfo, "pm.getApplicationInfo(pkgName, 0)");
            int i10 = applicationInfo.flags & 2;
            applicationInfo.flags = i10;
            if (i10 != 0) {
                z10 = true;
                z11 = false;
            } else {
                z11 = false;
                z10 = false;
            }
        } catch (PackageManager.NameNotFoundException e10) {
            DeviceLog.exception("Could not find name", e10);
            z10 = false;
        }
        if (z11) {
            try {
                Signature[] signatures = packageManager.getPackageInfo(packageName, 64).signatures;
                Intrinsics.checkNotNullExpressionValue(signatures, "signatures");
                for (Signature signature : signatures) {
                    Certificate generateCertificate = CertificateFactory.getInstance(CERTIFICATE_TYPE_X509).generateCertificate(new ByteArrayInputStream(signature.toByteArray()));
                    Intrinsics.checkNotNull(generateCertificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    z10 = Intrinsics.areEqual(((X509Certificate) generateCertificate).getSubjectX500Principal(), this.DEBUG_CERT);
                    if (z10) {
                        break;
                    }
                }
            } catch (PackageManager.NameNotFoundException e11) {
                DeviceLog.exception("Could not find name", e11);
            } catch (CertificateException e12) {
                DeviceLog.exception("Certificate exception", e12);
            }
        }
        return z10;
    }

    private final boolean isHardwareAccelerated(MediaCodecInfo mediaCodecInfo, String str) {
        if (getApiLevel() >= 29) {
            return isHardwareAcceleratedV29(mediaCodecInfo);
        }
        if (!isSoftwareOnly(mediaCodecInfo, str)) {
            return true;
        }
        return false;
    }

    @TargetApi(29)
    private final boolean isHardwareAcceleratedV29(MediaCodecInfo mediaCodecInfo) {
        boolean isHardwareAccelerated;
        isHardwareAccelerated = mediaCodecInfo.isHardwareAccelerated();
        return isHardwareAccelerated;
    }

    private final boolean isRooted() {
        try {
            return searchPathForBinary("su");
        } catch (Exception e10) {
            DeviceLog.exception("Rooted check failed", e10);
            return false;
        }
    }

    private final boolean isSoftwareOnly(MediaCodecInfo mediaCodecInfo, String str) {
        if (getApiLevel() >= 29) {
            return isSoftwareOnlyV29(mediaCodecInfo);
        }
        String name = mediaCodecInfo.getName();
        Intrinsics.checkNotNullExpressionValue(name, "codecInfo.name");
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String lowerCase = name.toLowerCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        if (StringsKt.V(lowerCase, "arc.", false, 2, null)) {
            return false;
        }
        if (!StringsKt.V(lowerCase, "omx.google.", false, 2, null) && !StringsKt.V(lowerCase, "omx.ffmpeg.", false, 2, null) && ((!StringsKt.V(lowerCase, "omx.sec.", false, 2, null) || !StringsKt.b0(lowerCase, ".sw.", false, 2, null)) && !Intrinsics.areEqual(lowerCase, "omx.qcom.video.decoder.hevcswvdec") && !StringsKt.V(lowerCase, "c2.android.", false, 2, null) && !StringsKt.V(lowerCase, "c2.google.", false, 2, null) && (StringsKt.V(lowerCase, "omx.", false, 2, null) || StringsKt.V(lowerCase, "c2.", false, 2, null)))) {
            return false;
        }
        return true;
    }

    @TargetApi(29)
    private final boolean isSoftwareOnlyV29(MediaCodecInfo mediaCodecInfo) {
        boolean isSoftwareOnly;
        isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
        return isSoftwareOnly;
    }

    private final boolean isTestMode() {
        return SdkProperties.isTestMode();
    }

    private final boolean searchPathForBinary(String str) {
        List<String> q10;
        List n10;
        String[] strArr;
        File[] listFiles;
        String str2 = System.getenv(ENVIRONMENT_VARIABLE_PATH);
        if (str2 != null && (q10 = new Regex(":").q(str2, 0)) != null) {
            if (!q10.isEmpty()) {
                ListIterator<String> listIterator = q10.listIterator(q10.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() != 0) {
                        n10 = CollectionsKt.V0(q10, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            n10 = CollectionsKt.n();
            if (n10 != null && (strArr = (String[]) n10.toArray(new String[0])) != null) {
                for (String str3 : strArr) {
                    File file = new File(str3);
                    if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                        for (File file2 : listFiles) {
                            if (Intrinsics.areEqual(file2.getName(), str)) {
                                return true;
                            }
                        }
                        continue;
                    }
                }
            }
        }
        return false;
    }

    private final List<MediaCodecInfo> selectAllDecodeCodecs(String str) {
        ArrayList arrayList = new ArrayList();
        int codecCount = MediaCodecList.getCodecCount();
        for (int i10 = 0; i10 < codecCount; i10++) {
            MediaCodecInfo codecInfo = MediaCodecList.getCodecInfoAt(i10);
            if (!codecInfo.isEncoder()) {
                for (String str2 : codecInfo.getSupportedTypes()) {
                    if (StringsKt.G(str2, str, true)) {
                        Intrinsics.checkNotNullExpressionValue(codecInfo, "codecInfo");
                        if (isHardwareAccelerated(codecInfo, str)) {
                            arrayList.add(codecInfo);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object fetch(@org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r5, @org.jetbrains.annotations.NotNull rs.c<? super gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$fetch$1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$fetch$1 r0 = (com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$fetch$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$fetch$1 r0 = new com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource$fetch$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r0 = r0.L$0
            com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource r0 = (com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource) r0
            kotlin.f.b(r6)
            goto L5c
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.f.b(r6)
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r6 = r4.staticDeviceInfo
            java.lang.String r6 = r6.getGpuModel()
            if (r6 == 0) goto L4e
            int r6 = r6.length()
            if (r6 != 0) goto L4b
            goto L4e
        L4b:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r5 = r4.staticDeviceInfo
            return r5
        L4e:
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r4.getGPUModel(r0)
            if (r6 != r1) goto L5b
            return r1
        L5b:
            r0 = r4
        L5c:
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L98
            int r1 = r6.length()
            if (r1 != 0) goto L67
            goto L98
        L67:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r1 = r0.staticDeviceInfo
            gatewayprotocol.v1.StaticDeviceInfoKt$Dsl$Companion r2 = gatewayprotocol.v1.StaticDeviceInfoKt.Dsl.Companion
            com.google.protobuf.GeneratedMessageLite$Builder r1 = r1.toBuilder()
            java.lang.String r3 = "this.toBuilder()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder r1 = (gatewayprotocol.v1.StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder) r1
            gatewayprotocol.v1.StaticDeviceInfoKt$Dsl r1 = r2._create(r1)
            r1.setGpuModel(r6)
            com.google.protobuf.kotlin.DslList r6 = r1.getStores()
            r1.clearStores(r6)
            com.google.protobuf.kotlin.DslList r6 = r1.getStores()
            java.util.List r5 = r0.getStores(r5)
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            r1.addAllStores(r6, r5)
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r5 = r1._build()
            r0.staticDeviceInfo = r5
            return r5
        L98:
            gatewayprotocol.v1.StaticDeviceInfoOuterClass$StaticDeviceInfo r5 = r0.staticDeviceInfo
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource.fetch(java.util.List, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @NotNull
    public StaticDeviceInfoOuterClass.StaticDeviceInfo fetchCached() {
        return this.staticDeviceInfo;
    }

    @NotNull
    public final String getAdvertisingTrackingId() {
        String advertisingTrackingId = AdvertisingId.getAdvertisingTrackingId();
        if (advertisingTrackingId == null) {
            return "";
        }
        return advertisingTrackingId;
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @Nullable
    public String getAnalyticsUserId() {
        return this.analyticsDataSource.getUserId();
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @NotNull
    public String getAppName() {
        String packageName = this.context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        return packageName;
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @Nullable
    public Object getAuid(@NotNull rs.c<? super String> cVar) {
        String string = AndroidPreferences.getString(UnityAdsConstants.Preferences.PREF_NAME_AUID, "auid");
        if (string == null) {
            return null;
        }
        return string;
    }

    @NotNull
    public final String getBoard() {
        String str = Build.BOARD;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getBootloader() {
        String str = Build.BOOTLOADER;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getBrand() {
        String str = Build.BRAND;
        if (str == null) {
            return "";
        }
        return str;
    }

    @Nullable
    public final String getBuildId() {
        return Build.ID;
    }

    @Nullable
    public final String getBuildVersionIncremental() {
        return Build.VERSION.INCREMENTAL;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final String getDevice() {
        String str = Build.DEVICE;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getDisplay() {
        String str = Build.DISPLAY;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getHardware() {
        String str = Build.HARDWARE;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getHost() {
        String str = Build.HOST;
        if (str == null) {
            return "";
        }
        return str;
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @Nullable
    public Object getIdfi(@NotNull rs.c<? super String> cVar) {
        String string = AndroidPreferences.getString(UnityAdsConstants.Preferences.PREF_NAME_IDFI, UnityAdsConstants.Preferences.PREF_KEY_IDFI);
        if (string == null) {
            string = null;
        }
        if (string == null) {
            String uuid = UUID.randomUUID().toString();
            AndroidPreferences.setString(UnityAdsConstants.Preferences.PREF_NAME_IDFI, UnityAdsConstants.Preferences.PREF_KEY_IDFI, uuid);
            return uuid;
        }
        return string;
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @NotNull
    public String getManufacturer() {
        String str = Build.MANUFACTURER;
        if (str == null) {
            return "";
        }
        return str;
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @NotNull
    public String getModel() {
        String str = Build.MODEL;
        if (str == null) {
            return "";
        }
        return str;
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    @NotNull
    public String getOsVersion() {
        String str = Build.VERSION.RELEASE;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getProduct() {
        String str = Build.PRODUCT;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final List<Sensor> getSensorList() {
        Object systemService = this.context.getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        List<Sensor> sensorList = ((SensorManager) systemService).getSensorList(-1);
        Intrinsics.checkNotNullExpressionValue(sensorList, "sensorManager.getSensorList(Sensor.TYPE_ALL)");
        return sensorList;
    }

    @NotNull
    public final List<String> getSupportedAbis() {
        if (getApiLevel() < 21) {
            return getOldAbiList();
        }
        return getNewAbiList();
    }

    @Override // com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource
    public long getSystemBootTime() {
        return (System.currentTimeMillis() - SystemClock.elapsedRealtime()) / 1000;
    }

    public final long getTotalMemory() {
        return getMemoryInfo(Device.MemoryInfoType.TOTAL_MEMORY);
    }

    public final long getTotalSpace(@Nullable File file) {
        if (file != null && file.exists()) {
            return bt.a.c((float) (file.getTotalSpace() / 1024));
        }
        return -1L;
    }

    public final boolean hasX264Decoder() {
        return !selectAllDecodeCodecs("video/avc").isEmpty();
    }

    public final boolean hasX265Decoder() {
        return !selectAllDecodeCodecs("video/hevc").isEmpty();
    }

    public final boolean isLimitOpenAdTrackingEnabled() {
        return OpenAdvertisingId.getLimitedOpenAdTracking();
    }
}
