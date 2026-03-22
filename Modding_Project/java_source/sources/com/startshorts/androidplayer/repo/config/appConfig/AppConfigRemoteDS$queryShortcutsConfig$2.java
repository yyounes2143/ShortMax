package com.startshorts.androidplayer.repo.config.appConfig;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppConfigRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.AppConfigRemoteDS$queryShortcutsConfig$2", f = "AppConfigRemoteDS.kt", l = {20}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AppConfigRemoteDS$queryShortcutsConfig$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<? extends String>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43823h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppConfigRemoteDS$queryShortcutsConfig$2(c<? super AppConfigRemoteDS$queryShortcutsConfig$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new AppConfigRemoteDS$queryShortcutsConfig$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(c<? super ServerResult<List<? extends String>>> cVar) {
        return invoke2((c<? super ServerResult<List<String>>>) cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43823h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            this.f43823h = 1;
            obj = j10.I1(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(c<? super ServerResult<List<String>>> cVar) {
        return ((AppConfigRemoteDS$queryShortcutsConfig$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
