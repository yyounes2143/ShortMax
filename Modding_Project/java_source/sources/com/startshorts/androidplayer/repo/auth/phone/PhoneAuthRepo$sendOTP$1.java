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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo", f = "PhoneAuthRepo.kt", l = {12}, m = "sendOTP-yxL6bBk")
/* loaded from: classes7.dex */
public final class PhoneAuthRepo$sendOTP$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43191h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRepo f43192i;

    /* renamed from: j  reason: collision with root package name */
    int f43193j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRepo$sendOTP$1(PhoneAuthRepo phoneAuthRepo, c<? super PhoneAuthRepo$sendOTP$1> cVar) {
        super(cVar);
        this.f43192i = phoneAuthRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43191h = obj;
        this.f43193j |= Integer.MIN_VALUE;
        Object e10 = this.f43192i.e(null, null, null, 0, this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
