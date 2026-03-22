package com.startshorts.androidplayer.repo.auth.email;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EmailAuthRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo", f = "EmailAuthRepo.kt", l = {13}, m = "sendOTP-0E7RQCE")
/* loaded from: classes7.dex */
public final class EmailAuthRepo$sendOTP$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43151h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EmailAuthRepo f43152i;

    /* renamed from: j  reason: collision with root package name */
    int f43153j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAuthRepo$sendOTP$1(EmailAuthRepo emailAuthRepo, c<? super EmailAuthRepo$sendOTP$1> cVar) {
        super(cVar);
        this.f43152i = emailAuthRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43151h = obj;
        this.f43153j |= Integer.MIN_VALUE;
        Object d10 = this.f43152i.d(null, null, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
