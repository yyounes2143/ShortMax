package zb;

import bc.e;
import com.jiuzhou.cdn.CdnHelper;
import fu.d0;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: ApiHelper.kt */
@Metadata
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    private static int f71554c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f71552a = new f();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f71553b = CollectionsKt.t("https://cdn-v2.shorttv.live", "https://cdn-v2.shorttv.app");

    /* renamed from: d  reason: collision with root package name */
    private static long f71555d = -1;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Object f71556e = new Object();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final i f71557f = kotlin.c.b(new Function0() { // from class: zb.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            OkHttpClient h10;
            h10 = f.h();
            return h10;
        }
    });
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final i f71558g = kotlin.c.b(new Function0() { // from class: zb.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            d0 j10;
            j10 = f.j();
            return j10;
        }
    });

    /* compiled from: ApiHelper.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a implements hc.a {
        a() {
        }

        @Override // hc.a
        public void log(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            e.a aVar = bc.e.f2600a;
            aVar.a("OKHttp CdnHelper", "curlLog: " + message);
        }
    }

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient h() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: zb.e
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public final void log(String str) {
                f.i(str);
            }
        });
        httpLoggingInterceptor.d(HttpLoggingInterceptor.Level.BASIC);
        OkHttpClient.Builder a10 = new OkHttpClient.Builder().l(b.f71550c.a()).a(new g()).a(httpLoggingInterceptor).a(new gc.d(new a(), null, 2, null));
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return a10.f(20L, timeUnit).V(60L, timeUnit).Y(60L, timeUnit).j(new yb.c()).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String str) {
        e.a aVar = bc.e.f2600a;
        String j10 = CdnHelper.j();
        aVar.a(j10, "httpLog: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final d0 j() {
        return new d0.b().c("https://cdn-v2.shorttv.live").g(f71552a.f()).b(hu.a.f()).e();
    }

    @NotNull
    public final List<String> d() {
        return f71553b;
    }

    public final int e() {
        if (f71554c >= f71553b.size()) {
            f71554c = 0;
        }
        return f71554c;
    }

    @NotNull
    public final OkHttpClient f() {
        return (OkHttpClient) f71557f.getValue();
    }

    @NotNull
    public final d0 g() {
        Object value = f71558g.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (d0) value;
    }

    public final void k() {
        synchronized (f71556e) {
            try {
                bc.c cVar = bc.c.f2594a;
                long e10 = cVar.e();
                if (e10 - f71555d < 30000) {
                    return;
                }
                if (!cVar.f()) {
                    return;
                }
                f71555d = e10;
                f fVar = f71552a;
                if (fVar.e() + 1 >= f71553b.size()) {
                    f71554c = 0;
                } else {
                    f71554c = fVar.e() + 1;
                }
                e.a aVar = bc.e.f2600a;
                aVar.e("ApiHelper", "updateApiUrlIndex -> " + fVar.e());
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
