package io.bidmachine.analytics.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import io.bidmachine.analytics.internal.AbstractC3310e;
import io.bidmachine.analytics.internal.AbstractC3312g;
import io.bidmachine.analytics.internal.q0;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes7.dex */
public final class O extends AbstractC3310e {

    /* renamed from: k  reason: collision with root package name */
    public static final a f53982k = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private d f53984i;

    /* renamed from: h  reason: collision with root package name */
    private final String f53983h = "mimp";

    /* renamed from: j  reason: collision with root package name */
    private final ms.i f53985j = kotlin.c.b(e.f53991a);

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class c implements AppLovinCommunicatorSubscriber {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC3311f f53986a;

        /* renamed from: b  reason: collision with root package name */
        private final ms.i f53987b = kotlin.c.b(a.f53988a);

        /* loaded from: classes7.dex */
        static final class a extends Lambda implements Function0 {

            /* renamed from: a  reason: collision with root package name */
            public static final a f53988a = new a();

            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: a */
            public final String invoke() {
                return UUID.randomUUID().toString();
            }
        }

        public c(InterfaceC3311f interfaceC3311f) {
            this.f53986a = interfaceC3311f;
        }

        private final String a() {
            return (String) this.f53987b.getValue();
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorEntity
        public String getCommunicatorId() {
            return a();
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
        public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
            try {
                Result.a aVar = Result.f60901b;
                if (appLovinCommunicatorMessage == null || !Intrinsics.areEqual("max_revenue_events", appLovinCommunicatorMessage.getTopic())) {
                    return;
                }
                Bundle messageData = appLovinCommunicatorMessage.getMessageData();
                if (messageData != null && messageData.size() > 0) {
                    this.f53986a.a(s0.a(messageData));
                    Result.d(Unit.f60915a);
                    return;
                }
                this.f53986a.a(new q0("mimp", q0.a.MONITOR_NO_CONTENT, null, 4, null));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class d implements AppLovinBroadcastManager.Receiver {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f53989a;

        /* renamed from: b  reason: collision with root package name */
        private volatile AppLovinCommunicatorSubscriber f53990b;

        public final void a(AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber) {
            this.f53990b = appLovinCommunicatorSubscriber;
        }

        @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
        public void onReceive(Intent intent, Map map) {
            AppLovinCommunicatorSubscriber appLovinCommunicatorSubscriber;
            if (this.f53989a && (intent instanceof AppLovinCommunicatorMessage) && (appLovinCommunicatorSubscriber = this.f53990b) != null) {
                appLovinCommunicatorSubscriber.onMessageReceived((AppLovinCommunicatorMessage) intent);
            }
        }

        public final void a(boolean z10) {
            this.f53989a = z10;
        }
    }

    /* loaded from: classes7.dex */
    static final class e extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final e f53991a = new e();

        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final b invoke() {
            return new b();
        }
    }

    private final AppLovinCommunicatorSubscriber c() {
        return (AppLovinCommunicatorSubscriber) this.f53985j.getValue();
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public String a() {
        return this.f53983h;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void d(Context context) {
        d dVar = new d();
        AppLovinBroadcastManager.registerReceiver(dVar, new IntentFilter("max_revenue_events"));
        this.f53984i = dVar;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void e(Context context) {
        d dVar = this.f53984i;
        if (dVar != null) {
            dVar.a(false);
        }
        AppLovinCommunicator.getInstance(context).unsubscribe(c(), "max_revenue_events");
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3310e, io.bidmachine.analytics.internal.AbstractC3315j
    public void f(Context context) {
        super.f(context);
        d dVar = this.f53984i;
        if (dVar != null) {
            dVar.a(true);
        }
        AppLovinCommunicator.getInstance(context).subscribe(c(), "max_revenue_events");
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    /* renamed from: a */
    public void b(AbstractC3312g.a aVar) {
        super.a(aVar);
        d dVar = this.f53984i;
        if (dVar == null) {
            return;
        }
        dVar.a(new c(this));
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3310e
    public AbstractC3310e.b b(Map map) {
        String obj;
        Float a10 = a0.a(map.get("revenue"));
        if (a10 != null) {
            float floatValue = a10.floatValue();
            Object obj2 = map.get("network_name");
            if (obj2 != null && (obj = obj2.toString()) != null) {
                return new AbstractC3310e.b(0, floatValue, obj, 1, null);
            }
        }
        return null;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3310e
    public AbstractC3310e.a c(Map map) {
        String obj;
        String upperCase;
        Object obj2 = map.get("ad_format");
        if (obj2 == null || (obj = obj2.toString()) == null || (upperCase = obj.toUpperCase(Locale.US)) == null) {
            return null;
        }
        switch (upperCase.hashCode()) {
            case -2053424887:
                if (!upperCase.equals("LEADER")) {
                    return null;
                }
                return AbstractC3310e.a.BANNER;
            case -1999289321:
                if (upperCase.equals("NATIVE")) {
                    return AbstractC3310e.a.NATIVE;
                }
                return null;
            case -1372958932:
                if (!upperCase.equals("INTERSTITIAL")) {
                    return null;
                }
                return AbstractC3310e.a.INTERSTITIAL;
            case 2374915:
                if (!upperCase.equals("MREC")) {
                    return null;
                }
                return AbstractC3310e.a.BANNER;
            case 69823676:
                if (!upperCase.equals("INTER")) {
                    return null;
                }
                return AbstractC3310e.a.INTERSTITIAL;
            case 543046670:
                if (!upperCase.equals("REWARDED")) {
                    return null;
                }
                return AbstractC3310e.a.REWARDED;
            case 1854800829:
                if (!upperCase.equals("REWARDED_INTERSTITIAL")) {
                    return null;
                }
                return AbstractC3310e.a.REWARDED;
            case 1951953708:
                if (!upperCase.equals("BANNER")) {
                    return null;
                }
                return AbstractC3310e.a.BANNER;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class b implements AppLovinCommunicatorSubscriber {
        @Override // com.applovin.communicator.AppLovinCommunicatorEntity
        public String getCommunicatorId() {
            return "";
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
        public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        }
    }
}
