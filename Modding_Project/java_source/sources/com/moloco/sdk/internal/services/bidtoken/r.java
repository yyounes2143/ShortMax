package com.moloco.sdk.internal.services.bidtoken;

import android.util.Base64;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.BidToken$ClientBidTokenComponents;
import com.moloco.sdk.internal.MolocoLogger;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nClientBidTokenService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientBidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/ClientBidTokenServiceImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,185:1\n116#2,10:186\n*S KotlinDebug\n*F\n+ 1 ClientBidTokenService.kt\ncom/moloco/sdk/internal/services/bidtoken/ClientBidTokenServiceImpl\n*L\n69#1:186,10\n*E\n"})
/* loaded from: classes6.dex */
public final class r implements u {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.j f33265b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final s f33266c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.encryption.a f33267d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.bidtoken.providers.m f33268e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final String f33269f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public String f33270g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public String f33271h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public h f33272i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final qt.a f33273j;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.ClientBidTokenServiceImpl", f = "ClientBidTokenService.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED}, m = "bidToken-BWLJW6A")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33274h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33275i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33276j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33277k;

        /* renamed from: l  reason: collision with root package name */
        public Object f33278l;

        /* renamed from: m  reason: collision with root package name */
        public /* synthetic */ Object f33279m;

        /* renamed from: o  reason: collision with root package name */
        public int f33281o;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33279m = obj;
            this.f33281o |= Integer.MIN_VALUE;
            Object a10 = r.this.a(null, null, null, this);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Result.b(a10);
        }
    }

    public r(@NotNull com.moloco.sdk.internal.services.j timeProviderService, @NotNull s clientBidTokenBuilder, @NotNull com.moloco.sdk.internal.services.encryption.a encryptionService, @NotNull com.moloco.sdk.internal.services.bidtoken.providers.m signalProvider) {
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        Intrinsics.checkNotNullParameter(clientBidTokenBuilder, "clientBidTokenBuilder");
        Intrinsics.checkNotNullParameter(encryptionService, "encryptionService");
        Intrinsics.checkNotNullParameter(signalProvider, "signalProvider");
        this.f33265b = timeProviderService;
        this.f33266c = clientBidTokenBuilder;
        this.f33267d = encryptionService;
        this.f33268e = signalProvider;
        this.f33269f = "ClientBidTokenServiceImpl";
        this.f33270g = "";
        this.f33271h = "";
        this.f33272i = g.a();
        this.f33273j = qt.d.b(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068 A[Catch: all -> 0x0099, TryCatch #0 {all -> 0x0099, blocks: (B:18:0x0062, B:20:0x0068, B:24:0x00b6, B:26:0x00be, B:29:0x00d3, B:23:0x009b), top: B:34:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009b A[Catch: all -> 0x0099, TryCatch #0 {all -> 0x0099, blocks: (B:18:0x0062, B:20:0x0068, B:24:0x00b6, B:26:0x00be, B:29:0x00d3, B:23:0x009b), top: B:34:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #0 {all -> 0x0099, blocks: (B:18:0x0062, B:20:0x0068, B:24:0x00b6, B:26:0x00be, B:29:0x00d3, B:23:0x009b), top: B:34:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d3 A[Catch: all -> 0x0099, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0099, blocks: (B:18:0x0062, B:20:0x0068, B:24:0x00b6, B:26:0x00be, B:29:0x00d3, B:23:0x009b), top: B:34:0x0062 }] */
    @Override // com.moloco.sdk.internal.services.bidtoken.u
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull com.moloco.sdk.acm.recorder.a r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull com.moloco.sdk.internal.services.bidtoken.h r14, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r15) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.r.a(com.moloco.sdk.acm.recorder.a, java.lang.String, com.moloco.sdk.internal.services.bidtoken.h, rs.c):java.lang.Object");
    }

    public final String b(String str, com.moloco.sdk.acm.recorder.a aVar) {
        Exception exc;
        String str2;
        long a10;
        byte[] a11;
        String str3;
        MolocoLogger molocoLogger;
        byte[] encode;
        if (str.length() == 0) {
            aVar.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32052x.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").e(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), "empty_public_key"));
            return "";
        }
        com.moloco.sdk.acm.e c10 = aVar.c(com.moloco.sdk.internal.client_metrics_data.d.f32077o.c());
        try {
            a10 = this.f33265b.a();
            try {
                a11 = this.f33267d.a(str);
                try {
                    this.f33268e.a();
                    BidToken$ClientBidTokenComponents a12 = this.f33266c.a(this.f33268e.d(), this.f33272i);
                    molocoLogger = MolocoLogger.INSTANCE;
                    String str4 = this.f33269f;
                    MolocoLogger.debugBuildLog$default(molocoLogger, str4, "BidToken Component: " + a12, false, 4, null);
                    encode = Base64.encode(a12.toByteArray(), 0);
                } catch (Exception e10) {
                    exc = e10;
                    str2 = str3;
                }
            } catch (Exception e11) {
                exc = e11;
            }
        } catch (Exception e12) {
            exc = e12;
            str2 = "";
        }
        try {
            com.moloco.sdk.internal.services.encryption.a aVar2 = this.f33267d;
            Intrinsics.checkNotNull(encode);
            byte[] encode2 = Base64.encode(aVar2.a(encode), 0);
            s sVar = this.f33266c;
            Intrinsics.checkNotNull(encode2);
            String encodeToString = Base64.encodeToString(sVar.b(encode2, a11), 0);
            com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
            aVar.a(c10.f(cVar.c(), "success"));
            aVar.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32052x.c()).e(cVar.c(), "success"));
            String str5 = this.f33269f;
            MolocoLogger.info$default(molocoLogger, str5, "Client bid token build time: " + (this.f33265b.a() - a10) + " ms", null, false, 12, null);
            return "v2:" + encodeToString;
        } catch (Exception e13) {
            exc = e13;
            str2 = "aes";
            String simpleName = exc.getClass().getSimpleName();
            MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
            String str6 = this.f33269f;
            MolocoLogger.warn$default(molocoLogger2, str6, "Client bid token build failed: " + simpleName, exc, false, 8, null);
            com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.f32052x.c());
            com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
            com.moloco.sdk.acm.b e14 = bVar.e(cVar2.c(), "failure");
            com.moloco.sdk.internal.client_metrics_data.c cVar3 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
            com.moloco.sdk.acm.b e15 = e14.e(cVar3.c(), simpleName);
            if (str2.length() > 0) {
                e15.e(com.moloco.sdk.internal.client_metrics_data.c.f32060g.c(), str2);
            }
            String str7 = this.f33269f;
            MolocoLogger.debugBuildLog$default(molocoLogger2, str7, "Recording metric failure: " + e15.c() + ", tags: " + CollectionsKt.A0(e15.b(), ",", null, null, 0, null, null, 62, null), false, 4, null);
            aVar.b(e15);
            aVar.a(c10.f(cVar2.c(), "failure").f(cVar3.c(), simpleName));
            return "";
        }
    }

    public final boolean c(h hVar) {
        String str;
        h hVar2 = this.f33272i;
        this.f33272i = hVar;
        boolean areEqual = Intrinsics.areEqual(hVar2, hVar);
        boolean z10 = !areEqual;
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str2 = this.f33269f;
        if (!areEqual) {
            str = "config updated";
        } else {
            str = "config didn't change";
        }
        MolocoLogger.debugBuildLog$default(molocoLogger, str2, str, false, 4, null);
        return z10;
    }

    public final boolean d(String str, h hVar) {
        if (!Intrinsics.areEqual(this.f33270g, str)) {
            MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, this.f33269f, "rp changed, needs refresh", false, 4, null);
            return true;
        } else if (c(hVar)) {
            MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, this.f33269f, "config changed, needs refresh", false, 4, null);
            return true;
        } else if (this.f33271h.length() == 0) {
            MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, this.f33269f, "cached bidToken is empty, needs refresh", false, 4, null);
            return true;
        } else if (this.f33268e.b()) {
            MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, this.f33269f, "signal provider updated, needs refresh", false, 4, null);
            return true;
        } else {
            MolocoLogger.debugBuildLog$default(MolocoLogger.INSTANCE, this.f33269f, "Bid token doesn't need refresh", false, 4, null);
            return false;
        }
    }
}
