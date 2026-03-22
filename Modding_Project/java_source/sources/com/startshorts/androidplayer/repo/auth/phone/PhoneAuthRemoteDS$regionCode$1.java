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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS", f = "PhoneAuthRemoteDS.kt", l = {48}, m = "regionCode-IoAF18A")
/* loaded from: classes7.dex */
public final class PhoneAuthRemoteDS$regionCode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43157h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRemoteDS f43158i;

    /* renamed from: j  reason: collision with root package name */
    int f43159j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRemoteDS$regionCode$1(PhoneAuthRemoteDS phoneAuthRemoteDS, c<? super PhoneAuthRemoteDS$regionCode$1> cVar) {
        super(cVar);
        this.f43158i = phoneAuthRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43157h = obj;
        this.f43159j |= Integer.MIN_VALUE;
        Object a10 = this.f43158i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
