package okhttp3.internal.ws;

import java.io.IOException;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.ws.RealWebSocket;
import org.jetbrains.annotations.NotNull;
/* compiled from: RealWebSocket.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RealWebSocket$connect$1 implements Callback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ RealWebSocket f64221a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Request f64222b;

    @Override // okhttp3.Callback
    public void onFailure(@NotNull Call call, @NotNull IOException e10) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(e10, "e");
        this.f64221a.l(e10, null);
    }

    @Override // okhttp3.Callback
    public void onResponse(@NotNull Call call, @NotNull Response response) {
        boolean o10;
        ArrayDeque arrayDeque;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        Exchange p10 = response.p();
        try {
            this.f64221a.i(response, p10);
            Intrinsics.checkNotNull(p10);
            RealWebSocket.Streams n10 = p10.n();
            WebSocketExtensions a10 = WebSocketExtensions.f64223g.a(response.u());
            this.f64221a.f64188d = a10;
            o10 = this.f64221a.o(a10);
            if (!o10) {
                RealWebSocket realWebSocket = this.f64221a;
                synchronized (realWebSocket) {
                    arrayDeque = realWebSocket.f64199o;
                    arrayDeque.clear();
                    realWebSocket.j(1010, "unexpected Sec-WebSocket-Extensions in response header");
                }
            }
            try {
                this.f64221a.n(Util.f63635i + " WebSocket " + this.f64222b.l().r(), n10);
                this.f64221a.m().f(this.f64221a, response);
                this.f64221a.p();
            } catch (Exception e10) {
                this.f64221a.l(e10, null);
            }
        } catch (IOException e11) {
            this.f64221a.l(e11, response);
            Util.m(response);
            if (p10 != null) {
                p10.v();
            }
        }
    }
}
