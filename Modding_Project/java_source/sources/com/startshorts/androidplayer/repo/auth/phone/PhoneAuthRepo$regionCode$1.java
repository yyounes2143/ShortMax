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
@d(c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRepo", f = "PhoneAuthRepo.kt", l = {18}, m = "regionCode-IoAF18A")
/* loaded from: classes7.dex */
public final class PhoneAuthRepo$regionCode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43188h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PhoneAuthRepo f43189i;

    /* renamed from: j  reason: collision with root package name */
    int f43190j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhoneAuthRepo$regionCode$1(PhoneAuthRepo phoneAuthRepo, c<? super PhoneAuthRepo$regionCode$1> cVar) {
        super(cVar);
        this.f43189i = phoneAuthRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43188h = obj;
        this.f43190j |= Integer.MIN_VALUE;
        Object d10 = this.f43189i.d(this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
