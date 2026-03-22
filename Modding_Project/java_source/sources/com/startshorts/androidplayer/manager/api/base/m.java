package com.startshorts.androidplayer.manager.api.base;

import android.net.Uri;
import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.p;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
import javax.net.ssl.SSLException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiEventListener.kt */
@Metadata
/* loaded from: classes6.dex */
public final class m extends EventListener {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final b f41792g = new b(null);
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final EventListener.Factory f41793h = new a();

    /* renamed from: c  reason: collision with root package name */
    private final long f41794c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final HttpUrl f41795d;

    /* renamed from: e  reason: collision with root package name */
    private final long f41796e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final ms.i f41797f;

    /* compiled from: ApiEventListener.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements EventListener.Factory {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicLong f41798a = new AtomicLong(1);

        a() {
        }

        @Override // okhttp3.EventListener.Factory
        public EventListener a(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            return new m(this.f41798a.getAndIncrement(), call.request().l(), DeviceUtil.f48146a.K());
        }
    }

    /* compiled from: ApiEventListener.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final EventListener.Factory a() {
            return m.f41793h;
        }

        private b() {
        }
    }

    public m(long j10, @NotNull HttpUrl url, long j11) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f41794c = j10;
        this.f41795d = url;
        this.f41796e = j11;
        this.f41797f = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SimpleDateFormat G;
                G = m.G();
                return G;
            }
        });
    }

    private final SimpleDateFormat F() {
        return (SimpleDateFormat) this.f41797f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SimpleDateFormat G() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ENGLISH);
    }

    private final void H(String str, String str2) {
        long K = DeviceUtil.f48146a.K();
        String str3 = "callId(" + this.f41794c + ") path(" + this.f41795d.d() + ") startTime(" + F().format(Long.valueOf(this.f41796e)) + ") endTime(" + F().format(Long.valueOf(K)) + ") elapseTime(" + (K - this.f41796e) + "ms) result(" + str + ") msg(" + str2 + ')';
        if (Intrinsics.areEqual("success", str)) {
            Logger.f41511a.h("ApiEventListener", str3);
        } else {
            Logger.f41511a.e("ApiEventListener", str3);
        }
    }

    static /* synthetic */ void I(m mVar, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "";
        }
        mVar.H(str, str2);
    }

    private final void J(SSLException sSLException) {
        String str;
        int x10 = ud.b.f68412a.x();
        p.a aVar = p.f41802a;
        if (x10 < aVar.a().size()) {
            str = String.valueOf(Uri.parse(aVar.a().get(x10)).getHost());
        } else {
            str = null;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        if (str == null) {
            str = this.f41795d.i();
        }
        bundle.putString("domain", str);
        bundle.putString(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, this.f41795d.d());
        bundle.putString("errorMessage", sSLException.getMessage());
        bundle.putString(TtmlNode.TAG_REGION, DeviceUtil.f48146a.l());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ssl_fail", bundle, 0L, 4, null);
    }

    private final void K(IOException iOException) {
        boolean z10;
        if (p.f41802a.i() && qe.a.f65321a.value().getDynamicDomainEnable()) {
            if (iOException instanceof UnknownHostException) {
                z10 = ud.a.f68411a.t();
            } else {
                z10 = true;
            }
            if (z10) {
                try {
                    k.f41787a.k(this.f41795d.d(), iOException.getMessage(), true);
                } catch (Exception e10) {
                    Logger.f41511a.e("ApiEventListener", "updateApiUrlIndex exception -> " + e10.getMessage());
                }
            }
        }
    }

    @Override // okhttp3.EventListener
    public void d(@NotNull Call call) {
        String str;
        Intrinsics.checkNotNullParameter(call, "call");
        super.d(call);
        if (call.isCanceled()) {
            str = "canceled";
        } else {
            str = "success";
        }
        I(this, str, null, 2, null);
    }

    @Override // okhttp3.EventListener
    public void e(@NotNull Call call, @NotNull IOException ioe) {
        String message;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        super.e(call, ioe);
        H("failed", ioe.getMessage());
        if (((ioe instanceof UnknownHostException) || (ioe instanceof SocketException) || (ioe instanceof SSLException)) && ud.a.f68411a.t() && DeviceUtil.f48146a.b0()) {
            if ((ioe instanceof SSLException) && (message = ioe.getMessage()) != null && !StringsKt.b0(message, "Chain validation failed", false, 2, null)) {
                J((SSLException) ioe);
            }
            K(ioe);
        }
    }

    @Override // okhttp3.EventListener
    public void i(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        super.i(call, inetSocketAddress, proxy, protocol, ioe);
        I(this, "connect_failed", null, 2, null);
    }
}
