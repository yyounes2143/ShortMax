package com.inmobi.media;

import android.graphics.Point;
import android.webkit.URLUtil;
import androidx.compose.material.OutlinedTextFieldKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.adjust.sdk.Constants;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.p8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3113p8 {

    /* renamed from: u  reason: collision with root package name */
    public static final /* synthetic */ int f25133u = 0;

    /* renamed from: a  reason: collision with root package name */
    public final JSONObject f25134a;

    /* renamed from: b  reason: collision with root package name */
    public final byte f25135b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f25136c;

    /* renamed from: d  reason: collision with root package name */
    public final JSONObject f25137d;

    /* renamed from: e  reason: collision with root package name */
    public final C2985h8 f25138e;

    /* renamed from: f  reason: collision with root package name */
    public final JSONArray f25139f;

    /* renamed from: g  reason: collision with root package name */
    public C3113p8 f25140g;

    /* renamed from: h  reason: collision with root package name */
    public final HashMap f25141h;

    /* renamed from: i  reason: collision with root package name */
    public final HashMap f25142i;

    /* renamed from: j  reason: collision with root package name */
    public final HashMap f25143j;

    /* renamed from: k  reason: collision with root package name */
    public final HashMap f25144k;

    /* renamed from: l  reason: collision with root package name */
    public Ue f25145l;

    /* renamed from: m  reason: collision with root package name */
    public final AdConfig f25146m;

    /* renamed from: n  reason: collision with root package name */
    public final InterfaceC3269z5 f25147n;

    /* renamed from: o  reason: collision with root package name */
    public final int f25148o;

    /* renamed from: p  reason: collision with root package name */
    public final C3097o8 f25149p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f25150q;

    /* renamed from: r  reason: collision with root package name */
    public F9 f25151r;

    /* renamed from: s  reason: collision with root package name */
    public final boolean f25152s;

    /* renamed from: t  reason: collision with root package name */
    public final Map f25153t;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3113p8(int i10, JSONObject pubContent, AdConfig adConfig, HashMap hashMap, Ue ue2, InterfaceC3269z5 interfaceC3269z5) {
        this(i10, pubContent, null, false, adConfig, hashMap, ue2, interfaceC3269z5);
        Intrinsics.checkNotNullParameter(pubContent, "pubContent");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
    }

    public static int a(int i10) {
        return (int) (U3.b() * i10);
    }

    public final C2985h8 b(int i10) {
        C2985h8 c2985h8 = this.f25138e;
        if (c2985h8 != null) {
            int i11 = 0;
            while (i11 < c2985h8.B) {
                try {
                    int i12 = i11 + 1;
                    C2920d8 c2920d8 = (C2920d8) c2985h8.A.get(i11);
                    Intrinsics.checkNotNull(c2920d8);
                    if (StringsKt.G(c2920d8.f24579b, "card_scrollable", true)) {
                        C2985h8 c2985h82 = c2920d8 instanceof C2985h8 ? (C2985h8) c2920d8 : null;
                        if (i10 >= (c2985h82 != null ? c2985h82.B : 0)) {
                            return null;
                        }
                        C2920d8 c2920d82 = (c2985h82 == null || i10 < 0 || i10 >= c2985h82.B) ? null : (C2920d8) c2985h82.A.get(i10);
                        if (c2920d82 instanceof C2985h8) {
                            return (C2985h8) c2920d82;
                        }
                        return null;
                    }
                    i11 = i12;
                } catch (IndexOutOfBoundsException e10) {
                    throw new NoSuchElementException(e10.getMessage());
                }
            }
        }
        return null;
    }

    public final ArrayList c() {
        HashMap hashMap = this.f25142i;
        return new ArrayList(hashMap != null ? hashMap.keySet() : null);
    }

    public final int d() {
        C2985h8<C2920d8> c2985h8 = this.f25138e;
        if (c2985h8 != null) {
            for (C2920d8 c2920d8 : c2985h8) {
                if (StringsKt.G(c2920d8.f24579b, "card_scrollable", true)) {
                    if (c2920d8 instanceof C2985h8) {
                        return ((C2985h8) c2920d8).B;
                    }
                    return 0;
                }
            }
            return 0;
        }
        return 0;
    }

    public final JSONObject e() {
        try {
            JSONArray jSONArray = this.f25139f;
            if (jSONArray != null) {
                return jSONArray.getJSONObject(0);
            }
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting Pages - ")));
            }
        }
        return null;
    }

    public final boolean f() {
        C2985h8 c2985h8;
        C2985h8 c2985h82 = this.f25138e;
        if (c2985h82 == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                ((A5) interfaceC3269z5).b("p8", "Invalid Data Model: No Root Container");
            }
        } else {
            Iterator it = c2985h82.iterator();
            while (true) {
                C2969g8 c2969g8 = (C2969g8) it;
                if (!c2969g8.hasNext()) {
                    break;
                }
                C2920d8 c2920d8 = (C2920d8) c2969g8.next();
                if (StringsKt.G(c2920d8.f24579b, "card_scrollable", true)) {
                    if (c2920d8 instanceof C2985h8) {
                        c2985h8 = (C2985h8) c2920d8;
                    }
                }
            }
            c2985h8 = null;
            if (c2985h8 == null) {
                InterfaceC3269z5 interfaceC3269z52 = this.f25147n;
                if (interfaceC3269z52 != null) {
                    Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                    ((A5) interfaceC3269z52).b("p8", "No Card Scrollable in the data model");
                }
                return g();
            } else if (d() <= 0) {
                InterfaceC3269z5 interfaceC3269z53 = this.f25147n;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                    ((A5) interfaceC3269z53).b("p8", "Invalid Data Model: No Cards in Card Scrollable");
                }
            } else {
                return g();
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g() {
        /*
            r8 = this;
            java.lang.String r0 = "VIDEO"
            java.util.List r0 = r8.n(r0)
            r1 = 1
            if (r0 == 0) goto Lbe
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L11
            goto Lbe
        L11:
            java.util.Iterator r0 = r0.iterator()
        L15:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto Lbe
            java.lang.Object r2 = r0.next()
            com.inmobi.media.d8 r2 = (com.inmobi.media.C2920d8) r2
            java.lang.String r3 = r2.f24578a
            int r3 = r3.length()
            java.lang.String r4 = "TAG"
            java.lang.String r5 = "p8"
            if (r3 != 0) goto L3b
            com.inmobi.media.z5 r3 = r8.f25147n
            if (r3 == 0) goto L3b
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            com.inmobi.media.A5 r3 = (com.inmobi.media.A5) r3
            java.lang.String r6 = "Video asset has invalid ID! CTA link resolution may not work"
            r3.b(r5, r6)
        L3b:
            boolean r3 = r2 instanceof com.inmobi.media.C2904c9
            r6 = 0
            if (r3 == 0) goto L43
            com.inmobi.media.c9 r2 = (com.inmobi.media.C2904c9) r2
            goto L44
        L43:
            r2 = r6
        L44:
            if (r2 == 0) goto L4b
            com.inmobi.media.Ve r3 = r2.d()
            goto L4c
        L4b:
            r3 = r6
        L4c:
            r7 = 0
            if (r3 != 0) goto L5e
            com.inmobi.media.z5 r0 = r8.f25147n
            if (r0 == 0) goto L5d
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            com.inmobi.media.A5 r0 = (com.inmobi.media.A5) r0
            java.lang.String r1 = "No Vast XML. Discarding DataModel"
            r0.b(r5, r1)
        L5d:
            return r7
        L5e:
            com.inmobi.media.Ve r3 = r2.d()
            if (r3 == 0) goto L69
            com.inmobi.media.Ue r3 = (com.inmobi.media.Ue) r3
            java.util.ArrayList r3 = r3.f24283e
            goto L6a
        L69:
            r3 = r6
        L6a:
            if (r3 == 0) goto Laf
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L73
            goto Laf
        L73:
            com.inmobi.media.Ve r3 = r2.d()
            if (r3 == 0) goto L80
            com.inmobi.media.Ue r3 = (com.inmobi.media.Ue) r3
            java.lang.String r3 = r3.b()
            goto L81
        L80:
            r3 = r6
        L81:
            if (r3 == 0) goto L89
            int r3 = r3.length()
            if (r3 != 0) goto L15
        L89:
            com.inmobi.media.z5 r0 = r8.f25147n
            if (r0 == 0) goto L97
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            com.inmobi.media.A5 r0 = (com.inmobi.media.A5) r0
            java.lang.String r1 = "Invalid Media URL.Discarding the model"
            r0.b(r5, r1)
        L97:
            java.lang.String r0 = "[ERRORCODE]"
            java.lang.String r1 = "403"
            kotlin.Pair r0 = ms.k.a(r0, r1)
            kotlin.Pair[] r0 = new kotlin.Pair[]{r0}
            java.util.HashMap r0 = kotlin.collections.p0.k(r0)
            com.inmobi.media.z5 r1 = r8.f25147n
            java.lang.String r3 = "error"
            r2.a(r3, r0, r6, r1)
            return r7
        Laf:
            com.inmobi.media.z5 r0 = r8.f25147n
            if (r0 == 0) goto Lbd
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r4)
            com.inmobi.media.A5 r0 = (com.inmobi.media.A5) r0
            java.lang.String r1 = "No Media files. Discarding DataModel"
            r0.b(r5, r1)
        Lbd:
            return r7
        Lbe:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3113p8.g():boolean");
    }

    public final void h() {
        C3097o8 c3097o8;
        C3097o8 c3097o82;
        try {
            JSONObject jSONObject = this.f25134a;
            if (jSONObject == null) {
                C3097o8 c3097o83 = this.f25149p;
                if (c3097o83 == null) {
                    return;
                }
                c3097o83.f25119c = new C2920d8((String) null, (String) null, (String) null, (C2937e8) null, 31);
                return;
            }
            if (!jSONObject.isNull("passThroughJson") && (c3097o82 = this.f25149p) != null) {
                c3097o82.f25117a = jSONObject.getJSONObject("passThroughJson");
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("adContent");
            if (optJSONObject != null && (c3097o8 = this.f25149p) != null) {
                C3081n8 c3081n8 = c3097o8.f25118b;
                c3081n8.f25054a = optJSONObject.optString("title", null);
                c3081n8.f25055b = optJSONObject.optString(InMobiNetworkValues.DESCRIPTION, null);
                c3081n8.f25057d = optJSONObject.optString("ctaText", null);
                c3081n8.f25056c = optJSONObject.optString("iconUrl", null);
                c3081n8.f25058e = (float) optJSONObject.optLong("rating", 0L);
                c3081n8.f25059f = optJSONObject.optString("landingPageUrl", null);
                c3081n8.f25060g = optJSONObject.optBoolean("isApp");
            }
            C2920d8 c2920d8 = new C2920d8((String) null, (String) null, (String) null, (C2937e8) null, 31);
            JSONObject optJSONObject2 = jSONObject.optJSONObject("onClick");
            if (optJSONObject2 != null) {
                try {
                    a(c2920d8, optJSONObject2);
                } catch (JSONException unused) {
                    InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
                    if (interfaceC3269z5 != null) {
                        Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                        ((A5) interfaceC3269z5).b("p8", "JSONException in parsing click params for publisher CTA");
                    }
                }
                if (!optJSONObject2.isNull("openMode")) {
                    String string = optJSONObject2.getString("openMode");
                    Intrinsics.checkNotNull(string);
                    String b10 = b(string);
                    Intrinsics.checkNotNullParameter(b10, "<set-?>");
                    c2920d8.f24584g = b10;
                    String optString = optJSONObject2.optString("fallbackUrl");
                    Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
                    c2920d8.a(optString);
                }
                c2920d8.f24586i = optJSONObject2.optBoolean("supportLockScreen", false);
            }
            ArrayList trackers = j(jSONObject);
            if (trackers != null) {
                Intrinsics.checkNotNullParameter(trackers, "trackers");
                c2920d8.f24596s.addAll(trackers);
            }
            C3097o8 c3097o84 = this.f25149p;
            if (c3097o84 == null) {
                return;
            }
            c3097o84.f25119c = c2920d8;
        } catch (JSONException unused2) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25147n;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                ((A5) interfaceC3269z52).b("p8", "Exception in getting publisher values from JSON");
            }
        }
    }

    public final JSONObject i(JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            JSONObject jSONObject3 = jSONObject.isNull("assetStyle") ? null : jSONObject.getJSONObject("assetStyle");
            if (jSONObject3 == null) {
                if (jSONObject.isNull("assetStyleRef")) {
                    jSONObject2 = new JSONObject();
                } else {
                    String string = jSONObject.getString("assetStyleRef");
                    JSONObject jSONObject4 = this.f25137d;
                    JSONObject optJSONObject = jSONObject4 != null ? jSONObject4.optJSONObject(string) : null;
                    if (optJSONObject != null) {
                        return optJSONObject;
                    }
                    jSONObject2 = new JSONObject();
                }
                return jSONObject2;
            }
            return jSONObject3;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetStyle - ")));
            }
            return new JSONObject();
        }
    }

    public final ArrayList j(JSONObject jSONObject) {
        JSONArray jSONArray;
        if (jSONObject.isNull(Constants.ADJUST_PREINSTALL_CONTENT_URI_PATH)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            jSONArray = jSONObject.getJSONArray(Constants.ADJUST_PREINSTALL_CONTENT_URI_PATH);
            Intrinsics.checkNotNull(jSONArray);
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetTrackers - ")));
            }
        }
        if (B2.a(jSONArray)) {
            return arrayList;
        }
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
            if (!jSONObject2.isNull("trackerType")) {
                String string = jSONObject2.getString("trackerType");
                Intrinsics.checkNotNull(string);
                if (Intrinsics.areEqual("url_ping", k(string))) {
                    int optInt = jSONObject2.optInt("eventId", 0);
                    if (!jSONObject2.isNull("uiEvent")) {
                        String string2 = jSONObject2.getString("uiEvent");
                        Intrinsics.checkNotNull(string2);
                        String g10 = g(string2);
                        if (!Intrinsics.areEqual("unknown", g10)) {
                            if (!Intrinsics.areEqual("OMID_VIEWABILITY", g10)) {
                                Intrinsics.checkNotNull(jSONObject2);
                                U8 a10 = a(optInt, g10, jSONObject2);
                                if (a10 != null) {
                                    arrayList.add(a10);
                                }
                            } else {
                                Intrinsics.checkNotNull(jSONObject2);
                                arrayList.addAll(o(jSONObject2));
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final String k(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("assetType");
            Intrinsics.checkNotNull(string);
            return string;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetType - ")));
            }
            return "";
        }
    }

    public final String l(JSONObject jSONObject) {
        try {
            if (!StringsKt.G(k(jSONObject), "ICON", true) && !StringsKt.G(k(jSONObject), "IMAGE", true) && !StringsKt.G(k(jSONObject), "GIF", true)) {
                return "";
            }
            String string = jSONObject.getJSONArray("assetValue").getString(0);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            if (string.length() > 0) {
                String string2 = jSONObject.getJSONArray("assetValue").getString(0);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                return string2;
            }
            return "";
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetUrl - ")));
                return "";
            }
            return "";
        }
    }

    public final C2920d8 m(String str) {
        HashMap hashMap;
        C2920d8 c2920d8;
        if (str == null || str.length() == 0) {
            return null;
        }
        HashMap hashMap2 = this.f25143j;
        if (hashMap2 == null || (c2920d8 = (C2920d8) hashMap2.get(str)) == null) {
            C3113p8 c3113p8 = this.f25140g;
            if (c3113p8 == null || (hashMap = c3113p8.f25143j) == null) {
                return null;
            }
            return (C2920d8) hashMap.get(str);
        }
        return c2920d8;
    }

    public final List n(String assetType) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        HashMap hashMap = this.f25142i;
        return (hashMap == null || (arrayList = (ArrayList) hashMap.get(assetType)) == null) ? CollectionsKt.n() : arrayList;
    }

    public final ArrayList o(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        try {
            HashMap hashMap = new HashMap();
            if (!jSONObject.isNull("macros")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("macros");
                Iterator<String> keys = jSONObject2.keys();
                Intrinsics.checkNotNull(keys);
                while (keys.hasNext()) {
                    String next = keys.next();
                    String string = jSONObject2.getString(next);
                    Intrinsics.checkNotNull(next);
                    Intrinsics.checkNotNull(string);
                    hashMap.put(next, string);
                }
            }
            JSONArray jSONArray = jSONObject.getJSONArray("adVerifications");
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i10);
                if (!jSONObject3.isNull("url")) {
                    String optString = jSONObject3.optString("vendor");
                    String optString2 = jSONObject3.optString("verificationParams");
                    String string2 = jSONObject3.getString("url");
                    Intrinsics.checkNotNull(optString);
                    Intrinsics.checkNotNull(string2);
                    arrayList.add(new C2987ha(optString, optString2, string2, hashMap));
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.add(new U8("", 0, "OMID_VIEWABILITY", hashMap));
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", rf.a(e10, H6.a("p8", "TAG", "Failed to parse OMID tracker : ")));
            }
        }
        return arrayList;
    }

    public final String p(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("dataType");
            Intrinsics.checkNotNull(string);
            return string;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting webViewAssetValue - ")));
            }
            return "";
        }
    }

    public final O8 q(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        long optLong = jSONObject.optLong("absolute");
        long optLong2 = jSONObject.optLong("percentage");
        String optString = jSONObject.optString(TypedValues.Custom.S_REFERENCE);
        Intrinsics.checkNotNull(optString);
        return new O8(optLong, optLong2, optString, this);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3113p8(int i10, JSONObject pubContent, C3113p8 c3113p8, boolean z10, AdConfig adConfig, InterfaceC3269z5 interfaceC3269z5) {
        this(i10, pubContent, c3113p8, z10, adConfig, c3113p8.f25153t, null, interfaceC3269z5);
        Intrinsics.checkNotNullParameter(pubContent, "pubContent");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
    }

    public final C2920d8 a(C3113p8 c3113p8, C2920d8 c2920d8) {
        Object obj = c2920d8.f24582e;
        String str = obj instanceof String ? (String) obj : null;
        if (str == null || str.length() == 0) {
            return null;
        }
        String[] strArr = (String[]) new Regex("\\|").q(str, 0).toArray(new String[0]);
        C2920d8 m10 = c3113p8.m(strArr[0]);
        if (m10 == null) {
            C3113p8 c3113p82 = c3113p8.f25140g;
            if (c3113p82 == null) {
                return null;
            }
            return a(c3113p82, c2920d8);
        } else if (Intrinsics.areEqual(m10, c2920d8)) {
            return null;
        } else {
            if (strArr.length == 1) {
                m10.f24589l = (byte) 1;
                return m10;
            }
            m10.f24589l = AbstractC3065m8.a(strArr[1]);
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                StringBuilder a10 = H6.a("p8", "TAG", "Referenced asset ( ");
                a10.append(m10.f24579b);
                a10.append(" )");
                ((A5) interfaceC3269z5).a("p8", a10.toString());
            }
            return m10;
        }
    }

    public final JSONObject c(JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            if (jSONObject.isNull("display")) {
                jSONObject2 = new JSONObject();
            } else {
                jSONObject2 = jSONObject.getJSONObject("display");
            }
            Intrinsics.checkNotNull(jSONObject2);
            return jSONObject2;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetDisplayOnProperties - ")));
            }
            return new JSONObject();
        }
    }

    public final String n(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("valueType");
            Intrinsics.checkNotNull(string);
            return string;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetValueType - ")));
            }
            return "";
        }
    }

    public final JSONArray m(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("assetValue");
            Intrinsics.checkNotNullExpressionValue(jSONArray, "getJSONArray(...)");
            return jSONArray;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetValue - ")));
            }
            return new JSONArray();
        }
    }

    public C3113p8(int i10, JSONObject pubContent, C3113p8 c3113p8, boolean z10, AdConfig adConfig, Map map, Ue ue2, InterfaceC3269z5 interfaceC3269z5) {
        byte h10;
        HashMap hashMap;
        C2920d8 asset;
        C2920d8 c2920d8;
        Ve d10;
        int i11;
        HashMap hashMap2;
        this.f25148o = i10;
        this.f25140g = c3113p8;
        this.f25146m = adConfig;
        this.f25134a = pubContent;
        this.f25135b = (byte) 0;
        this.f25136c = false;
        this.f25145l = ue2;
        this.f25143j = new HashMap();
        HashMap hashMap3 = new HashMap();
        this.f25144k = hashMap3;
        this.f25142i = new HashMap();
        this.f25149p = new C3097o8();
        this.f25152s = z10;
        this.f25153t = map;
        this.f25147n = interfaceC3269z5;
        try {
            this.f25137d = pubContent.optJSONObject("styleRefs");
            if (pubContent.isNull(AdUnitActivity.EXTRA_ORIENTATION)) {
                h10 = 0;
            } else {
                String string = pubContent.getString(AdUnitActivity.EXTRA_ORIENTATION);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                h10 = h(string);
            }
            this.f25135b = h10;
            this.f25150q = pubContent.optBoolean("shouldAutoOpenLandingPage", true);
            this.f25136c = pubContent.optBoolean("disableBackButton");
            JSONObject jSONObject = pubContent.getJSONObject("rootContainer");
            Intrinsics.checkNotNull(jSONObject);
            C2920d8 a10 = a(jSONObject, "CONTAINER", "/rootContainer");
            this.f25138e = a10 instanceof C2985h8 ? (C2985h8) a10 : null;
            h();
            if (pubContent.has("rewards")) {
                this.f25141h = new HashMap();
            }
            C2976h.Companion.getClass();
            Intrinsics.checkNotNullParameter(pubContent, "pubContent");
            if (pubContent.has("rewards")) {
                hashMap = new HashMap();
                JSONObject optJSONObject = pubContent.optJSONObject("rewards");
                if (optJSONObject != null) {
                    Iterator<String> keys = optJSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String string2 = optJSONObject.getString(next);
                        Intrinsics.checkNotNull(next);
                        Intrinsics.checkNotNull(string2);
                        hashMap.put(next, string2);
                    }
                }
            } else {
                hashMap = null;
            }
            if (hashMap != null && (hashMap2 = this.f25141h) != null) {
                hashMap2.putAll(hashMap);
            }
            a();
            b();
            for (Map.Entry entry : hashMap3.entrySet()) {
                HashMap hashMap4 = this.f25143j;
                if (hashMap4 != null && (asset = (C2920d8) hashMap4.get(entry.getKey())) != null && 4 == asset.f24590m && (asset.f24591n != -1 || asset.f24592o != -1)) {
                    HashMap hashMap5 = this.f25143j;
                    if (hashMap5 != null && (c2920d8 = (C2920d8) hashMap5.get(entry.getValue())) != null && Intrinsics.areEqual("VIDEO", c2920d8.f24580c)) {
                        C2904c9 c2904c9 = c2920d8 instanceof C2904c9 ? (C2904c9) c2920d8 : null;
                        if (c2904c9 != null && (d10 = c2904c9.d()) != null) {
                            Ue ue3 = d10 instanceof Ue ? (Ue) d10 : null;
                            if (ue3 != null) {
                                try {
                                    i11 = ue3.a();
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    InterfaceC3269z5 interfaceC3269z52 = this.f25147n;
                                    if (interfaceC3269z52 != null) {
                                        Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                                        ((A5) interfaceC3269z52).b("p8", "ArrayIndexOutOfBoundsException in getting media duration");
                                    }
                                    i11 = 0;
                                }
                                if (i11 == 0) {
                                    asset.f24591n = 0;
                                } else {
                                    asset.f24591n = a(asset.f24591n, i11);
                                    asset.f24592o = a(asset.f24592o, i11);
                                }
                                Intrinsics.checkNotNullParameter(asset, "asset");
                                ((C2904c9) c2920d8).f24552y.add(asset);
                            }
                        }
                    }
                }
            }
            JSONArray optJSONArray = pubContent.optJSONArray("pages");
            this.f25139f = optJSONArray == null ? new JSONArray() : optJSONArray;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z53 = this.f25147n;
            if (interfaceC3269z53 != null) {
                ((A5) interfaceC3269z53).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting pagesArray - ")));
            }
        }
    }

    public final byte e(JSONObject jSONObject) {
        JSONObject c10;
        try {
            c10 = c(jSONObject);
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetDisplay - ")));
            }
        }
        if (c10.isNull("type")) {
            return (byte) 2;
        }
        String string = c10.getString("type");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return f(string);
    }

    public final String d(JSONObject jSONObject) {
        try {
            JSONObject c10 = c(jSONObject);
            String string = c10.isNull(TypedValues.Custom.S_REFERENCE) ? "" : c10.getString(TypedValues.Custom.S_REFERENCE);
            Intrinsics.checkNotNull(string);
            return string;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetDisplayOnReference - ")));
                return "";
            }
            return "";
        }
    }

    public static String k(String str) {
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        int length = upperCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) upperCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, upperCase, i10);
        int hashCode = a10.hashCode();
        if (hashCode != -1430070305) {
            if (hashCode != -158113182) {
                if (hashCode == 1110926088 && a10.equals("URL_WEBVIEW_PING")) {
                    return "webview_ping";
                }
            } else if (a10.equals("URL_PING")) {
                return "url_ping";
            }
        } else if (a10.equals("HTML_SCRIPT")) {
            return "html_script";
        }
        return "unknown";
    }

    public static String c(String str) {
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int length = lowerCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) lowerCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, lowerCase, i10);
        switch (a10.hashCode()) {
            case -938102371:
                return !a10.equals("rating") ? "CONTAINER" : "RATING";
            case -410956671:
                a10.equals("container");
                return "CONTAINER";
            case 98832:
                return !a10.equals(InMobiNetworkValues.CTA) ? "CONTAINER" : "CTA";
            case 102340:
                return !a10.equals("gif") ? "CONTAINER" : "GIF";
            case 3226745:
                return !a10.equals("icon") ? "CONTAINER" : "ICON";
            case 3556653:
                return !a10.equals(MimeTypes.BASE_TYPE_TEXT) ? "CONTAINER" : "TEXT";
            case 100313435:
                return !a10.equals("image") ? "CONTAINER" : "IMAGE";
            case 110364485:
                return !a10.equals("timer") ? "CONTAINER" : "TIMER";
            case 112202875:
                return !a10.equals("video") ? "CONTAINER" : "VIDEO";
            case 1224424441:
                return !a10.equals("webview") ? "CONTAINER" : "WEBVIEW";
            default:
                return "CONTAINER";
        }
    }

    public static byte i(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, str, i10);
        return (!Intrinsics.areEqual(a10, "paged") && Intrinsics.areEqual(a10, "free")) ? (byte) 1 : (byte) 0;
    }

    public static byte l(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, str, i10);
        return (!Intrinsics.areEqual(a10, "absolute") && Intrinsics.areEqual(a10, TypedValues.Custom.S_REFERENCE)) ? (byte) 1 : (byte) 0;
    }

    public final String f(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("assetId");
            Intrinsics.checkNotNull(string);
            return string;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetId - ")));
            }
            return String.valueOf(jSONObject.hashCode());
        }
    }

    public static String e(String str) {
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int length = lowerCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) lowerCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, lowerCase, i10);
        if (Intrinsics.areEqual(a10, DevicePublicKeyStringDef.NONE) || !Intrinsics.areEqual(a10, "line")) {
            return DevicePublicKeyStringDef.NONE;
        }
        return "line";
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ed, code lost:
        if (android.webkit.URLUtil.isValidUrl(r8) != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0151, code lost:
        r1 = ((com.inmobi.media.Ue) r7).f24287i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0155, code lost:
        if (r1 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0157, code lost:
        r1 = r1.size();
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3113p8.b():void");
    }

    public static String d(String str) {
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int length = lowerCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) lowerCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, lowerCase, i10);
        if (Intrinsics.areEqual(a10, "straight") || !Intrinsics.areEqual(a10, "curved")) {
            return "straight";
        }
        return "curved";
    }

    public static byte f(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, str, i10);
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = a10.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int hashCode = lowerCase.hashCode();
        if (hashCode == -921832806) {
            return !lowerCase.equals("percentage") ? (byte) 1 : (byte) 4;
        } else if (hashCode != -284840886) {
            return (hashCode == 1728122231 && lowerCase.equals("absolute")) ? (byte) 3 : (byte) 1;
        } else {
            lowerCase.equals("unknown");
            return (byte) 1;
        }
    }

    public final void a() {
        ArrayList arrayList;
        for (C2920d8 c2920d8 : n("IMAGE")) {
            Object obj = c2920d8.f24582e;
            if (!URLUtil.isValidUrl(obj instanceof String ? (String) obj : null)) {
                C2920d8 a10 = a(this, c2920d8);
                if (a10 == null) {
                    InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
                    if (interfaceC3269z5 != null) {
                        StringBuilder a11 = H6.a("p8", "TAG", "Could not find referenced asset for asset (");
                        a11.append(c2920d8.f24579b);
                        a11.append(')');
                        ((A5) interfaceC3269z5).b("p8", a11.toString());
                    }
                } else if (Intrinsics.areEqual(a10.f24580c, c2920d8.f24580c)) {
                    c2920d8.f24582e = a10.f24582e;
                } else if (Intrinsics.areEqual(a10.f24580c, "VIDEO") && a10.f24589l == 1) {
                    InterfaceC3269z5 interfaceC3269z52 = this.f25147n;
                    if (interfaceC3269z52 != null) {
                        Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                        ((A5) interfaceC3269z52).b("p8", "Image asset cannot reference a linear creative in a video element!");
                    }
                } else if (Intrinsics.areEqual(a10.f24580c, "VIDEO") && a10.f24589l == 2) {
                    C2904c9 c2904c9 = a10 instanceof C2904c9 ? (C2904c9) a10 : null;
                    if (c2904c9 != null) {
                        Ve d10 = c2904c9.d();
                        Le companionAd = Je.a(c2904c9, c2920d8);
                        ArrayList<Ke> a12 = companionAd != null ? companionAd.a(1) : null;
                        if (a12 != null) {
                            for (Ke ke2 : a12) {
                                if (URLUtil.isValidUrl(ke2.f23789b)) {
                                    break;
                                }
                            }
                        }
                        ke2 = null;
                        if (companionAd != null && ke2 != null) {
                            if (d10 != null) {
                                Intrinsics.checkNotNullParameter(companionAd, "companionAd");
                                ((Ue) d10).f24288j = companionAd;
                            }
                            InterfaceC3269z5 interfaceC3269z53 = this.f25147n;
                            if (interfaceC3269z53 != null) {
                                StringBuilder a13 = H6.a("p8", "TAG", "Setting image asset value: ");
                                a13.append(ke2.f23789b);
                                ((A5) interfaceC3269z53).a("p8", a13.toString());
                            }
                            c2920d8.f24582e = ke2.f23789b;
                            ArrayList trackers = companionAd.a("creativeView");
                            Intrinsics.checkNotNullParameter(trackers, "trackers");
                            c2920d8.f24596s.addAll(trackers);
                            ArrayList trackers2 = c2904c9.f24596s;
                            Intrinsics.checkNotNullParameter(trackers2, "trackers");
                            Intrinsics.checkNotNullParameter("error", "eventType");
                            Iterator it = trackers2.iterator();
                            while (it.hasNext()) {
                                U8 u82 = (U8) it.next();
                                if (Intrinsics.areEqual("error", u82.f24261b)) {
                                    c2920d8.f24596s.add(u82);
                                }
                            }
                        } else if (((d10 == null || (arrayList = ((Ue) d10).f24287i) == null) ? -1 : arrayList.size()) > 0) {
                            c2904c9.f24599v = 8;
                            c2904c9.a("error", kotlin.collections.p0.k(ms.k.a("[ERRORCODE]", "601")), (L7) null, this.f25147n);
                            InterfaceC3269z5 interfaceC3269z54 = this.f25147n;
                            if (interfaceC3269z54 != null) {
                                Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                                ((A5) interfaceC3269z54).b("p8", "Unable to find the best-fit companion ad! Returning ...");
                            }
                        }
                    }
                }
            }
        }
    }

    public final String g(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("assetName");
            Intrinsics.checkNotNull(string);
            return string;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetName - ")));
            }
            return "";
        }
    }

    public static String j(String str) {
        String str2;
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int length = lowerCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) lowerCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, lowerCase, i10);
        switch (a10.hashCode()) {
            case -1178781136:
                str2 = TtmlNode.ITALIC;
                if (!a10.equals(TtmlNode.ITALIC)) {
                    return DevicePublicKeyStringDef.NONE;
                }
                break;
            case -1026963764:
                str2 = TtmlNode.UNDERLINE;
                if (!a10.equals(TtmlNode.UNDERLINE)) {
                    return DevicePublicKeyStringDef.NONE;
                }
                break;
            case -891985998:
                str2 = "strike";
                if (!a10.equals("strike")) {
                    return DevicePublicKeyStringDef.NONE;
                }
                break;
            case 3029637:
                str2 = TtmlNode.BOLD;
                if (!a10.equals(TtmlNode.BOLD)) {
                    return DevicePublicKeyStringDef.NONE;
                }
                break;
            case 3387192:
                a10.equals(DevicePublicKeyStringDef.NONE);
                return DevicePublicKeyStringDef.NONE;
            default:
                return DevicePublicKeyStringDef.NONE;
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String g(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3113p8.g(java.lang.String):java.lang.String");
    }

    public final M8 c(Point point, Point point2, Point point3, Point point4, JSONObject jSONObject) {
        JSONObject optJSONObject;
        String str;
        String str2;
        int i10;
        String a10;
        String str3;
        String str4;
        String str5;
        String str6;
        int i11;
        String a11;
        int i12;
        int i13;
        String a12;
        byte b10;
        byte b11;
        String str7 = "straight";
        String str8 = "#ff000000";
        if (jSONObject.isNull(OutlinedTextFieldKt.BorderId) || (optJSONObject = jSONObject.optJSONObject(OutlinedTextFieldKt.BorderId)) == null || optJSONObject.isNull(TtmlNode.TAG_STYLE)) {
            str5 = "straight";
            str3 = "#ff000000";
            str4 = DevicePublicKeyStringDef.NONE;
        } else {
            String string = optJSONObject.getString(TtmlNode.TAG_STYLE);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String e10 = e(string);
            if (!optJSONObject.isNull("corner")) {
                String string2 = optJSONObject.getString("corner");
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                str7 = d(string2);
            }
            if (optJSONObject.isNull("color")) {
                str = e10;
                str2 = str7;
                a10 = "#ff000000";
            } else {
                String string3 = optJSONObject.getString("color");
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                int length = string3.length() - 1;
                int i14 = 0;
                boolean z10 = false;
                while (true) {
                    str = e10;
                    if (i14 > length) {
                        str2 = str7;
                        i10 = 1;
                        break;
                    }
                    str2 = str7;
                    boolean z11 = Intrinsics.compare((int) string3.charAt(!z10 ? i14 : length), 32) <= 0;
                    if (z10) {
                        i10 = 1;
                        if (!z11) {
                            break;
                        }
                        length--;
                    } else if (z11) {
                        i14++;
                    } else {
                        e10 = str;
                        str7 = str2;
                        z10 = true;
                    }
                    e10 = str;
                    str7 = str2;
                }
                a10 = I7.a(length, i10, string3, i14);
            }
            str3 = a10;
            str4 = str;
            str5 = str2;
        }
        if (jSONObject.isNull(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
            a11 = "#00000000";
            str6 = "#ff000000";
        } else {
            String string4 = jSONObject.getString(TtmlNode.ATTR_TTS_BACKGROUND_COLOR);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            int length2 = string4.length() - 1;
            boolean z12 = false;
            int i15 = 0;
            while (true) {
                if (i15 > length2) {
                    str6 = str8;
                    i11 = 1;
                    break;
                }
                str6 = str8;
                boolean z13 = Intrinsics.compare((int) string4.charAt(!z12 ? i15 : length2), 32) <= 0;
                if (z12) {
                    i11 = 1;
                    if (!z13) {
                        break;
                    }
                    length2--;
                } else if (z13) {
                    i15++;
                } else {
                    str8 = str6;
                    z12 = true;
                }
                str8 = str6;
            }
            a11 = I7.a(length2, i11, string4, i15);
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(MimeTypes.BASE_TYPE_TEXT);
        try {
            String string5 = jSONObject2.getString("size");
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            int parseDouble = (int) Double.parseDouble(string5);
            if (!jSONObject2.isNull("length")) {
                String string6 = jSONObject2.getString("length");
                Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                Integer.parseInt(string6);
            }
            if (jSONObject2.isNull("color")) {
                a12 = str6;
                i12 = parseDouble;
            } else {
                String string7 = jSONObject2.getString("color");
                Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
                int length3 = string7.length() - 1;
                boolean z14 = false;
                int i16 = 0;
                while (true) {
                    if (i16 > length3) {
                        i12 = parseDouble;
                        i13 = 1;
                        break;
                    }
                    i12 = parseDouble;
                    boolean z15 = Intrinsics.compare((int) string7.charAt(!z14 ? i16 : length3), 32) <= 0;
                    if (z14) {
                        i13 = 1;
                        if (!z15) {
                            break;
                        }
                        length3--;
                    } else if (z15) {
                        i16++;
                    } else {
                        parseDouble = i12;
                        z14 = true;
                    }
                    parseDouble = i12;
                }
                a12 = I7.a(length3, i13, string7, i16);
            }
            ArrayList arrayList = new ArrayList();
            if (jSONObject2.isNull(TtmlNode.TAG_STYLE)) {
                arrayList.add(DevicePublicKeyStringDef.NONE);
            } else {
                int length4 = jSONObject2.getJSONArray(TtmlNode.TAG_STYLE).length();
                if (length4 == 0) {
                    arrayList.add(DevicePublicKeyStringDef.NONE);
                } else {
                    for (int i17 = 0; i17 < length4; i17++) {
                        String string8 = jSONObject2.getJSONArray(TtmlNode.TAG_STYLE).getString(i17);
                        Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
                        arrayList.add(j(string8));
                    }
                }
            }
            if (!jSONObject2.isNull("align")) {
                String string9 = jSONObject2.getString("align");
                Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
                int length5 = string9.length() - 1;
                boolean z16 = false;
                int i18 = 0;
                while (true) {
                    if (i18 > length5) {
                        b11 = 1;
                        break;
                    }
                    boolean z17 = Intrinsics.compare((int) string9.charAt(!z16 ? i18 : length5), 32) <= 0;
                    if (z16) {
                        b11 = 1;
                        if (!z17) {
                            break;
                        }
                        length5--;
                    } else if (z17) {
                        i18++;
                    } else {
                        z16 = true;
                    }
                }
                String a13 = I7.a(length5, b11, string9, i18);
                int hashCode = a13.hashCode();
                if (hashCode != -1364013605) {
                    if (hashCode == 3317767) {
                        a13.equals(TtmlNode.LEFT);
                    } else if (hashCode == 108511772 && a13.equals(TtmlNode.RIGHT)) {
                        b10 = b11;
                    }
                } else if (a13.equals("centre")) {
                    b10 = 2;
                }
                return new M8(point.x, point.y, point2.x, point2.y, point3.x, point3.y, point4.x, point4.y, str4, str5, str3, a11, i12, b10, a12, arrayList, new P8(q(jSONObject.optJSONObject("startOffset")), q(jSONObject.optJSONObject("timerDuration"))));
            }
            b10 = 0;
            return new M8(point.x, point.y, point2.x, point2.y, point3.x, point3.y, point4.x, point4.y, str4, str5, str3, a11, i12, b10, a12, arrayList, new P8(q(jSONObject.optJSONObject("startOffset")), q(jSONObject.optJSONObject("timerDuration"))));
        } catch (NumberFormatException e11) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                ((A5) interfaceC3269z5).b("p8", "Failure in building text asset! Text size should be an integer");
            }
            JSONException jSONException = new JSONException(e11.getMessage());
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e11);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            throw jSONException;
        }
    }

    public final Point h(JSONObject jSONObject) {
        JSONObject i10;
        Point point = new Point();
        try {
            i10 = i(jSONObject);
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetPosition - ")));
            }
        }
        if (i10.isNull("geometry")) {
            return point;
        }
        JSONArray jSONArray = i10.getJSONArray("geometry");
        point.x = a(jSONArray.getInt(0));
        point.y = a(jSONArray.getInt(1));
        return point;
    }

    public static byte h(String str) {
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int length = lowerCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) lowerCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, lowerCase, i10);
        int hashCode = a10.hashCode();
        if (hashCode == -1626174665) {
            a10.equals("unspecified");
        } else if (hashCode != 729267099) {
            if (hashCode == 1430647483 && a10.equals("landscape")) {
                return (byte) 2;
            }
        } else if (a10.equals("portrait")) {
            return (byte) 1;
        }
        return (byte) 0;
    }

    public static int a(int i10, int i11) {
        if (i10 == -1 || i10 == 0) {
            return i10;
        }
        if (i10 != 25) {
            if (i10 != 50) {
                if (i10 != 75) {
                    return i10 != 100 ? i11 / 4 : i11;
                }
                return (i11 * 3) / 4;
            }
            return i11 / 2;
        }
        return i11 / 4;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:290|204|205|(3:206|207|(5:266|267|(1:269)|270|271)(1:209))|(6:(3:242|243|(13:245|246|(3:248|249|250)(5:254|255|256|257|258)|251|216|(2:218|219)(1:237)|220|221|222|223|(1:225)|226|227))|222|223|(0)|226|227)|211|212|213|(2:238|239)(1:215)|216|(0)(0)|220|221) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:302|303|304|(4:346|347|348|(14:350|309|(3:333|334|(12:336|337|338|339|314|(2:316|317)(1:328)|318|319|320|321|38|39))|311|312|313|314|(0)(0)|318|319|320|321|38|39))(1:306)|307|308|309|(0)|311|312|313|314|(0)(0)|318|319|320|321|38|39) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:368|369|370|(3:372|(1:374)|375)(1:431)|376|(1:378)(1:430)|(3:415|416|(14:418|419|420|421|422|383|384|(1:386)|387|(5:390|(2:392|(3:394|395|396)(1:401))(3:402|(1:404)(1:406)|405)|397|398|388)|407|408|409|39))|380|381|382|383|384|(0)|387|(1:388)|407|408|409|39) */
    /* JADX WARN: Can't wrap try/catch for region: R(9:364|365|366|(19:368|369|370|(3:372|(1:374)|375)(1:431)|376|(1:378)(1:430)|(3:415|416|(14:418|419|420|421|422|383|384|(1:386)|387|(5:390|(2:392|(3:394|395|396)(1:401))(3:402|(1:404)(1:406)|405)|397|398|388)|407|408|409|39))|380|381|382|383|384|(0)|387|(1:388)|407|408|409|39)|31|32|(4:34|35|36|37)(1:75)|38|39) */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0602, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0603, code lost:
        r8 = r57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x070d, code lost:
        r11 = r5;
        r53 = r9;
        r14 = r14;
        r27 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0713, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x0714, code lost:
        r14 = r57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0717, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0718, code lost:
        r5 = "p8";
        r9 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0790, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0791, code lost:
        r6 = r51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x084f, code lost:
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0324 A[Catch: JSONException -> 0x0236, TRY_ENTER, TryCatch #8 {JSONException -> 0x0236, blocks: (B:106:0x025d, B:108:0x026b, B:110:0x0270, B:112:0x0278, B:133:0x0324, B:134:0x032f, B:136:0x0335, B:140:0x034f, B:142:0x0355, B:152:0x0375, B:157:0x0381, B:158:0x0384, B:155:0x037d, B:116:0x028c, B:118:0x02a5, B:121:0x02b1, B:122:0x02bd, B:167:0x03a2, B:170:0x03bf, B:172:0x03d3, B:174:0x03e2, B:176:0x03e8, B:178:0x03f3, B:180:0x0410, B:182:0x0423, B:183:0x0431, B:185:0x043a, B:190:0x045f, B:193:0x0474, B:194:0x048e, B:197:0x04a3), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x037d A[Catch: JSONException -> 0x0236, TryCatch #8 {JSONException -> 0x0236, blocks: (B:106:0x025d, B:108:0x026b, B:110:0x0270, B:112:0x0278, B:133:0x0324, B:134:0x032f, B:136:0x0335, B:140:0x034f, B:142:0x0355, B:152:0x0375, B:157:0x0381, B:158:0x0384, B:155:0x037d, B:116:0x028c, B:118:0x02a5, B:121:0x02b1, B:122:0x02bd, B:167:0x03a2, B:170:0x03bf, B:172:0x03d3, B:174:0x03e2, B:176:0x03e8, B:178:0x03f3, B:180:0x0410, B:182:0x0423, B:183:0x0431, B:185:0x043a, B:190:0x045f, B:193:0x0474, B:194:0x048e, B:197:0x04a3), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0381 A[Catch: JSONException -> 0x0236, TryCatch #8 {JSONException -> 0x0236, blocks: (B:106:0x025d, B:108:0x026b, B:110:0x0270, B:112:0x0278, B:133:0x0324, B:134:0x032f, B:136:0x0335, B:140:0x034f, B:142:0x0355, B:152:0x0375, B:157:0x0381, B:158:0x0384, B:155:0x037d, B:116:0x028c, B:118:0x02a5, B:121:0x02b1, B:122:0x02bd, B:167:0x03a2, B:170:0x03bf, B:172:0x03d3, B:174:0x03e2, B:176:0x03e8, B:178:0x03f3, B:180:0x0410, B:182:0x0423, B:183:0x0431, B:185:0x043a, B:190:0x045f, B:193:0x0474, B:194:0x048e, B:197:0x04a3), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03a2 A[Catch: JSONException -> 0x0236, TryCatch #8 {JSONException -> 0x0236, blocks: (B:106:0x025d, B:108:0x026b, B:110:0x0270, B:112:0x0278, B:133:0x0324, B:134:0x032f, B:136:0x0335, B:140:0x034f, B:142:0x0355, B:152:0x0375, B:157:0x0381, B:158:0x0384, B:155:0x037d, B:116:0x028c, B:118:0x02a5, B:121:0x02b1, B:122:0x02bd, B:167:0x03a2, B:170:0x03bf, B:172:0x03d3, B:174:0x03e2, B:176:0x03e8, B:178:0x03f3, B:180:0x0410, B:182:0x0423, B:183:0x0431, B:185:0x043a, B:190:0x045f, B:193:0x0474, B:194:0x048e, B:197:0x04a3), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x043a A[Catch: JSONException -> 0x0236, TryCatch #8 {JSONException -> 0x0236, blocks: (B:106:0x025d, B:108:0x026b, B:110:0x0270, B:112:0x0278, B:133:0x0324, B:134:0x032f, B:136:0x0335, B:140:0x034f, B:142:0x0355, B:152:0x0375, B:157:0x0381, B:158:0x0384, B:155:0x037d, B:116:0x028c, B:118:0x02a5, B:121:0x02b1, B:122:0x02bd, B:167:0x03a2, B:170:0x03bf, B:172:0x03d3, B:174:0x03e2, B:176:0x03e8, B:178:0x03f3, B:180:0x0410, B:182:0x0423, B:183:0x0431, B:185:0x043a, B:190:0x045f, B:193:0x0474, B:194:0x048e, B:197:0x04a3), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x045f A[Catch: JSONException -> 0x0236, TryCatch #8 {JSONException -> 0x0236, blocks: (B:106:0x025d, B:108:0x026b, B:110:0x0270, B:112:0x0278, B:133:0x0324, B:134:0x032f, B:136:0x0335, B:140:0x034f, B:142:0x0355, B:152:0x0375, B:157:0x0381, B:158:0x0384, B:155:0x037d, B:116:0x028c, B:118:0x02a5, B:121:0x02b1, B:122:0x02bd, B:167:0x03a2, B:170:0x03bf, B:172:0x03d3, B:174:0x03e2, B:176:0x03e8, B:178:0x03f3, B:180:0x0410, B:182:0x0423, B:183:0x0431, B:185:0x043a, B:190:0x045f, B:193:0x0474, B:194:0x048e, B:197:0x04a3), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x048e A[Catch: JSONException -> 0x0236, TryCatch #8 {JSONException -> 0x0236, blocks: (B:106:0x025d, B:108:0x026b, B:110:0x0270, B:112:0x0278, B:133:0x0324, B:134:0x032f, B:136:0x0335, B:140:0x034f, B:142:0x0355, B:152:0x0375, B:157:0x0381, B:158:0x0384, B:155:0x037d, B:116:0x028c, B:118:0x02a5, B:121:0x02b1, B:122:0x02bd, B:167:0x03a2, B:170:0x03bf, B:172:0x03d3, B:174:0x03e2, B:176:0x03e8, B:178:0x03f3, B:180:0x0410, B:182:0x0423, B:183:0x0431, B:185:0x043a, B:190:0x045f, B:193:0x0474, B:194:0x048e, B:197:0x04a3), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x05c5 A[Catch: JSONException -> 0x0602, TRY_ENTER, TryCatch #1 {JSONException -> 0x0602, blocks: (B:245:0x05d8, B:251:0x05eb, B:237:0x05a5, B:244:0x05c5), top: B:432:0x05a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x05e1  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x05f4 A[Catch: JSONException -> 0x05f8, TryCatch #10 {JSONException -> 0x05f8, blocks: (B:253:0x05ef, B:255:0x05f4, B:258:0x05fb), top: B:449:0x05ef }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x061f  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x06f0  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x06f8  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x072c A[Catch: JSONException -> 0x070c, TryCatch #33 {JSONException -> 0x070c, blocks: (B:307:0x06fe, B:320:0x072c, B:323:0x0744), top: B:446:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0747  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0770  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x084b A[Catch: JSONException -> 0x084f, TryCatch #35 {JSONException -> 0x084f, blocks: (B:370:0x083e, B:372:0x084b, B:375:0x0852, B:376:0x085c, B:378:0x0862, B:380:0x0890, B:369:0x082d), top: B:498:0x082d }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0862 A[Catch: JSONException -> 0x084f, TryCatch #35 {JSONException -> 0x084f, blocks: (B:370:0x083e, B:372:0x084b, B:375:0x0852, B:376:0x085c, B:378:0x0862, B:380:0x0890, B:369:0x082d), top: B:498:0x082d }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x08ed  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0902  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0128 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:442:0x05ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:444:0x052b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:475:0x06a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:496:0x04f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c9  */
    /* JADX WARN: Type inference failed for: r0v119, types: [com.inmobi.media.A5] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v23, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v47 */
    /* JADX WARN: Type inference failed for: r11v48 */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r13v29, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v3, types: [int] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.inmobi.media.A5] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v82, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v88 */
    /* JADX WARN: Type inference failed for: r4v65 */
    /* JADX WARN: Type inference failed for: r8v14, types: [com.inmobi.media.A5] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C2920d8 a(org.json.JSONObject r58, java.lang.String r59, java.lang.String r60) {
        /*
            Method dump skipped, instructions count: 2460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3113p8.a(org.json.JSONObject, java.lang.String, java.lang.String):com.inmobi.media.d8");
    }

    public final void b(C2920d8 c2920d8, JSONObject jSONObject) {
        String str;
        String str2 = "";
        boolean z10 = false;
        if (jSONObject.isNull("assetOnclick")) {
            str = "";
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("assetOnclick");
            if (optJSONObject != null && !optJSONObject.isNull("itemUrl")) {
                str = jSONObject.getJSONObject("assetOnclick").getString("itemUrl");
                Intrinsics.checkNotNullExpressionValue(str, "getString(...)");
                z10 = true;
            } else {
                InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
                if (interfaceC3269z5 != null) {
                    Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                    ((A5) interfaceC3269z5).b("p8", "Missing itemUrl on asset " + jSONObject);
                }
                str = "";
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("assetOnclick");
            if (optJSONObject2 == null || !optJSONObject2.isNull(TextureRenderKeys.KEY_IS_ACTION)) {
                str2 = jSONObject.getJSONObject("assetOnclick").getString(TextureRenderKeys.KEY_IS_ACTION);
                Intrinsics.checkNotNullExpressionValue(str2, "getString(...)");
                z10 = true;
            }
        }
        c2920d8.b(str);
        Intrinsics.checkNotNullParameter(str2, "<set-?>");
        c2920d8.f24585h = str2;
        c2920d8.f24583f = z10;
    }

    public final Point b(JSONObject jSONObject, Point point) {
        try {
            JSONObject i10 = i(jSONObject);
            if (i10.isNull("finalGeometry")) {
                return point;
            }
            JSONArray jSONArray = i10.getJSONArray("finalGeometry");
            Point point2 = new Point();
            point2.x = a(jSONArray.getInt(0));
            point2.y = a(jSONArray.getInt(1));
            return point2;
        } catch (JSONException unused) {
            return point;
        }
    }

    public final Point b(JSONObject jSONObject) {
        JSONObject i10;
        Point point = new Point();
        try {
            i10 = i(jSONObject);
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetDimensions - ")));
            }
        }
        if (i10.isNull("geometry")) {
            return point;
        }
        JSONArray jSONArray = i10.getJSONArray("geometry");
        point.x = a(jSONArray.getInt(2));
        point.y = a(jSONArray.getInt(3));
        return point;
    }

    public static String b(String str) {
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        int length = upperCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) upperCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, upperCase, i10);
        switch (a10.hashCode()) {
            case -2084521848:
                if (a10.equals("DOWNLOAD")) {
                    return a10;
                }
                break;
            case -1038134325:
                if (a10.equals("EXTERNAL")) {
                    return a10;
                }
                break;
            case 69805756:
                if (a10.equals("INAPP")) {
                    return a10;
                }
                break;
            case 1411860198:
                if (a10.equals("DEEPLINK")) {
                    return a10;
                }
                break;
            case 1568475786:
                if (a10.equals("EMBEDDED")) {
                    return a10;
                }
                break;
        }
        return "EXTERNAL";
    }

    public final C3033k8 b(Point point, Point point2, Point point3, Point point4, JSONObject jSONObject) {
        JSONObject optJSONObject;
        String str;
        String str2;
        int i10;
        String a10;
        String str3;
        String str4;
        String str5;
        String str6;
        int i11;
        String a11;
        int i12;
        int i13;
        String a12;
        String str7 = "straight";
        String str8 = "#ff000000";
        if (jSONObject.isNull(OutlinedTextFieldKt.BorderId) || (optJSONObject = jSONObject.optJSONObject(OutlinedTextFieldKt.BorderId)) == null || optJSONObject.isNull(TtmlNode.TAG_STYLE)) {
            str5 = "straight";
            str3 = "#ff000000";
            str4 = DevicePublicKeyStringDef.NONE;
        } else {
            String string = optJSONObject.getString(TtmlNode.TAG_STYLE);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String e10 = e(string);
            if (!optJSONObject.isNull("corner")) {
                String string2 = optJSONObject.getString("corner");
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                str7 = d(string2);
            }
            if (optJSONObject.isNull("color")) {
                str = e10;
                str2 = str7;
                a10 = "#ff000000";
            } else {
                String string3 = optJSONObject.getString("color");
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                int length = string3.length() - 1;
                int i14 = 0;
                boolean z10 = false;
                while (true) {
                    str = e10;
                    if (i14 > length) {
                        str2 = str7;
                        i10 = 1;
                        break;
                    }
                    str2 = str7;
                    boolean z11 = Intrinsics.compare((int) string3.charAt(!z10 ? i14 : length), 32) <= 0;
                    if (z10) {
                        i10 = 1;
                        if (!z11) {
                            break;
                        }
                        length--;
                    } else if (z11) {
                        i14++;
                    } else {
                        e10 = str;
                        str7 = str2;
                        z10 = true;
                    }
                    e10 = str;
                    str7 = str2;
                }
                a10 = I7.a(length, i10, string3, i14);
            }
            str3 = a10;
            str4 = str;
            str5 = str2;
        }
        if (jSONObject.isNull(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
            a11 = "#00000000";
            str6 = "#ff000000";
        } else {
            String string4 = jSONObject.getString(TtmlNode.ATTR_TTS_BACKGROUND_COLOR);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            int length2 = string4.length() - 1;
            boolean z12 = false;
            int i15 = 0;
            while (true) {
                if (i15 > length2) {
                    str6 = str8;
                    i11 = 1;
                    break;
                }
                str6 = str8;
                boolean z13 = Intrinsics.compare((int) string4.charAt(!z12 ? i15 : length2), 32) <= 0;
                if (z12) {
                    i11 = 1;
                    if (!z13) {
                        break;
                    }
                    length2--;
                } else if (z13) {
                    i15++;
                } else {
                    str8 = str6;
                    z12 = true;
                }
                str8 = str6;
            }
            a11 = I7.a(length2, i11, string4, i15);
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(MimeTypes.BASE_TYPE_TEXT);
        try {
            String string5 = jSONObject2.getString("size");
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            int parseDouble = (int) Double.parseDouble(string5);
            if (jSONObject2.isNull("color")) {
                a12 = str6;
                i12 = parseDouble;
            } else {
                String string6 = jSONObject2.getString("color");
                Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                int length3 = string6.length() - 1;
                boolean z14 = false;
                int i16 = 0;
                while (true) {
                    if (i16 > length3) {
                        i12 = parseDouble;
                        i13 = 1;
                        break;
                    }
                    i12 = parseDouble;
                    boolean z15 = Intrinsics.compare((int) string6.charAt(!z14 ? i16 : length3), 32) <= 0;
                    if (z14) {
                        i13 = 1;
                        if (!z15) {
                            break;
                        }
                        length3--;
                    } else if (z15) {
                        i16++;
                    } else {
                        parseDouble = i12;
                        z14 = true;
                    }
                    parseDouble = i12;
                }
                a12 = I7.a(length3, i13, string6, i16);
            }
            ArrayList arrayList = new ArrayList();
            if (jSONObject2.isNull(TtmlNode.TAG_STYLE)) {
                arrayList.add(DevicePublicKeyStringDef.NONE);
            } else {
                int length4 = jSONObject2.getJSONArray(TtmlNode.TAG_STYLE).length();
                if (length4 == 0) {
                    arrayList.add(DevicePublicKeyStringDef.NONE);
                } else {
                    for (int i17 = 0; i17 < length4; i17++) {
                        String string7 = jSONObject2.getJSONArray(TtmlNode.TAG_STYLE).getString(i17);
                        Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
                        arrayList.add(j(string7));
                    }
                }
            }
            return new C3033k8(point.x, point.y, point2.x, point2.y, point3.x, point3.y, point4.x, point4.y, str4, str5, str3, a11, i12, a12, arrayList, new P8(q(jSONObject.optJSONObject("startOffset")), q(jSONObject.optJSONObject("timerDuration"))));
        } catch (NumberFormatException e11) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                ((A5) interfaceC3269z5).b("p8", "Failure in building text asset! Text size should be an integer");
            }
            JSONException jSONException = new JSONException(e11.getMessage());
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e11);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            throw jSONException;
        }
    }

    public final void a(C2920d8 c2920d8, JSONObject jSONObject) {
        String string;
        boolean z10;
        boolean z11 = true;
        String str = "";
        if (jSONObject.isNull("itemUrl")) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("p8", "TAG");
                ((A5) interfaceC3269z5).b("p8", "Missing itemUrl on publisher onClick");
            }
            z10 = false;
            string = "";
        } else {
            string = jSONObject.getString("itemUrl");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            z10 = true;
        }
        if (jSONObject.isNull(TextureRenderKeys.KEY_IS_ACTION)) {
            z11 = z10;
        } else {
            str = jSONObject.getString(TextureRenderKeys.KEY_IS_ACTION);
            Intrinsics.checkNotNullExpressionValue(str, "getString(...)");
        }
        c2920d8.b(string);
        String optString = jSONObject.optString("fallbackUrl");
        Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
        c2920d8.a(optString);
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        c2920d8.f24585h = str;
        c2920d8.f24583f = z11;
        c2920d8.f24598u = jSONObject.optString("appBundleId");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0089 A[Catch: JSONException -> 0x0039, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0039, blocks: (B:5:0x0011, B:10:0x0026, B:11:0x002a, B:13:0x002f, B:18:0x003c, B:21:0x0046, B:24:0x0050, B:27:0x005a, B:39:0x0082, B:42:0x0089, B:43:0x008d, B:48:0x00a1, B:50:0x00a5, B:51:0x00af, B:30:0x0064, B:33:0x006e, B:36:0x0078, B:53:0x00c1, B:58:0x00cd, B:60:0x00d1, B:7:0x0019), top: B:66:0x0011, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.String r8, org.json.JSONObject r9) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3113p8.a(java.lang.String, org.json.JSONObject):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c5, code lost:
        if (r10.equals("closeEndCard") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c9, code lost:
        r15 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d2, code lost:
        if (r10.equals("page_view") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00dc, code lost:
        if (r10.equals("firstQuartile") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e6, code lost:
        if (r10.equals("OMID_VIEWABILITY") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fb, code lost:
        if (r10.equals("exitFullscreen") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0105, code lost:
        if (r10.equals(com.vungle.ads.internal.Constants.TEMPLATE_TYPE_FULLSCREEN) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x011a, code lost:
        if (r10.equals(com.mbridge.msdk.foundation.entity.CampaignEx.JSON_NATIVE_VIDEO_PAUSE) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0124, code lost:
        if (r10.equals("error") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x012e, code lost:
        if (r10.equals("click") == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0138, code lost:
        if (r10.equals("mute") == false) goto L78;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.U8 a(int r17, java.lang.String r18, org.json.JSONObject r19) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3113p8.a(int, java.lang.String, org.json.JSONObject):com.inmobi.media.U8");
    }

    public final Ve a(JSONObject jSONObject, String str, C2920d8 c2920d8) {
        AdConfig.VastVideoConfig vastVideo;
        if (StringsKt.G(k(jSONObject), "VIDEO", true)) {
            try {
                if (jSONObject.isNull("assetValue")) {
                    return null;
                }
                if (c2920d8 instanceof C2904c9) {
                    Object obj = ((C2904c9) c2920d8).f24582e;
                    if (obj instanceof Ve) {
                        return (Ve) obj;
                    }
                    return null;
                }
                AdConfig adConfig = this.f25146m;
                if (adConfig == null || (vastVideo = adConfig.getVastVideo()) == null) {
                    return null;
                }
                return new Pe(vastVideo, this.f25147n).a(str);
            } catch (JSONException e10) {
                InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting videoDescriptor - ")));
                }
            }
        }
        return null;
    }

    public final Point a(JSONObject jSONObject, Point point) {
        try {
            JSONObject i10 = i(jSONObject);
            if (i10.isNull("finalGeometry")) {
                return point;
            }
            JSONArray jSONArray = i10.getJSONArray("finalGeometry");
            Point point2 = new Point();
            point2.x = a(jSONArray.getInt(2));
            point2.y = a(jSONArray.getInt(3));
            return point2;
        } catch (JSONException unused) {
            return point;
        }
    }

    public final int a(JSONObject jSONObject, boolean z10) {
        try {
            JSONObject c10 = c(jSONObject);
            String str = z10 ? "delay" : "hideAfterDelay";
            if (c10.isNull(str)) {
                return -1;
            }
            int i10 = c10.getInt(str);
            if (3 != e(jSONObject)) {
                if (4 != e(jSONObject)) {
                    return -1;
                }
                if (i10 != 0) {
                    if (1 > i10 || i10 >= 101) {
                        return -1;
                    }
                    int[] iArr = {25, 50, 75, 100};
                    double d10 = Double.MAX_VALUE;
                    int i11 = -1;
                    for (int i12 = 0; i12 < 4; i12++) {
                        int i13 = i10 - iArr[i12];
                        double d11 = i13 * i13;
                        if (d11 < d10) {
                            i11 = i12;
                            d10 = d11;
                        }
                    }
                    return iArr[i11];
                }
            }
            return i10;
        } catch (JSONException e10) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25147n;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).b("p8", E0.a(e10, H6.a("p8", "TAG", "Exception while getting assetDisplayOnDelay - ")));
                return -1;
            }
            return -1;
        }
    }

    public static byte a(String str) {
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        int length = upperCase.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) upperCase.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String a10 = I7.a(length, 1, upperCase, i10);
        return (!Intrinsics.areEqual(a10, "NONE") && Intrinsics.areEqual(a10, "EXIT")) ? (byte) 1 : (byte) 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x013a, code lost:
        if (r6.equals("aspectFill") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x013d, code lost:
        r25 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0144, code lost:
        if (r6.equals("fill") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x014d, code lost:
        if (r6.equals("aspectFit") == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.inmobi.media.C2937e8 a(android.graphics.Point r32, android.graphics.Point r33, android.graphics.Point r34, android.graphics.Point r35, org.json.JSONObject r36) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3113p8.a(android.graphics.Point, android.graphics.Point, android.graphics.Point, android.graphics.Point, org.json.JSONObject):com.inmobi.media.e8");
    }

    public final P8 a(JSONObject jSONObject) {
        return new P8(q(jSONObject.optJSONObject("startOffset")), q(jSONObject.optJSONObject("timerDuration")));
    }
}
