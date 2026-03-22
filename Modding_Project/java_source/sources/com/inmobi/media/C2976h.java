package com.inmobi.media;

import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.inmobi.adquality.models.AdQualityControl;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.core.Trackers;
import com.inmobi.ads.core.TrackingInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.h  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2976h {
    @NotNull
    public static final String CLICK_BEACON = "click";
    @NotNull
    public static final C2944f Companion = new C2944f();
    private static final boolean DEFAULT_ALLOW_AUTO_REDIRECTION = false;
    @NotNull
    public static final String IMPRESSION_BEACON = "impression";
    private static final long INVALID_AD_EXPIRY = -1;
    @NotNull
    public static final String LOAD_AD_TOKEN_URL = "load_ad_token_url";
    @NotNull
    public static final String LOAD_AD_TOKEN_URL_FAILURE = "load_ad_token_url_failure";
    private static final String TAG = "h";
    @NotNull
    public static final String WIN_BEACON = "win_beacon";
    @Nullable
    private final String adAuctionMeta;
    @Nullable
    private JSONObject adContent;
    @NotNull
    private final ms.i adMetaInfo$delegate;
    @Nullable
    private AdQualityControl adQualityControl;
    @Nullable
    private String adType;
    private final boolean allowAutoRedirection;
    @Nullable
    private JSONArray assetUrls;
    @Nullable
    private final JSONObject contextData;
    @Z4
    @Nullable
    private C3136r0 features;
    @NotNull
    private final String impressionId;
    private boolean isPreloadWebView;
    @Nullable
    private JSONArray landingPageParams;
    private long mExpiryDurationInMillis;
    private long mInsertionTimestampInMillis;
    @NotNull
    private String markupType;
    @Nullable
    private final JSONObject metaInfo;
    @NotNull
    private String pubContent;
    @Nullable

    /* renamed from: sf  reason: collision with root package name */
    private String f24785sf;
    @Nullable
    private final JSONArray trackers;
    @NotNull
    private final List<TrackingInfo> trackingInfo;
    @NotNull
    private final JSONObject transaction;
    @NotNull
    private String webVast;

    public C2976h() {
        this.webVast = "";
        this.impressionId = "";
        this.trackingInfo = CollectionsKt.n();
        this.transaction = new JSONObject();
        this.pubContent = "";
        this.markupType = "unknown";
        this.adMetaInfo$delegate = kotlin.c.b(new C2960g(this));
        this.mInsertionTimestampInMillis = System.currentTimeMillis();
    }

    @Nullable
    public final String A() {
        return this.f24785sf;
    }

    @Nullable
    public final Boolean C() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject != null) {
            return Boolean.valueOf(jSONObject.optBoolean("enabled"));
        }
        return null;
    }

    @Nullable
    public final JSONArray D() {
        JSONObject jSONObject = this.adContent;
        if (jSONObject != null) {
            return jSONObject.optJSONArray("trackingEvents");
        }
        return null;
    }

    @NotNull
    public final JSONObject E() {
        return this.transaction;
    }

    @NotNull
    public final String F() {
        return this.webVast;
    }

    public final boolean G() {
        return this.isPreloadWebView;
    }

    public final void a(@Nullable JSONArray jSONArray) {
        this.assetUrls = jSONArray;
    }

    @Nullable
    public final String b() {
        return this.adAuctionMeta;
    }

    @Nullable
    public final JSONObject c() {
        return this.adContent;
    }

    public final void d(@Nullable String str) {
        this.f24785sf = str;
    }

    public final void e(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.webVast = str;
    }

    @Nullable
    public final String f() {
        return this.adType;
    }

    @Nullable
    public final String h() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optString("advertisedContent", null);
    }

    public final boolean i() {
        return this.allowAutoRedirection;
    }

    @Nullable
    public final Long j() {
        try {
            JSONObject jSONObject = this.adContent;
            if (jSONObject == null || !jSONObject.has("asPlcId")) {
                return null;
            }
            return Long.valueOf(jSONObject.getLong("asPlcId"));
        } catch (JSONException e10) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        return null;
    }

    @Nullable
    public final JSONArray k() {
        return this.assetUrls;
    }

    @Nullable
    public final String l() {
        JSONObject jSONObject = this.adContent;
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optString("baseEventUrl", null);
    }

    @Nullable
    public final Long m() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject != null) {
            return Long.valueOf(jSONObject.optLong("bidderId"));
        }
        return null;
    }

    public final int n() {
        JSONObject jSONObject = this.contextData;
        if (jSONObject == null) {
            return -1;
        }
        return jSONObject.optInt("casAdTypeId", -1);
    }

    @NotNull
    public final String o() {
        String str;
        JSONObject jSONObject = this.adContent;
        if (jSONObject != null) {
            str = jSONObject.optString("creativeId");
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @Nullable
    public final String p() {
        JSONObject jSONObject = this.metaInfo;
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optString("creativeType", null);
    }

    @Nullable
    public final C3136r0 q() {
        return this.features;
    }

    @NotNull
    public final String s() {
        return this.impressionId;
    }

    @NotNull
    public final String t() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.metaInfo;
        if (jSONObject2 == null) {
            return "DEFAULT";
        }
        JSONArray optJSONArray = jSONObject2.optJSONArray("landingPageParams");
        this.landingPageParams = optJSONArray;
        if (optJSONArray == null) {
            return "DEFAULT";
        }
        Object opt = optJSONArray.opt(0);
        if (opt instanceof JSONObject) {
            jSONObject = (JSONObject) opt;
        } else {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return "DEFAULT";
        }
        String optString = jSONObject.optString("openMode", "DEFAULT");
        Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
        return optString;
    }

    @NotNull
    public final String u() {
        return this.markupType;
    }

    @NotNull
    public final String w() {
        String str;
        JSONObject jSONObject = this.adContent;
        if (jSONObject != null) {
            str = jSONObject.optString("telemetryMetadataBlob");
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String x() {
        return this.pubContent;
    }

    @NotNull
    public final Set<C3243xb> y() {
        HashSet hashSet = new HashSet();
        try {
            JSONArray jSONArray = this.assetUrls;
            if (jSONArray != null) {
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    JSONObject jSONObject = new JSONObject(jSONArray.getString(i10));
                    byte b10 = (byte) jSONObject.getInt("type");
                    String optString = jSONObject.optString("url");
                    Intrinsics.checkNotNull(optString);
                    if (optString.length() > 0) {
                        hashSet.add(new C3243xb(b10, optString));
                    }
                }
            }
        } catch (JSONException e10) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        return hashSet;
    }

    @Nullable
    public final Map<String, String> z() {
        JSONObject pubContent;
        try {
            JSONObject jSONObject = this.adContent;
            if (jSONObject != null) {
                pubContent = jSONObject.getJSONObject("pubContent");
            } else {
                pubContent = null;
            }
            if (pubContent != null) {
                Companion.getClass();
                Intrinsics.checkNotNullParameter(pubContent, "pubContent");
                if (!pubContent.has("rewards")) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                JSONObject optJSONObject = pubContent.optJSONObject("rewards");
                if (optJSONObject != null) {
                    Iterator<String> keys = optJSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String string = optJSONObject.getString(next);
                        Intrinsics.checkNotNull(next);
                        Intrinsics.checkNotNull(string);
                        hashMap.put(next, string);
                    }
                }
                return hashMap;
            }
        } catch (JSONException e10) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
        return null;
    }

    public final void a(boolean z10) {
        this.isPreloadWebView = z10;
    }

    public final void b(@Nullable String str) {
        try {
            this.transaction.put(C3248y0.CTX_HASH_KEY, str);
            JSONObject jSONObject = this.adContent;
            if (jSONObject != null) {
                jSONObject.put("transaction", this.transaction);
            }
        } catch (JSONException e10) {
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        }
    }

    @Nullable
    public final List<String> c(@NotNull String type) {
        JSONArray optJSONArray;
        Intrinsics.checkNotNullParameter(type, "type");
        JSONArray jSONArray = this.trackers;
        if (jSONArray != null && jSONArray.length() != 0) {
            LinkedList linkedList = new LinkedList();
            int length = this.trackers.length();
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    JSONObject jSONObject = this.trackers.getJSONObject(i10);
                    if (Intrinsics.areEqual(type, jSONObject.optString("type")) && (optJSONArray = jSONObject.optJSONArray("url")) != null) {
                        int length2 = optJSONArray.length();
                        for (int i11 = 0; i11 < length2; i11++) {
                            linkedList.add(optJSONArray.getString(i11));
                        }
                    }
                } catch (JSONException unused) {
                    return null;
                }
            }
            if (linkedList.isEmpty()) {
                return null;
            }
            return linkedList;
        } else if (this.trackingInfo.isEmpty()) {
            return null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (TrackingInfo trackingInfo : this.trackingInfo) {
                for (Trackers trackers : trackingInfo.getTrackers()) {
                    try {
                        if (Intrinsics.areEqual(type, trackers.getType())) {
                            arrayList.addAll(trackers.getUrl());
                            List<String> imExts = trackers.getImExts();
                            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(imExts, 10));
                            Iterator<T> it = imExts.iterator();
                            while (it.hasNext()) {
                                arrayList2.add(trackingInfo.getImBaseUrl() + ((String) it.next()));
                            }
                            arrayList.addAll(arrayList2);
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }

    @NotNull
    public final AdMetaInfo d() {
        return (AdMetaInfo) this.adMetaInfo$delegate.getValue();
    }

    @Nullable
    public final AdQualityControl e() {
        return this.adQualityControl;
    }

    public final void f(@NotNull String pubContent) throws JSONException {
        Intrinsics.checkNotNullParameter(pubContent, "pubContent");
        if (Intrinsics.areEqual("inmobiJson", this.markupType)) {
            JSONObject jSONObject = this.adContent;
            if (jSONObject != null) {
                jSONObject.put("pubContent", new JSONObject(pubContent));
            }
        } else {
            JSONObject jSONObject2 = this.adContent;
            if (jSONObject2 != null) {
                jSONObject2.put("pubContent", pubContent);
            }
        }
        this.pubContent = pubContent;
    }

    public final void a(@Nullable C3136r0 c3136r0) {
        this.features = c3136r0;
    }

    public final void a() throws IllegalStateException {
        if (!Intrinsics.areEqual(this.markupType, "unknown")) {
            if (this.impressionId.length() != 0) {
                return;
            }
            String TAG2 = TAG;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            AbstractC2984h7.a((byte) 1, TAG2, "Impression Id is Null");
            throw new IllegalArgumentException("Invalid Ad");
        }
        String TAG3 = TAG;
        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
        AbstractC2984h7.a((byte) 1, TAG3, "UnKnown MarkUp Type");
        throw new IllegalArgumentException("Invalid Ad");
    }

    public C2976h(@NotNull C2976h ad2, @Nullable JSONArray jSONArray) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        this.webVast = "";
        this.impressionId = "";
        this.trackingInfo = CollectionsKt.n();
        this.transaction = new JSONObject();
        this.pubContent = "";
        this.markupType = "unknown";
        this.adMetaInfo$delegate = kotlin.c.b(new C2960g(this));
        C3111p6.b(ad2, this);
        this.assetUrls = jSONArray;
    }

    public final void a(@Nullable JSONObject jSONObject, @Nullable String str, long j10) {
        this.adContent = jSONObject;
        this.adType = str;
        this.mInsertionTimestampInMillis = System.currentTimeMillis();
        this.mExpiryDurationInMillis = j10;
        String str2 = this.f24785sf;
        if (str2 != null) {
            if (!B2.a(str2)) {
                str2 = null;
            }
            if (str2 != null) {
                this.features = new C3136r0(str2);
            }
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void B() {
    }

    public static /* synthetic */ void g() {
    }

    @VisibleForTesting
    public static /* synthetic */ void r() {
    }

    public static /* synthetic */ void v() {
    }

    public final boolean a(long j10) {
        long currentTimeMillis;
        long j11 = this.mExpiryDurationInMillis;
        int i10 = (j11 > (-1L) ? 1 : (j11 == (-1L) ? 0 : -1));
        if ((i10 == 0 ? -1L : this.mInsertionTimestampInMillis + j11) == -1) {
            currentTimeMillis = (TimeUnit.SECONDS.toMillis(j10) + this.mInsertionTimestampInMillis) - System.currentTimeMillis();
        } else {
            currentTimeMillis = (i10 != 0 ? this.mInsertionTimestampInMillis + j11 : -1L) - System.currentTimeMillis();
        }
        return currentTimeMillis < 0;
    }

    public final void a(@NotNull String buyerPrice) {
        Intrinsics.checkNotNullParameter(buyerPrice, "buyerPrice");
        try {
            this.transaction.put(C3248y0.BUYER_PRICE, Double.parseDouble(buyerPrice));
            JSONObject jSONObject = this.adContent;
            if (jSONObject != null) {
                jSONObject.put("transaction", this.transaction);
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void a(@Nullable JSONObject jSONObject) throws JSONException {
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String str = this.pubContent;
                Intrinsics.checkNotNull(next);
                String string = jSONObject.getString(next);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                this.pubContent = StringsKt.P(str, next, string, false, 4, null);
            }
        }
        f(this.pubContent);
    }
}
