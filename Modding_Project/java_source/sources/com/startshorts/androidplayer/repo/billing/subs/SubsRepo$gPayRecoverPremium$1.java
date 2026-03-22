package com.startshorts.androidplayer.repo.billing.subs;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, 270}, m = "gPayRecoverPremium")
/* loaded from: classes7.dex */
public final class SubsRepo$gPayRecoverPremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    boolean f43529h;

    /* renamed from: i  reason: collision with root package name */
    Object f43530i;

    /* renamed from: j  reason: collision with root package name */
    Object f43531j;

    /* renamed from: k  reason: collision with root package name */
    Object f43532k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f43533l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43534m;

    /* renamed from: n  reason: collision with root package name */
    int f43535n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$gPayRecoverPremium$1(SubsRepo subsRepo, c<? super SubsRepo$gPayRecoverPremium$1> cVar) {
        super(cVar);
        this.f43534m = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43533l = obj;
        this.f43535n |= Integer.MIN_VALUE;
        return this.f43534m.e(false, null, null, null, this);
    }
}
