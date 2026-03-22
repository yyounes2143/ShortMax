package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObject;
import gt.c0;
import gt.d0;
import gt.g;
import gt.g0;
import gt.r1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CleanUpWhenOpportunityExpires.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCleanUpWhenOpportunityExpires.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanUpWhenOpportunityExpires.kt\ncom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,50:1\n49#2,4:51\n*S KotlinDebug\n*F\n+ 1 CleanUpWhenOpportunityExpires.kt\ncom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires\n*L\n21#1:51,4\n*E\n"})
/* loaded from: classes7.dex */
public final class CleanUpWhenOpportunityExpires {
    @NotNull
    private final d0 coroutineExceptionHandler;
    @NotNull
    private final g0 coroutineScope;

    public CleanUpWhenOpportunityExpires(@NotNull c0 defaultDispatcher) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1 cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1 = new CleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1(d0.D8);
        this.coroutineExceptionHandler = cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1;
        this.coroutineScope = i.a(r1.b(null, 1, null).plus(defaultDispatcher).plus(cleanUpWhenOpportunityExpires$special$$inlined$CoroutineExceptionHandler$1));
    }

    public final void invoke(@NotNull AdObject adObject) {
        final r d10;
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        if (adObject.getAdPlayer() != null) {
            d10 = g.d(this.coroutineScope, null, null, new CleanUpWhenOpportunityExpires$invoke$job$1(adObject, null), 3, null);
            t.m(adObject.getAdPlayer().getScope().getCoroutineContext()).invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                    invoke2(th2);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th2) {
                    r.a.b(r.this, null, 1, null);
                }
            });
            return;
        }
        throw new IllegalArgumentException("AdObject does not have an adPlayer.");
    }
}
