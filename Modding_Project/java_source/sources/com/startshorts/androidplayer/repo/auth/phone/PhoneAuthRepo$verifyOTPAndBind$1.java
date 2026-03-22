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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo", f = "PhoneAuthRepo.kt", l = {14}, m = "verifyOTPAndBind-BWLJW6A")
/* loaded from: classes7.dex */
public final class PhoneAuthRepo$verifyOTPAndBind$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43194h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRepo f43195i;

    /* renamed from: j  reason: collision with root package name */
    int f43196j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRepo$verifyOTPAndBind$1(PhoneAuthRepo phoneAuthRepo, c<? super PhoneAuthRepo$verifyOTPAndBind$1> cVar) {
        super(cVar);
        this.f43195i = phoneAuthRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43194h = obj;
        this.f43196j |= Integer.MIN_VALUE;
        Object f10 = this.f43195i.f(null, null, null, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
