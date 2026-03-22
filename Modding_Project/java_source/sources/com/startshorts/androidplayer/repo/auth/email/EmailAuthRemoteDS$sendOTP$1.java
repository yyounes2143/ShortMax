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
@d(c = "com.startshorts.androidplayer.repo.auth.email.EmailAuthRemoteDS", f = "EmailAuthRemoteDS.kt", l = {19}, m = "sendOTP-0E7RQCE")
/* loaded from: classes7.dex */
public final class EmailAuthRemoteDS$sendOTP$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43138h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EmailAuthRemoteDS f43139i;

    /* renamed from: j  reason: collision with root package name */
    int f43140j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAuthRemoteDS$sendOTP$1(EmailAuthRemoteDS emailAuthRemoteDS, c<? super EmailAuthRemoteDS$sendOTP$1> cVar) {
        super(cVar);
        this.f43139i = emailAuthRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43138h = obj;
        this.f43140j |= Integer.MIN_VALUE;
        Object a10 = this.f43139i.a(null, null, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
