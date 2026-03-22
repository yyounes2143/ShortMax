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
/* compiled from: EmailAuthRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS", f = "EmailAuthRemoteDS.kt", l = {27}, m = "verifyOTP-BWLJW6A")
/* loaded from: classes7.dex */
public final class EmailAuthRemoteDS$verifyOTP$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43143h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EmailAuthRemoteDS f43144i;

    /* renamed from: j  reason: collision with root package name */
    int f43145j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAuthRemoteDS$verifyOTP$1(EmailAuthRemoteDS emailAuthRemoteDS, c<? super EmailAuthRemoteDS$verifyOTP$1> cVar) {
        super(cVar);
        this.f43144i = emailAuthRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43143h = obj;
        this.f43145j |= Integer.MIN_VALUE;
        Object b10 = this.f43144i.b(null, null, null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
