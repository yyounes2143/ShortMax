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
@d(c = "com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo", f = "EmailAuthRepo.kt", l = {15}, m = "verifyOTP-BWLJW6A")
/* loaded from: classes7.dex */
public final class EmailAuthRepo$verifyOTP$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43154h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EmailAuthRepo f43155i;

    /* renamed from: j  reason: collision with root package name */
    int f43156j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAuthRepo$verifyOTP$1(EmailAuthRepo emailAuthRepo, c<? super EmailAuthRepo$verifyOTP$1> cVar) {
        super(cVar);
        this.f43155i = emailAuthRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43154h = obj;
        this.f43156j |= Integer.MIN_VALUE;
        Object e10 = this.f43155i.e(null, null, null, this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
