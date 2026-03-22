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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS", f = "PhoneAuthRemoteDS.kt", l = {35}, m = "verifyOTPAndLogin-bMdYcbs")
/* loaded from: classes7.dex */
public final class PhoneAuthRemoteDS$verifyOTPAndLogin$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43176h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRemoteDS f43177i;

    /* renamed from: j  reason: collision with root package name */
    int f43178j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRemoteDS$verifyOTPAndLogin$1(PhoneAuthRemoteDS phoneAuthRemoteDS, c<? super PhoneAuthRemoteDS$verifyOTPAndLogin$1> cVar) {
        super(cVar);
        this.f43177i = phoneAuthRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43176h = obj;
        this.f43178j |= Integer.MIN_VALUE;
        Object d10 = this.f43177i.d(null, null, null, null, null, null, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
