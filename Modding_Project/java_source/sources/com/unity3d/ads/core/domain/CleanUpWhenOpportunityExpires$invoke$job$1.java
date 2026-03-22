package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdObjectState;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CleanUpWhenOpportunityExpires.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1", f = "CleanUpWhenOpportunityExpires.kt", l = {33, 34, 39}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CleanUpWhenOpportunityExpires$invoke$job$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ AdObject $adObject;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CleanUpWhenOpportunityExpires.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1", f = "CleanUpWhenOpportunityExpires.kt", l = {41}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AdObject adObject, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$adObject = adObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$adObject, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                this.$adObject.getState().setValue(AdObjectState.EXPIRED);
                AdPlayer adPlayer = this.$adObject.getAdPlayer();
                this.label = 1;
                if (adPlayer.destroy(this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CleanUpWhenOpportunityExpires$invoke$job$1(AdObject adObject, c<? super CleanUpWhenOpportunityExpires$invoke$job$1> cVar) {
        super(2, cVar);
        this.$adObject = adObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new CleanUpWhenOpportunityExpires$invoke$job$1(this.$adObject, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((CleanUpWhenOpportunityExpires$invoke$job$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0059 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L25
            if (r1 == r4) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            kotlin.f.b(r7)
            goto L7b
        L15:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1d:
            kotlin.f.b(r7)
            goto L5a
        L21:
            kotlin.f.b(r7)
            goto L4e
        L25:
            kotlin.f.b(r7)
            com.unity3d.ads.core.data.model.AdObject r7 = r6.$adObject
            kt.e r7 = r7.getTtl()
            java.lang.Object r7 = r7.getValue()
            kotlin.time.b r7 = (kotlin.time.b) r7
            if (r7 == 0) goto L3b
        L36:
            long r4 = r7.M()
            goto L51
        L3b:
            com.unity3d.ads.core.data.model.AdObject r7 = r6.$adObject
            kt.e r7 = r7.getTtl()
            kt.b r7 = kotlinx.coroutines.flow.c.w(r7)
            r6.label = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.c.y(r7, r6)
            if (r7 != r0) goto L4e
            return r0
        L4e:
            kotlin.time.b r7 = (kotlin.time.b) r7
            goto L36
        L51:
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.c(r4, r6)
            if (r7 != r0) goto L5a
            return r0
        L5a:
            com.unity3d.ads.core.data.model.AdObject r7 = r6.$adObject
            kt.e r7 = r7.getState()
            java.lang.Object r7 = r7.getValue()
            com.unity3d.ads.core.data.model.AdObjectState r1 = com.unity3d.ads.core.data.model.AdObjectState.SHOWING
            if (r7 == r1) goto L7b
            kotlinx.coroutines.v r7 = kotlinx.coroutines.v.f61916a
            com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1 r1 = new com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1$1
            com.unity3d.ads.core.data.model.AdObject r3 = r6.$adObject
            r4 = 0
            r1.<init>(r3, r4)
            r6.label = r2
            java.lang.Object r7 = gt.e.g(r7, r1, r6)
            if (r7 != r0) goto L7b
            return r0
        L7b:
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
