package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.attribution.AppsFlyerRequestListener;
/* loaded from: classes2.dex */
public class AFf1sSDK extends AFe1fSDK<String> {
    private static final AFe1pSDK[] registerClient = {AFe1pSDK.DLSDK, AFe1pSDK.ONELINK, AFe1pSDK.REGISTER};
    private final AFf1fSDK AFInAppEventType;
    private final AFc1hSDK AFKeystoreWrapper;
    protected final AFc1qSDK component2;
    private final AFh1mSDK copy;
    private final AFe1vSDK copydefault;
    @NonNull
    private final AFc1oSDK equals;
    private final AFf1kSDK hashCode;
    protected final AFg1nSDK toString;

    public AFf1sSDK(@NonNull AFh1mSDK aFh1mSDK, @NonNull AFd1zSDK aFd1zSDK) {
        this(aFh1mSDK, aFd1zSDK, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x015b  */
    @Override // com.appsflyer.internal.AFe1fSDK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.appsflyer.internal.AFd1hSDK<java.lang.String> AFAdRevenueData(@androidx.annotation.NonNull java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1sSDK.AFAdRevenueData(java.lang.String):com.appsflyer.internal.AFd1hSDK");
    }

    protected void component1(AFh1mSDK aFh1mSDK) {
        this.toString.getMediationNetwork(aFh1mSDK);
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    protected final AppsFlyerRequestListener component2() {
        return this.copy.getCurrencyIso4217Code;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    protected boolean copydefault() {
        return true;
    }

    protected void getCurrencyIso4217Code(AFh1mSDK aFh1mSDK) {
        this.toString.AFAdRevenueData(aFh1mSDK);
    }

    protected void getMediationNetwork(AFh1mSDK aFh1mSDK) {
        this.toString.getMonetizationNetwork(aFh1mSDK.AFAdRevenueData);
    }

    protected void getMonetizationNetwork(AFh1mSDK aFh1mSDK) {
        this.toString.getRevenue(aFh1mSDK);
    }

    protected void getRevenue(AFh1mSDK aFh1mSDK) {
        this.toString.getCurrencyIso4217Code(aFh1mSDK);
    }

    public AFf1sSDK(@NonNull AFh1mSDK aFh1mSDK, @NonNull AFd1zSDK aFd1zSDK, String str) {
        super(aFh1mSDK.AFAdRevenueData(), new AFe1pSDK[]{AFe1pSDK.RC_CDN, AFe1pSDK.FETCH_ADVERTISING_ID}, aFd1zSDK, str);
        this.copy = aFh1mSDK;
        this.copydefault = aFd1zSDK.AFKeystoreWrapper();
        this.component2 = aFd1zSDK.component4();
        this.hashCode = aFd1zSDK.component1();
        this.AFKeystoreWrapper = aFd1zSDK.AFInAppEventParameterName();
        this.equals = aFd1zSDK.AFAdRevenueData();
        this.toString = aFd1zSDK.component3();
        this.AFInAppEventType = aFd1zSDK.afDebugLog();
        for (AFe1pSDK aFe1pSDK : registerClient) {
            if (this.getRevenue == aFe1pSDK) {
                return;
            }
        }
        int i10 = this.copy.component4;
        AFe1pSDK aFe1pSDK2 = this.getRevenue;
        if (i10 <= 0) {
            AFe1pSDK aFe1pSDK3 = AFe1pSDK.CONVERSION;
            if (aFe1pSDK2 != aFe1pSDK3) {
                this.AFAdRevenueData.add(aFe1pSDK3);
                return;
            }
            return;
        }
        this.getCurrencyIso4217Code.add(AFe1pSDK.CONVERSION);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007e A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:7:0x001e, B:9:0x0024, B:12:0x003f, B:14:0x0045, B:15:0x004e, B:17:0x0059, B:22:0x0065, B:25:0x006d, B:26:0x0078, B:28:0x007e, B:30:0x0098, B:32:0x009d, B:34:0x00b2, B:35:0x00b9, B:37:0x00bd, B:40:0x00c4, B:41:0x00cb, B:31:0x009b, B:42:0x00ce, B:44:0x00d8, B:45:0x00e5, B:2:0x0000), top: B:49:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d8 A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:7:0x001e, B:9:0x0024, B:12:0x003f, B:14:0x0045, B:15:0x004e, B:17:0x0059, B:22:0x0065, B:25:0x006d, B:26:0x0078, B:28:0x007e, B:30:0x0098, B:32:0x009d, B:34:0x00b2, B:35:0x00b9, B:37:0x00bd, B:40:0x00c4, B:41:0x00cb, B:31:0x009b, B:42:0x00ce, B:44:0x00d8, B:45:0x00e5, B:2:0x0000), top: B:49:0x0000 }] */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void AFAdRevenueData(com.appsflyer.internal.AFh1mSDK r9) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFf1sSDK.AFAdRevenueData(com.appsflyer.internal.AFh1mSDK):void");
    }
}
