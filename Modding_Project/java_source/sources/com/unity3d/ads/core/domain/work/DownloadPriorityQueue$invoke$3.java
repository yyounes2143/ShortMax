package com.unity3d.ads.core.domain.work;

import com.unity3d.ads.core.domain.work.DownloadPriorityQueue;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadPriorityQueue.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.work.DownloadPriorityQueue$invoke$3", f = "DownloadPriorityQueue.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadPriorityQueue$invoke$3 extends SuspendLambda implements Function2<DownloadPriorityQueue.PriorityItem, c<? super Boolean>, Object> {
    final /* synthetic */ DownloadPriorityQueue.PriorityItem $priorityItem;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadPriorityQueue$invoke$3(DownloadPriorityQueue.PriorityItem priorityItem, c<? super DownloadPriorityQueue$invoke$3> cVar) {
        super(2, cVar);
        this.$priorityItem = priorityItem;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DownloadPriorityQueue$invoke$3 downloadPriorityQueue$invoke$3 = new DownloadPriorityQueue$invoke$3(this.$priorityItem, cVar);
        downloadPriorityQueue$invoke$3.L$0 = obj;
        return downloadPriorityQueue$invoke$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@Nullable DownloadPriorityQueue.PriorityItem priorityItem, @Nullable c<? super Boolean> cVar) {
        return ((DownloadPriorityQueue$invoke$3) create(priorityItem, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        boolean z10;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            if (((DownloadPriorityQueue.PriorityItem) this.L$0) == this.$priorityItem) {
                z10 = true;
            } else {
                z10 = false;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
