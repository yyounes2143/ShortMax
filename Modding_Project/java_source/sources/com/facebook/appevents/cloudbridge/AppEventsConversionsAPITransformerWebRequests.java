package com.facebook.appevents.cloudbridge;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.facebook.GraphRequest;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests;
import com.facebook.internal.i0;
import com.facebook.internal.u0;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.UninitializedPropertyAccessException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AppEventsConversionsAPITransformerWebRequests.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAppEventsConversionsAPITransformerWebRequests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEventsConversionsAPITransformerWebRequests.kt\ncom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,291:1\n1855#2,2:292\n1#3:294\n*S KotlinDebug\n*F\n+ 1 AppEventsConversionsAPITransformerWebRequests.kt\ncom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests\n*L\n239#1:292,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AppEventsConversionsAPITransformerWebRequests {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AppEventsConversionsAPITransformerWebRequests f14962a = new AppEventsConversionsAPITransformerWebRequests();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final HashSet<Integer> f14963b = y0.g(200, 202);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final HashSet<Integer> f14964c = y0.g(503, 504, Integer.valueOf((int) CommonGatewayClient.CODE_TOO_MANY_REQUESTS));

    /* renamed from: d  reason: collision with root package name */
    public static a f14965d;

    /* renamed from: e  reason: collision with root package name */
    public static List<Map<String, Object>> f14966e;

    /* renamed from: f  reason: collision with root package name */
    private static int f14967f;

    /* compiled from: AppEventsConversionsAPITransformerWebRequests.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f14968a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f14969b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f14970c;

        public a(@NotNull String datasetID, @NotNull String cloudBridgeURL, @NotNull String accessKey) {
            Intrinsics.checkNotNullParameter(datasetID, "datasetID");
            Intrinsics.checkNotNullParameter(cloudBridgeURL, "cloudBridgeURL");
            Intrinsics.checkNotNullParameter(accessKey, "accessKey");
            this.f14968a = datasetID;
            this.f14969b = cloudBridgeURL;
            this.f14970c = accessKey;
        }

        @NotNull
        public final String a() {
            return this.f14970c;
        }

        @NotNull
        public final String b() {
            return this.f14969b;
        }

        @NotNull
        public final String c() {
            return this.f14968a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f14968a, aVar.f14968a) && Intrinsics.areEqual(this.f14969b, aVar.f14969b) && Intrinsics.areEqual(this.f14970c, aVar.f14970c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f14968a.hashCode() * 31) + this.f14969b.hashCode()) * 31) + this.f14970c.hashCode();
        }

        @NotNull
        public String toString() {
            return "CloudBridgeCredentials(datasetID=" + this.f14968a + ", cloudBridgeURL=" + this.f14969b + ", accessKey=" + this.f14970c + ')';
        }
    }

    private AppEventsConversionsAPITransformerWebRequests() {
    }

    public static final void d(@NotNull String datasetID, @NotNull String url, @NotNull String accessKey) {
        Intrinsics.checkNotNullParameter(datasetID, "datasetID");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(accessKey, "accessKey");
        i0.f16209e.c(LoggingBehavior.APP_EVENTS, "CAPITransformerWebRequests", " \n\nCloudbridge Configured: \n================\ndatasetID: %s\nurl: %s\naccessKey: %s\n\n", datasetID, url, accessKey);
        AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = f14962a;
        appEventsConversionsAPITransformerWebRequests.i(new a(datasetID, url, accessKey));
        appEventsConversionsAPITransformerWebRequests.j(new ArrayList());
    }

    private final List<Map<String, Object>> k(GraphRequest graphRequest) {
        JSONObject q10 = graphRequest.q();
        if (q10 != null) {
            Map<String, ? extends Object> A = p0.A(u0.o(q10));
            Object w10 = graphRequest.w();
            Intrinsics.checkNotNull(w10, "null cannot be cast to non-null type kotlin.Any");
            A.put("custom_events", w10);
            StringBuilder sb2 = new StringBuilder();
            for (String str : A.keySet()) {
                sb2.append(str);
                sb2.append(" : ");
                sb2.append(A.get(str));
                sb2.append(System.getProperty("line.separator"));
            }
            i0.f16209e.c(LoggingBehavior.APP_EVENTS, "CAPITransformerWebRequests", "\nGraph Request data: \n\n%s \n\n", sb2);
            return AppEventsConversionsAPITransformer.f14954a.e(A);
        }
        return null;
    }

    public static final void l(@NotNull final GraphRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        u0.C0(new Runnable() { // from class: r1.c
            @Override // java.lang.Runnable
            public final void run() {
                AppEventsConversionsAPITransformerWebRequests.m(GraphRequest.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(GraphRequest request) {
        List list;
        Intrinsics.checkNotNullParameter(request, "$request");
        String r10 = request.r();
        if (r10 != null) {
            list = StringsKt.split$default(r10, new String[]{DomExceptionUtils.SEPARATOR}, false, 0, 6, null);
        } else {
            list = null;
        }
        if (list != null && list.size() == 2) {
            try {
                AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = f14962a;
                String str = appEventsConversionsAPITransformerWebRequests.e().b() + "/capi/" + appEventsConversionsAPITransformerWebRequests.e().c() + "/events";
                List<Map<String, Object>> k10 = appEventsConversionsAPITransformerWebRequests.k(request);
                if (k10 == null) {
                    return;
                }
                appEventsConversionsAPITransformerWebRequests.c(k10);
                int min = Math.min(appEventsConversionsAPITransformerWebRequests.f().size(), 10);
                List S0 = CollectionsKt.S0(appEventsConversionsAPITransformerWebRequests.f(), new IntRange(0, min - 1));
                appEventsConversionsAPITransformerWebRequests.f().subList(0, min).clear();
                JSONArray jSONArray = new JSONArray((Collection) S0);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("data", jSONArray);
                linkedHashMap.put("accessKey", appEventsConversionsAPITransformerWebRequests.e().a());
                JSONObject jSONObject = new JSONObject(linkedHashMap);
                i0.a aVar = i0.f16209e;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                String jSONObject2 = jSONObject.toString(2);
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "jsonBodyStr.toString(2)");
                aVar.c(loggingBehavior, "CAPITransformerWebRequests", "\nTransformed_CAPI_JSON:\nURL: %s\nFROM=========\n%s\n>>>>>>TO>>>>>>\n%s\n=============\n", str, request, jSONObject2);
                appEventsConversionsAPITransformerWebRequests.h(str, ShareTarget.METHOD_POST, jSONObject.toString(), p0.f(k.a(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json")), 60000, new AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1(S0));
                return;
            } catch (UninitializedPropertyAccessException e10) {
                i0.f16209e.c(LoggingBehavior.DEVELOPER_ERRORS, "CAPITransformerWebRequests", "\n Credentials not initialized Error when logging: \n%s", e10);
                return;
            }
        }
        i0.f16209e.c(LoggingBehavior.DEVELOPER_ERRORS, "CAPITransformerWebRequests", "\n GraphPathComponents Error when logging: \n%s", request);
    }

    public final void c(@Nullable List<? extends Map<String, ? extends Object>> list) {
        if (list != null) {
            f().addAll(list);
        }
        int max = Math.max(0, f().size() - 1000);
        if (max > 0) {
            List j02 = CollectionsKt.j0(f(), max);
            Intrinsics.checkNotNull(j02, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.collections.Map<kotlin.String, kotlin.Any>>");
            j(TypeIntrinsics.asMutableList(j02));
        }
    }

    @NotNull
    public final a e() {
        a aVar = f14965d;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("credentials");
        return null;
    }

    @NotNull
    public final List<Map<String, Object>> f() {
        List<Map<String, Object>> list = f14966e;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("transformedEvents");
        return null;
    }

    public final void g(@Nullable Integer num, @NotNull List<? extends Map<String, ? extends Object>> processedEvents, int i10) {
        Intrinsics.checkNotNullParameter(processedEvents, "processedEvents");
        if (CollectionsKt.g0(f14964c, num)) {
            if (f14967f >= i10) {
                f().clear();
                f14967f = 0;
                return;
            }
            f().addAll(0, processedEvents);
            f14967f++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2 A[Catch: IOException -> 0x0046, UnknownHostException -> 0x0049, TRY_LEAVE, TryCatch #4 {UnknownHostException -> 0x0049, IOException -> 0x0046, blocks: (B:3:0x000f, B:5:0x0024, B:7:0x002a, B:8:0x0030, B:10:0x0036, B:15:0x004c, B:17:0x0058, B:22:0x0068, B:24:0x00a2, B:31:0x00be, B:35:0x00c4, B:36:0x00c7, B:37:0x00c8, B:39:0x00e8), top: B:50:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e8 A[Catch: IOException -> 0x0046, UnknownHostException -> 0x0049, TRY_LEAVE, TryCatch #4 {UnknownHostException -> 0x0049, IOException -> 0x0046, blocks: (B:3:0x000f, B:5:0x0024, B:7:0x002a, B:8:0x0030, B:10:0x0036, B:15:0x004c, B:17:0x0058, B:22:0x0068, B:24:0x00a2, B:31:0x00be, B:35:0x00c4, B:36:0x00c7, B:37:0x00c8, B:39:0x00e8), top: B:50:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.Nullable java.lang.String r8, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, java.lang.String> r9, int r10, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super java.lang.String, ? super java.lang.Integer, kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests.h(java.lang.String, java.lang.String, java.lang.String, java.util.Map, int, kotlin.jvm.functions.Function2):void");
    }

    public final void i(@NotNull a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        f14965d = aVar;
    }

    public final void j(@NotNull List<Map<String, Object>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        f14966e = list;
    }
}
