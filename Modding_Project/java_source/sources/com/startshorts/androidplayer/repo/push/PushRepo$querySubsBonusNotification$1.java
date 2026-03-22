package com.startshorts.androidplayer.repo.push;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo", f = "PushRepo.kt", l = {VideoRef.VALUE_VIDEO_REF_POPULARITY_LEVEL}, m = "querySubsBonusNotification")
/* loaded from: classes7.dex */
public final class PushRepo$querySubsBonusNotification$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44425h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PushRepo f44426i;

    /* renamed from: j  reason: collision with root package name */
    int f44427j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRepo$querySubsBonusNotification$1(PushRepo pushRepo, c<? super PushRepo$querySubsBonusNotification$1> cVar) {
        super(cVar);
        this.f44426i = pushRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44425h = obj;
        this.f44427j |= Integer.MIN_VALUE;
        return this.f44426i.B(this);
    }
}
