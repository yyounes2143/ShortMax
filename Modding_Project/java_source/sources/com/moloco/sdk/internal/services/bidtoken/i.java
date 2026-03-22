package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class i implements k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final o f33144a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.publisher.v f33145b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f33146c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f33147d;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.BidTokenHandlerImpl", f = "BidTokenHandler.kt", l = {58}, m = "handleBidTokenRequest")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33148h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33149i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33150j;

        /* renamed from: k  reason: collision with root package name */
        public long f33151k;

        /* renamed from: l  reason: collision with root package name */
        public /* synthetic */ Object f33152l;

        /* renamed from: n  reason: collision with root package name */
        public int f33154n;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33152l = obj;
            this.f33154n |= Integer.MIN_VALUE;
            return i.this.a(null, null, this);
        }
    }

    public i(@NotNull o bidTokenService, @NotNull com.moloco.sdk.internal.publisher.v initializationHandler, @NotNull com.moloco.sdk.internal.services.j timeProviderService) {
        Intrinsics.checkNotNullParameter(bidTokenService, "bidTokenService");
        Intrinsics.checkNotNullParameter(initializationHandler, "initializationHandler");
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        this.f33144a = bidTokenService;
        this.f33145b = initializationHandler;
        this.f33146c = timeProviderService;
        this.f33147d = "BidTokenHandlerImpl";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x021d  */
    @Override // com.moloco.sdk.internal.services.bidtoken.k
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull com.moloco.sdk.acm.recorder.a r18, @org.jetbrains.annotations.NotNull com.moloco.sdk.publisher.MolocoBidTokenListener r19, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.i.a(com.moloco.sdk.acm.recorder.a, com.moloco.sdk.publisher.MolocoBidTokenListener, rs.c):java.lang.Object");
    }
}
