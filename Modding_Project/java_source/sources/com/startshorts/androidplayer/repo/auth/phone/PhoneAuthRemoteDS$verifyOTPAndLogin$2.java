package com.startshorts.androidplayer.repo.auth.phone;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.auth.LoginResult;
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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS$verifyOTPAndLogin$2", f = "PhoneAuthRemoteDS.kt", l = {36}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PhoneAuthRemoteDS$verifyOTPAndLogin$2 extends SuspendLambda implements Function1<c<? super ServerResult<LoginResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43179h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43180i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43181j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43182k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43183l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43184m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f43185n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRemoteDS$verifyOTPAndLogin$2(String str, String str2, String str3, String str4, String str5, String str6, c<? super PhoneAuthRemoteDS$verifyOTPAndLogin$2> cVar) {
        super(1, cVar);
        this.f43180i = str;
        this.f43181j = str2;
        this.f43182k = str3;
        this.f43183l = str4;
        this.f43184m = str5;
        this.f43185n = str6;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new PhoneAuthRemoteDS$verifyOTPAndLogin$2(this.f43180i, this.f43181j, this.f43182k, this.f43183l, this.f43184m, this.f43185n, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43179h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43180i;
            String str2 = this.f43181j;
            String str3 = this.f43182k;
            String str4 = this.f43183l;
            String str5 = this.f43184m;
            String str6 = this.f43185n;
            this.f43179h = 1;
            obj = k.a.C0617a.i(j10, 0, str, str2, str3, str4, str5, str6, this, 1, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<LoginResult>> cVar) {
        return ((PhoneAuthRemoteDS$verifyOTPAndLogin$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
