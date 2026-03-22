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
/* compiled from: PhoneAuthRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo", f = "PhoneAuthRepo.kt", l = {16}, m = "verifyOTPAndLogin-bMdYcbs")
/* loaded from: classes7.dex */
public final class PhoneAuthRepo$verifyOTPAndLogin$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43197h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRepo f43198i;

    /* renamed from: j  reason: collision with root package name */
    int f43199j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRepo$verifyOTPAndLogin$1(PhoneAuthRepo phoneAuthRepo, c<? super PhoneAuthRepo$verifyOTPAndLogin$1> cVar) {
        super(cVar);
        this.f43198i = phoneAuthRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43197h = obj;
        this.f43199j |= Integer.MIN_VALUE;
        Object g10 = this.f43198i.g(null, null, null, null, null, null, this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
