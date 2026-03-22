package com.startshorts.androidplayer.repo.language;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LanguageRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.language.LanguageRemoteDS$notifyAppLanguageChanged$2", f = "LanguageRemoteDS.kt", l = {15}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LanguageRemoteDS$notifyAppLanguageChanged$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44180h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LanguageRemoteDS$notifyAppLanguageChanged$2(c<? super LanguageRemoteDS$notifyAppLanguageChanged$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new LanguageRemoteDS$notifyAppLanguageChanged$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44180h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            this.f44180h = 1;
            obj = j10.P0(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((LanguageRemoteDS$notifyAppLanguageChanged$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
