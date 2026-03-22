package com.startshorts.androidplayer.repo.account;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo", f = "AccountRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAYER_REQ_OFFSET}, m = "logout-gIAlu-s")
/* loaded from: classes7.dex */
public final class AccountRepo$logout$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43068h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRepo f43069i;

    /* renamed from: j  reason: collision with root package name */
    int f43070j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepo$logout$1(AccountRepo accountRepo, rs.c<? super AccountRepo$logout$1> cVar) {
        super(cVar);
        this.f43069i = accountRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43068h = obj;
        this.f43070j |= Integer.MIN_VALUE;
        Object R0 = this.f43069i.R0(null, this);
        if (R0 == kotlin.coroutines.intrinsics.a.f()) {
            return R0;
        }
        return Result.b(R0);
    }
}
