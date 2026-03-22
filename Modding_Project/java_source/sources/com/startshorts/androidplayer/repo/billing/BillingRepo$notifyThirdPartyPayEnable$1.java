package com.startshorts.androidplayer.repo.billing;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRepo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo", f = "BillingRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME}, m = "notifyThirdPartyPayEnable-gIAlu-s")
/* loaded from: classes7.dex */
public final class BillingRepo$notifyThirdPartyPayEnable$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43277h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BillingRepo f43278i;

    /* renamed from: j  reason: collision with root package name */
    int f43279j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRepo$notifyThirdPartyPayEnable$1(BillingRepo billingRepo, rs.c<? super BillingRepo$notifyThirdPartyPayEnable$1> cVar) {
        super(cVar);
        this.f43278i = billingRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43277h = obj;
        this.f43279j |= Integer.MIN_VALUE;
        Object d02 = this.f43278i.d0(0, this);
        if (d02 == kotlin.coroutines.intrinsics.a.f()) {
            return d02;
        }
        return Result.b(d02);
    }
}
