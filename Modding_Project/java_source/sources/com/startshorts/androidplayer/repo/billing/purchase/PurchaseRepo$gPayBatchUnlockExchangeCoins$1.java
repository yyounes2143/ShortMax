package com.startshorts.androidplayer.repo.billing.purchase;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo", f = "PurchaseRepo.kt", l = {223, VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE, VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, 244}, m = "gPayBatchUnlockExchangeCoins")
/* loaded from: classes7.dex */
public final class PurchaseRepo$gPayBatchUnlockExchangeCoins$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43369h;

    /* renamed from: i  reason: collision with root package name */
    Object f43370i;

    /* renamed from: j  reason: collision with root package name */
    Object f43371j;

    /* renamed from: k  reason: collision with root package name */
    Object f43372k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f43373l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ PurchaseRepo f43374m;

    /* renamed from: n  reason: collision with root package name */
    int f43375n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseRepo$gPayBatchUnlockExchangeCoins$1(PurchaseRepo purchaseRepo, c<? super PurchaseRepo$gPayBatchUnlockExchangeCoins$1> cVar) {
        super(cVar);
        this.f43374m = purchaseRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43373l = obj;
        this.f43375n |= Integer.MIN_VALUE;
        return this.f43374m.h(null, null, null, null, null, null, this);
    }
}
