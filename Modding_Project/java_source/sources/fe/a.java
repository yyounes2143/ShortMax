package fe;

import com.startshorts.androidplayer.log.Logger;
import hk.b;
import hk.d;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: JavaApiEngine.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0742a f51695a = new C0742a(null);

    /* compiled from: JavaApiEngine.kt */
    @Metadata
    /* renamed from: fe.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0742a {
        public /* synthetic */ C0742a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0742a() {
        }
    }

    private final Response a(String str, Response response) throws IOException {
        MediaType mediaType;
        String str2;
        boolean parseBoolean = Boolean.parseBoolean(response.s("isEncrypt", "false"));
        Logger logger = Logger.f41511a;
        logger.e("JavaApiEngine", "decryptResponse -> path(" + str + ") decryptFromResponse(" + parseBoolean + ')');
        if (response.isSuccessful()) {
            ResponseBody d10 = response.d();
            ResponseBody responseBody = null;
            if (d10 != null) {
                mediaType = d10.contentType();
            } else {
                mediaType = null;
            }
            if (d10 != null) {
                str2 = d10.string();
            } else {
                str2 = null;
            }
            if (d10 != null) {
                Util.m(d10);
            }
            if (parseBoolean && str2 != null && str2.length() != 0) {
                JSONObject jSONObject = new JSONObject(str2);
                if (jSONObject.has("result")) {
                    str2 = jSONObject.getString("result");
                }
                if (str2 != null && str2.length() != 0) {
                    str2 = d.c(str2, b.f52886a.c());
                    if (!StringsKt.b0(str, "app/homeData/getTabPageData", false, 2, null) && !StringsKt.b0(str, "app/homeData/getTabHomeData", false, 2, null)) {
                        logger.e("JavaApiEngine", '[' + str + "] decrypt result -> " + str2);
                    }
                } else {
                    logger.e("JavaApiEngine", "decrypt result isNullOrEmpty");
                }
            } else {
                logger.e("JavaApiEngine", '[' + str + "] not decrypt result -> " + str2);
            }
            Response.Builder F = response.F();
            if (str2 != null) {
                responseBody = ResponseBody.Companion.a(str2, mediaType);
            }
            return F.b(responseBody).c();
        }
        return response;
    }

    @NotNull
    public Response b(@NotNull Request request, @NotNull Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(chain, "chain");
        return a(request.l().d(), chain.a(request));
    }
}
