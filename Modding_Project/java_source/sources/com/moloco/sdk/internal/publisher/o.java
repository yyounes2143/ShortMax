package com.moloco.sdk.internal.publisher;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class o {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f32927c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.internal.ortb.a f32928a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final k0 f32929b;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BidLoader", f = "BidLoader.kt", l = {33, 46}, m = "parse")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32930h;

        /* renamed from: i  reason: collision with root package name */
        public Object f32931i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f32932j;

        /* renamed from: l  reason: collision with root package name */
        public int f32934l;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32932j = obj;
            this.f32934l |= Integer.MIN_VALUE;
            return o.this.b(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BidLoader", f = "BidLoader.kt", l = {71}, m = "parseBidResponse")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32935h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32936i;

        /* renamed from: k  reason: collision with root package name */
        public int f32938k;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32936i = obj;
            this.f32938k |= Integer.MIN_VALUE;
            return o.this.d(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.publisher.BidLoader", f = "BidLoader.kt", l = {58}, m = "processBidResponse$moloco_sdk_release")
    /* loaded from: classes6.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f32939h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32940i;

        /* renamed from: k  reason: collision with root package name */
        public int f32942k;

        public d(rs.c<? super d> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f32940i = obj;
            this.f32942k |= Integer.MIN_VALUE;
            return o.this.c(null, this);
        }
    }

    public o(@NotNull com.moloco.sdk.internal.ortb.a bidResponseParser, @NotNull k0 bidProcessor) {
        Intrinsics.checkNotNullParameter(bidResponseParser, "bidResponseParser");
        Intrinsics.checkNotNullParameter(bidProcessor, "bidProcessor");
        this.f32928a = bidResponseParser;
        this.f32929b = bidProcessor;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.ortb.model.c, com.moloco.sdk.internal.c0>> r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof com.moloco.sdk.internal.publisher.o.b
            if (r0 == 0) goto L13
            r0 = r14
            com.moloco.sdk.internal.publisher.o$b r0 = (com.moloco.sdk.internal.publisher.o.b) r0
            int r1 = r0.f32934l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32934l = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.o$b r0 = new com.moloco.sdk.internal.publisher.o$b
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.f32932j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32934l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r14)
            goto L9a
        L2c:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L34:
            java.lang.Object r12 = r0.f32931i
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r13 = r0.f32930h
            com.moloco.sdk.internal.publisher.o r13 = (com.moloco.sdk.internal.publisher.o) r13
            kotlin.f.b(r14)
            goto L6c
        L40:
            kotlin.f.b(r14)
            com.moloco.sdk.internal.MolocoLogger r5 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r2 = "parse() called with bidResponseJson: "
            r14.append(r2)
            r14.append(r13)
            java.lang.String r7 = r14.toString()
            r9 = 4
            r10 = 0
            java.lang.String r6 = "BidLoader"
            r8 = 0
            com.moloco.sdk.internal.MolocoLogger.debug$default(r5, r6, r7, r8, r9, r10)
            r0.f32930h = r11
            r0.f32931i = r12
            r0.f32934l = r4
            java.lang.Object r14 = r11.c(r13, r0)
            if (r14 != r1) goto L6b
            return r1
        L6b:
            r13 = r11
        L6c:
            java.lang.String r14 = (java.lang.String) r14
            if (r14 != 0) goto L7e
            com.moloco.sdk.publisher.MolocoAdError$ErrorType r13 = com.moloco.sdk.publisher.MolocoAdError.ErrorType.AD_BID_PARSE_ERROR
            com.moloco.sdk.internal.o r14 = com.moloco.sdk.internal.o.f32322b
            com.moloco.sdk.internal.c0 r12 = com.moloco.sdk.internal.d0.a(r12, r13, r14)
            com.moloco.sdk.internal.g0$a r13 = new com.moloco.sdk.internal.g0$a
            r13.<init>(r12)
            return r13
        L7e:
            com.moloco.sdk.internal.MolocoLogger r4 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r9 = 12
            r10 = 0
            java.lang.String r5 = "BidLoader"
            java.lang.String r6 = "Processed the bidResponse, proceeding with parsing it."
            r7 = 0
            r8 = 0
            com.moloco.sdk.internal.MolocoLogger.info$default(r4, r5, r6, r7, r8, r9, r10)
            r2 = 0
            r0.f32930h = r2
            r0.f32931i = r2
            r0.f32934l = r3
            java.lang.Object r14 = r13.d(r14, r12, r0)
            if (r14 != r1) goto L9a
            return r1
        L9a:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.o.b(java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058 A[RETURN] */
    @androidx.annotation.VisibleForTesting
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.String> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.moloco.sdk.internal.publisher.o.d
            if (r0 == 0) goto L13
            r0 = r9
            com.moloco.sdk.internal.publisher.o$d r0 = (com.moloco.sdk.internal.publisher.o.d) r0
            int r1 = r0.f32942k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32942k = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.o$d r0 = new com.moloco.sdk.internal.publisher.o$d
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f32940i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32942k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r8 = r0.f32939h
            java.lang.String r8 = (java.lang.String) r8
            kotlin.f.b(r9)
            goto L45
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.f.b(r9)
            com.moloco.sdk.internal.publisher.k0 r9 = r7.f32929b
            r0.f32939h = r8
            r0.f32942k = r3
            java.lang.Object r9 = r9.b(r8, r0)
            if (r9 != r1) goto L45
            return r1
        L45:
            java.lang.String r9 = (java.lang.String) r9
            if (r9 == 0) goto L58
            com.moloco.sdk.internal.MolocoLogger r0 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r5 = 12
            r6 = 0
            java.lang.String r1 = "BidLoader"
            java.lang.String r2 = "Found no pre-preprocessor for the current mediation. Returning the original bid response."
            r3 = 0
            r4 = 0
            com.moloco.sdk.internal.MolocoLogger.warn$default(r0, r1, r2, r3, r4, r5, r6)
            return r9
        L58:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.o.c(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(java.lang.String r8, java.lang.String r9, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.ortb.model.c, com.moloco.sdk.internal.c0>> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.moloco.sdk.internal.publisher.o.c
            if (r0 == 0) goto L13
            r0 = r10
            com.moloco.sdk.internal.publisher.o$c r0 = (com.moloco.sdk.internal.publisher.o.c) r0
            int r1 = r0.f32938k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f32938k = r1
            goto L18
        L13:
            com.moloco.sdk.internal.publisher.o$c r0 = new com.moloco.sdk.internal.publisher.o$c
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f32936i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f32938k
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r8 = r0.f32935h
            r9 = r8
            java.lang.String r9 = (java.lang.String) r9
            kotlin.f.b(r10)
            goto L46
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            kotlin.f.b(r10)
            com.moloco.sdk.internal.ortb.a r10 = r7.f32928a
            r0.f32935h = r9
            r0.f32938k = r3
            java.lang.Object r10 = r10.b(r8, r0)
            if (r10 != r1) goto L46
            return r1
        L46:
            com.moloco.sdk.internal.g0 r10 = (com.moloco.sdk.internal.g0) r10
            boolean r8 = r10 instanceof com.moloco.sdk.internal.g0.a
            if (r8 == 0) goto L70
            com.moloco.sdk.internal.MolocoLogger r0 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            com.moloco.sdk.internal.g0$a r10 = (com.moloco.sdk.internal.g0.a) r10
            java.lang.Object r8 = r10.a()
            r3 = r8
            java.lang.Throwable r3 = (java.lang.Throwable) r3
            r5 = 8
            r6 = 0
            java.lang.String r1 = "BidLoader"
            java.lang.String r2 = "parseBidResponse failed to parse BID json string."
            r4 = 0
            com.moloco.sdk.internal.MolocoLogger.error$default(r0, r1, r2, r3, r4, r5, r6)
            com.moloco.sdk.publisher.MolocoAdError$ErrorType r8 = com.moloco.sdk.publisher.MolocoAdError.ErrorType.AD_BID_PARSE_ERROR
            com.moloco.sdk.internal.o r10 = com.moloco.sdk.internal.o.f32323c
            com.moloco.sdk.internal.c0 r8 = com.moloco.sdk.internal.d0.a(r9, r8, r10)
            com.moloco.sdk.internal.g0$a r9 = new com.moloco.sdk.internal.g0$a
            r9.<init>(r8)
            goto L94
        L70:
            boolean r8 = r10 instanceof com.moloco.sdk.internal.g0.b
            if (r8 == 0) goto L95
            com.moloco.sdk.internal.g0$b r9 = new com.moloco.sdk.internal.g0$b
            com.moloco.sdk.internal.g0$b r10 = (com.moloco.sdk.internal.g0.b) r10
            java.lang.Object r8 = r10.a()
            com.moloco.sdk.internal.ortb.model.e r8 = (com.moloco.sdk.internal.ortb.model.e) r8
            java.util.List r8 = r8.c()
            r10 = 0
            java.lang.Object r8 = r8.get(r10)
            com.moloco.sdk.internal.ortb.model.s r8 = (com.moloco.sdk.internal.ortb.model.s) r8
            java.util.List r8 = r8.c()
            java.lang.Object r8 = r8.get(r10)
            r9.<init>(r8)
        L94:
            return r9
        L95:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.o.d(java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }
}
