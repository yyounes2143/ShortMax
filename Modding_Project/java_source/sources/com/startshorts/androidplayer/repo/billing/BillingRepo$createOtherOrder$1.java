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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRepo", f = "BillingRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_MPD_REFRESH}, m = "createOtherOrder-LiYkppA")
/* loaded from: classes7.dex */
public final class BillingRepo$createOtherOrder$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43253h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BillingRepo f43254i;

    /* renamed from: j  reason: collision with root package name */
    int f43255j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRepo$createOtherOrder$1(BillingRepo billingRepo, rs.c<? super BillingRepo$createOtherOrder$1> cVar) {
        super(cVar);
        this.f43254i = billingRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43253h = obj;
        this.f43255j |= Integer.MIN_VALUE;
        Object v10 = this.f43254i.v(null, null, 0, null, null, null, null, null, null, this);
        if (v10 == kotlin.coroutines.intrinsics.a.f()) {
            return v10;
        }
        return Result.b(v10);
    }
}
