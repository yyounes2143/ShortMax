package com.startshorts.androidplayer.ui.fragment.profile;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import java.util.List;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProfileFragment.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.profile.ProfileFragment$checkActBannerVisible$1", f = "ProfileFragment.kt", l = {680}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ProfileFragment$checkActBannerVisible$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46399h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ProfileFragment f46400i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProfileFragment.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.ui.fragment.profile.ProfileFragment$checkActBannerVisible$1$1", f = "ProfileFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.ui.fragment.profile.ProfileFragment$checkActBannerVisible$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f46401h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ List<ActResource> f46402i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ ProfileFragment f46403j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<ActResource> list, ProfileFragment profileFragment, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f46402i = list;
            this.f46403j = profileFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f46402i, this.f46403j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            a.f();
            if (this.f46401h == 0) {
                f.b(obj);
                if (this.f46402i.isEmpty()) {
                    this.f46403j.Z0();
                } else {
                    this.f46403j.w1(this.f46402i);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileFragment$checkActBannerVisible$1(ProfileFragment profileFragment, c<? super ProfileFragment$checkActBannerVisible$1> cVar) {
        super(2, cVar);
        this.f46400i = profileFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ProfileFragment$checkActBannerVisible$1(this.f46400i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ProfileFragment$checkActBannerVisible$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String d10;
        String str;
        Object f10 = a.f();
        int i10 = this.f46399h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            List<ActResource> x10 = ActResourceManager.f41582a.x();
            if (x10.isEmpty()) {
                d10 = "";
            } else {
                d10 = l.d(x10);
            }
            str = this.f46400i.I;
            if (!Intrinsics.areEqual(d10, str)) {
                this.f46400i.I = d10;
                j1 c10 = q0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(x10, this.f46400i, null);
                this.f46399h = 1;
                if (e.g(c10, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
