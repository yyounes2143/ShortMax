package com.moloco.sdk.internal.services.bidtoken;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting(otherwise = 2)
@SourceDebugExtension({"SMAP\nBidTokenService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenServiceImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,111:1\n116#2,10:112\n*S KotlinDebug\n*F\n+ 1 BidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenServiceImpl\n*L\n51#1:112,10\n*E\n"})
/* loaded from: classes6.dex */
public final class m implements o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final b0 f33163a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final u f33164b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f33165c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final qt.a f33166d;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.BidTokenServiceImpl", f = "BidTokenService.kt", l = {117, 53, 60}, m = "bidToken")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33167h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33168i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33169j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33170k;

        /* renamed from: l  reason: collision with root package name */
        public Object f33171l;

        /* renamed from: m  reason: collision with root package name */
        public /* synthetic */ Object f33172m;

        /* renamed from: o  reason: collision with root package name */
        public int f33174o;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33172m = obj;
            this.f33174o |= Integer.MIN_VALUE;
            return m.this.a(null, this);
        }
    }

    public m(@NotNull b0 serverBidTokenService, @NotNull u clientBidTokenService) {
        Intrinsics.checkNotNullParameter(serverBidTokenService, "serverBidTokenService");
        Intrinsics.checkNotNullParameter(clientBidTokenService, "clientBidTokenService");
        this.f33163a = serverBidTokenService;
        this.f33164b = clientBidTokenService;
        this.f33165c = "BidTokenServiceImpl";
        this.f33166d = qt.d.b(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d0 A[Catch: all -> 0x0070, TRY_LEAVE, TryCatch #0 {all -> 0x0070, blocks: (B:21:0x006c, B:34:0x00c4, B:36:0x00d0), top: B:59:0x006c }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0100 A[Catch: all -> 0x0051, TryCatch #1 {all -> 0x0051, blocks: (B:14:0x0046, B:40:0x00f1, B:43:0x00f8, B:45:0x0100, B:51:0x012d, B:46:0x0112), top: B:61:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0112 A[Catch: all -> 0x0051, TRY_LEAVE, TryCatch #1 {all -> 0x0051, blocks: (B:14:0x0046, B:40:0x00f1, B:43:0x00f8, B:45:0x0100, B:51:0x012d, B:46:0x0112), top: B:61:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012a  */
    @Override // com.moloco.sdk.internal.services.bidtoken.o
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull com.moloco.sdk.acm.recorder.a r19, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.String> r20) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.m.a(com.moloco.sdk.acm.recorder.a, rs.c):java.lang.Object");
    }

    public final void b(com.moloco.sdk.acm.e eVar, com.moloco.sdk.acm.recorder.a aVar, String str) {
        if (str != null) {
            com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32045q.c());
            com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
            com.moloco.sdk.acm.b e10 = bVar.e(cVar.c(), "failure");
            com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
            aVar.b(e10.e(cVar2.c(), str));
            aVar.a(eVar.f(cVar.c(), "failure").f(cVar2.c(), str));
            return;
        }
        com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32045q.c());
        com.moloco.sdk.internal.client_metrics_data.c cVar3 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
        aVar.b(bVar2.e(cVar3.c(), "success"));
        aVar.a(eVar.f(cVar3.c(), "success"));
    }
}
