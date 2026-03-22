package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class w implements y {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f33291e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    public static final int f33292f = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.bidtoken.b f33293b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f33294c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public n f33295d;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenCacheImpl", f = "ServerBidTokenCache.kt", l = {62}, m = "tokenStatus")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33296h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33297i;

        /* renamed from: k  reason: collision with root package name */
        public int f33299k;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33297i = obj;
            this.f33299k |= Integer.MIN_VALUE;
            return w.this.a(this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenCacheImpl", f = "ServerBidTokenCache.kt", l = {95, 98}, m = "updateCache")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33300h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33301i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33302j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f33303k;

        /* renamed from: m  reason: collision with root package name */
        public int f33305m;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33303k = obj;
            this.f33305m |= Integer.MIN_VALUE;
            return w.this.b(null, this);
        }
    }

    public w(@NotNull com.moloco.sdk.internal.bidtoken.b bidTokenParser, @NotNull com.moloco.sdk.internal.services.j timeProviderService) {
        Intrinsics.checkNotNullParameter(bidTokenParser, "bidTokenParser");
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        this.f33293b = bidTokenParser;
        this.f33294c = timeProviderService;
        this.f33295d = new n("", "", g.a());
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.y
    @NotNull
    public n a() {
        return this.f33295d;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015e  */
    @Override // com.moloco.sdk.internal.services.bidtoken.y
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull com.moloco.sdk.internal.services.bidtoken.n r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.w.b(com.moloco.sdk.internal.services.bidtoken.n, rs.c):java.lang.Object");
    }

    public final void c(String str) {
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debugBuildLog$default(molocoLogger, "ServerBidTokenCache", "[Thread: " + Thread.currentThread().getName() + "][sbt] " + str, false, 4, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ba  */
    @Override // com.moloco.sdk.internal.services.bidtoken.y
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.services.bidtoken.B> r13) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.w.a(rs.c):java.lang.Object");
    }
}
