package com.facebook;

import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.internal.u0;
import com.google.android.material.timepicker.TimeModel;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* compiled from: GraphResponse.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b0 {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f15206i = new a(null);
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static final String f15207j = b0.class.getCanonicalName();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final GraphRequest f15208a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final HttpURLConnection f15209b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f15210c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final JSONObject f15211d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final JSONArray f15212e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final FacebookRequestError f15213f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final JSONObject f15214g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final JSONArray f15215h;

    /* compiled from: GraphResponse.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nGraphResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphResponse.kt\ncom/facebook/GraphResponse$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n1549#2:360\n1620#2,3:361\n*S KotlinDebug\n*F\n+ 1 GraphResponse.kt\ncom/facebook/GraphResponse$Companion\n*L\n355#1:360\n355#1:361,3\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final b0 b(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object NULL, Object obj) throws JSONException {
            if (NULL instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) NULL;
                FacebookRequestError a10 = FacebookRequestError.f14820o.a(jSONObject, obj, httpURLConnection);
                if (a10 != null) {
                    Log.e(b0.f15207j, a10.toString());
                    if (a10.b() == 190 && u0.Z(graphRequest.m())) {
                        if (a10.g() != 493) {
                            AccessToken.f14731l.i(null);
                        } else {
                            AccessToken.c cVar = AccessToken.f14731l;
                            AccessToken e10 = cVar.e();
                            if (e10 != null && !e10.o()) {
                                cVar.d();
                            }
                        }
                    }
                    return new b0(graphRequest, httpURLConnection, a10);
                }
                Object P = u0.P(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
                if (P instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) P;
                    return new b0(graphRequest, httpURLConnection, jSONObject2.toString(), jSONObject2);
                } else if (P instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) P;
                    return new b0(graphRequest, httpURLConnection, jSONArray.toString(), jSONArray);
                } else {
                    NULL = JSONObject.NULL;
                    Intrinsics.checkNotNullExpressionValue(NULL, "NULL");
                }
            }
            if (NULL == JSONObject.NULL) {
                return new b0(graphRequest, httpURLConnection, NULL.toString(), (JSONObject) null);
            }
            throw new FacebookException("Got unexpected object type in response, class: " + NULL.getClass().getSimpleName());
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final java.util.List<com.facebook.b0> c(java.net.HttpURLConnection r9, java.util.List<com.facebook.GraphRequest> r10, java.lang.Object r11) throws com.facebook.FacebookException, org.json.JSONException {
            /*
                r8 = this;
                int r0 = r10.size()
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>(r0)
                r2 = 1
                r3 = 0
                if (r0 != r2) goto L53
                java.lang.Object r2 = r10.get(r3)
                com.facebook.GraphRequest r2 = (com.facebook.GraphRequest) r2
                org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                r4.<init>()     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                java.lang.String r5 = "body"
                r4.put(r5, r11)     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                if (r9 == 0) goto L28
                int r5 = r9.getResponseCode()     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                goto L2a
            L24:
                r4 = move-exception
                goto L38
            L26:
                r4 = move-exception
                goto L46
            L28:
                r5 = 200(0xc8, float:2.8E-43)
            L2a:
                java.lang.String r6 = "code"
                r4.put(r6, r5)     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                r5.<init>()     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                r5.put(r4)     // Catch: java.io.IOException -> L24 org.json.JSONException -> L26
                goto L54
            L38:
                com.facebook.b0 r5 = new com.facebook.b0
                com.facebook.FacebookRequestError r6 = new com.facebook.FacebookRequestError
                r6.<init>(r9, r4)
                r5.<init>(r2, r9, r6)
                r1.add(r5)
                goto L53
            L46:
                com.facebook.b0 r5 = new com.facebook.b0
                com.facebook.FacebookRequestError r6 = new com.facebook.FacebookRequestError
                r6.<init>(r9, r4)
                r5.<init>(r2, r9, r6)
                r1.add(r5)
            L53:
                r5 = r11
            L54:
                boolean r2 = r5 instanceof org.json.JSONArray
                if (r2 == 0) goto La4
                r2 = r5
                org.json.JSONArray r2 = (org.json.JSONArray) r2
                int r4 = r2.length()
                if (r4 != r0) goto La4
                int r0 = r2.length()
            L65:
                if (r3 >= r0) goto La3
                java.lang.Object r2 = r10.get(r3)
                com.facebook.GraphRequest r2 = (com.facebook.GraphRequest) r2
                r4 = r5
                org.json.JSONArray r4 = (org.json.JSONArray) r4     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L83
                java.lang.Object r4 = r4.get(r3)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L83
                java.lang.String r6 = "obj"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r6)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L83
                com.facebook.b0 r4 = r8.b(r2, r9, r4, r11)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L83
                r1.add(r4)     // Catch: com.facebook.FacebookException -> L81 org.json.JSONException -> L83
                goto La0
            L81:
                r4 = move-exception
                goto L85
            L83:
                r4 = move-exception
                goto L93
            L85:
                com.facebook.b0 r6 = new com.facebook.b0
                com.facebook.FacebookRequestError r7 = new com.facebook.FacebookRequestError
                r7.<init>(r9, r4)
                r6.<init>(r2, r9, r7)
                r1.add(r6)
                goto La0
            L93:
                com.facebook.b0 r6 = new com.facebook.b0
                com.facebook.FacebookRequestError r7 = new com.facebook.FacebookRequestError
                r7.<init>(r9, r4)
                r6.<init>(r2, r9, r7)
                r1.add(r6)
            La0:
                int r3 = r3 + 1
                goto L65
            La3:
                return r1
            La4:
                com.facebook.FacebookException r9 = new com.facebook.FacebookException
                java.lang.String r10 = "Unexpected number of results"
                r9.<init>(r10)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.b0.a.c(java.net.HttpURLConnection, java.util.List, java.lang.Object):java.util.List");
        }

        @NotNull
        public final List<b0> a(@NotNull List<GraphRequest> requests, @Nullable HttpURLConnection httpURLConnection, @Nullable FacebookException facebookException) {
            Intrinsics.checkNotNullParameter(requests, "requests");
            List<GraphRequest> list = requests;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (GraphRequest graphRequest : list) {
                arrayList.add(new b0(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, facebookException)));
            }
            return arrayList;
        }

        @NotNull
        public final List<b0> d(@Nullable InputStream inputStream, @Nullable HttpURLConnection httpURLConnection, @NotNull a0 requests) throws FacebookException, JSONException, IOException {
            Intrinsics.checkNotNullParameter(requests, "requests");
            String t02 = u0.t0(inputStream);
            com.facebook.internal.i0.f16209e.c(LoggingBehavior.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(t02.length()), t02);
            return e(t02, httpURLConnection, requests);
        }

        @NotNull
        public final List<b0> e(@NotNull String responseString, @Nullable HttpURLConnection httpURLConnection, @NotNull a0 requests) throws FacebookException, JSONException, IOException {
            Intrinsics.checkNotNullParameter(responseString, "responseString");
            Intrinsics.checkNotNullParameter(requests, "requests");
            Object resultObject = new JSONTokener(responseString).nextValue();
            Intrinsics.checkNotNullExpressionValue(resultObject, "resultObject");
            List<b0> c10 = c(httpURLConnection, requests, resultObject);
            com.facebook.internal.i0.f16209e.c(LoggingBehavior.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", requests.o(), Integer.valueOf(responseString.length()), c10);
            return c10;
        }

        @NotNull
        public final List<b0> f(@NotNull HttpURLConnection connection, @NotNull a0 requests) {
            List<b0> a10;
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(requests, "requests");
            InputStream inputStream = null;
            try {
                try {
                    try {
                    } catch (FacebookException e10) {
                        com.facebook.internal.i0.f16209e.c(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", e10);
                        a10 = a(requests, connection, e10);
                    }
                } catch (Exception e11) {
                    com.facebook.internal.i0.f16209e.c(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", e11);
                    a10 = a(requests, connection, new FacebookException(e11));
                }
                if (v.F()) {
                    if (connection.getResponseCode() >= 400) {
                        inputStream = connection.getErrorStream();
                    } else {
                        inputStream = connection.getInputStream();
                    }
                    a10 = d(inputStream, connection, requests);
                    u0.j(inputStream);
                    return a10;
                }
                Log.e(b0.f15207j, "GraphRequest can't be used when Facebook SDK isn't fully initialized");
                throw new FacebookException("GraphRequest can't be used when Facebook SDK isn't fully initialized");
            } catch (Throwable th2) {
                u0.j(null);
                throw th2;
            }
        }

        private a() {
        }
    }

    public b0(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable JSONArray jSONArray, @Nullable FacebookRequestError facebookRequestError) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f15208a = request;
        this.f15209b = httpURLConnection;
        this.f15210c = str;
        this.f15211d = jSONObject;
        this.f15212e = jSONArray;
        this.f15213f = facebookRequestError;
        this.f15214g = jSONObject;
        this.f15215h = jSONArray;
    }

    @Nullable
    public final FacebookRequestError b() {
        return this.f15213f;
    }

    @Nullable
    public final JSONObject c() {
        return this.f15211d;
    }

    @Nullable
    public final JSONObject d() {
        return this.f15214g;
    }

    @NotNull
    public String toString() {
        String str;
        int i10;
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            HttpURLConnection httpURLConnection = this.f15209b;
            if (httpURLConnection != null) {
                i10 = httpURLConnection.getResponseCode();
            } else {
                i10 = 200;
            }
            str = String.format(locale, TimeModel.NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(i10)}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(locale, format, *args)");
        } catch (IOException unused) {
            str = "unknown";
        }
        String str2 = "{Response:  responseCode: " + str + ", graphObject: " + this.f15211d + ", error: " + this.f15213f + "}";
        Intrinsics.checkNotNullExpressionValue(str2, "StringBuilder()\n        …(\"}\")\n        .toString()");
        return str2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b0(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @NotNull String rawResponse, @Nullable JSONObject jSONObject) {
        this(request, httpURLConnection, rawResponse, jSONObject, null, null);
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(rawResponse, "rawResponse");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b0(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @NotNull String rawResponse, @NotNull JSONArray graphObjects) {
        this(request, httpURLConnection, rawResponse, null, graphObjects, null);
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(rawResponse, "rawResponse");
        Intrinsics.checkNotNullParameter(graphObjects, "graphObjects");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b0(@NotNull GraphRequest request, @Nullable HttpURLConnection httpURLConnection, @NotNull FacebookRequestError error) {
        this(request, httpURLConnection, null, null, null, error);
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
    }
}
