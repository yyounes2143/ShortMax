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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL}, m = "querySubsUpdateMode-BWLJW6A")
/* loaded from: classes7.dex */
public final class SubsRepo$querySubsUpdateMode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43562h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43563i;

    /* renamed from: j  reason: collision with root package name */
    int f43564j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$querySubsUpdateMode$1(SubsRepo subsRepo, c<? super SubsRepo$querySubsUpdateMode$1> cVar) {
        super(cVar);
        this.f43563i = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43562h = obj;
        this.f43564j |= Integer.MIN_VALUE;
        Object p10 = this.f43563i.p(null, null, null, this);
        if (p10 == kotlin.coroutines.intrinsics.a.f()) {
            return p10;
        }
        return Result.b(p10);
    }
}
