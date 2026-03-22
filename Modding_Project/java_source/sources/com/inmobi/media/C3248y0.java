package com.inmobi.media;

import com.inmobi.ads.exceptions.VastException;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Iterator;
import java.util.LinkedList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.y0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3248y0 {
    @NotNull
    public static final String BUYER_PRICE = "buyerPrice";
    @NotNull
    public static final String CTX_HASH_KEY = "ctxHash";
    @NotNull
    public static final C3232x0 Companion = new C3232x0();
    private static final long INVALID_AD_EXPIRY = -1;
    @NotNull
    private static final String KEY_ADS = "ads";
    @NotNull
    private static final String KEY_AD_SET_EXPIRY = "expiry";
    @NotNull
    private static final String KEY_IMPRESSION_ID = "impressionId";
    @NotNull
    private static final String KEY_IM_EXT = "imExts";
    @NotNull
    private static final String KEY_MACROS = "macros";
    @NotNull
    public static final String KEY_REQUEST_ID = "requestId";
    @NotNull
    private static final String KEY_TRACKERS = "trackers";
    @NotNull
    private static final String KEY_TRACKING_INFO = "trackingInfo";
    @NotNull
    private static final String KEY_URL = "url";
    @NotNull
    private static final String MACRO_ADV_PRICE = "${advPrice}";
    @NotNull
    public static final String MACRO_CTX_HASH = "${ctxhash}";
    private static final String TAG = "y0";
    @Nullable
    private final String adSetAuctionMeta;
    @Nullable
    private String adType;
    private final boolean isPod;
    @Nullable
    private Boolean isRewarded;
    private boolean logEnabled;
    @Nullable
    private JSONObject macros;
    private long placementId;
    @NotNull
    private final String adSetId = "";
    @NotNull
    private String requestId = "";
    private boolean isAuctionClosed = true;
    @NotNull
    private String transactionID = "";
    @NotNull
    private final LinkedList<C2976h> ads = new LinkedList<>();

    @NotNull
    public final String c() {
        return this.adSetId;
    }

    @Nullable
    public final String d() {
        return this.adType;
    }

    @NotNull
    public final LinkedList<C2976h> f() {
        return this.ads;
    }

    public final boolean g() {
        return this.logEnabled;
    }

    @Nullable
    public final JSONObject h() {
        return this.macros;
    }

    @Nullable
    public final C2976h i() {
        try {
            if (!this.ads.isEmpty()) {
                CollectionsKt.P(this.ads);
            }
        } catch (Exception unused) {
        }
        return p();
    }

    public final long j() {
        return this.placementId;
    }

    @NotNull
    public final String k() {
        return this.requestId;
    }

    @NotNull
    public final String l() {
        return this.transactionID;
    }

    public final boolean m() {
        return this.isAuctionClosed;
    }

    public final boolean n() {
        return this.isPod;
    }

    @Nullable
    public final Boolean o() {
        return this.isRewarded;
    }

    @Nullable
    public final C2976h p() {
        if (!this.ads.isEmpty()) {
            return this.ads.getFirst();
        }
        return null;
    }

    @Nullable
    public final String b() {
        return this.adSetAuctionMeta;
    }

    public final void a(@Nullable Boolean bool) {
        this.isRewarded = bool;
    }

    public final void a(@NotNull JSONObject responseJson, @NotNull AdConfig adConfig, @Nullable InterfaceC3269z5 interfaceC3269z5) throws JSONException {
        C2976h c2976h;
        Intrinsics.checkNotNullParameter(responseJson, "responseJson");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        if (!this.isAuctionClosed) {
            String string = responseJson.getString("requestId");
            JSONArray jSONArray = responseJson.getJSONArray("ads");
            if (Intrinsics.areEqual(this.requestId, string)) {
                int length = jSONArray.length();
                if (length != 0) {
                    LinkedList linkedList = new LinkedList();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i10);
                        String string2 = jSONObject.getString(KEY_IMPRESSION_ID);
                        this.macros = jSONObject.optJSONObject(KEY_MACROS);
                        Intrinsics.checkNotNull(string2);
                        Iterator<T> it = this.ads.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                c2976h = null;
                                break;
                            }
                            c2976h = (C2976h) it.next();
                            if (Intrinsics.areEqual(string2, c2976h.s())) {
                                break;
                            }
                        }
                        if (c2976h != null) {
                            c2976h.a(this.macros);
                            try {
                                c2976h = J.a(c2976h, adConfig, interfaceC3269z5);
                            } catch (VastException unused) {
                            }
                            if (c2976h != null) {
                                JSONObject jSONObject2 = this.macros;
                                if (jSONObject2 != null) {
                                    if (jSONObject2.has(MACRO_ADV_PRICE)) {
                                        String string3 = jSONObject2.getString(MACRO_ADV_PRICE);
                                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                                        c2976h.a(string3);
                                    }
                                    if (jSONObject2.has(MACRO_CTX_HASH)) {
                                        c2976h.b(jSONObject2.getString(MACRO_CTX_HASH));
                                    }
                                }
                                linkedList.add(c2976h);
                            }
                        }
                    }
                    this.ads.clear();
                    this.ads.addAll(linkedList);
                    if (!this.ads.isEmpty()) {
                        this.isAuctionClosed = true;
                        return;
                    }
                    throw new IllegalArgumentException("No matching ads to render");
                }
                throw new IllegalArgumentException("UAS response supplied doesn't have any ads");
            }
            throw new IllegalArgumentException("UAS response supplied was of a different requestId");
        }
        throw new IllegalStateException("Auction was already closed. Can't process UAS response");
    }

    public static /* synthetic */ void e() {
    }

    public final void a(@NotNull AdConfig adConfig, @Nullable Te te2, @Nullable InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        C2976h p10 = p();
        if (p10 != null) {
            Se.a(p10, adConfig, te2, interfaceC3269z5);
        }
    }

    public final void a(@NotNull C2976h ad2) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        try {
            if (p() != null) {
                CollectionsKt.P(this.ads);
            }
        } catch (Exception unused) {
        }
        this.ads.add(0, ad2);
    }
}
