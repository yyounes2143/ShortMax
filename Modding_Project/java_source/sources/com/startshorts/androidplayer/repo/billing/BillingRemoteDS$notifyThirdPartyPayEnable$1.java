package com.startshorts.androidplayer.repo.billing;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRemoteDS.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRemoteDS", f = "BillingRemoteDS.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SOCKET_CREATE_SUCCESS_TIME}, m = "notifyThirdPartyPayEnable-gIAlu-s")
/* loaded from: classes7.dex */
public final class BillingRemoteDS$notifyThirdPartyPayEnable$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43232h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BillingRemoteDS f43233i;

    /* renamed from: j  reason: collision with root package name */
    int f43234j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRemoteDS$notifyThirdPartyPayEnable$1(BillingRemoteDS billingRemoteDS, rs.c<? super BillingRemoteDS$notifyThirdPartyPayEnable$1> cVar) {
        super(cVar);
        this.f43233i = billingRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43232h = obj;
        this.f43234j |= Integer.MIN_VALUE;
        Object d02 = this.f43233i.d0(0, this);
        if (d02 == kotlin.coroutines.intrinsics.a.f()) {
            return d02;
        }
        return Result.b(d02);
    }
}
