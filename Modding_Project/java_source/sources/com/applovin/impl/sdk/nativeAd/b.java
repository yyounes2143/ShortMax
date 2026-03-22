package com.applovin.impl.sdk.nativeAd;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.b6;
import com.applovin.impl.f6;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.l7;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.impl.sdk.nativeAd.a;
import com.applovin.impl.sdk.network.e;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class b extends g5 implements a.InterfaceC0120a, AppLovinAdLoadListener {
    private final List A;
    private final List B;

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f9825g;

    /* renamed from: h  reason: collision with root package name */
    private final JSONObject f9826h;

    /* renamed from: i  reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f9827i;

    /* renamed from: j  reason: collision with root package name */
    private String f9828j;

    /* renamed from: k  reason: collision with root package name */
    private String f9829k;

    /* renamed from: l  reason: collision with root package name */
    private String f9830l;

    /* renamed from: m  reason: collision with root package name */
    private Double f9831m;

    /* renamed from: n  reason: collision with root package name */
    private String f9832n;

    /* renamed from: o  reason: collision with root package name */
    private Uri f9833o;

    /* renamed from: p  reason: collision with root package name */
    private Uri f9834p;

    /* renamed from: q  reason: collision with root package name */
    private l7 f9835q;

    /* renamed from: r  reason: collision with root package name */
    private Uri f9836r;

    /* renamed from: s  reason: collision with root package name */
    private Uri f9837s;

    /* renamed from: t  reason: collision with root package name */
    private Uri f9838t;

    /* renamed from: u  reason: collision with root package name */
    private Uri f9839u;

    /* renamed from: v  reason: collision with root package name */
    private final List f9840v;

    /* renamed from: w  reason: collision with root package name */
    private final List f9841w;

    /* renamed from: x  reason: collision with root package name */
    private final List f9842x;

    /* renamed from: y  reason: collision with root package name */
    private final List f9843y;

    /* renamed from: z  reason: collision with root package name */
    private final List f9844z;

    public b(JSONObject jSONObject, JSONObject jSONObject2, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, k kVar) {
        super("TaskRenderNativeAd", kVar);
        this.f9828j = "";
        this.f9829k = "";
        this.f9830l = "";
        this.f9831m = null;
        this.f9832n = "";
        this.f9833o = null;
        this.f9834p = null;
        this.f9836r = null;
        this.f9837s = null;
        this.f9838t = null;
        this.f9839u = null;
        this.f9840v = new ArrayList();
        this.f9841w = new ArrayList();
        this.f9842x = new ArrayList();
        this.f9843y = new ArrayList();
        this.f9844z = new ArrayList();
        this.A = new ArrayList();
        this.B = new ArrayList();
        this.f9825g = jSONObject;
        this.f9826h = jSONObject2;
        this.f9827i = appLovinNativeAdLoadListener;
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String string = JsonUtils.getString(jSONObject, "url", null);
        if (StringUtils.isValidString(string)) {
            this.f9838t = Uri.parse(string);
            if (o.a()) {
                this.f7962c.a(this.f7961b, "Processed click destination URL: " + this.f9838t);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "fallback", null);
        if (StringUtils.isValidString(string2)) {
            this.f9839u = Uri.parse(string2);
            if (o.a()) {
                this.f7962c.a(this.f7961b, "Processed click destination backup URL: " + this.f9839u);
            }
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "clicktrackers", null);
        if (jSONArray != null) {
            if (JsonUtils.getBoolean(this.f9825g, "use_requests_for_native_ad_click_postbacks", (Boolean) this.f7960a.a(v4.M2)).booleanValue()) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray, i10, null);
                    if (objectAtIndex instanceof String) {
                        String str = (String) objectAtIndex;
                        if (!TextUtils.isEmpty(str)) {
                            this.f9842x.add(new e.a(this.f7960a).b(str).b(false).a(false).h(f()).a());
                        }
                    }
                }
                if (o.a()) {
                    this.f7962c.a(this.f7961b, "Processed click tracking requests: " + this.f9842x);
                    return;
                }
                return;
            }
            try {
                this.f9840v.addAll(JsonUtils.toList(jSONArray));
                if (o.a()) {
                    this.f7962c.a(this.f7961b, "Processed click tracking URLs: " + this.f9840v);
                }
            } catch (Throwable th2) {
                if (o.a()) {
                    this.f7962c.a(this.f7961b, "Failed to render click tracking URLs", th2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        if (o.a()) {
            this.f7962c.a(this.f7961b, "Preparing native ad view components...");
        }
        try {
            appLovinNativeAdImpl.setUpNativeAdViewComponents();
            if (o.a()) {
                this.f7962c.a(this.f7961b, "Successfully prepared native ad view components");
            }
            appLovinNativeAdImpl.getAdEventTracker().h();
            this.f9827i.onNativeAdLoaded(appLovinNativeAdImpl);
        } catch (Throwable th2) {
            if (o.a()) {
                this.f7962c.a(this.f7961b, "Failed to prepare native ad view components", th2);
            }
            b(th2.getMessage());
            this.f7960a.E().a(this.f7961b, "prepareNativeComponents", th2);
        }
    }

    private void c(final AppLovinNativeAdImpl appLovinNativeAdImpl) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.j
            @Override // java.lang.Runnable
            public final void run() {
                b.this.b(appLovinNativeAdImpl);
            }
        });
    }

    private boolean f() {
        return JsonUtils.getBoolean(this.f9825g, "fire_native_ad_postbacks_from_webview", (Boolean) this.f7960a.a(v4.L2)).booleanValue();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        if (o.a()) {
            this.f7962c.a(this.f7961b, "VAST ad rendered successfully");
        }
        this.f9835q = (l7) appLovinAd;
        e();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i10) {
        if (o.a()) {
            this.f7962c.b(this.f7961b, "VAST ad failed to render");
        }
        e();
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v12, types: [org.json.JSONObject, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v5, types: [org.json.JSONObject, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v64 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // java.lang.Runnable
    public void run() {
        boolean z10;
        ?? r32 = 0;
        String string = JsonUtils.getString(this.f9825g, "privacy_icon_url", null);
        if (URLUtil.isValidUrl(string)) {
            this.f9836r = Uri.parse(string);
        }
        String string2 = JsonUtils.getString(this.f9825g, CampaignEx.JSON_KEY_PRIVACY_URL, null);
        if (URLUtil.isValidUrl(string2)) {
            this.f9837s = Uri.parse(string2);
        }
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f9825g, "ortb_response", (JSONObject) null);
        if (jSONObject != null && jSONObject.length() != 0) {
            String string3 = JsonUtils.getString(jSONObject, "version", null);
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, AppMeasurementSdk.ConditionalUserProperty.VALUE, (JSONObject) null);
            if (o.a()) {
                this.f7962c.a(this.f7961b, "Rendering native ad for oRTB version: " + string3);
            }
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "native", jSONObject2);
            a(JsonUtils.getJSONObject(jSONObject3, "link", (JSONObject) null));
            JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject3, "assets", null);
            if (jSONArray != null && jSONArray.length() != 0) {
                String str = "";
                int i10 = 0;
                while (i10 < jSONArray.length()) {
                    JSONObject jSONObject4 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) r32);
                    if (jSONObject4.has("title")) {
                        this.f9828j = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, "title", (JSONObject) r32), MimeTypes.BASE_TYPE_TEXT, r32);
                        if (o.a()) {
                            this.f7962c.a(this.f7961b, "Processed title: " + this.f9828j);
                        }
                    } else if (jSONObject4.has("link")) {
                        a(JsonUtils.getJSONObject(jSONObject4, "link", (JSONObject) r32));
                    } else if (jSONObject4.has("img")) {
                        int i11 = JsonUtils.getInt(jSONObject4, "id", -1);
                        JSONObject jSONObject5 = JsonUtils.getJSONObject(jSONObject4, "img", (JSONObject) r32);
                        int i12 = JsonUtils.getInt(jSONObject5, "type", -1);
                        String string4 = JsonUtils.getString(jSONObject5, "url", r32);
                        if (i12 != 1 && 3 != i11) {
                            if (i12 != 3 && 2 != i11) {
                                if (o.a()) {
                                    this.f7962c.k(this.f7961b, "Unrecognized image: " + jSONObject4);
                                }
                                int i13 = JsonUtils.getInt(jSONObject5, SRStrategy.MEDIAINFO_KEY_WIDTH, -1);
                                int i14 = JsonUtils.getInt(jSONObject5, "h", -1);
                                if (i13 > 0 && i14 > 0) {
                                    if (i13 / i14 > 1.0d) {
                                        if (o.a()) {
                                            this.f7962c.a(this.f7961b, "Inferring main image from " + i13 + TextureRenderKeys.KEY_IS_X + i14 + "...");
                                        }
                                        this.f9834p = Uri.parse(string4);
                                    } else {
                                        if (o.a()) {
                                            this.f7962c.a(this.f7961b, "Inferring icon image from " + i13 + TextureRenderKeys.KEY_IS_X + i14 + "...");
                                        }
                                        this.f9833o = Uri.parse(string4);
                                    }
                                } else if (o.a()) {
                                    this.f7962c.k(this.f7961b, "Skipping...");
                                }
                            } else {
                                this.f9834p = Uri.parse(string4);
                                if (o.a()) {
                                    this.f7962c.a(this.f7961b, "Processed main image URL: " + this.f9834p);
                                }
                            }
                        } else {
                            this.f9833o = Uri.parse(string4);
                            if (o.a()) {
                                this.f7962c.a(this.f7961b, "Processed icon URL: " + this.f9833o);
                            }
                        }
                    } else if (jSONObject4.has("video")) {
                        String string5 = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, "video", (JSONObject) null), "vasttag", null);
                        if (StringUtils.isValidString(string5)) {
                            if (o.a()) {
                                this.f7962c.a(this.f7961b, "Processed VAST video");
                            }
                        } else if (o.a()) {
                            this.f7962c.k(this.f7961b, "Ignoring invalid \"vasttag\" for video: " + jSONObject4);
                        }
                        str = string5;
                    } else if (jSONObject4.has("data")) {
                        int i15 = JsonUtils.getInt(jSONObject4, "id", -1);
                        JSONObject jSONObject6 = JsonUtils.getJSONObject(jSONObject4, "data", (JSONObject) null);
                        int i16 = JsonUtils.getInt(jSONObject6, "type", -1);
                        String string6 = JsonUtils.getString(jSONObject6, AppMeasurementSdk.ConditionalUserProperty.VALUE, null);
                        if (i16 != 1 && i15 != 8) {
                            if (i16 != 2 && i15 != 4) {
                                if (i16 != 12 && i15 != 5) {
                                    if (i16 != 3 && i15 != 6) {
                                        if (o.a()) {
                                            this.f7962c.k(this.f7961b, "Skipping unsupported data: " + jSONObject4);
                                        }
                                    } else {
                                        double a10 = k7.a(string6, -1.0d);
                                        if (a10 == -1.0d) {
                                            if (o.a()) {
                                                this.f7962c.a(this.f7961b, "Received invalid star rating: " + string6);
                                            }
                                        } else {
                                            this.f9831m = Double.valueOf(a10);
                                            if (o.a()) {
                                                this.f7962c.a(this.f7961b, "Processed star rating: " + this.f9831m);
                                            }
                                        }
                                    }
                                } else {
                                    this.f9832n = string6;
                                    if (o.a()) {
                                        this.f7962c.a(this.f7961b, "Processed cta: " + this.f9832n);
                                    }
                                }
                            } else {
                                this.f9830l = string6;
                                if (o.a()) {
                                    this.f7962c.a(this.f7961b, "Processed body: " + this.f9830l);
                                }
                            }
                        } else {
                            this.f9829k = string6;
                            if (o.a()) {
                                this.f7962c.a(this.f7961b, "Processed advertiser: " + this.f9829k);
                            }
                        }
                    } else if (o.a()) {
                        this.f7962c.b(this.f7961b, "Unsupported asset object: " + jSONObject4);
                    }
                    i10++;
                    r32 = 0;
                }
                String string7 = JsonUtils.getString(jSONObject3, "jstracker", null);
                if (StringUtils.isValidString(string7)) {
                    this.f9841w.add(string7);
                    if (o.a()) {
                        this.f7962c.a(this.f7961b, "Processed jstracker: " + string7);
                    }
                }
                Object obj = null;
                JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject3, "imptrackers", null);
                if (jSONArray2 != null) {
                    int i17 = 0;
                    while (i17 < jSONArray2.length()) {
                        Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray2, i17, obj);
                        if (objectAtIndex instanceof String) {
                            String str2 = (String) objectAtIndex;
                            if (!TextUtils.isEmpty(str2)) {
                                this.f9843y.add(new e.a(this.f7960a).b(str2).b(false).a(false).h(f()).a());
                                if (o.a()) {
                                    this.f7962c.a(this.f7961b, "Processed imptracker URL: " + str2);
                                }
                            }
                        }
                        i17++;
                        obj = null;
                    }
                }
                ?? r33 = 0;
                JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject3, "eventtrackers", null);
                if (jSONArray3 != null) {
                    int i18 = 0;
                    while (i18 < jSONArray3.length()) {
                        JSONObject jSONObject7 = JsonUtils.getJSONObject(jSONArray3, i18, (JSONObject) r33);
                        int i19 = JsonUtils.getInt(jSONObject7, NotificationCompat.CATEGORY_EVENT, -1);
                        int i20 = JsonUtils.getInt(jSONObject7, "method", -1);
                        String string8 = JsonUtils.getString(jSONObject7, "url", r33);
                        if (!TextUtils.isEmpty(string8)) {
                            if (i20 != 1 && i20 != 2) {
                                if (o.a()) {
                                    this.f7962c.b(this.f7961b, "Unsupported method for event tracker: " + jSONObject7);
                                }
                            } else if (i20 == 2 && string8.startsWith("<script")) {
                                this.f9841w.add(string8);
                            } else {
                                e.a a11 = new e.a(this.f7960a).b(string8).b(false).a(false);
                                if (!f() && i20 != 2) {
                                    z10 = false;
                                } else {
                                    z10 = true;
                                }
                                com.applovin.impl.sdk.network.e a12 = a11.h(z10).a();
                                if (i19 == 1) {
                                    this.f9843y.add(a12);
                                    if (o.a()) {
                                        this.f7962c.a(this.f7961b, "Processed impression URL: " + string8);
                                    }
                                } else if (i19 == 2) {
                                    this.f9844z.add(a12);
                                    if (o.a()) {
                                        this.f7962c.a(this.f7961b, "Processed viewable MRC50 URL: " + string8);
                                    }
                                } else if (i19 == 3) {
                                    this.A.add(a12);
                                    if (o.a()) {
                                        this.f7962c.a(this.f7961b, "Processed viewable MRC100 URL: " + string8);
                                    }
                                } else {
                                    if (i19 == 4) {
                                        this.B.add(a12);
                                        if (o.a()) {
                                            this.f7962c.a(this.f7961b, "Processed viewable video 50 URL: " + string8);
                                        }
                                    } else if (i19 == 555) {
                                        if (o.a()) {
                                            this.f7962c.a(this.f7961b, "Ignoring processing of OMID URL: " + string8);
                                        }
                                    } else if (o.a()) {
                                        this.f7962c.b(this.f7961b, "Unsupported event tracker: " + jSONObject7);
                                    }
                                    i18++;
                                    r33 = 0;
                                }
                                i18++;
                                r33 = 0;
                            }
                        }
                        i18++;
                        r33 = 0;
                    }
                }
                if (StringUtils.isValidString(str)) {
                    if (o.a()) {
                        this.f7962c.a(this.f7961b, "Processing VAST video...");
                    }
                    this.f7960a.r0().a(f6.a(str, JsonUtils.shallowCopy(this.f9825g), JsonUtils.shallowCopy(this.f9826h), this, this.f7960a));
                    return;
                }
                e();
                return;
            }
            if (o.a()) {
                this.f7962c.b(this.f7961b, "Unable to retrieve assets - failing ad load: " + this.f9825g);
            }
            b("Unable to retrieve assets");
            return;
        }
        if (o.a()) {
            this.f7962c.b(this.f7961b, "No oRtb response provided: " + this.f9825g);
        }
        b("No oRtb response provided");
    }

    private void e() {
        AppLovinNativeAdImpl build = new AppLovinNativeAdImpl.Builder(JsonUtils.shallowCopy(this.f9825g), JsonUtils.shallowCopy(this.f9826h), this.f7960a).setTitle(this.f9828j).setAdvertiser(this.f9829k).setBody(this.f9830l).setCallToAction(this.f9832n).setStarRating(this.f9831m).setIconUri(this.f9833o).setMainImageUri(this.f9834p).setPrivacyIconUri(this.f9836r).setVastAd(this.f9835q).setPrivacyDestinationUri(this.f9837s).setClickDestinationUri(this.f9838t).setClickDestinationBackupUri(this.f9839u).setClickTrackingUrls(this.f9840v).setJsTrackers(this.f9841w).setClickTrackingRequests(this.f9842x).setImpressionRequests(this.f9843y).setViewableMRC50Requests(this.f9844z).setViewableMRC100Requests(this.A).setViewableVideo50Requests(this.B).build();
        build.getAdEventTracker().e();
        if (o.a()) {
            o oVar = this.f7962c;
            String str = this.f7961b;
            oVar.a(str, "Starting cache task for type: " + build.getType() + "...");
        }
        this.f7960a.r0().a((g5) new a(build, this.f7960a, this), b6.b.CORE);
    }

    private void b(String str) {
        this.f9827i.onNativeAdLoadFailed(new AppLovinError(-6, str));
    }

    @Override // com.applovin.impl.sdk.nativeAd.a.InterfaceC0120a
    public void a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        if (o.a()) {
            this.f7962c.a(this.f7961b, "Successfully cached and loaded ad");
        }
        c(appLovinNativeAdImpl);
    }
}
