package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.AFj1tSDK;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nResolveDdlTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResolveDdlTask.kt\ncom/appsflyer/internal/components/queue/tasks/ResolveDdlTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,278:1\n1#2:279\n1#2:290\n1603#3,9:280\n1855#3:289\n1856#3:291\n1612#3:292\n1855#3,2:296\n3792#4:293\n4307#4,2:294\n*S KotlinDebug\n*F\n+ 1 ResolveDdlTask.kt\ncom/appsflyer/internal/components/queue/tasks/ResolveDdlTask\n*L\n104#1:290\n104#1:280,9\n104#1:289\n104#1:291\n104#1:292\n202#1:296,2\n197#1:293\n197#1:294,2\n*E\n"})
/* loaded from: classes2.dex */
public final class AFf1xSDK extends AFe1fSDK<AFa1oSDK> {
    private int AFInAppEventParameterName;
    @NotNull
    private final CountDownLatch AFInAppEventType;
    private int AFKeystoreWrapper;
    @NotNull
    private final List<AFj1tSDK> AFLogger;
    @NotNull
    private final AFa1rSDK component2;
    @NotNull
    private final AFh1xSDK copy;
    @NotNull
    private final AFc1oSDK copydefault;
    @NotNull
    private final AFj1sSDK equals;
    @NotNull
    private final AFa1mSDK hashCode;
    private int registerClient;
    @NotNull
    private final AFc1eSDK toString;

    /* loaded from: classes2.dex */
    public /* synthetic */ class AFa1uSDK {
        public static final /* synthetic */ int[] getMonetizationNetwork;
        public static final /* synthetic */ int[] getRevenue;

        static {
            int[] iArr = new int[AFe1uSDK.values().length];
            try {
                iArr[AFe1uSDK.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFe1uSDK.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            getRevenue = iArr;
            int[] iArr2 = new int[AFj1tSDK.AFa1tSDK.values().length];
            try {
                iArr2[AFj1tSDK.AFa1tSDK.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AFj1tSDK.AFa1tSDK.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            getMonetizationNetwork = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1xSDK(@NotNull AFa1rSDK aFa1rSDK, @NotNull AFd1zSDK aFd1zSDK) {
        super(AFe1pSDK.DLSDK, new AFe1pSDK[]{AFe1pSDK.RC_CDN, AFe1pSDK.FETCH_ADVERTISING_ID}, aFd1zSDK, "DdlSdk");
        int i10;
        Intrinsics.checkNotNullParameter(aFa1rSDK, "");
        Intrinsics.checkNotNullParameter(aFd1zSDK, "");
        this.component2 = aFa1rSDK;
        this.AFInAppEventType = new CountDownLatch(1);
        this.AFLogger = new ArrayList();
        AFc1oSDK AFAdRevenueData = aFd1zSDK.AFAdRevenueData();
        Intrinsics.checkNotNullExpressionValue(AFAdRevenueData, "");
        this.copydefault = AFAdRevenueData;
        AFc1eSDK force = aFd1zSDK.force();
        Intrinsics.checkNotNullExpressionValue(force, "");
        this.toString = force;
        AFa1mSDK i11 = aFd1zSDK.i();
        Intrinsics.checkNotNullExpressionValue(i11, "");
        this.hashCode = i11;
        AFh1xSDK areAllFieldsValid = aFd1zSDK.areAllFieldsValid();
        Intrinsics.checkNotNullExpressionValue(areAllFieldsValid, "");
        this.copy = areAllFieldsValid;
        AFj1sSDK AFLogger = aFd1zSDK.AFLogger();
        Intrinsics.checkNotNullExpressionValue(AFLogger, "");
        this.equals = AFLogger;
        AFj1tSDK[] aFj1tSDKArr = (AFj1tSDK[]) AFLogger.getRevenue.toArray(new AFj1tSDK[0]);
        Intrinsics.checkNotNullExpressionValue(aFj1tSDKArr, "");
        ArrayList<AFj1tSDK> arrayList = new ArrayList();
        for (AFj1tSDK aFj1tSDK : aFj1tSDKArr) {
            if (aFj1tSDK != null && aFj1tSDK.component4 != AFj1tSDK.AFa1tSDK.NOT_STARTED) {
                arrayList.add(aFj1tSDK);
            }
        }
        this.AFInAppEventParameterName = arrayList.size();
        for (final AFj1tSDK aFj1tSDK2 : arrayList) {
            AFj1tSDK.AFa1tSDK aFa1tSDK = aFj1tSDK2.component4;
            if (aFa1tSDK == null) {
                i10 = -1;
            } else {
                i10 = AFa1uSDK.getMonetizationNetwork[aFa1tSDK.ordinal()];
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    aFj1tSDK2.addObserver(new Observer() { // from class: com.appsflyer.internal.w
                        @Override // java.util.Observer
                        public final void update(Observable observable, Object obj) {
                            AFf1xSDK.getRevenue(AFj1tSDK.this, this, observable, obj);
                        }
                    });
                }
            } else {
                AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.DDL, aFj1tSDK2.getMediationNetwork.get("source") + " referrer collected earlier", false, 4, null);
                Intrinsics.checkNotNullExpressionValue(aFj1tSDK2, "");
                getCurrencyIso4217Code(aFj1tSDK2);
            }
        }
    }

    private final boolean equals() {
        List list;
        int i10;
        Object obj = this.component2.AFAdRevenueData.get("referrers");
        if (obj instanceof List) {
            list = (List) obj;
        } else {
            list = null;
        }
        if (list != null) {
            i10 = list.size();
        } else {
            i10 = 0;
        }
        if (i10 >= this.AFInAppEventParameterName || this.component2.AFAdRevenueData.containsKey("referrers")) {
            return false;
        }
        return true;
    }

    private final void getCurrencyIso4217Code(AFj1tSDK aFj1tSDK) {
        if (getRevenue(aFj1tSDK)) {
            this.AFLogger.add(aFj1tSDK);
            this.AFInAppEventType.countDown();
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.DDL;
            String simpleName = aFj1tSDK.getClass().getSimpleName();
            AFh1ySDK.d$default(aFLogger, aFg1cSDK, "Added non-organic " + simpleName, false, 4, null);
            return;
        }
        int i10 = this.AFKeystoreWrapper + 1;
        this.AFKeystoreWrapper = i10;
        if (i10 == this.AFInAppEventParameterName) {
            this.AFInAppEventType.countDown();
        }
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final long AFAdRevenueData() {
        return this.hashCode.component2;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    protected final boolean a_() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final /* bridge */ /* synthetic */ AppsFlyerRequestListener component2() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    protected final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b8 A[Catch: Exception -> 0x003b, TryCatch #0 {Exception -> 0x003b, blocks: (B:4:0x000d, B:8:0x0019, B:10:0x002a, B:15:0x006a, B:19:0x0078, B:21:0x0080, B:23:0x008a, B:24:0x00b8, B:26:0x00ca, B:27:0x00df, B:29:0x00e3, B:31:0x00e9, B:33:0x00ef, B:35:0x010f, B:37:0x0121, B:39:0x0127, B:41:0x013d, B:36:0x011c, B:43:0x0142, B:13:0x003f, B:14:0x0056), top: B:58:0x000d }] */
    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFe1uSDK getRevenue() {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1xSDK.getRevenue():com.appsflyer.internal.AFe1uSDK");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x010f A[SYNTHETIC] */
    @Override // com.appsflyer.internal.AFe1fSDK
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.appsflyer.internal.AFd1hSDK<com.appsflyer.internal.AFa1oSDK> AFAdRevenueData(@org.jetbrains.annotations.NotNull java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1xSDK.AFAdRevenueData(java.lang.String):com.appsflyer.internal.AFd1hSDK");
    }

    private static Map<String, String> getCurrencyIso4217Code(AFb1jSDK aFb1jSDK) {
        String str;
        if (aFb1jSDK == null || (str = aFb1jSDK.getRevenue) == null) {
            return null;
        }
        Intrinsics.checkNotNullExpressionValue(str, "");
        Boolean bool = aFb1jSDK.getCurrencyIso4217Code;
        if (bool == null || !bool.booleanValue()) {
            return p0.m(ms.k.a("type", "unhashed"), ms.k.a(AppMeasurementSdk.ConditionalUserProperty.VALUE, str));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRevenue(AFj1tSDK aFj1tSDK, AFf1xSDK aFf1xSDK, Observable observable, Object obj) {
        Intrinsics.checkNotNullParameter(aFf1xSDK, "");
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.DDL;
        Object obj2 = aFj1tSDK.getMediationNetwork.get("source");
        AFh1ySDK.d$default(aFLogger, aFg1cSDK, obj2 + " referrer collected via observer", false, 4, null);
        Intrinsics.checkNotNull(observable, "");
        aFf1xSDK.getCurrencyIso4217Code((AFj1tSDK) observable);
    }

    private static boolean getRevenue(AFj1tSDK aFj1tSDK) {
        Object obj = aFj1tSDK.getMediationNetwork.get("click_ts");
        Long l10 = obj instanceof Long ? (Long) obj : null;
        if (l10 != null) {
            if (System.currentTimeMillis() - TimeUnit.SECONDS.toMillis(l10.longValue()) < TimeUnit.DAYS.toMillis(1L)) {
                return true;
            }
        }
        return false;
    }
}
