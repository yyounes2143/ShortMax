package com.startshorts.androidplayer.manager.auth;

import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.bean.eventbus.BindSuccessEvent;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseAuthManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$2$1", f = "FirebaseAuthManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class FirebaseAuthManager$bind$1$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42120h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ FirebaseAuthManager f42121i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AuthType f42122j;

    /* compiled from: FirebaseAuthManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AuthType.values().length];
            try {
                iArr[AuthType.FACEBOOK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AuthType.GOOGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AuthType.HUAWEI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AuthType.PHONE_VERIFY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AuthType.CREDENTIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseAuthManager$bind$1$2$1(FirebaseAuthManager firebaseAuthManager, AuthType authType, c<? super FirebaseAuthManager$bind$1$2$1> cVar) {
        super(2, cVar);
        this.f42121i = firebaseAuthManager;
        this.f42122j = authType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FirebaseAuthManager$bind$1$2$1(this.f42121i, this.f42122j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FirebaseAuthManager$bind$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42120h == 0) {
            f.b(obj);
            this.f42121i.B(this.f42122j);
            int i10 = a.$EnumSwitchMapping$0[this.f42122j.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4 || i10 == 5) {
                            au.c.d().l(new BindSuccessEvent(3));
                        }
                    } else {
                        au.c.d().l(new BindSuccessEvent(5));
                    }
                } else {
                    au.c.d().l(new BindSuccessEvent(4));
                }
            } else {
                au.c.d().l(new BindSuccessEvent(1));
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
