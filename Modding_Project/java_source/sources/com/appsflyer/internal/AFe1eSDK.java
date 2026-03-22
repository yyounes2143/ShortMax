package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailability;
import com.samsung.android.game.cloudgame.dev.sdk.CloudDevCallback;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nFetchAdvertisingIdTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchAdvertisingIdTask.kt\ncom/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n39#2:397\n1#3:398\n*S KotlinDebug\n*F\n+ 1 FetchAdvertisingIdTask.kt\ncom/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask\n*L\n202#1:397\n*E\n"})
/* loaded from: classes2.dex */
public final class AFe1eSDK extends AFe1mSDK<AFh1rSDK> {
    @NotNull
    public static final AFa1tSDK AFa1tSDK = new AFa1tSDK(null);
    @NotNull
    private final ms.i areAllFieldsValid;
    @NotNull
    private final AFc1oSDK component1;
    @NotNull
    private final AFc1eSDK component2;
    @NotNull
    private final AFh1rSDK component3;
    @NotNull
    private final AFc1hSDK component4;
    @NotNull
    private final ms.i copy;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1tSDK {
        private AFa1tSDK() {
        }

        public /* synthetic */ AFa1tSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1uSDK {
        @Nullable
        private String advertisingId;
        private boolean advertisingIdWithGps;
        @NotNull
        private final StringBuilder gaidError;
        @Nullable
        private Boolean isLimitAdTrackingEnabled;

        public AFa1uSDK() {
            this(null, null, false, null, 15, null);
        }

        public static /* synthetic */ AFa1uSDK copy$default(AFa1uSDK aFa1uSDK, String str, Boolean bool, boolean z10, StringBuilder sb2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = aFa1uSDK.advertisingId;
            }
            if ((i10 & 2) != 0) {
                bool = aFa1uSDK.isLimitAdTrackingEnabled;
            }
            if ((i10 & 4) != 0) {
                z10 = aFa1uSDK.advertisingIdWithGps;
            }
            if ((i10 & 8) != 0) {
                sb2 = aFa1uSDK.gaidError;
            }
            return aFa1uSDK.copy(str, bool, z10, sb2);
        }

        @Nullable
        public final String component1() {
            return this.advertisingId;
        }

        @Nullable
        public final Boolean component2() {
            return this.isLimitAdTrackingEnabled;
        }

        public final boolean component3() {
            return this.advertisingIdWithGps;
        }

        @NotNull
        public final StringBuilder component4() {
            return this.gaidError;
        }

        @NotNull
        public final AFa1uSDK copy(@Nullable String str, @Nullable Boolean bool, boolean z10, @NotNull StringBuilder gaidError) {
            Intrinsics.checkNotNullParameter(gaidError, "gaidError");
            return new AFa1uSDK(str, bool, z10, gaidError);
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AFa1uSDK)) {
                return false;
            }
            AFa1uSDK aFa1uSDK = (AFa1uSDK) obj;
            if (Intrinsics.areEqual(this.advertisingId, aFa1uSDK.advertisingId) && Intrinsics.areEqual(this.isLimitAdTrackingEnabled, aFa1uSDK.isLimitAdTrackingEnabled) && this.advertisingIdWithGps == aFa1uSDK.advertisingIdWithGps && Intrinsics.areEqual(this.gaidError, aFa1uSDK.gaidError)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String getAdvertisingId() {
            return this.advertisingId;
        }

        public final boolean getAdvertisingIdWithGps() {
            return this.advertisingIdWithGps;
        }

        @NotNull
        public final StringBuilder getGaidError() {
            return this.gaidError;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode;
            String str = this.advertisingId;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            Boolean bool = this.isLimitAdTrackingEnabled;
            if (bool != null) {
                i10 = bool.hashCode();
            }
            int i12 = (i11 + i10) * 31;
            boolean z10 = this.advertisingIdWithGps;
            int i13 = z10;
            if (z10 != 0) {
                i13 = 1;
            }
            return ((i12 + i13) * 31) + this.gaidError.hashCode();
        }

        @Nullable
        public final Boolean isLimitAdTrackingEnabled() {
            return this.isLimitAdTrackingEnabled;
        }

        public final void setAdvertisingId(@Nullable String str) {
            this.advertisingId = str;
        }

        public final void setAdvertisingIdWithGps(boolean z10) {
            this.advertisingIdWithGps = z10;
        }

        public final void setLimitAdTrackingEnabled(@Nullable Boolean bool) {
            this.isLimitAdTrackingEnabled = bool;
        }

        @NotNull
        public final String toString() {
            String str = this.advertisingId;
            Boolean bool = this.isLimitAdTrackingEnabled;
            boolean z10 = this.advertisingIdWithGps;
            StringBuilder sb2 = this.gaidError;
            return "FetchGaidData(advertisingId=" + str + ", isLimitAdTrackingEnabled=" + bool + ", advertisingIdWithGps=" + z10 + ", gaidError=" + ((Object) sb2) + ")";
        }

        public AFa1uSDK(@Nullable String str, @Nullable Boolean bool, boolean z10, @NotNull StringBuilder gaidError) {
            Intrinsics.checkNotNullParameter(gaidError, "gaidError");
            this.advertisingId = str;
            this.isLimitAdTrackingEnabled = bool;
            this.advertisingIdWithGps = z10;
            this.gaidError = gaidError;
        }

        public /* synthetic */ AFa1uSDK(String str, Boolean bool, boolean z10, StringBuilder sb2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : bool, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? new StringBuilder() : sb2);
        }
    }

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1ySDK implements CloudDevCallback {
        final /* synthetic */ AFa1uSDK $fetchGaidData;
        final /* synthetic */ CountDownLatch $latch;

        AFa1ySDK(AFa1uSDK aFa1uSDK, CountDownLatch countDownLatch) {
            this.$fetchGaidData = aFa1uSDK;
            this.$latch = countDownLatch;
        }

        public final void onError(@NotNull String reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.ADVERTISING_ID;
            AFh1ySDK.w$default(aFLogger, aFg1cSDK, "Could not fetch GAID using CloudDevSdk: " + reason, false, 4, null);
            StringBuilder gaidError = this.$fetchGaidData.getGaidError();
            gaidError.append(reason);
            gaidError.append(" |");
            this.$latch.countDown();
        }

        public final void onSuccess(@NotNull Map<String, String> kinds) {
            Intrinsics.checkNotNullParameter(kinds, "kinds");
            AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "CloudDevCallback received onSuccess", false, 4, null);
            this.$fetchGaidData.setAdvertisingId(kinds.get("gaid"));
            this.$latch.countDown();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFe1eSDK(@NotNull AFd1zSDK aFd1zSDK) {
        super(AFe1pSDK.FETCH_ADVERTISING_ID, new AFe1pSDK[0], "FetchAdvertisingIdTask");
        Intrinsics.checkNotNullParameter(aFd1zSDK, "");
        AFc1hSDK AFInAppEventParameterName = aFd1zSDK.AFInAppEventParameterName();
        Intrinsics.checkNotNullExpressionValue(AFInAppEventParameterName, "");
        this.component4 = AFInAppEventParameterName;
        AFc1oSDK AFAdRevenueData = aFd1zSDK.AFAdRevenueData();
        Intrinsics.checkNotNullExpressionValue(AFAdRevenueData, "");
        this.component1 = AFAdRevenueData;
        AFc1eSDK force = aFd1zSDK.force();
        Intrinsics.checkNotNullExpressionValue(force, "");
        this.component2 = force;
        this.component3 = new AFh1rSDK(null, null, null, null, null, null, null, null, 255, null);
        this.areAllFieldsValid = kotlin.c.b(new Function0<Long>() { // from class: com.appsflyer.internal.AFe1eSDK.4
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                Long v10;
                String currencyIso4217Code = AFe1eSDK.this.component1.getCurrencyIso4217Code("com.appsflyer.fetch_ids.timeout");
                return Long.valueOf((currencyIso4217Code == null || (v10 = StringsKt.v(currencyIso4217Code)) == null) ? 1000L : v10.longValue());
            }
        });
        this.copy = kotlin.c.b(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFe1eSDK.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(Boolean.parseBoolean(AFe1eSDK.this.component1.getCurrencyIso4217Code("com.appsflyer.enable_instant_plays")));
            }
        });
    }

    private static boolean component2() {
        String str;
        try {
            Class.forName("com.samsung.android.game.cloudgame.dev.sdk.CloudDevSdk");
            return true;
        } catch (Throwable th2) {
            if (th2 instanceof ClassNotFoundException) {
                str = "CloudDevSdk not found";
            } else {
                str = "Unexpected exception while checking if running in cloud environment: " + th2.getMessage();
            }
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, str, th2, true, false, false, false, 112, null);
            return false;
        }
    }

    private final boolean component3() {
        return ((Boolean) this.copy.getValue()).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045 A[LOOP:0: B:3:0x0005->B:15:0x0045, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0048 A[EDGE_INSN: B:18:0x0048->B:16:0x0048 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean copydefault() {
        /*
            r17 = this;
            r0 = r17
            r1 = 2
            r2 = 0
            r3 = r2
        L5:
            if (r1 <= 0) goto L48
            boolean r3 = r17.component3()
            r4 = 1
            if (r3 == 0) goto L22
            boolean r3 = r0.getMonetizationNetwork(r1)
            if (r3 == 0) goto L22
            com.appsflyer.AFLogger r5 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r6 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r9 = 4
            r10 = 0
            java.lang.String r7 = "GAID fetched using Samsung Cloud dev SDK"
            r8 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r5, r6, r7, r8, r9, r10)
        L20:
            r3 = r4
            goto L43
        L22:
            boolean r3 = r0.getCurrencyIso4217Code(r1)
            if (r3 == 0) goto L35
            com.appsflyer.AFLogger r5 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r6 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r9 = 4
            r10 = 0
            java.lang.String r7 = "GAID fetched using GMS"
            r8 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r5, r6, r7, r8, r9, r10)
            goto L20
        L35:
            com.appsflyer.AFLogger r11 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r12 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r15 = 4
            r16 = 0
            java.lang.String r13 = "Failed to fetch GAID"
            r14 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r11, r12, r13, r14, r15, r16)
            r3 = r2
        L43:
            if (r3 != 0) goto L48
            int r1 = r1 + (-1)
            goto L5
        L48:
            com.appsflyer.internal.AFc1eSDK r1 = r0.component2
            com.appsflyer.internal.AFh1rSDK r2 = r0.component3
            r1.component3 = r2
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1eSDK.copydefault():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x006e, code lost:
        if (r2.getGaidError().length() > 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0070, code lost:
        getRevenue(r20.component3, r2.getGaidError().toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d5, code lost:
        if (r2.getGaidError().length() <= 0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d8, code lost:
        r0 = r2.getAdvertisingId();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00dc, code lost:
        if (r0 == null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e2, code lost:
        if (r0.length() != 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e5, code lost:
        r0 = r20.component3;
        r0.getCurrencyIso4217Code = r2.getAdvertisingId();
        r2 = java.lang.Boolean.FALSE;
        r0.getRevenue = r2;
        r4 = java.lang.Boolean.TRUE;
        r0.AFAdRevenueData = r4;
        r0.getMediationNetwork = r2;
        r0.getMonetizationNetwork = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00fc, code lost:
        if (r21 == 2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fe, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ff, code lost:
        r0.component2 = java.lang.Boolean.valueOf(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0105, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0106, code lost:
        return false;
     */
    @androidx.annotation.RequiresApi(23)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getMediationNetwork(int r21) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1eSDK.getMediationNetwork(int):boolean");
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    @VisibleForTesting(otherwise = 4)
    public final long AFAdRevenueData() {
        return ((Number) this.areAllFieldsValid.getValue()).longValue();
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    @VisibleForTesting(otherwise = 4)
    @NotNull
    public final AFe1uSDK getRevenue() {
        AFe1uSDK aFe1uSDK;
        if (this.component2.AFAdRevenueData()) {
            AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "QUEUE: Advertising ID collection is disabled. Skipping fetching... ", false, 4, null);
            return AFe1uSDK.FAILURE;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Boolean valueOf = Boolean.valueOf(copydefault());
        Boolean bool = Boolean.FALSE;
        if (CollectionsKt.q(valueOf, bool, bool).contains(Boolean.TRUE)) {
            aFe1uSDK = AFe1uSDK.SUCCESS;
        } else {
            aFe1uSDK = AFe1uSDK.FAILURE;
        }
        AFc1eSDK aFc1eSDK = this.component2;
        AFd1aSDK aFd1aSDK = new AFd1aSDK(System.currentTimeMillis() - currentTimeMillis);
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.ADVERTISING_ID;
        long j10 = aFd1aSDK.getMediationNetwork;
        AFh1ySDK.v$default(aFLogger, aFg1cSDK, "QUEUE: FetchAdvertisingIdTask: took " + j10 + "ms", false, 4, null);
        aFc1eSDK.getMediationNetwork(aFd1aSDK);
        return aFe1uSDK;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0082 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getCurrencyIso4217Code(int r14) {
        /*
            r13 = this;
            com.appsflyer.AFLogger r0 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r1 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            r4 = 4
            r5 = 0
            java.lang.String r2 = "Trying to fetch GAID..."
            r3 = 0
            com.appsflyer.internal.AFh1ySDK.i$default(r0, r1, r2, r3, r4, r5)
            com.appsflyer.internal.AFe1eSDK$AFa1uSDK r0 = new com.appsflyer.internal.AFe1eSDK$AFa1uSDK
            r11 = 15
            r12 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r6 = r0
            r6.<init>(r7, r8, r9, r10, r11, r12)
            com.appsflyer.internal.AFc1hSDK r1 = r13.component4
            android.content.Context r1 = r1.getMonetizationNetwork
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r1 = getRevenue(r1)
            com.appsflyer.internal.AFc1hSDK r2 = r13.component4
            android.content.Context r2 = r2.getMonetizationNetwork
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            boolean r2 = r13.getCurrencyIso4217Code(r2, r0)
            r4 = 1
            if (r2 != 0) goto L83
            com.appsflyer.AppsFlyerProperties r2 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r5 = "enableGpsFallback"
            boolean r2 = r2.getBoolean(r5, r4)
            if (r2 == 0) goto L4d
            com.appsflyer.internal.AFc1hSDK r2 = r13.component4
            android.content.Context r2 = r2.getMonetizationNetwork
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            boolean r2 = r13.getRevenue(r2, r0)
            if (r2 == 0) goto L4d
            r2 = r4
            goto L4e
        L4d:
            r2 = r3
        L4e:
            java.lang.StringBuilder r5 = r0.getGaidError()
            java.lang.String r5 = r5.toString()
            if (r5 == 0) goto L7b
            boolean r6 = kotlin.text.StringsKt.t0(r5)
            if (r6 == 0) goto L5f
            goto L7b
        L5f:
            java.lang.CharSequence r5 = kotlin.text.StringsKt.v1(r5)
            java.lang.String r5 = r5.toString()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r1)
            java.lang.String r1 = ": "
            r6.append(r1)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
        L7b:
            com.appsflyer.internal.AFh1rSDK r1 = r13.component3
            getRevenue(r1, r5)
            if (r2 != 0) goto L83
            return r3
        L83:
            com.appsflyer.internal.AFh1rSDK r1 = r13.component3
            java.lang.String r2 = r0.getAdvertisingId()
            r1.getCurrencyIso4217Code = r2
            java.lang.Boolean r2 = r0.isLimitAdTrackingEnabled()
            r1.getRevenue = r2
            java.lang.Boolean r2 = r0.isLimitAdTrackingEnabled()
            if (r2 == 0) goto La1
            boolean r2 = r2.booleanValue()
            r2 = r2 ^ r4
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            goto La2
        La1:
            r2 = 0
        La2:
            r1.AFAdRevenueData = r2
            boolean r0 = r0.getAdvertisingIdWithGps()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r1.getMediationNetwork = r0
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r1.getMonetizationNetwork = r0
            r0 = 2
            if (r14 == r0) goto Lb6
            r3 = r4
        Lb6:
            java.lang.Boolean r14 = java.lang.Boolean.valueOf(r3)
            r1.component2 = r14
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1eSDK.getCurrencyIso4217Code(int):boolean");
    }

    private final boolean getMonetizationNetwork(int i10) {
        return getMediationNetwork(i10);
    }

    private static int getRevenue(Context context) {
        try {
            return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
        } catch (Throwable th2) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.ADVERTISING_ID, "isGooglePlayServicesAvailable error", th2, false, false, false, false, 96, null);
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:2:0x0000, B:4:0x001a, B:10:0x002c, B:13:0x0032, B:14:0x0042, B:9:0x0023), top: B:21:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getRevenue(android.content.Context r13, com.appsflyer.internal.AFe1eSDK.AFa1uSDK r14) throws java.lang.IllegalStateException {
        /*
            r12 = this;
            com.appsflyer.internal.AFb1vSDK$AFa1ySDK r13 = com.appsflyer.internal.AFb1vSDK.AFAdRevenueData(r13)     // Catch: java.lang.Throwable -> L21
            java.lang.String r0 = r13.getCurrencyIso4217Code     // Catch: java.lang.Throwable -> L21
            r14.setAdvertisingId(r0)     // Catch: java.lang.Throwable -> L21
            boolean r13 = r13.AFAdRevenueData()     // Catch: java.lang.Throwable -> L21
            java.lang.Boolean r13 = java.lang.Boolean.valueOf(r13)     // Catch: java.lang.Throwable -> L21
            r14.setLimitAdTrackingEnabled(r13)     // Catch: java.lang.Throwable -> L21
            java.lang.String r13 = r14.getAdvertisingId()     // Catch: java.lang.Throwable -> L21
            if (r13 == 0) goto L23
            int r13 = r13.length()     // Catch: java.lang.Throwable -> L21
            if (r13 != 0) goto L2c
            goto L23
        L21:
            r13 = move-exception
            goto L43
        L23:
            java.lang.StringBuilder r13 = r14.getGaidError()     // Catch: java.lang.Throwable -> L21
            java.lang.String r0 = "emptyOrNull (bypass) |"
            r13.append(r0)     // Catch: java.lang.Throwable -> L21
        L2c:
            kotlin.Unit r13 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L21
            if (r13 == 0) goto L32
            r13 = 1
            goto L93
        L32:
            java.lang.StringBuilder r13 = r14.getGaidError()     // Catch: java.lang.Throwable -> L21
            java.lang.String r0 = "gpsAdInfo-null (bypass) |"
            r13.append(r0)     // Catch: java.lang.Throwable -> L21
            java.lang.String r13 = "GpsAdInfo is null (bypass)"
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L21
            r0.<init>(r13)     // Catch: java.lang.Throwable -> L21
            throw r0     // Catch: java.lang.Throwable -> L21
        L43:
            com.appsflyer.AFLogger r10 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r11 = com.appsflyer.internal.AFg1cSDK.ADVERTISING_ID
            java.lang.String r0 = r13.getMessage()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to fetch GAID: "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r2 = r1.toString()
            r8 = 64
            r9 = 0
            r4 = 1
            r5 = 0
            r6 = 0
            r7 = 0
            r0 = r10
            r1 = r11
            r3 = r13
            com.appsflyer.internal.AFh1ySDK.e$default(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9)
            java.lang.StringBuilder r14 = r14.getGaidError()
            java.lang.Class r0 = r13.getClass()
            java.lang.String r0 = r0.getSimpleName()
            r14.append(r0)
            java.lang.String r0 = " |"
            r14.append(r0)
            java.lang.String r14 = r13.getLocalizedMessage()
            if (r14 != 0) goto L89
            java.lang.String r13 = r13.toString()
            r2 = r13
            goto L8a
        L89:
            r2 = r14
        L8a:
            r4 = 4
            r5 = 0
            r3 = 0
            r0 = r10
            r1 = r11
            com.appsflyer.internal.AFh1ySDK.i$default(r0, r1, r2, r3, r4, r5)
            r13 = 0
        L93:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFe1eSDK.getRevenue(android.content.Context, com.appsflyer.internal.AFe1eSDK$AFa1uSDK):boolean");
    }

    private static void getRevenue(AFh1rSDK aFh1rSDK, String str) {
        if (str == null) {
            return;
        }
        String str2 = aFh1rSDK.component3;
        if (str2 != null) {
            String str3 = str2 + " | " + str;
            if (str3 != null) {
                str = str3;
            }
        }
        aFh1rSDK.component3 = str;
    }

    private final boolean getCurrencyIso4217Code(Context context, AFa1uSDK aFa1uSDK) throws IllegalStateException {
        Unit unit;
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                aFa1uSDK.setAdvertisingId(advertisingIdInfo.getId());
                aFa1uSDK.setLimitAdTrackingEnabled(Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled()));
                aFa1uSDK.setAdvertisingIdWithGps(true);
                String advertisingId = aFa1uSDK.getAdvertisingId();
                if (advertisingId != null) {
                    if (advertisingId.length() == 0) {
                    }
                    unit = Unit.f60915a;
                }
                aFa1uSDK.getGaidError().append("emptyOrNull |");
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return true;
            }
            aFa1uSDK.getGaidError().append("gpsAdInfo-null |");
            throw new IllegalStateException("GpsAdIndo is null");
        } catch (Throwable th2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.ADVERTISING_ID;
            String message = th2.getMessage();
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Google Play Services is missing " + message, th2, false, false, false, false, 88, null);
            StringBuilder gaidError = aFa1uSDK.getGaidError();
            gaidError.append(th2.getClass().getSimpleName());
            gaidError.append(" |");
            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "WARNING: Google Play Services is missing.", false, 4, null);
            return false;
        }
    }
}
