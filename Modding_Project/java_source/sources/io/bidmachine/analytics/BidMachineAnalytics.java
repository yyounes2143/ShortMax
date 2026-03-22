package io.bidmachine.analytics;

import android.content.Context;
import android.util.Base64;
import gt.d1;
import gt.g;
import gt.g0;
import gt.r1;
import io.bidmachine.analytics.internal.AbstractC3310e;
import io.bidmachine.analytics.internal.C;
import io.bidmachine.analytics.internal.C3306a;
import io.bidmachine.analytics.internal.C3316k;
import io.bidmachine.analytics.internal.C3318m;
import io.bidmachine.analytics.internal.C3323s;
import java.util.Map;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import ms.i;
@Metadata
/* loaded from: classes7.dex */
public final class BidMachineAnalytics {
    public static final BidMachineAnalytics INSTANCE = new BidMachineAnalytics();

    /* renamed from: a  reason: collision with root package name */
    private static final i f53911a = c.b(b.f53920a);

    /* renamed from: b  reason: collision with root package name */
    private static String f53912b = "";

    /* renamed from: c  reason: collision with root package name */
    private static C3323s f53913c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f53914a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f53915b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AnalyticsConfig f53916c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f53917d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Context f53918e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ConfigureListener f53919f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(AnalyticsConfig analyticsConfig, String str, Context context, ConfigureListener configureListener, rs.c cVar) {
            super(2, cVar);
            this.f53916c = analyticsConfig;
            this.f53917d = str;
            this.f53918e = context;
            this.f53919f = configureListener;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            a aVar = new a(this.f53916c, this.f53917d, this.f53918e, this.f53919f, cVar);
            aVar.f53915b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object d10;
            Object d11;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f53914a == 0) {
                f.b(obj);
                g0 g0Var = (g0) this.f53915b;
                AnalyticsConfig analyticsConfig = this.f53916c;
                try {
                    Result.a aVar = Result.f60901b;
                    BidMachineAnalytics bidMachineAnalytics = BidMachineAnalytics.INSTANCE;
                    bidMachineAnalytics.setEncryptionManager$bidmachine_android_sdk_bg_3_4_0(bidMachineAnalytics.a(Base64.decode(analyticsConfig.getBpk(), 2)));
                    d10 = Result.d(Unit.f60915a);
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(f.a(th2));
                }
                if (Result.j(d10)) {
                    Unit unit = (Unit) d10;
                }
                Result.g(d10);
                try {
                    BidMachineAnalytics.INSTANCE.a(this.f53918e, this.f53916c, this.f53919f);
                    d11 = Result.d(Unit.f60915a);
                } catch (Throwable th3) {
                    Result.a aVar3 = Result.f60901b;
                    d11 = Result.d(f.a(th3));
                }
                if (Result.j(d11)) {
                    Unit unit2 = (Unit) d11;
                }
                Result.g(d11);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* loaded from: classes7.dex */
    static final class b extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final b f53920a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final g0 invoke() {
            return kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(d1.c(Executors.newSingleThreadExecutor())));
        }
    }

    private BidMachineAnalytics() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3323s a(byte[] bArr) {
        C3306a c3306a = new C3306a();
        return new C3323s(c3306a, new C(bArr, c3306a.getName(), null, false, 12, null));
    }

    public static final void configure(Context context, AnalyticsConfig analyticsConfig) {
        configure(context, analyticsConfig, null);
    }

    public static final Map<String, Map<String, Object>> getImpData(int i10) {
        AbstractC3310e.a aVar = (AbstractC3310e.a) n.t0(AbstractC3310e.a.values(), i10);
        if (aVar == null) {
            return p0.i();
        }
        return C3316k.f54150a.a(aVar);
    }

    public static final void initialize(Context context) {
        C3316k.f54150a.b(context.getApplicationContext());
    }

    public final C3323s getEncryptionManager$bidmachine_android_sdk_bg_3_4_0() {
        return f53913c;
    }

    public final g0 getScope$bidmachine_android_sdk_bg_3_4_0() {
        return (g0) f53911a.getValue();
    }

    public final String getSessionId$bidmachine_android_sdk_bg_3_4_0() {
        return f53912b;
    }

    public final void setEncryptionManager$bidmachine_android_sdk_bg_3_4_0(C3323s c3323s) {
        f53913c = c3323s;
    }

    public static final void configure(Context context, AnalyticsConfig analyticsConfig, ConfigureListener configureListener) {
        String sessionId = analyticsConfig.getSessionId();
        f53912b = sessionId;
        initialize(context);
        g.d(INSTANCE.getScope$bidmachine_android_sdk_bg_3_4_0(), null, null, new a(analyticsConfig, sessionId, context.getApplicationContext(), configureListener, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Context context, AnalyticsConfig analyticsConfig, ConfigureListener configureListener) {
        C3318m.f54161a.a(context, analyticsConfig);
        C3316k.f54150a.a(context, analyticsConfig);
        if (configureListener != null) {
            configureListener.onConfigured();
        }
    }

    public static /* synthetic */ void getScope$bidmachine_android_sdk_bg_3_4_0$annotations() {
    }
}
