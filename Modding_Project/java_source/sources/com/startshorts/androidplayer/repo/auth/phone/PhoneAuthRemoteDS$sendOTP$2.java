package com.startshorts.androidplayer.repo.auth.phone;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.auth.OTPSendResult;
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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS$sendOTP$2", f = "PhoneAuthRemoteDS.kt", l = {17}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PhoneAuthRemoteDS$sendOTP$2 extends SuspendLambda implements Function1<c<? super ServerResult<OTPSendResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43164h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43165i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43166j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43167k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f43168l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRemoteDS$sendOTP$2(String str, String str2, String str3, int i10, c<? super PhoneAuthRemoteDS$sendOTP$2> cVar) {
        super(1, cVar);
        this.f43165i = str;
        this.f43166j = str2;
        this.f43167k = str3;
        this.f43168l = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PhoneAuthRemoteDS$sendOTP$2(this.f43165i, this.f43166j, this.f43167k, this.f43168l, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43164h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            int i11 = this.f43168l;
            this.f43164h = 1;
            obj = k.f41787a.j().C1(this.f43165i, this.f43166j, '+' + this.f43167k, i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<OTPSendResult>> cVar) {
        return ((PhoneAuthRemoteDS$sendOTP$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
