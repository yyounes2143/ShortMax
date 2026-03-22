package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import com.facebook.GraphRequest;
import com.facebook.a0;
import com.facebook.internal.i0;
import com.facebook.internal.o0;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: GraphRequest.kt */
@Metadata
/* loaded from: classes3.dex */
public final class GraphRequest {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final c f14841n = new c(null);

    /* renamed from: o  reason: collision with root package name */
    public static final String f14842o = GraphRequest.class.getSimpleName();
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final String f14843p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static String f14844q;

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f14845r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private static volatile String f14846s;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private AccessToken f14847a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f14848b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f14849c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f14850d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f14851e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14852f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private Bundle f14853g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Object f14854h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f14855i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private b f14856j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private HttpMethod f14857k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f14858l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private String f14859m;

    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f14861a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final RESOURCE f14862b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final b f14860c = new b(null);
        @NotNull
        public static final Parcelable.Creator<ParcelableResourceWithMimeType<?>> CREATOR = new a();

        /* compiled from: GraphRequest.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a implements Parcelable.Creator<ParcelableResourceWithMimeType<?>> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: a */
            public ParcelableResourceWithMimeType<?> createFromParcel(@NotNull Parcel source) {
                Intrinsics.checkNotNullParameter(source, "source");
                return new ParcelableResourceWithMimeType<>(source, (DefaultConstructorMarker) null);
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: b */
            public ParcelableResourceWithMimeType<?>[] newArray(int i10) {
                return new ParcelableResourceWithMimeType[i10];
            }
        }

        /* compiled from: GraphRequest.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class b {
            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private b() {
            }
        }

        public /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        @Nullable
        public final String a() {
            return this.f14861a;
        }

        @Nullable
        public final RESOURCE b() {
            return this.f14862b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel out, int i10) {
            Intrinsics.checkNotNullParameter(out, "out");
            out.writeString(this.f14861a);
            out.writeParcelable(this.f14862b, i10);
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, @Nullable String str) {
            this.f14861a = str;
            this.f14862b = resource;
        }

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.f14861a = parcel.readString();
            this.f14862b = (RESOURCE) parcel.readParcelable(v.l().getClassLoader());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final GraphRequest f14863a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Object f14864b;

        public a(@NotNull GraphRequest request, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f14863a = request;
            this.f14864b = obj;
        }

        @NotNull
        public final GraphRequest a() {
            return this.f14863a;
        }

        @Nullable
        public final Object b() {
            return this.f14864b;
        }
    }

    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
        void a(@NotNull b0 b0Var);
    }

    /* compiled from: GraphRequest.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nGraphRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphRequest.kt\ncom/facebook/GraphRequest$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1995:1\n215#2,2:1996\n*S KotlinDebug\n*F\n+ 1 GraphRequest.kt\ncom/facebook/GraphRequest$Companion\n*L\n1312#1:1996,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String C(Object obj) {
            if (obj instanceof String) {
                return (String) obj;
            }
            if (!(obj instanceof Boolean) && !(obj instanceof Number)) {
                if (obj instanceof Date) {
                    String format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
                    Intrinsics.checkNotNullExpressionValue(format, "iso8601DateFormat.format(value)");
                    return format;
                }
                throw new IllegalArgumentException("Unsupported parameter type.");
            }
            return obj.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void D(org.json.JSONObject r10, java.lang.String r11, com.facebook.GraphRequest.e r12) {
            /*
                r9 = this;
                boolean r0 = r9.u(r11)
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L23
                r7 = 6
                r8 = 0
                java.lang.String r4 = ":"
                r5 = 0
                r6 = 0
                r3 = r11
                int r0 = kotlin.text.StringsKt.q0(r3, r4, r5, r6, r7, r8)
                java.lang.String r4 = "?"
                int r11 = kotlin.text.StringsKt.q0(r3, r4, r5, r6, r7, r8)
                r3 = 3
                if (r0 <= r3) goto L23
                r3 = -1
                if (r11 == r3) goto L21
                if (r0 >= r11) goto L23
            L21:
                r11 = r1
                goto L24
            L23:
                r11 = r2
            L24:
                java.util.Iterator r0 = r10.keys()
            L28:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L53
                java.lang.Object r3 = r0.next()
                java.lang.String r3 = (java.lang.String) r3
                java.lang.Object r4 = r10.opt(r3)
                if (r11 == 0) goto L44
                java.lang.String r5 = "image"
                boolean r5 = kotlin.text.StringsKt.G(r3, r5, r1)
                if (r5 == 0) goto L44
                r5 = r1
                goto L45
            L44:
                r5 = r2
            L45:
                java.lang.String r6 = "key"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r6)
                java.lang.String r6 = "value"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r6)
                r9.E(r3, r4, r12, r5)
                goto L28
            L53:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.c.D(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$e):void");
        }

        private final void E(String str, Object obj, e eVar, boolean z10) {
            Class<?> cls = obj.getClass();
            if (JSONObject.class.isAssignableFrom(cls)) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj;
                if (z10) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format("%s[%s]", Arrays.copyOf(new Object[]{str, next}, 2));
                        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                        Object opt = jSONObject.opt(next);
                        Intrinsics.checkNotNullExpressionValue(opt, "jsonObject.opt(propertyName)");
                        E(format, opt, eVar, z10);
                    }
                } else if (jSONObject.has("id")) {
                    String optString = jSONObject.optString("id");
                    Intrinsics.checkNotNullExpressionValue(optString, "jsonObject.optString(\"id\")");
                    E(str, optString, eVar, z10);
                } else if (jSONObject.has("url")) {
                    String optString2 = jSONObject.optString("url");
                    Intrinsics.checkNotNullExpressionValue(optString2, "jsonObject.optString(\"url\")");
                    E(str, optString2, eVar, z10);
                } else if (jSONObject.has("fbsdk:create_object")) {
                    String jSONObject2 = jSONObject.toString();
                    Intrinsics.checkNotNullExpressionValue(jSONObject2, "jsonObject.toString()");
                    E(str, jSONObject2, eVar, z10);
                }
            } else if (JSONArray.class.isAssignableFrom(cls)) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONArray");
                JSONArray jSONArray = (JSONArray) obj;
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    String format2 = String.format(Locale.ROOT, "%s[%d]", Arrays.copyOf(new Object[]{str, Integer.valueOf(i10)}, 2));
                    Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
                    Object opt2 = jSONArray.opt(i10);
                    Intrinsics.checkNotNullExpressionValue(opt2, "jsonArray.opt(i)");
                    E(format2, opt2, eVar, z10);
                }
            } else if (!String.class.isAssignableFrom(cls) && !Number.class.isAssignableFrom(cls) && !Boolean.class.isAssignableFrom(cls)) {
                if (Date.class.isAssignableFrom(cls)) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.util.Date");
                    String format3 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
                    Intrinsics.checkNotNullExpressionValue(format3, "iso8601DateFormat.format(date)");
                    eVar.a(str, format3);
                    return;
                }
                String str2 = GraphRequest.f14842o;
                u0.k0(str2, "The type of property " + str + " in the graph object is unknown. It won't be sent in the request.");
            } else {
                eVar.a(str, obj.toString());
            }
        }

        private final void F(a0 a0Var, com.facebook.internal.i0 i0Var, int i10, URL url, OutputStream outputStream, boolean z10) {
            g gVar = new g(outputStream, i0Var, z10);
            if (i10 == 1) {
                GraphRequest graphRequest = a0Var.get(0);
                Map<String, a> hashMap = new HashMap<>();
                for (String key : graphRequest.u().keySet()) {
                    Object obj = graphRequest.u().get(key);
                    if (v(obj)) {
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        hashMap.put(key, new a(graphRequest, obj));
                    }
                }
                if (i0Var != null) {
                    i0Var.b("  Parameters:\n");
                }
                J(graphRequest.u(), gVar, graphRequest);
                if (i0Var != null) {
                    i0Var.b("  Attachments:\n");
                }
                I(hashMap, gVar);
                JSONObject q10 = graphRequest.q();
                if (q10 != null) {
                    String path = url.getPath();
                    Intrinsics.checkNotNullExpressionValue(path, "url.path");
                    D(q10, path, gVar);
                    return;
                }
                return;
            }
            String p10 = p(a0Var);
            if (p10.length() != 0) {
                gVar.a("batch_app_id", p10);
                Map<String, a> hashMap2 = new HashMap<>();
                K(gVar, a0Var, hashMap2);
                if (i0Var != null) {
                    i0Var.b("  Attachments:\n");
                }
                I(hashMap2, gVar);
                return;
            }
            throw new FacebookException("App ID was not specified at the request or Settings.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void H(ArrayList callbacks, a0 requests) {
            Intrinsics.checkNotNullParameter(callbacks, "$callbacks");
            Intrinsics.checkNotNullParameter(requests, "$requests");
            Iterator it = callbacks.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                Object obj = pair.second;
                Intrinsics.checkNotNullExpressionValue(obj, "pair.second");
                ((b) pair.first).a((b0) obj);
            }
            for (a0.a aVar : requests.n()) {
                aVar.a(requests);
            }
        }

        private final void I(Map<String, a> map, g gVar) {
            for (Map.Entry<String, a> entry : map.entrySet()) {
                if (GraphRequest.f14841n.v(entry.getValue().b())) {
                    gVar.j(entry.getKey(), entry.getValue().b(), entry.getValue().a());
                }
            }
        }

        private final void J(Bundle bundle, g gVar, GraphRequest graphRequest) {
            for (String key : bundle.keySet()) {
                Object obj = bundle.get(key);
                if (w(obj)) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    gVar.j(key, obj, graphRequest);
                }
            }
        }

        private final void K(g gVar, Collection<GraphRequest> collection, Map<String, a> map) {
            JSONArray jSONArray = new JSONArray();
            for (GraphRequest graphRequest : collection) {
                graphRequest.C(jSONArray, map);
            }
            gVar.l("batch", jSONArray, collection);
        }

        private final void M(HttpURLConnection httpURLConnection, boolean z10) {
            if (z10) {
                httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, ShareTarget.ENCODING_TYPE_URL_ENCODED);
                httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                return;
            }
            httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, q());
        }

        private final HttpURLConnection g(URL url) throws IOException {
            URLConnection openConnection = url.openConnection();
            Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, r());
            httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
            httpURLConnection.setChunkedStreamingMode(0);
            return httpURLConnection;
        }

        private final String p(a0 a0Var) {
            String l10 = a0Var.l();
            if (l10 != null && !a0Var.isEmpty()) {
                return l10;
            }
            Iterator<GraphRequest> it = a0Var.iterator();
            while (it.hasNext()) {
                AccessToken m10 = it.next().m();
                if (m10 != null) {
                    return m10.c();
                }
            }
            String str = GraphRequest.f14844q;
            if (str == null || str.length() <= 0) {
                return v.m();
            }
            return str;
        }

        private final String q() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("multipart/form-data; boundary=%s", Arrays.copyOf(new Object[]{GraphRequest.f14843p}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            return format;
        }

        private final String r() {
            if (GraphRequest.f14846s == null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("%s.%s", Arrays.copyOf(new Object[]{"FBAndroidSDK", "18.1.3"}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                GraphRequest.f14846s = format;
                String a10 = com.facebook.internal.f0.a();
                if (!u0.d0(a10)) {
                    String format2 = String.format(Locale.ROOT, "%s/%s", Arrays.copyOf(new Object[]{GraphRequest.f14846s, a10}, 2));
                    Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
                    GraphRequest.f14846s = format2;
                }
            }
            return GraphRequest.f14846s;
        }

        private final boolean s(a0 a0Var) {
            for (a0.a aVar : a0Var.n()) {
                if (aVar instanceof a0.c) {
                    return true;
                }
            }
            Iterator<GraphRequest> it = a0Var.iterator();
            while (it.hasNext()) {
                if (it.next().o() instanceof f) {
                    return true;
                }
            }
            return false;
        }

        private final boolean t(a0 a0Var) {
            Iterator<GraphRequest> it = a0Var.iterator();
            while (it.hasNext()) {
                GraphRequest next = it.next();
                for (String str : next.u().keySet()) {
                    if (v(next.u().get(str))) {
                        return false;
                    }
                }
            }
            return true;
        }

        private final boolean u(String str) {
            Matcher matcher = GraphRequest.f14845r.matcher(str);
            if (matcher.matches()) {
                str = matcher.group(1);
                Intrinsics.checkNotNullExpressionValue(str, "matcher.group(1)");
            }
            if (StringsKt.V(str, "me/", false, 2, null) || StringsKt.V(str, "/me/", false, 2, null)) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean v(Object obj) {
            if (!(obj instanceof Bitmap) && !(obj instanceof byte[]) && !(obj instanceof Uri) && !(obj instanceof ParcelFileDescriptor) && !(obj instanceof ParcelableResourceWithMimeType)) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean w(Object obj) {
            if (!(obj instanceof String) && !(obj instanceof Boolean) && !(obj instanceof Number) && !(obj instanceof Date)) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void z(d dVar, b0 response) {
            Intrinsics.checkNotNullParameter(response, "response");
            if (dVar != null) {
                dVar.a(response.c(), response);
            }
        }

        @NotNull
        public final GraphRequest A(@Nullable AccessToken accessToken, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable b bVar) {
            GraphRequest graphRequest = new GraphRequest(accessToken, str, null, HttpMethod.POST, bVar, null, 32, null);
            graphRequest.F(jSONObject);
            return graphRequest;
        }

        @NotNull
        public final GraphRequest B(@Nullable AccessToken accessToken, @Nullable String str, @Nullable Bundle bundle, @Nullable b bVar) {
            return new GraphRequest(accessToken, str, bundle, HttpMethod.POST, bVar, null, 32, null);
        }

        public final void G(@NotNull final a0 requests, @NotNull List<b0> responses) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            Intrinsics.checkNotNullParameter(responses, "responses");
            int size = requests.size();
            final ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < size; i10++) {
                GraphRequest graphRequest = requests.get(i10);
                if (graphRequest.o() != null) {
                    arrayList.add(new Pair(graphRequest.o(), responses.get(i10)));
                }
            }
            if (arrayList.size() > 0) {
                Runnable runnable = new Runnable() { // from class: com.facebook.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        GraphRequest.c.H(arrayList, requests);
                    }
                };
                Handler m10 = requests.m();
                if (m10 != null) {
                    m10.post(runnable);
                } else {
                    runnable.run();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00ec  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void L(@org.jetbrains.annotations.NotNull com.facebook.a0 r14, @org.jetbrains.annotations.NotNull java.net.HttpURLConnection r15) throws java.io.IOException, org.json.JSONException {
            /*
                Method dump skipped, instructions count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.c.L(com.facebook.a0, java.net.HttpURLConnection):void");
        }

        @NotNull
        public final HttpURLConnection N(@NotNull a0 requests) {
            URL url;
            Intrinsics.checkNotNullParameter(requests, "requests");
            O(requests);
            try {
                if (requests.size() == 1) {
                    url = new URL(requests.get(0).x());
                } else {
                    url = new URL(o0.h());
                }
                HttpURLConnection httpURLConnection = null;
                try {
                    httpURLConnection = g(url);
                    L(requests, httpURLConnection);
                    return httpURLConnection;
                } catch (IOException e10) {
                    u0.r(httpURLConnection);
                    throw new FacebookException("could not construct request body", e10);
                } catch (JSONException e11) {
                    u0.r(httpURLConnection);
                    throw new FacebookException("could not construct request body", e11);
                }
            } catch (MalformedURLException e12) {
                throw new FacebookException("could not construct URL for request", e12);
            }
        }

        public final void O(@NotNull a0 requests) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            Iterator<GraphRequest> it = requests.iterator();
            while (it.hasNext()) {
                GraphRequest next = it.next();
                if (HttpMethod.GET == next.t() && u0.d0(next.u().getString("fields"))) {
                    i0.a aVar = com.facebook.internal.i0.f16209e;
                    LoggingBehavior loggingBehavior = LoggingBehavior.DEVELOPER_ERRORS;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("GET requests for /");
                    String r10 = next.r();
                    if (r10 == null) {
                        r10 = "";
                    }
                    sb2.append(r10);
                    sb2.append(" should contain an explicit \"fields\" parameter.");
                    aVar.a(loggingBehavior, 5, "Request", sb2.toString());
                }
            }
        }

        @NotNull
        public final b0 h(@NotNull GraphRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            List<b0> k10 = k(request);
            if (k10.size() == 1) {
                return k10.get(0);
            }
            throw new FacebookException("invalid state: expected a single response");
        }

        @NotNull
        public final List<b0> i(@NotNull a0 requests) {
            Exception exc;
            HttpURLConnection httpURLConnection;
            List<b0> list;
            Intrinsics.checkNotNullParameter(requests, "requests");
            v0.i(requests, "requests");
            HttpURLConnection httpURLConnection2 = null;
            try {
                httpURLConnection = N(requests);
                exc = null;
            } catch (Exception e10) {
                exc = e10;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                u0.r(httpURLConnection2);
                throw th;
            }
            try {
                if (httpURLConnection != null) {
                    list = o(httpURLConnection, requests);
                } else {
                    List<b0> a10 = b0.f15206i.a(requests.p(), null, new FacebookException(exc));
                    G(requests, a10);
                    list = a10;
                }
                u0.r(httpURLConnection);
                return list;
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection2 = httpURLConnection;
                u0.r(httpURLConnection2);
                throw th;
            }
        }

        @NotNull
        public final List<b0> j(@NotNull Collection<GraphRequest> requests) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            return i(new a0(requests));
        }

        @NotNull
        public final List<b0> k(@NotNull GraphRequest... requests) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            return j(kotlin.collections.n.x1(requests));
        }

        @NotNull
        public final z l(@NotNull a0 requests) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            v0.i(requests, "requests");
            z zVar = new z(requests);
            zVar.executeOnExecutor(v.u(), new Void[0]);
            return zVar;
        }

        @NotNull
        public final z m(@NotNull Collection<GraphRequest> requests) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            return l(new a0(requests));
        }

        @NotNull
        public final z n(@NotNull GraphRequest... requests) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            return m(kotlin.collections.n.x1(requests));
        }

        @NotNull
        public final List<b0> o(@NotNull HttpURLConnection connection, @NotNull a0 requests) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(requests, "requests");
            List<b0> f10 = b0.f15206i.f(connection, requests);
            u0.r(connection);
            int size = requests.size();
            if (size == f10.size()) {
                G(requests, f10);
                com.facebook.f.f15529f.e().h();
                return f10;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.US, "Received %d responses while expecting %d", Arrays.copyOf(new Object[]{Integer.valueOf(f10.size()), Integer.valueOf(size)}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            throw new FacebookException(format);
        }

        @NotNull
        public final GraphRequest x(@Nullable AccessToken accessToken, @Nullable String str, @Nullable b bVar) {
            return new GraphRequest(accessToken, str, null, null, bVar, null, 32, null);
        }

        @NotNull
        public final GraphRequest y(@Nullable AccessToken accessToken, @Nullable final d dVar) {
            return new GraphRequest(accessToken, "me", null, null, new b() { // from class: com.facebook.x
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    GraphRequest.c.z(GraphRequest.d.this, b0Var);
                }
            }, null, 32, null);
        }

        private c() {
        }
    }

    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface d {
        void a(@Nullable JSONObject jSONObject, @Nullable b0 b0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface e {
        void a(@NotNull String str, @NotNull String str2);
    }

    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface f extends b {
        void b(long j10, long j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class g implements e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final OutputStream f14865a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final com.facebook.internal.i0 f14866b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f14867c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f14868d;

        public g(@NotNull OutputStream outputStream, @Nullable com.facebook.internal.i0 i0Var, boolean z10) {
            Intrinsics.checkNotNullParameter(outputStream, "outputStream");
            this.f14865a = outputStream;
            this.f14866b = i0Var;
            this.f14867c = true;
            this.f14868d = z10;
        }

        private final RuntimeException b() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        @Override // com.facebook.GraphRequest.e
        public void a(@NotNull String key, @NotNull String value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            f(key, null, null);
            i("%s", value);
            k();
            com.facebook.internal.i0 i0Var = this.f14866b;
            if (i0Var != null) {
                i0Var.d("    " + key, value);
            }
        }

        public final void c(@NotNull String format, @NotNull Object... args) {
            Intrinsics.checkNotNullParameter(format, "format");
            Intrinsics.checkNotNullParameter(args, "args");
            if (!this.f14868d) {
                if (this.f14867c) {
                    OutputStream outputStream = this.f14865a;
                    Charset charset = Charsets.UTF_8;
                    byte[] bytes = "--".getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                    outputStream.write(bytes);
                    OutputStream outputStream2 = this.f14865a;
                    byte[] bytes2 = GraphRequest.f14843p.getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes2, "this as java.lang.String).getBytes(charset)");
                    outputStream2.write(bytes2);
                    OutputStream outputStream3 = this.f14865a;
                    byte[] bytes3 = "\r\n".getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes3, "this as java.lang.String).getBytes(charset)");
                    outputStream3.write(bytes3);
                    this.f14867c = false;
                }
                OutputStream outputStream4 = this.f14865a;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Object[] copyOf = Arrays.copyOf(args, args.length);
                String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
                Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                byte[] bytes4 = format2.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes4, "this as java.lang.String).getBytes(charset)");
                outputStream4.write(bytes4);
                return;
            }
            OutputStream outputStream5 = this.f14865a;
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            Object[] copyOf2 = Arrays.copyOf(args, args.length);
            String format3 = String.format(locale, format, Arrays.copyOf(copyOf2, copyOf2.length));
            Intrinsics.checkNotNullExpressionValue(format3, "format(locale, format, *args)");
            String encode = URLEncoder.encode(format3, "UTF-8");
            Intrinsics.checkNotNullExpressionValue(encode, "encode(String.format(Loc… format, *args), \"UTF-8\")");
            byte[] bytes5 = encode.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes5, "this as java.lang.String).getBytes(charset)");
            outputStream5.write(bytes5);
        }

        public final void d(@NotNull String key, @NotNull Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            f(key, key, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f14865a);
            i("", new Object[0]);
            k();
            com.facebook.internal.i0 i0Var = this.f14866b;
            if (i0Var != null) {
                i0Var.d("    " + key, "<Image>");
            }
        }

        public final void e(@NotNull String key, @NotNull byte[] bytes) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            f(key, key, "content/unknown");
            this.f14865a.write(bytes);
            i("", new Object[0]);
            k();
            com.facebook.internal.i0 i0Var = this.f14866b;
            if (i0Var != null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(bytes.length)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                i0Var.d("    " + key, format);
            }
        }

        public final void f(@Nullable String str, @Nullable String str2, @Nullable String str3) {
            if (!this.f14868d) {
                c("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    c("; filename=\"%s\"", str2);
                }
                i("", new Object[0]);
                if (str3 != null) {
                    i("%s: %s", CommonGatewayClient.HEADER_CONTENT_TYPE, str3);
                }
                i("", new Object[0]);
                return;
            }
            OutputStream outputStream = this.f14865a;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%s=", Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            byte[] bytes = format.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes);
        }

        public final void g(@NotNull String key, @NotNull Uri contentUri, @Nullable String str) {
            int q10;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(contentUri, "contentUri");
            if (str == null) {
                str = "content/unknown";
            }
            f(key, key, str);
            if (this.f14865a instanceof g0) {
                ((g0) this.f14865a).g(u0.A(contentUri));
                q10 = 0;
            } else {
                q10 = u0.q(v.l().getContentResolver().openInputStream(contentUri), this.f14865a);
            }
            i("", new Object[0]);
            k();
            com.facebook.internal.i0 i0Var = this.f14866b;
            if (i0Var != null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(q10)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                i0Var.d("    " + key, format);
            }
        }

        public final void h(@NotNull String key, @NotNull ParcelFileDescriptor descriptor, @Nullable String str) {
            int q10;
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(descriptor, "descriptor");
            if (str == null) {
                str = "content/unknown";
            }
            f(key, key, str);
            OutputStream outputStream = this.f14865a;
            if (outputStream instanceof g0) {
                ((g0) outputStream).g(descriptor.getStatSize());
                q10 = 0;
            } else {
                q10 = u0.q(new ParcelFileDescriptor.AutoCloseInputStream(descriptor), this.f14865a);
            }
            i("", new Object[0]);
            k();
            com.facebook.internal.i0 i0Var = this.f14866b;
            if (i0Var != null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(q10)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                i0Var.d("    " + key, format);
            }
        }

        public final void i(@NotNull String format, @NotNull Object... args) {
            Intrinsics.checkNotNullParameter(format, "format");
            Intrinsics.checkNotNullParameter(args, "args");
            c(format, Arrays.copyOf(args, args.length));
            if (!this.f14868d) {
                c("\r\n", new Object[0]);
            }
        }

        public final void j(@NotNull String key, @Nullable Object obj, @Nullable GraphRequest graphRequest) {
            Intrinsics.checkNotNullParameter(key, "key");
            OutputStream outputStream = this.f14865a;
            if (outputStream instanceof j0) {
                Intrinsics.checkNotNull(outputStream, "null cannot be cast to non-null type com.facebook.RequestOutputStream");
                ((j0) outputStream).a(graphRequest);
            }
            c cVar = GraphRequest.f14841n;
            if (cVar.w(obj)) {
                a(key, cVar.C(obj));
            } else if (obj instanceof Bitmap) {
                d(key, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                e(key, (byte[]) obj);
            } else if (obj instanceof Uri) {
                g(key, (Uri) obj, null);
            } else if (obj instanceof ParcelFileDescriptor) {
                h(key, (ParcelFileDescriptor) obj, null);
            } else if (obj instanceof ParcelableResourceWithMimeType) {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable b10 = parcelableResourceWithMimeType.b();
                String a10 = parcelableResourceWithMimeType.a();
                if (b10 instanceof ParcelFileDescriptor) {
                    h(key, (ParcelFileDescriptor) b10, a10);
                } else if (b10 instanceof Uri) {
                    g(key, (Uri) b10, a10);
                } else {
                    throw b();
                }
            } else {
                throw b();
            }
        }

        public final void k() {
            if (!this.f14868d) {
                i("--%s", GraphRequest.f14843p);
                return;
            }
            OutputStream outputStream = this.f14865a;
            byte[] bytes = ContainerUtils.FIELD_DELIMITER.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes);
        }

        public final void l(@NotNull String key, @NotNull JSONArray requestJsonArray, @NotNull Collection<GraphRequest> requests) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(requestJsonArray, "requestJsonArray");
            Intrinsics.checkNotNullParameter(requests, "requests");
            OutputStream outputStream = this.f14865a;
            if (!(outputStream instanceof j0)) {
                String jSONArray = requestJsonArray.toString();
                Intrinsics.checkNotNullExpressionValue(jSONArray, "requestJsonArray.toString()");
                a(key, jSONArray);
                return;
            }
            Intrinsics.checkNotNull(outputStream, "null cannot be cast to non-null type com.facebook.RequestOutputStream");
            j0 j0Var = (j0) outputStream;
            f(key, null, null);
            c("[", new Object[0]);
            int i10 = 0;
            for (GraphRequest graphRequest : requests) {
                int i11 = i10 + 1;
                JSONObject jSONObject = requestJsonArray.getJSONObject(i10);
                j0Var.a(graphRequest);
                if (i10 > 0) {
                    c(",%s", jSONObject.toString());
                } else {
                    c("%s", jSONObject.toString());
                }
                i10 = i11;
            }
            c("]", new Object[0]);
            com.facebook.internal.i0 i0Var = this.f14866b;
            if (i0Var != null) {
                String jSONArray2 = requestJsonArray.toString();
                Intrinsics.checkNotNullExpressionValue(jSONArray2, "requestJsonArray.toString()");
                i0Var.d("    " + key, jSONArray2);
            }
        }
    }

    /* compiled from: GraphRequest.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class h implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList<String> f14869a;

        h(ArrayList<String> arrayList) {
            this.f14869a = arrayList;
        }

        @Override // com.facebook.GraphRequest.e
        public void a(@NotNull String key, @NotNull String value) throws IOException {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            ArrayList<String> arrayList = this.f14869a;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format(Locale.US, "%s=%s", Arrays.copyOf(new Object[]{key, URLEncoder.encode(value, "UTF-8")}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            arrayList.add(format);
        }
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        StringBuilder sb2 = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11) + 30;
        for (int i10 = 0; i10 < nextInt; i10++) {
            sb2.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "buffer.toString()");
        f14843p = sb3;
        f14845r = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    }

    public GraphRequest() {
        this(null, null, null, null, null, null, 63, null);
    }

    private final boolean A() {
        if (!Intrinsics.areEqual(v.y(), "instagram.com")) {
            return true;
        }
        return !z();
    }

    @NotNull
    public static final GraphRequest B(@Nullable AccessToken accessToken, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable b bVar) {
        return f14841n.A(accessToken, str, jSONObject, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(JSONArray jSONArray, Map<String, a> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        String str = this.f14850d;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put("omit_response_on_success", this.f14852f);
        }
        String str2 = this.f14851e;
        if (str2 != null) {
            jSONObject.put("depends_on", str2);
        }
        String v10 = v();
        jSONObject.put("relative_url", v10);
        jSONObject.put("method", this.f14857k);
        AccessToken accessToken = this.f14847a;
        if (accessToken != null) {
            com.facebook.internal.i0.f16209e.d(accessToken.m());
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : this.f14853g.keySet()) {
            Object obj = this.f14853g.get(str3);
            if (f14841n.v(obj)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.ROOT, "%s%d", Arrays.copyOf(new Object[]{"file", Integer.valueOf(map.size())}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                arrayList.add(format);
                map.put(format, new a(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        JSONObject jSONObject2 = this.f14849c;
        if (jSONObject2 != null) {
            ArrayList arrayList2 = new ArrayList();
            f14841n.D(jSONObject2, v10, new h(arrayList2));
            jSONObject.put("body", TextUtils.join(ContainerUtils.FIELD_DELIMITER, arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    private final boolean J() {
        boolean z10;
        String n10 = n();
        if (n10 != null) {
            z10 = StringsKt.b0(n10, HiAnalyticsConstant.REPORT_VAL_SEPARATOR, false, 2, null);
        } else {
            z10 = false;
        }
        if (n10 != null && StringsKt.V(n10, "IG", false, 2, null) && !z10 && z()) {
            return true;
        }
        if (A() || z10) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(b bVar, b0 response) {
        JSONObject jSONObject;
        JSONArray jSONArray;
        String str;
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(response, "response");
        JSONObject c10 = response.c();
        if (c10 != null) {
            jSONObject = c10.optJSONObject("__debug__");
        } else {
            jSONObject = null;
        }
        if (jSONObject != null) {
            jSONArray = jSONObject.optJSONArray("messages");
        } else {
            jSONArray = null;
        }
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    str = optJSONObject.optString("message");
                } else {
                    str = null;
                }
                if (optJSONObject != null) {
                    str2 = optJSONObject.optString("type");
                } else {
                    str2 = null;
                }
                if (optJSONObject != null) {
                    str3 = optJSONObject.optString("link");
                } else {
                    str3 = null;
                }
                if (str != null && str2 != null) {
                    LoggingBehavior loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
                    if (Intrinsics.areEqual(str2, "warning")) {
                        loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
                    }
                    if (!u0.d0(str3)) {
                        str = str + " Link: " + str3;
                    }
                    i0.a aVar = com.facebook.internal.i0.f16209e;
                    String TAG = f14842o;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    aVar.b(loggingBehavior, TAG, str);
                }
            }
        }
        if (bVar != null) {
            bVar.a(response);
        }
    }

    private final void i() {
        Bundle bundle = this.f14853g;
        if (J()) {
            bundle.putString("access_token", p());
        } else {
            String n10 = n();
            if (n10 != null) {
                bundle.putString("access_token", n10);
            }
        }
        if (!bundle.containsKey("access_token") && u0.d0(v.s())) {
            Log.w(f14842o, "Starting with v13 of the SDK, a client token must be embedded in your client code before making Graph API calls. Visit https://developers.facebook.com/docs/android/getting-started#client-token to learn how to implement this change.");
        }
        bundle.putString(ServiceProvider.NAMED_SDK, "android");
        bundle.putString("format", "json");
        if (v.I(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
            bundle.putString("debug", "info");
        } else if (v.I(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            bundle.putString("debug", "warning");
        }
    }

    private final String j(String str, boolean z10) {
        if (!z10 && this.f14857k == HttpMethod.POST) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.f14853g.keySet()) {
            Object obj = this.f14853g.get(str2);
            if (obj == null) {
                obj = "";
            }
            c cVar = f14841n;
            if (cVar.w(obj)) {
                buildUpon.appendQueryParameter(str2, cVar.C(obj).toString());
            } else if (this.f14857k != HttpMethod.GET) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.US, "Unsupported parameter type for GET request: %s", Arrays.copyOf(new Object[]{obj.getClass().getSimpleName()}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                throw new IllegalArgumentException(format);
            }
        }
        String builder = buildUpon.toString();
        Intrinsics.checkNotNullExpressionValue(builder, "uriBuilder.toString()");
        return builder;
    }

    private final String n() {
        AccessToken accessToken = this.f14847a;
        if (accessToken != null) {
            if (!this.f14853g.containsKey("access_token")) {
                String m10 = accessToken.m();
                com.facebook.internal.i0.f16209e.d(m10);
                return m10;
            }
        } else if (!this.f14853g.containsKey("access_token")) {
            return p();
        }
        return this.f14853g.getString("access_token");
    }

    private final String p() {
        String m10 = v.m();
        String s10 = v.s();
        if (m10.length() > 0 && s10.length() > 0) {
            return m10 + '|' + s10;
        }
        u0.k0(f14842o, "Warning: Request without access token missing application ID or client token.");
        return null;
    }

    private final String s() {
        if (f14845r.matcher(this.f14848b).matches()) {
            return this.f14848b;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%s/%s", Arrays.copyOf(new Object[]{this.f14855i, this.f14848b}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    private final String y(String str) {
        if (!A()) {
            str = o0.f();
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%s/%s", Arrays.copyOf(new Object[]{str, s()}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    private final boolean z() {
        if (this.f14848b == null) {
            return false;
        }
        String str = "^/?" + v.m() + "/?.*";
        if (!this.f14858l && !Pattern.matches(str, this.f14848b) && !Pattern.matches("^/?app/?.*", this.f14848b)) {
            return false;
        }
        return true;
    }

    public final void D(@Nullable final b bVar) {
        if (!v.I(LoggingBehavior.GRAPH_API_DEBUG_INFO) && !v.I(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            this.f14856j = bVar;
        } else {
            this.f14856j = new b() { // from class: com.facebook.w
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    GraphRequest.b(GraphRequest.b.this, b0Var);
                }
            };
        }
    }

    public final void E(boolean z10) {
        this.f14858l = z10;
    }

    public final void F(@Nullable JSONObject jSONObject) {
        this.f14849c = jSONObject;
    }

    public final void G(@Nullable HttpMethod httpMethod) {
        if (this.f14859m != null && httpMethod != HttpMethod.GET) {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        if (httpMethod == null) {
            httpMethod = HttpMethod.GET;
        }
        this.f14857k = httpMethod;
    }

    public final void H(@NotNull Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "<set-?>");
        this.f14853g = bundle;
    }

    public final void I(@Nullable Object obj) {
        this.f14854h = obj;
    }

    @NotNull
    public final b0 k() {
        return f14841n.h(this);
    }

    @NotNull
    public final z l() {
        return f14841n.n(this);
    }

    @Nullable
    public final AccessToken m() {
        return this.f14847a;
    }

    @Nullable
    public final b o() {
        return this.f14856j;
    }

    @Nullable
    public final JSONObject q() {
        return this.f14849c;
    }

    @Nullable
    public final String r() {
        return this.f14848b;
    }

    @Nullable
    public final HttpMethod t() {
        return this.f14857k;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{Request: ");
        sb2.append(" accessToken: ");
        Object obj = this.f14847a;
        if (obj == null) {
            obj = "null";
        }
        sb2.append(obj);
        sb2.append(", graphPath: ");
        sb2.append(this.f14848b);
        sb2.append(", graphObject: ");
        sb2.append(this.f14849c);
        sb2.append(", httpMethod: ");
        sb2.append(this.f14857k);
        sb2.append(", parameters: ");
        sb2.append(this.f14853g);
        sb2.append("}");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder()\n        …(\"}\")\n        .toString()");
        return sb3;
    }

    @NotNull
    public final Bundle u() {
        return this.f14853g;
    }

    @NotNull
    public final String v() {
        if (this.f14859m == null) {
            String y10 = y(o0.h());
            i();
            Uri parse = Uri.parse(j(y10, true));
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%s?%s", Arrays.copyOf(new Object[]{parse.getPath(), parse.getQuery()}, 2));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            return format;
        }
        throw new FacebookException("Can't override URL for a batch request");
    }

    @Nullable
    public final Object w() {
        return this.f14854h;
    }

    @NotNull
    public final String x() {
        String i10;
        String str = this.f14859m;
        if (str != null) {
            return String.valueOf(str);
        }
        String str2 = this.f14848b;
        if (this.f14857k == HttpMethod.POST && str2 != null && StringsKt.F(str2, "/videos", false, 2, null)) {
            i10 = o0.j();
        } else {
            i10 = o0.i(v.y());
        }
        String y10 = y(i10);
        i();
        return j(y10, false);
    }

    public /* synthetic */ GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, b bVar, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : accessToken, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : bundle, (i10 & 8) != 0 ? null : httpMethod, (i10 & 16) != 0 ? null : bVar, (i10 & 32) != 0 ? null : str2);
    }

    public GraphRequest(@Nullable AccessToken accessToken, @Nullable String str, @Nullable Bundle bundle, @Nullable HttpMethod httpMethod, @Nullable b bVar, @Nullable String str2) {
        this.f14852f = true;
        this.f14847a = accessToken;
        this.f14848b = str;
        this.f14855i = str2;
        D(bVar);
        G(httpMethod);
        if (bundle != null) {
            this.f14853g = new Bundle(bundle);
        } else {
            this.f14853g = new Bundle();
        }
        if (this.f14855i == null) {
            this.f14855i = v.x();
        }
    }
}
