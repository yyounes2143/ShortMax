package com.startshorts.androidplayer.repo.auth.phone;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PhoneAuthRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS", f = "PhoneAuthRemoteDS.kt", l = {28}, m = "verifyOTPAndBind-BWLJW6A")
/* loaded from: classes7.dex */
public final class PhoneAuthRemoteDS$verifyOTPAndBind$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43169h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRemoteDS f43170i;

    /* renamed from: j  reason: collision with root package name */
    int f43171j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRemoteDS$verifyOTPAndBind$1(PhoneAuthRemoteDS phoneAuthRemoteDS, c<? super PhoneAuthRemoteDS$verifyOTPAndBind$1> cVar) {
        super(cVar);
        this.f43170i = phoneAuthRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43169h = obj;
        this.f43171j |= Integer.MIN_VALUE;
        Object c10 = this.f43170i.c(null, null, null, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
