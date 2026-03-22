package com.startshorts.androidplayer.repo.auth.phone;

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
/* compiled from: PhoneAuthRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS$verifyOTPAndBind$2", f = "PhoneAuthRemoteDS.kt", l = {29}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PhoneAuthRemoteDS$verifyOTPAndBind$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43172h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43173i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43174j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43175k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRemoteDS$verifyOTPAndBind$2(String str, String str2, String str3, c<? super PhoneAuthRemoteDS$verifyOTPAndBind$2> cVar) {
        super(1, cVar);
        this.f43173i = str;
        this.f43174j = str2;
        this.f43175k = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PhoneAuthRemoteDS$verifyOTPAndBind$2(this.f43173i, this.f43174j, this.f43175k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43172h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            String str = this.f43175k;
            this.f43172h = 1;
            obj = k.f41787a.j().Q1(this.f43173i, '+' + this.f43174j, str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((PhoneAuthRemoteDS$verifyOTPAndBind$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
