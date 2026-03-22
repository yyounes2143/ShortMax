package zb;

import androidx.browser.trusted.sharing.ShareTarget;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonParamsInterceptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCommonParamsInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonParamsInterceptor.kt\ncom/jiuzhou/cdn/api/common/CommonParamsInterceptor\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,67:1\n216#2,2:68\n216#2,2:70\n*S KotlinDebug\n*F\n+ 1 CommonParamsInterceptor.kt\ncom/jiuzhou/cdn/api/common/CommonParamsInterceptor\n*L\n48#1:68,2\n58#1:70,2\n*E\n"})
/* loaded from: classes5.dex */
public final class g implements Interceptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f71559a = new a(null);

    /* compiled from: CommonParamsInterceptor.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Map<String, Object> a() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            bc.c cVar = bc.c.f2594a;
            linkedHashMap.put("brand", cVar.b());
            linkedHashMap.put("model", cVar.c());
            linkedHashMap.put("os", "android");
            linkedHashMap.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, cVar.d());
            linkedHashMap.put("appVersion", cVar.a());
            return linkedHashMap;
        }

        private a() {
        }
    }

    private final void a(Request.Builder builder, HttpUrl httpUrl) {
        HttpUrl httpUrl2 = null;
        if (!StringsKt.b0(httpUrl.toString(), "https://cdn-v2.shorttv.live", false, 2, null) && !StringsKt.b0(httpUrl.toString(), "https://cdn-v2.shorttv.app", false, 2, null)) {
            HttpUrl.Builder k10 = httpUrl.k();
            for (Map.Entry<String, Object> entry : f71559a.a().entrySet()) {
                Object value = entry.getValue();
                String str = (value == null || (str = value.toString()) == null) ? "" : "";
                if (str.length() > 0) {
                    builder.a(entry.getKey(), str);
                }
            }
            builder.l(k10.c());
            return;
        }
        f fVar = f.f71552a;
        String str2 = (String) CollectionsKt.t0(fVar.d(), fVar.e());
        if (str2 != null) {
            httpUrl2 = HttpUrl.f63457k.f(str2);
        }
        if (httpUrl2 != null) {
            HttpUrl.Builder m10 = httpUrl.k().q(httpUrl2.t()).g(httpUrl2.i()).m(httpUrl2.o());
            for (Map.Entry<String, Object> entry2 : f71559a.a().entrySet()) {
                Object value2 = entry2.getValue();
                String str3 = (value2 == null || (str3 = value2.toString()) == null) ? "" : "";
                if (str3.length() > 0) {
                    builder.a(entry2.getKey(), str3);
                }
            }
            builder.l(m10.c());
        }
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        String h10 = request.h();
        Request.Builder i10 = request.i();
        if (Intrinsics.areEqual(ShareTarget.METHOD_GET, h10) || Intrinsics.areEqual(ShareTarget.METHOD_POST, h10)) {
            a(i10, request.l());
        }
        return chain.a(i10.b());
    }
}
