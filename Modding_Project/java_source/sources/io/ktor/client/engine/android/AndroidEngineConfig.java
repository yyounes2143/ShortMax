package io.ktor.client.engine.android;

import java.net.HttpURLConnection;
import javax.net.ssl.HttpsURLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import or.d;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidEngineConfig.kt */
@Metadata
/* loaded from: classes8.dex */
public final class AndroidEngineConfig extends d {

    /* renamed from: c  reason: collision with root package name */
    private int f58862c = 100000;

    /* renamed from: d  reason: collision with root package name */
    private int f58863d = 100000;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private Function1<? super HttpsURLConnection, Unit> f58864e = new Function1<HttpsURLConnection, Unit>() { // from class: io.ktor.client.engine.android.AndroidEngineConfig$sslManager$1
        public final void b(@NotNull HttpsURLConnection it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(HttpsURLConnection httpsURLConnection) {
            b(httpsURLConnection);
            return Unit.f60915a;
        }
    };
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private Function1<? super HttpURLConnection, Unit> f58865f = new Function1<HttpURLConnection, Unit>() { // from class: io.ktor.client.engine.android.AndroidEngineConfig$requestConfig$1
        public final void b(@NotNull HttpURLConnection httpURLConnection) {
            Intrinsics.checkNotNullParameter(httpURLConnection, "$this$null");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(HttpURLConnection httpURLConnection) {
            b(httpURLConnection);
            return Unit.f60915a;
        }
    };

    public final int b() {
        return this.f58862c;
    }

    @NotNull
    public final Function1<HttpURLConnection, Unit> c() {
        return this.f58865f;
    }

    public final int d() {
        return this.f58863d;
    }

    @NotNull
    public final Function1<HttpsURLConnection, Unit> e() {
        return this.f58864e;
    }
}
