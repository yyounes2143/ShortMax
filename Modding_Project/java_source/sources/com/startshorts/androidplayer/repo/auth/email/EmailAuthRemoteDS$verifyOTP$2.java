package com.startshorts.androidplayer.repo.auth.email;

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
/* compiled from: EmailAuthRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS$verifyOTP$2", f = "EmailAuthRemoteDS.kt", l = {27}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EmailAuthRemoteDS$verifyOTP$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43146h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43147i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43148j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAuthRemoteDS$verifyOTP$2(String str, String str2, c<? super EmailAuthRemoteDS$verifyOTP$2> cVar) {
        super(1, cVar);
        this.f43147i = str;
        this.f43148j = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new EmailAuthRemoteDS$verifyOTP$2(this.f43147i, this.f43148j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43146h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43147i;
            String str2 = this.f43148j;
            this.f43146h = 1;
            obj = j10.c2(str, str2, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((EmailAuthRemoteDS$verifyOTP$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
