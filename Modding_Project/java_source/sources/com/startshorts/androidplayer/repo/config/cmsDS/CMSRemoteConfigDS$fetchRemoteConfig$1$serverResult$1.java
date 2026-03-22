package com.startshorts.androidplayer.repo.config.cmsDS;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import rs.c;
import ud.b;
/* compiled from: CMSRemoteConfigDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1", f = "CMSRemoteConfigDS.kt", l = {62}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1 extends SuspendLambda implements Function1<c<? super ServerResult<CMSConfigResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43873h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<CMSConfigResult> f43874i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1(Ref.ObjectRef<CMSConfigResult> objectRef, c<? super CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1> cVar) {
        super(1, cVar);
        this.f43874i = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1(this.f43874i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object f10 = a.f();
        int i10 = this.f43873h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            long M0 = b.f68412a.M0();
            CMSConfigResult cMSConfigResult = this.f43874i.element;
            if (cMSConfigResult != null) {
                str = cMSConfigResult.getVersionData();
            } else {
                str = null;
            }
            this.f43873h = 1;
            obj = j10.J0(M0, str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<CMSConfigResult>> cVar) {
        return ((CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
