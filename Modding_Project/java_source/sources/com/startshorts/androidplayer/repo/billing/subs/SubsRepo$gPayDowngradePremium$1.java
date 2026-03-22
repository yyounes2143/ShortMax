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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo", f = "SubsRepo.kt", l = {190, 198, 219, 226, VideoRef.VALUE_VIDEO_REF_HAS_EMBEDED_SUBTITLE}, m = "gPayDowngradePremium")
/* loaded from: classes7.dex */
public final class SubsRepo$gPayDowngradePremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43489h;

    /* renamed from: i  reason: collision with root package name */
    Object f43490i;

    /* renamed from: j  reason: collision with root package name */
    Object f43491j;

    /* renamed from: k  reason: collision with root package name */
    Object f43492k;

    /* renamed from: l  reason: collision with root package name */
    Object f43493l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f43494m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ SubsRepo f43495n;

    /* renamed from: o  reason: collision with root package name */
    int f43496o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRepo$gPayDowngradePremium$1(SubsRepo subsRepo, c<? super SubsRepo$gPayDowngradePremium$1> cVar) {
        super(cVar);
        this.f43495n = subsRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43494m = obj;
        this.f43496o |= Integer.MIN_VALUE;
        return this.f43495n.c(null, null, null, null, null, null, null, null, null, this);
    }
}
