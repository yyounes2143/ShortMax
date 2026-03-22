package com.startshorts.androidplayer.manager.api.base;

import android.os.Bundle;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.google.gson.reflect.TypeToken;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttm.player.MediaFormat;
import com.startshorts.androidplayer.bean.mylist.CollectIdRequest;
import com.startshorts.androidplayer.bean.purchase.GPayCoinsRecover;
import com.startshorts.androidplayer.bean.turbolink.KeyValueParam;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.p;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: ApiInterceptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nApiInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiInterceptor.kt\ncom/startshorts/androidplayer/manager/api/base/ApiInterceptor\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,404:1\n216#2,2:405\n32#3:407\n32#3,2:408\n33#3:410\n*S KotlinDebug\n*F\n+ 1 ApiInterceptor.kt\ncom/startshorts/androidplayer/manager/api/base/ApiInterceptor\n*L\n244#1:405,2\n303#1:407\n307#1:408,2\n303#1:410\n*E\n"})
/* loaded from: classes6.dex */
public final class o implements Interceptor {
    @NotNull

    /* renamed from: c */
    public static final a f41799c = new a(null);
    @NotNull

    /* renamed from: a */
    private final ms.i f41800a = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            fe.a e10;
            e10 = o.e();
            return e10;
        }
    });
    @NotNull

    /* renamed from: b */
    private final List<String> f41801b = CollectionsKt.t("gaid", "deviceId", "model", "systemVersion", "androidVersion", "isR", "isE", "isD", "hasProxy");

    /* compiled from: ApiInterceptor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ HashMap b(a aVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = "true";
            }
            return aVar.a(str);
        }

        @NotNull
        public final HashMap<String, String> a(@NotNull String isEncrypt) {
            Intrinsics.checkNotNullParameter(isEncrypt, "isEncrypt");
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("isEncrypt", isEncrypt);
            ae.a aVar = ae.a.f627a;
            hashMap.put(AppsFlyerProperties.CHANNEL, aVar.d());
            ud.a aVar2 = ud.a.f68411a;
            hashMap.put("gaid", aVar2.m());
            DeviceUtil deviceUtil = DeviceUtil.f48146a;
            String h10 = deviceUtil.h();
            if (h10 == null) {
                h10 = "";
            }
            hashMap.put("deviceId", h10);
            hashMap.put("clientPlatform", "android");
            hashMap.put("TraceId", UUID.randomUUID().toString());
            String r02 = AccountRepo.f43052a.r0();
            if (r02 != null) {
                hashMap.put("Authorization", r02);
            }
            hashMap.put(MediaFormat.KEY_LANGUAGE, deviceUtil.s());
            hashMap.put("locale", deviceUtil.M());
            hashMap.put("timeZone", deviceUtil.Q());
            hashMap.put("model", deviceUtil.C());
            hashMap.put("systemVersion", deviceUtil.O());
            hashMap.put("androidVersion", deviceUtil.V());
            hashMap.put("mcc", deviceUtil.y());
            hashMap.put("environment", "prod");
            hashMap.put("buildValue", String.valueOf(deviceUtil.U()));
            hashMap.put("afVersion", "1");
            hashMap.put("hasProxy", String.valueOf(aVar2.I()));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(deviceUtil.G());
            sb2.append('x');
            sb2.append(deviceUtil.F());
            hashMap.put("resolution", sb2.toString());
            String a10 = p005if.a.f53409a.a();
            if (a10 != null) {
                hashMap.put("ci", a10);
            }
            hashMap.put("session_id", af.i.f639a.e());
            hashMap.put("system_country_code", deviceUtil.k());
            hashMap.put("isR", deviceUtil.g0());
            hashMap.put("isE", deviceUtil.c0());
            hashMap.put("isD", deviceUtil.a0());
            hashMap.put("vefCode", deviceUtil.o(deviceUtil.h()));
            hashMap.put(AppsFlyerProperties.CHANNEL, aVar.d());
            return hashMap;
        }

        private a() {
        }
    }

    /* compiled from: ApiInterceptor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b extends TypeToken<List<? extends KeyValueParam>> {
        b() {
        }
    }

    /* compiled from: ApiInterceptor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c extends TypeToken<List<? extends CollectIdRequest>> {
        c() {
        }
    }

    /* compiled from: ApiInterceptor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d extends TypeToken<List<? extends Integer>> {
        d() {
        }
    }

    /* compiled from: ApiInterceptor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class e extends TypeToken<List<? extends Long>> {
        e() {
        }
    }

    /* compiled from: ApiInterceptor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class f extends TypeToken<List<? extends String>> {
        f() {
        }
    }

    /* compiled from: ApiInterceptor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class g extends TypeToken<List<? extends GPayCoinsRecover>> {
        g() {
        }
    }

    private final void b(String str, RequestBody requestBody, Request.Builder builder, String str2) {
        HashMap<String, String> a10 = f41799c.a(str2);
        f(str, a10);
        for (Map.Entry<String, String> entry : a10.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key.length() > 0 && value.length() > 0) {
                try {
                    builder.a(key, value);
                } catch (Exception e10) {
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("content", "key(" + key + ") value(" + value + ')');
                    bundle.putString("err_msg", e10.getMessage());
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "add_header_failed", bundle, 0L, 4, null);
                    try {
                        builder.a(key, v.p(value));
                    } catch (Exception unused) {
                        Unit unit2 = Unit.f60915a;
                    }
                }
            }
        }
        if (Intrinsics.areEqual(str, "app/eventController/appEventReportV1") && (requestBody instanceof FormBody)) {
            FormBody formBody = (FormBody) requestBody;
            int d10 = formBody.d();
            String str3 = null;
            Long l10 = null;
            for (int i10 = 0; i10 < d10; i10++) {
                String c10 = formBody.c(i10);
                String e11 = formBody.e(i10);
                if (Intrinsics.areEqual(c10, "eventList")) {
                    str3 = e11;
                } else if (Intrinsics.areEqual(c10, "localTimeLong")) {
                    try {
                        l10 = Long.valueOf(Long.parseLong(e11));
                    } catch (Exception unused2) {
                    }
                }
            }
            if (str3 != null && str3.length() != 0 && l10 != null) {
                try {
                    String a11 = hk.c.f52893a.a(str3 + l10 + a10.get("androidVersion"));
                    String str4 = a10.get("Authorization");
                    if (str4 != null && str4.length() != 0) {
                        a11 = hk.d.d(a11, hk.b.f52886a.c());
                    }
                    builder.a("TraceParam", hk.d.d(a11, hk.b.f52886a.e()));
                    return;
                } catch (Exception e12) {
                    Logger.f41511a.e("ApiInterceptor", "create encryptParam failed -> " + e12.getMessage());
                    return;
                }
            }
            return;
        }
        String str5 = "";
        if ((Intrinsics.areEqual(str, "app/login/v4/initLogin") || Intrinsics.areEqual(str, "app/login/v3/tripartiteLogin") || Intrinsics.areEqual(str, "app/login/loginMobile")) && (requestBody instanceof FormBody)) {
            FormBody formBody2 = (FormBody) requestBody;
            int d11 = formBody2.d();
            for (int i11 = 0; i11 < d11; i11++) {
                String e13 = formBody2.e(i11);
                if (e13.length() > 0) {
                    str5 = str5 + e13;
                }
            }
            builder.a("TraceParam", hk.d.d(hk.c.f52893a.a(str5 + a10.get("androidVersion")), hk.b.f52886a.c()));
            return;
        }
        ud.a aVar = ud.a.f68411a;
        if (!TextUtils.isEmpty(aVar.x()) && (Intrinsics.areEqual(str, "app/forYou/playSlideV3") || Intrinsics.areEqual(str, "app/forYou/encrypt/playSlideV3") || Intrinsics.areEqual(str, "app/forYou/encrypt/firstDramaForShortPlayId") || Intrinsics.areEqual(str, "app/forYou/firstDramaForShortPlayId"))) {
            builder.i("TraceId");
            builder.a("TraceId", aVar.x());
            aVar.C0("");
        } else if (!TextUtils.isEmpty(aVar.w()) && Intrinsics.areEqual(str, "app/hiDrama/getDramaIdByshortPlayId")) {
            builder.i("TraceId");
            builder.a("TraceId", aVar.w());
            aVar.B0("");
        }
    }

    private final fe.a c() {
        return (fe.a) this.f41800a.getValue();
    }

    private final void d(String str, Response response) {
        try {
            if (StringsKt.b0(qe.a.f65321a.value().getApiErrorCodeReport(), String.valueOf(response.o()), false, 2, null)) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str);
                bundle.putString("err_code", String.valueOf(response.o()));
                bundle.putString("errorMessage", response.w());
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "api_error_code", bundle, 0L, 4, null);
            }
        } catch (Exception unused) {
        }
    }

    public static final fe.a e() {
        return new fe.a();
    }

    private final void f(String str, HashMap<String, String> hashMap) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (this.f41801b.contains(key)) {
                sb2.append(key);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(value);
                sb2.append(",");
            }
        }
        sb2.append("}");
        Logger logger = Logger.f41511a;
        logger.h("ApiInterceptor", '[' + str + "] headers:" + ((Object) sb2));
    }

    private final void g(String str, boolean z10, RequestBody requestBody, Request.Builder builder) {
        String str2;
        String str3;
        String str4;
        String str5 = "keys(...)";
        if (requestBody instanceof FormBody) {
            HashMap hashMap = new HashMap();
            FormBody formBody = (FormBody) requestBody;
            int d10 = formBody.d();
            int i10 = 0;
            while (i10 < d10) {
                String c10 = formBody.c(i10);
                String e10 = formBody.e(i10);
                if ((Intrinsics.areEqual(c10, "collectSource") && !w.f51779a.c(e10)) || Intrinsics.areEqual(c10, "episodeNums") || Intrinsics.areEqual(c10, "taskIds")) {
                    str3 = str5;
                    try {
                        Type type = new d().getType();
                        Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                        List list = (List) jk.l.c(e10, type);
                        if (list != null) {
                            hashMap.put(c10, list);
                            Unit unit = Unit.f60915a;
                        }
                    } catch (Exception e11) {
                        Logger.f41511a.e("ApiInterceptor", "fromJson exception -> " + e11.getMessage());
                        Unit unit2 = Unit.f60915a;
                    }
                } else if (Intrinsics.areEqual(c10, "businessIdList") || Intrinsics.areEqual(c10, "classIdList")) {
                    str3 = str5;
                    try {
                        Type type2 = new e().getType();
                        Intrinsics.checkNotNullExpressionValue(type2, "getType(...)");
                        List list2 = (List) jk.l.c(e10, type2);
                        if (list2 != null) {
                            hashMap.put(c10, list2);
                            Unit unit3 = Unit.f60915a;
                        }
                    } catch (Exception e12) {
                        Logger.f41511a.e("ApiInterceptor", "fromJson exception -> " + e12.getMessage());
                        Unit unit4 = Unit.f60915a;
                    }
                } else if (Intrinsics.areEqual(c10, "equitySubTypes") || Intrinsics.areEqual(c10, "conditionCodes")) {
                    str3 = str5;
                    try {
                        Type type3 = new f().getType();
                        Intrinsics.checkNotNullExpressionValue(type3, "getType(...)");
                        List list3 = (List) jk.l.c(e10, type3);
                        if (list3 != null) {
                            hashMap.put(c10, list3);
                            Unit unit5 = Unit.f60915a;
                        }
                    } catch (Exception e13) {
                        Logger.f41511a.e("ApiInterceptor", "fromJson exception -> " + e13.getMessage());
                        Unit unit6 = Unit.f60915a;
                    }
                } else if (Intrinsics.areEqual(c10, "payRecoverAndroidInfoRequests")) {
                    try {
                        Type type4 = new g().getType();
                        Intrinsics.checkNotNullExpressionValue(type4, "getType(...)");
                        List list4 = (List) jk.l.c(e10, type4);
                        if (list4 != null) {
                            hashMap.put(c10, list4);
                            Unit unit7 = Unit.f60915a;
                        }
                    } catch (Exception e14) {
                        Logger.f41511a.e("ApiInterceptor", "fromJson exception -> " + e14.getMessage());
                        Unit unit8 = Unit.f60915a;
                    }
                    str3 = str5;
                } else if (Intrinsics.areEqual(str, "app/hiAdMatch/deepLinkReport") && Intrinsics.areEqual(c10, "attrData")) {
                    try {
                        JSONObject jSONObject = new JSONObject(e10);
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        Iterator<String> keys = jSONObject.keys();
                        Intrinsics.checkNotNullExpressionValue(keys, str5);
                        while (keys.hasNext()) {
                            String next = keys.next();
                            Object obj = jSONObject.get(next);
                            if (obj instanceof JSONObject) {
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                Iterator<String> keys2 = ((JSONObject) obj).keys();
                                Intrinsics.checkNotNullExpressionValue(keys2, str5);
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    str3 = str5;
                                    try {
                                        linkedHashMap2.put(next2, ((JSONObject) obj).get(next2));
                                        str5 = str3;
                                    } catch (Exception e15) {
                                        e = e15;
                                        Logger.f41511a.e("ApiInterceptor", "attrData fromJson exception -> " + e.getMessage());
                                        i10++;
                                        str5 = str3;
                                    }
                                }
                                str4 = str5;
                                linkedHashMap.put(next, linkedHashMap2);
                            } else {
                                str4 = str5;
                                linkedHashMap.put(next, obj);
                            }
                            str5 = str4;
                        }
                        str3 = str5;
                        hashMap.put(c10, linkedHashMap);
                    } catch (Exception e16) {
                        e = e16;
                        str3 = str5;
                    }
                } else {
                    str3 = str5;
                    if (Intrinsics.areEqual(str, "app/turboLink/reportEvent")) {
                        try {
                            Type type5 = new b().getType();
                            Intrinsics.checkNotNullExpressionValue(type5, "getType(...)");
                            List list5 = (List) jk.l.c(e10, type5);
                            if (list5 != null) {
                                hashMap.put(c10, list5);
                            } else {
                                hashMap.put(c10, e10);
                            }
                        } catch (Exception e17) {
                            Logger.f41511a.e("ApiInterceptor", "fromJson exception -> " + e17.getMessage());
                        }
                    } else if (Intrinsics.areEqual(str, "app/hiCollect/batchCancelCollectV2")) {
                        try {
                            Type type6 = new c().getType();
                            Intrinsics.checkNotNullExpressionValue(type6, "getType(...)");
                            List list6 = (List) jk.l.c(e10, type6);
                            if (list6 != null) {
                                hashMap.put(c10, list6);
                                Unit unit9 = Unit.f60915a;
                            }
                        } catch (Exception e18) {
                            Logger.f41511a.e("ApiInterceptor", "fromJson exception -> " + e18.getMessage());
                            Unit unit10 = Unit.f60915a;
                        }
                    } else {
                        hashMap.put(c10, e10);
                    }
                }
                i10++;
                str5 = str3;
            }
            try {
                str2 = jk.l.d(hashMap);
            } catch (Exception e19) {
                Logger.f41511a.e("ApiInterceptor", "map.toJson exception -> value(" + hashMap + ") errMsg(" + e19.getMessage() + ')');
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("err_msg", e19.getMessage());
                bundle.putString("content", hashMap.toString());
                Unit unit11 = Unit.f60915a;
                EventManager.s0(eventManager, "map_to_json_failed", bundle, 0L, 4, null);
                try {
                    str2 = jk.l.d(hashMap);
                    EventManager.s0(EventManager.f42463a, "map_to_json_retry_success", null, 0L, 6, null);
                } catch (Exception unused) {
                    str2 = "";
                }
            }
            if (Intrinsics.areEqual(str, "app/eventController/appEventReportV1")) {
                Logger.f41511a.h("ApiInterceptor", "encodePath(" + str + ')');
            } else {
                Logger.f41511a.h("ApiInterceptor", "encodePath(" + str + ") mapJson -> " + str2);
            }
            if (z10) {
                str2 = hk.d.d(str2, hk.b.f52886a.c());
            }
            RequestBody.Companion companion = RequestBody.Companion;
            Intrinsics.checkNotNull(str2);
            builder.h(companion.b(str2, MediaType.f63480e.b("application/json;charset=utf-8")));
        }
    }

    private final void h(HttpUrl httpUrl, Request.Builder builder) {
        HttpUrl httpUrl2;
        ud.b bVar = ud.b.f68412a;
        int x10 = bVar.x();
        p.a aVar = p.f41802a;
        if (x10 >= aVar.a().size()) {
            x10 = 0;
            bVar.H2(0);
        }
        try {
            httpUrl2 = HttpUrl.f63457k.f(aVar.a().get(x10));
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("ApiInterceptor", "updateUrl failed -> " + e10.getMessage());
            httpUrl2 = null;
        }
        if (httpUrl2 != null) {
            builder.l(httpUrl.k().q(httpUrl2.t()).g(httpUrl2.i()).m(httpUrl2.o()).c());
        }
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        String str;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Request.Builder i10 = request.i();
        String obj = StringsKt.P0(request.l().d(), 0, 1).toString();
        p.a aVar = p.f41802a;
        boolean contains = aVar.h().contains(obj);
        boolean z10 = !contains;
        RequestBody a10 = request.a();
        if (!contains) {
            str = "true";
        } else {
            str = "false";
        }
        b(obj, a10, i10, str);
        if (qe.a.f65321a.value().getDynamicDomainEnable() && aVar.i()) {
            h(request.l(), i10);
        }
        RequestBody a11 = request.a();
        if (a11 != null) {
            g(obj, z10, a11, i10);
        }
        Request b10 = i10.b();
        Logger.f41511a.h("ApiInterceptor", "intercept -> url(" + b10.l() + ") encrypt(" + z10 + ')');
        Response b11 = c().b(b10, chain);
        d(obj, b11);
        return b11;
    }
}
