package com.startshorts.androidplayer.manager.purchase;

import com.startshorts.androidplayer.bean.discount.BestSubscriptionDiscountInfo;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import gt.d0;
import gt.g;
import gt.g0;
import gt.q0;
import gt.r1;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HomeRetainDiscountSubsPresent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHomeRetainDiscountSubsPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeRetainDiscountSubsPresent.kt\ncom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,119:1\n47#2,4:120\n47#2,4:124\n*S KotlinDebug\n*F\n+ 1 HomeRetainDiscountSubsPresent.kt\ncom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent\n*L\n35#1:120,4\n52#1:124,4\n*E\n"})
/* loaded from: classes6.dex */
public final class HomeRetainDiscountSubsPresent {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f42742b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static r f42743c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static BestSubscriptionDiscountInfo f42744d;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final HomeRetainDiscountSubsPresent f42741a = new HomeRetainDiscountSubsPresent();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final i f42745e = c.b(new Function0() { // from class: qf.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            g0 m10;
            m10 = HomeRetainDiscountSubsPresent.m();
            return m10;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final i f42746f = c.b(new Function0() { // from class: qf.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            g0 n10;
            n10 = HomeRetainDiscountSubsPresent.n();
            return n10;
        }
    });

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 HomeRetainDiscountSubsPresent.kt\ncom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent\n*L\n1#1,49:1\n36#2,9:50\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends kotlin.coroutines.a implements d0 {
        public a(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            new Exception("autoCatchMainScope:自动catch异常的协程scope捕获到异常", th2).printStackTrace();
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 HomeRetainDiscountSubsPresent.kt\ncom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent\n*L\n1#1,49:1\n53#2,9:50\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends kotlin.coroutines.a implements d0 {
        public b(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
            new Exception("autoCatchMainScope:自动catch异常的协程scope捕获到异常", th2).printStackTrace();
        }
    }

    private HomeRetainDiscountSubsPresent() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(BestSubscriptionDiscountInfo bestSubscriptionDiscountInfo) {
        f42744d = bestSubscriptionDiscountInfo;
    }

    private final g0 i() {
        return (g0) f42745e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g0 m() {
        return kotlinx.coroutines.i.a(q0.a().plus(r1.b(null, 1, null)).plus(new a(d0.D8)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g0 n() {
        return kotlinx.coroutines.i.a(q0.c().plus(r1.b(null, 1, null)).plus(new b(d0.D8)));
    }

    public final void e() {
        f(null);
    }

    @Nullable
    public final BestSubscriptionDiscountInfo g() {
        return f42744d;
    }

    public final int h() {
        return ud.b.f68412a.H0(TimeUtil.f48175a.i(DeviceUtil.f48146a.K()));
    }

    @NotNull
    public final g0 j() {
        return (g0) f42746f.getValue();
    }

    public final void k() {
        r d10;
        if (f42742b) {
            return;
        }
        r rVar = f42743c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        f42742b = true;
        d10 = g.d(i(), null, null, new HomeRetainDiscountSubsPresent$loadHomeRetainDiscountSubs$1(null), 3, null);
        f42743c = d10;
    }

    public final void l() {
        String i10 = TimeUtil.f48175a.i(DeviceUtil.f48146a.K());
        ud.b bVar = ud.b.f68412a;
        bVar.T3(i10, bVar.H0(i10) + 1);
    }
}
