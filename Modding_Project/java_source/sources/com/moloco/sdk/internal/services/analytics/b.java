package com.moloco.sdk.internal.services.analytics;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.scheduling.e;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l;
import gt.g;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import rs.c;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class b implements com.moloco.sdk.internal.services.analytics.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final l f33097a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f33098b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b f33099c;

    @d(c = "com.moloco.sdk.internal.services.analytics.AnalyticsServiceImpl$recordApplicationBackground$1", f = "AnalyticsService.kt", l = {48}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33100h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f33102j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(long j10, c<? super a> cVar) {
            super(2, cVar);
            this.f33102j = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new a(this.f33102j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33100h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar = b.this.f33098b;
                long j10 = this.f33102j;
                a.AbstractC0597a.C0598a c0598a = a.AbstractC0597a.C0598a.f36596a;
                String a10 = b.this.f33099c.a();
                this.f33100h = 1;
                obj = aVar.a(j10, c0598a, a10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            b.this.f33097a.a((String) obj);
            return Unit.f60915a;
        }
    }

    @d(c = "com.moloco.sdk.internal.services.analytics.AnalyticsServiceImpl$recordApplicationForeground$1", f = "AnalyticsService.kt", l = {31}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.internal.services.analytics.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0489b extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33103h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ long f33105j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ long f33106k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0489b(long j10, long j11, c<? super C0489b> cVar) {
            super(2, cVar);
            this.f33105j = j10;
            this.f33106k = j11;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((C0489b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new C0489b(this.f33105j, this.f33106k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33103h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar = b.this.f33098b;
                long j10 = this.f33105j;
                a.AbstractC0597a.b bVar = new a.AbstractC0597a.b(this.f33106k);
                String d10 = b.this.f33099c.d();
                this.f33103h = 1;
                obj = aVar.a(j10, bVar, d10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            b.this.f33097a.a((String) obj);
            return Unit.f60915a;
        }
    }

    public b(@NotNull l persistentHttpRequest, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b configService) {
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(configService, "configService");
        this.f33097a = persistentHttpRequest;
        this.f33098b = customUserEventBuilderService;
        this.f33099c = configService;
    }

    @Override // com.moloco.sdk.internal.services.analytics.a
    public void a(long j10, long j11) {
        if (!this.f33099c.c() || this.f33099c.d().length() <= 0) {
            return;
        }
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "AnalyticsService", "Recording applicationForeground with timestamp: " + j10 + ", lastBgTimestamp: " + j11, false, 4, null);
        g.d(e.f33070a.a(), null, null, new C0489b(j10, j11, null), 3, null);
    }

    @Override // com.moloco.sdk.internal.services.analytics.a
    public void a(long j10) {
        if (!this.f33099c.c() || this.f33099c.a().length() <= 0) {
            return;
        }
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "AnalyticsService", "Recording applicationBackground with timestamp: " + j10, false, 4, null);
        g.d(e.f33070a.a(), null, null, new a(j10, null), 3, null);
    }
}
