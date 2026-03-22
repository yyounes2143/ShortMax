package com.startshorts.androidplayer.manager.ad;

import android.app.Activity;
import android.os.Bundle;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.startshorts.androidplayer.manager.event.EventManager;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.TimeoutKt;
import ms.i;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.ad.AdManager$waitGDPRConsent$2", f = "AdManager.kt", l = {1832}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdManager$waitGDPRConsent$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41722h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Activity f41723i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ long f41724j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Function0<Unit>> f41725k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f41726l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f41727m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ i<hi.c> f41728n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ boolean f41729o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdManager.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.manager.ad.AdManager$waitGDPRConsent$2$1", f = "AdManager.kt", l = {1833, 1836}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.manager.ad.AdManager$waitGDPRConsent$2$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f41730h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Activity f41731i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AdManager.kt */
        @Metadata
        @d(c = "com.startshorts.androidplayer.manager.ad.AdManager$waitGDPRConsent$2$1$1", f = "AdManager.kt", l = {1837}, m = "invokeSuspend")
        /* renamed from: com.startshorts.androidplayer.manager.ad.AdManager$waitGDPRConsent$2$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C06161 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f41732h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ Activity f41733i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06161(Activity activity, c<? super C06161> cVar) {
                super(2, cVar);
                this.f41733i = activity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new C06161(this.f41733i, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((C06161) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f41732h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    ca.i iVar = ca.i.f3408a;
                    Activity activity = this.f41733i;
                    this.f41732h = 1;
                    obj = iVar.s(activity, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                boolean booleanValue = ((Boolean) obj).booleanValue();
                AdManager.w0("loadConsentForm end -> succeed = " + booleanValue);
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Activity activity, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f41731i = activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f41731i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean D0;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f41730h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                f.b(obj);
            } else {
                f.b(obj);
                ca.i iVar = ca.i.f3408a;
                this.f41730h = 1;
                if (iVar.k("waitGDPRConsent", this) == f10) {
                    return f10;
                }
            }
            D0 = AdManager.D0(this.f41731i);
            if (D0 && ca.i.f3408a.p()) {
                AdManager.w0("loadConsentForm start");
                j1 c10 = q0.c();
                C06161 c06161 = new C06161(this.f41731i, null);
                this.f41730h = 2;
                if (e.g(c10, c06161, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AdManager$waitGDPRConsent$2(Activity activity, long j10, Ref.ObjectRef<Function0<Unit>> objectRef, String str, String str2, i<? extends hi.c> iVar, boolean z10, c<? super AdManager$waitGDPRConsent$2> cVar) {
        super(2, cVar);
        this.f41723i = activity;
        this.f41724j = j10;
        this.f41725k = objectRef;
        this.f41726l = str;
        this.f41727m = str2;
        this.f41728n = iVar;
        this.f41729o = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(Activity activity, String str, String str2, Ref.ObjectRef objectRef, boolean z10, boolean z11) {
        String str3;
        boolean q10 = ca.i.f3408a.q(activity);
        AdManager.w0("onDlgClosed runAfterWaitOnUiThread -> showSucceed=" + z11 + ",isClickConsent=" + q10);
        if (!q10) {
            AdManager.G0(z10, activity);
        }
        if (z11) {
            if (Intrinsics.areEqual(str, AdmobPreloadConfig.APP_OPEN)) {
                b bVar = b.f68412a;
                if (!bVar.D0(str2)) {
                    AdManager.w0("showConsentForm -> setGDPRShowedInSplash");
                    bVar.P3(str2);
                }
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", str);
            if (q10) {
                str3 = "confirm";
            } else {
                str3 = "cancel";
            }
            bundle.putString(TextureRenderKeys.KEY_IS_ACTION, str3);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "gdpr_result", bundle, 0L, 4, null);
        }
        ((Function0) objectRef.element).invoke();
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AdManager$waitGDPRConsent$2(this.f41723i, this.f41724j, this.f41725k, this.f41726l, this.f41727m, this.f41728n, this.f41729o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AdManager$waitGDPRConsent$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41722h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ca.i iVar = ca.i.f3408a;
            if (!iVar.r()) {
                AdManager.w0("requestConsentInfoUpdate start, showLoadingDialog start");
                AdManager.E0(this.f41728n);
                ca.i.w(iVar, this.f41723i, null, 2, null);
                long j10 = this.f41724j;
                if (j10 > 0) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f41723i, null);
                    this.f41722h = 1;
                    if (TimeoutKt.e(j10, anonymousClass1, this) == f10) {
                        return f10;
                    }
                }
            }
        }
        ca.i iVar2 = ca.i.f3408a;
        if (!iVar2.r()) {
            AdManager.v0("forceSetAdRequestAble when update failed");
            iVar2.n();
            this.f41725k.element.invoke();
            return Unit.f60915a;
        } else if (Intrinsics.areEqual(this.f41726l, AdmobPreloadConfig.APP_OPEN) && b.f68412a.D0(this.f41727m)) {
            AdManager.w0("ignore -> getGDPRShowedInSplash=true,forceSetAdRequestAble(),afterWait.invoke()");
            iVar2.n();
            this.f41725k.element.invoke();
            return Unit.f60915a;
        } else if (iVar2.q(this.f41723i)) {
            AdManager.w0("GDPRManager.showForm ignore -> isClickConsent=true");
            this.f41725k.element.invoke();
            return Unit.f60915a;
        } else if (this.f41723i.isFinishing() || this.f41723i.isDestroyed()) {
            AdManager.v0("GDPRManager.showForm ignore -> activity.isFinishing");
            iVar2.n();
            this.f41725k.element.invoke();
            return Unit.f60915a;
        } else {
            AdManager.w0("GDPRManager.showForm start -> isUpdateSuccess=true");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", this.f41726l);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "gdpr_pop_show", bundle, 0L, 4, null);
            final Activity activity = this.f41723i;
            final String str = this.f41726l;
            final String str2 = this.f41727m;
            final Ref.ObjectRef<Function0<Unit>> objectRef = this.f41725k;
            final boolean z10 = this.f41729o;
            iVar2.A(activity, new Function1() { // from class: com.startshorts.androidplayer.manager.ad.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit j11;
                    j11 = AdManager$waitGDPRConsent$2.j(activity, str, str2, objectRef, z10, ((Boolean) obj2).booleanValue());
                    return j11;
                }
            });
            return Unit.f60915a;
        }
    }
}
