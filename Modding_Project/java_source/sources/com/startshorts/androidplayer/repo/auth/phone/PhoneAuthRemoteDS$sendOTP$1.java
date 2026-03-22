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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS", f = "PhoneAuthRemoteDS.kt", l = {16}, m = "sendOTP-yxL6bBk")
/* loaded from: classes7.dex */
public final class PhoneAuthRemoteDS$sendOTP$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43161h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRemoteDS f43162i;

    /* renamed from: j  reason: collision with root package name */
    int f43163j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRemoteDS$sendOTP$1(PhoneAuthRemoteDS phoneAuthRemoteDS, c<? super PhoneAuthRemoteDS$sendOTP$1> cVar) {
        super(cVar);
        this.f43162i = phoneAuthRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43161h = obj;
        this.f43163j |= Integer.MIN_VALUE;
        Object b10 = this.f43162i.b(null, null, null, 0, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
