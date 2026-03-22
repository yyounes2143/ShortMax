package com.android.billingclient.api;

import com.android.billingclient.api.BillingResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class u {
    static final BillingResult A;
    static final BillingResult B;
    static final BillingResult C;
    static final BillingResult D;
    static final BillingResult E;
    static final BillingResult F;

    /* renamed from: a  reason: collision with root package name */
    static final BillingResult f6663a;

    /* renamed from: b  reason: collision with root package name */
    static final BillingResult f6664b;

    /* renamed from: c  reason: collision with root package name */
    static final BillingResult f6665c;

    /* renamed from: d  reason: collision with root package name */
    static final BillingResult f6666d;

    /* renamed from: e  reason: collision with root package name */
    static final BillingResult f6667e;

    /* renamed from: f  reason: collision with root package name */
    static final BillingResult f6668f;

    /* renamed from: g  reason: collision with root package name */
    static final BillingResult f6669g;

    /* renamed from: h  reason: collision with root package name */
    static final BillingResult f6670h;

    /* renamed from: i  reason: collision with root package name */
    static final BillingResult f6671i;

    /* renamed from: j  reason: collision with root package name */
    static final BillingResult f6672j;

    /* renamed from: k  reason: collision with root package name */
    static final BillingResult f6673k;

    /* renamed from: l  reason: collision with root package name */
    static final BillingResult f6674l;

    /* renamed from: m  reason: collision with root package name */
    static final BillingResult f6675m;

    /* renamed from: n  reason: collision with root package name */
    static final BillingResult f6676n;

    /* renamed from: o  reason: collision with root package name */
    static final BillingResult f6677o;

    /* renamed from: p  reason: collision with root package name */
    static final BillingResult f6678p;

    /* renamed from: q  reason: collision with root package name */
    static final BillingResult f6679q;

    /* renamed from: r  reason: collision with root package name */
    static final BillingResult f6680r;

    /* renamed from: s  reason: collision with root package name */
    static final BillingResult f6681s;

    /* renamed from: t  reason: collision with root package name */
    static final BillingResult f6682t;

    /* renamed from: u  reason: collision with root package name */
    static final BillingResult f6683u;

    /* renamed from: v  reason: collision with root package name */
    static final BillingResult f6684v;

    /* renamed from: w  reason: collision with root package name */
    static final BillingResult f6685w;

    /* renamed from: x  reason: collision with root package name */
    static final BillingResult f6686x;

    /* renamed from: y  reason: collision with root package name */
    static final BillingResult f6687y;

    /* renamed from: z  reason: collision with root package name */
    static final BillingResult f6688z;

    static {
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(3);
        newBuilder.setDebugMessage("Google Play In-app Billing API version is less than 3");
        newBuilder.build();
        BillingResult.Builder newBuilder2 = BillingResult.newBuilder();
        newBuilder2.setResponseCode(3);
        newBuilder2.setDebugMessage("Google Play In-app Billing API version is less than 9");
        f6663a = newBuilder2.build();
        BillingResult.Builder newBuilder3 = BillingResult.newBuilder();
        newBuilder3.setResponseCode(3);
        newBuilder3.setDebugMessage("Billing service unavailable on device.");
        f6664b = newBuilder3.build();
        BillingResult.Builder newBuilder4 = BillingResult.newBuilder();
        newBuilder4.setResponseCode(2);
        newBuilder4.setDebugMessage("Billing service unavailable on device.");
        f6665c = newBuilder4.build();
        BillingResult.Builder newBuilder5 = BillingResult.newBuilder();
        newBuilder5.setResponseCode(5);
        newBuilder5.setDebugMessage("Client is already in the process of connecting to billing service.");
        f6666d = newBuilder5.build();
        BillingResult.Builder newBuilder6 = BillingResult.newBuilder();
        newBuilder6.setResponseCode(5);
        newBuilder6.setDebugMessage("The list of SKUs can't be empty.");
        newBuilder6.build();
        BillingResult.Builder newBuilder7 = BillingResult.newBuilder();
        newBuilder7.setResponseCode(5);
        newBuilder7.setDebugMessage("SKU type can't be empty.");
        newBuilder7.build();
        BillingResult.Builder newBuilder8 = BillingResult.newBuilder();
        newBuilder8.setResponseCode(5);
        newBuilder8.setDebugMessage("Product type can't be empty.");
        f6667e = newBuilder8.build();
        BillingResult.Builder newBuilder9 = BillingResult.newBuilder();
        newBuilder9.setResponseCode(-2);
        newBuilder9.setDebugMessage("Client does not support extra params.");
        f6668f = newBuilder9.build();
        BillingResult.Builder newBuilder10 = BillingResult.newBuilder();
        newBuilder10.setResponseCode(5);
        newBuilder10.setDebugMessage("Invalid purchase token.");
        f6669g = newBuilder10.build();
        BillingResult.Builder newBuilder11 = BillingResult.newBuilder();
        newBuilder11.setResponseCode(6);
        newBuilder11.setDebugMessage("An internal error occurred.");
        f6670h = newBuilder11.build();
        BillingResult.Builder newBuilder12 = BillingResult.newBuilder();
        newBuilder12.setResponseCode(5);
        newBuilder12.setDebugMessage("SKU can't be null.");
        newBuilder12.build();
        BillingResult.Builder newBuilder13 = BillingResult.newBuilder();
        newBuilder13.setResponseCode(0);
        f6671i = newBuilder13.build();
        BillingResult.Builder newBuilder14 = BillingResult.newBuilder();
        newBuilder14.setResponseCode(-1);
        newBuilder14.setDebugMessage("Service connection is disconnected.");
        f6672j = newBuilder14.build();
        BillingResult.Builder newBuilder15 = BillingResult.newBuilder();
        newBuilder15.setResponseCode(2);
        newBuilder15.setDebugMessage("Timeout communicating with service.");
        f6673k = newBuilder15.build();
        BillingResult.Builder newBuilder16 = BillingResult.newBuilder();
        newBuilder16.setResponseCode(-2);
        newBuilder16.setDebugMessage("Client does not support subscriptions.");
        f6674l = newBuilder16.build();
        BillingResult.Builder newBuilder17 = BillingResult.newBuilder();
        newBuilder17.setResponseCode(-2);
        newBuilder17.setDebugMessage("Client does not support subscriptions update.");
        f6675m = newBuilder17.build();
        BillingResult.Builder newBuilder18 = BillingResult.newBuilder();
        newBuilder18.setResponseCode(-2);
        newBuilder18.setDebugMessage("Client does not support get purchase history.");
        newBuilder18.build();
        BillingResult.Builder newBuilder19 = BillingResult.newBuilder();
        newBuilder19.setResponseCode(-2);
        newBuilder19.setDebugMessage("Client does not support price change confirmation.");
        f6676n = newBuilder19.build();
        BillingResult.Builder newBuilder20 = BillingResult.newBuilder();
        newBuilder20.setResponseCode(-2);
        newBuilder20.setDebugMessage("Play Store version installed does not support cross selling products.");
        f6677o = newBuilder20.build();
        BillingResult.Builder newBuilder21 = BillingResult.newBuilder();
        newBuilder21.setResponseCode(-2);
        newBuilder21.setDebugMessage("Client does not support multi-item purchases.");
        f6678p = newBuilder21.build();
        BillingResult.Builder newBuilder22 = BillingResult.newBuilder();
        newBuilder22.setResponseCode(-2);
        newBuilder22.setDebugMessage("Client does not support offer_id_token.");
        f6679q = newBuilder22.build();
        BillingResult.Builder newBuilder23 = BillingResult.newBuilder();
        newBuilder23.setResponseCode(-2);
        newBuilder23.setDebugMessage("Client does not support ProductDetails.");
        f6680r = newBuilder23.build();
        BillingResult.Builder newBuilder24 = BillingResult.newBuilder();
        newBuilder24.setResponseCode(-2);
        newBuilder24.setDebugMessage("Client does not support in-app messages.");
        f6681s = newBuilder24.build();
        BillingResult.Builder newBuilder25 = BillingResult.newBuilder();
        newBuilder25.setResponseCode(-2);
        newBuilder25.setDebugMessage("Client does not support user choice billing.");
        newBuilder25.build();
        BillingResult.Builder newBuilder26 = BillingResult.newBuilder();
        newBuilder26.setResponseCode(-2);
        newBuilder26.setDebugMessage("Play Store version installed does not support external offer.");
        f6682t = newBuilder26.build();
        BillingResult.Builder newBuilder27 = BillingResult.newBuilder();
        newBuilder27.setResponseCode(-2);
        newBuilder27.setDebugMessage("Play Store version installed does not support multi-item purchases with season pass in one cart.");
        f6683u = newBuilder27.build();
        BillingResult.Builder newBuilder28 = BillingResult.newBuilder();
        newBuilder28.setResponseCode(-2);
        newBuilder28.setDebugMessage("Play Store version installed does not support querying AutoPay plan purchase.");
        f6684v = newBuilder28.build();
        BillingResult.Builder newBuilder29 = BillingResult.newBuilder();
        newBuilder29.setResponseCode(-2);
        newBuilder29.setDebugMessage("Play Store version installed does not support including suspended subscriptions.");
        f6685w = newBuilder29.build();
        BillingResult.Builder newBuilder30 = BillingResult.newBuilder();
        newBuilder30.setResponseCode(5);
        newBuilder30.setDebugMessage("Unknown feature");
        f6686x = newBuilder30.build();
        BillingResult.Builder newBuilder31 = BillingResult.newBuilder();
        newBuilder31.setResponseCode(-2);
        newBuilder31.setDebugMessage("Play Store version installed does not support get billing config.");
        f6687y = newBuilder31.build();
        BillingResult.Builder newBuilder32 = BillingResult.newBuilder();
        newBuilder32.setResponseCode(-2);
        newBuilder32.setDebugMessage("Query product details with serialized docid is not supported.");
        f6688z = newBuilder32.build();
        BillingResult.Builder newBuilder33 = BillingResult.newBuilder();
        newBuilder33.setResponseCode(-2);
        newBuilder33.setDebugMessage("Play Store version installed does not support launching external offer flow.");
        A = newBuilder33.build();
        BillingResult.Builder newBuilder34 = BillingResult.newBuilder();
        newBuilder34.setResponseCode(4);
        newBuilder34.setDebugMessage("Item is unavailable for purchase.");
        B = newBuilder34.build();
        BillingResult.Builder newBuilder35 = BillingResult.newBuilder();
        newBuilder35.setResponseCode(-2);
        newBuilder35.setDebugMessage("Query product details with developer specified account is not supported.");
        C = newBuilder35.build();
        BillingResult.Builder newBuilder36 = BillingResult.newBuilder();
        newBuilder36.setResponseCode(-2);
        newBuilder36.setDebugMessage("Play Store version installed does not support alternative billing only.");
        D = newBuilder36.build();
        BillingResult.Builder newBuilder37 = BillingResult.newBuilder();
        newBuilder37.setResponseCode(5);
        newBuilder37.setDebugMessage("To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient.");
        E = newBuilder37.build();
        BillingResult.Builder newBuilder38 = BillingResult.newBuilder();
        newBuilder38.setResponseCode(6);
        newBuilder38.setDebugMessage("An error occurred while retrieving billing override.");
        F = newBuilder38.build();
        BillingResult.Builder newBuilder39 = BillingResult.newBuilder();
        newBuilder39.setResponseCode(-2);
        newBuilder39.setDebugMessage("Play Store version installed does not support the provided billing program.");
        newBuilder39.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BillingResult a(int i10, String str) {
        BillingResult.Builder newBuilder = BillingResult.newBuilder();
        newBuilder.setResponseCode(i10);
        newBuilder.setDebugMessage(str);
        return newBuilder.build();
    }
}
