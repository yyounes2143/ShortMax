package com.google.firebase.sessions.settings;

import androidx.browser.trusted.sharing.ShareTarget;
import gt.g0;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.json.JSONObject;
import rs.c;
/* compiled from: RemoteSettingsFetcher.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", f = "RemoteSettingsFetcher.kt", l = {73, 75, 78}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRemoteSettingsFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteSettingsFetcher.kt\ncom/google/firebase/sessions/settings/RemoteSettingsFetcher$doConfigFetch$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n216#2,2:106\n1#3:108\n*S KotlinDebug\n*F\n+ 1 RemoteSettingsFetcher.kt\ncom/google/firebase/sessions/settings/RemoteSettingsFetcher$doConfigFetch$2\n*L\n58#1:106,2\n*E\n"})
/* loaded from: classes5.dex */
final class RemoteSettingsFetcher$doConfigFetch$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f21653h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RemoteSettingsFetcher f21654i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Map<String, String> f21655j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function2<JSONObject, c<? super Unit>, Object> f21656k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ Function2<String, c<? super Unit>, Object> f21657l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RemoteSettingsFetcher$doConfigFetch$2(RemoteSettingsFetcher remoteSettingsFetcher, Map<String, String> map, Function2<? super JSONObject, ? super c<? super Unit>, ? extends Object> function2, Function2<? super String, ? super c<? super Unit>, ? extends Object> function22, c<? super RemoteSettingsFetcher$doConfigFetch$2> cVar) {
        super(2, cVar);
        this.f21654i = remoteSettingsFetcher;
        this.f21655j = map;
        this.f21656k = function2;
        this.f21657l = function22;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteSettingsFetcher$doConfigFetch$2(this.f21654i, this.f21655j, this.f21656k, this.f21657l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RemoteSettingsFetcher$doConfigFetch$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        URL c10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f21653h;
        try {
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    if (i10 == 3) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                }
            } else {
                f.b(obj);
                c10 = this.f21654i.c();
                URLConnection openConnection = c10.openConnection();
                Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
                httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                httpsURLConnection.setRequestProperty("Accept", "application/json");
                for (Map.Entry<String, String> entry : this.f21655j.entrySet()) {
                    httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
                int responseCode = httpsURLConnection.getResponseCode();
                if (responseCode == 200) {
                    InputStream inputStream = httpsURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuilder sb2 = new StringBuilder();
                    Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    while (true) {
                        ?? readLine = bufferedReader.readLine();
                        objectRef.element = readLine;
                        if (readLine == 0) {
                            break;
                        }
                        sb2.append((String) readLine);
                    }
                    bufferedReader.close();
                    inputStream.close();
                    JSONObject jSONObject = new JSONObject(sb2.toString());
                    Function2<JSONObject, c<? super Unit>, Object> function2 = this.f21656k;
                    this.f21653h = 1;
                    if (function2.invoke(jSONObject, this) == f10) {
                        return f10;
                    }
                } else {
                    Function2<String, c<? super Unit>, Object> function22 = this.f21657l;
                    String str = "Bad response code: " + responseCode;
                    this.f21653h = 2;
                    if (function22.invoke(str, this) == f10) {
                        return f10;
                    }
                }
            }
        } catch (Exception e10) {
            Function2<String, c<? super Unit>, Object> function23 = this.f21657l;
            String message = e10.getMessage();
            if (message == null) {
                message = e10.toString();
            }
            this.f21653h = 3;
            if (function23.invoke(message, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
