package com.startshorts.androidplayer.repo.billing.subs;

import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL}, m = "recoverStr-gIAlu-s")
/* loaded from: classes7.dex */
public final class SubsRepo$recoverStr$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43565h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43566i;

    /* renamed from: j  reason: collision with root package name */
    int f43567j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$recoverStr$1(SubsRepo subsRepo, c<? super SubsRepo$recoverStr$1> cVar) {
        super(cVar);
        this.f43566i = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43565h = obj;
        this.f43567j |= Integer.MIN_VALUE;
        Object q10 = this.f43566i.q(null, this);
        if (q10 == kotlin.coroutines.intrinsics.a.f()) {
            return q10;
        }
        return Result.b(q10);
    }
}
