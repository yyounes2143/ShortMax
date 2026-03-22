package com.startshorts.androidplayer.repo.billing.subs;

import com.ss.ttvideoengine.log.IVideoEventLogger;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {136, 144, 161, IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, 171}, m = "gPayUpgradePremium")
/* loaded from: classes7.dex */
public final class SubsRepo$gPayUpgradePremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43536h;

    /* renamed from: i  reason: collision with root package name */
    Object f43537i;

    /* renamed from: j  reason: collision with root package name */
    Object f43538j;

    /* renamed from: k  reason: collision with root package name */
    Object f43539k;

    /* renamed from: l  reason: collision with root package name */
    Object f43540l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f43541m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43542n;

    /* renamed from: o  reason: collision with root package name */
    int f43543o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$gPayUpgradePremium$1(SubsRepo subsRepo, c<? super SubsRepo$gPayUpgradePremium$1> cVar) {
        super(cVar);
        this.f43542n = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43541m = obj;
        this.f43543o |= Integer.MIN_VALUE;
        return this.f43542n.f(null, null, null, null, null, null, null, null, this);
    }
}
