package zb;

import bc.e;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
/* compiled from: ApiEventListener.kt */
@Metadata
/* loaded from: classes5.dex */
public final class b extends EventListener {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f71550c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final EventListener.Factory f71551d = new EventListener.Factory() { // from class: zb.a
        @Override // okhttp3.EventListener.Factory
        public final EventListener a(Call call) {
            EventListener E;
            E = b.E(call);
            return E;
        }
    };

    /* compiled from: ApiEventListener.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final EventListener.Factory a() {
            return b.f71551d;
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EventListener E(Call it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new b();
    }

    @Override // okhttp3.EventListener
    public void e(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        super.e(call, ioe);
        HttpUrl l10 = call.request().l();
        e.a aVar = bc.e.f2600a;
        aVar.b("ApiEventListener", "callFailed -> url(" + l10 + ") errMsg(" + ioe + ')');
        if ((ioe instanceof UnknownHostException) || (ioe instanceof SocketException) || (ioe instanceof SSLException) || (ioe instanceof SocketTimeoutException)) {
            if (StringsKt.b0(l10.toString(), "https://cdn-v2.shorttv.live", false, 2, null) || StringsKt.b0(l10.toString(), "https://cdn-v2.shorttv.app", false, 2, null)) {
                f.f71552a.k();
            }
        }
    }
}
