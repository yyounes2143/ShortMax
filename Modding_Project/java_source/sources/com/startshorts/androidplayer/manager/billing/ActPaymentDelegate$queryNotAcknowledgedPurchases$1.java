package com.startshorts.androidplayer.manager.billing;

import androidx.activity.ComponentActivity;
import com.hades.aar.activity.IDActivity;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import gt.g0;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActPaymentDelegate.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1", f = "ActPaymentDelegate.kt", l = {516, 517, TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER, 540, 543, 547}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ActPaymentDelegate$queryNotAcknowledgedPurchases$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42176h;

    /* renamed from: i  reason: collision with root package name */
    int f42177i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ActPaymentDelegate f42178j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f42179k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActPaymentDelegate.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2", f = "ActPaymentDelegate.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42180h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ActPaymentDelegate f42181i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ActPaymentDelegate actPaymentDelegate, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.f42181i = actPaymentDelegate;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass2(this.f42181i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ComponentActivity componentActivity;
            a.f();
            if (this.f42180h == 0) {
                f.b(obj);
                this.f42181i.z();
                WeakReference<IDActivity> d10 = aa.a.f321a.d();
                BaseActivity baseActivity = null;
                if (d10 != null) {
                    componentActivity = (IDActivity) d10.get();
                } else {
                    componentActivity = null;
                }
                if (componentActivity instanceof BaseActivity) {
                    baseActivity = (BaseActivity) componentActivity;
                }
                if (baseActivity != null) {
                    baseActivity.x(R$string.top_up_fragment_not_find_lost_order_tip);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActPaymentDelegate.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1$3", f = "ActPaymentDelegate.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1$3  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42182h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ AcknowledgePurchaseResult f42183i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(AcknowledgePurchaseResult acknowledgePurchaseResult, c<? super AnonymousClass3> cVar) {
            super(2, cVar);
            this.f42183i = acknowledgePurchaseResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass3(this.f42183i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f42182h == 0) {
                f.b(obj);
                this.f42183i.showTip();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActPaymentDelegate.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1$4", f = "ActPaymentDelegate.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1$4  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f42184h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ ActPaymentDelegate f42185i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(ActPaymentDelegate actPaymentDelegate, c<? super AnonymousClass4> cVar) {
            super(2, cVar);
            this.f42185i = actPaymentDelegate;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass4(this.f42185i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass4) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f42184h == 0) {
                f.b(obj);
                this.f42185i.z();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActPaymentDelegate$queryNotAcknowledgedPurchases$1(ActPaymentDelegate actPaymentDelegate, String str, c<? super ActPaymentDelegate$queryNotAcknowledgedPurchases$1> cVar) {
        super(2, cVar);
        this.f42178j = actPaymentDelegate;
        this.f42179k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ActPaymentDelegate$queryNotAcknowledgedPurchases$1(this.f42178j, this.f42179k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ActPaymentDelegate$queryNotAcknowledgedPurchases$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0129 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.billing.ActPaymentDelegate$queryNotAcknowledgedPurchases$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
