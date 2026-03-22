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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo", f = "AccountRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_INACCURATE_START}, m = "delete-gIAlu-s")
/* loaded from: classes7.dex */
public final class AccountRepo$delete$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43065h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRepo f43066i;

    /* renamed from: j  reason: collision with root package name */
    int f43067j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepo$delete$1(AccountRepo accountRepo, rs.c<? super AccountRepo$delete$1> cVar) {
        super(cVar);
        this.f43066i = accountRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43065h = obj;
        this.f43067j |= Integer.MIN_VALUE;
        Object Z = this.f43066i.Z(null, this);
        if (Z == kotlin.coroutines.intrinsics.a.f()) {
            return Z;
        }
        return Result.b(Z);
    }
}
