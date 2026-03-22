package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.exception.GatewayException;
import com.unity3d.ads.core.data.model.exception.InitializationException;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.services.UnityAdsConstants;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.time.h;
import kotlinx.coroutines.TimeoutKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidInitializeBoldSDK.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2", f = "AndroidInitializeBoldSDK.kt", l = {66, 83}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidInitializeBoldSDK$invoke$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ String $source;
    int I$0;
    long J$0;
    int label;
    final /* synthetic */ AndroidInitializeBoldSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1", f = "AndroidInitializeBoldSDK.kt", l = {67, 69, 71, 72}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ boolean $isRetry;
        final /* synthetic */ String $source;
        int label;
        final /* synthetic */ AndroidInitializeBoldSDK this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AndroidInitializeBoldSDK androidInitializeBoldSDK, String str, boolean z10, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = androidInitializeBoldSDK;
            this.$source = str;
            this.$isRetry = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.this$0, this.$source, this.$isRetry, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0073 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0080 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r12.label
                r2 = 4
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L2c
                if (r1 == r5) goto L28
                if (r1 == r4) goto L24
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                kotlin.f.b(r13)
                goto L81
            L18:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L20:
                kotlin.f.b(r13)
                goto L74
            L24:
                kotlin.f.b(r13)
                goto L52
            L28:
                kotlin.f.b(r13)
                goto L3e
            L2c:
                kotlin.f.b(r13)
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                java.lang.String r1 = r12.$source
                boolean r6 = r12.$isRetry
                r12.label = r5
                java.lang.Object r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$initializationStart(r13, r1, r6, r12)
                if (r13 != r0) goto L3e
                return r0
            L3e:
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$checkCanInitialize(r13)
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.core.domain.GetInitializationRequest r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getGetInitializeRequest$p(r13)
                r12.label = r4
                java.lang.Object r13 = r13.invoke(r12)
                if (r13 != r0) goto L52
                return r0
            L52:
                r6 = r13
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r6 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r6
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.core.domain.GetRequestPolicy r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getGetRequestPolicy$p(r13)
                com.unity3d.ads.gatewayclient.RequestPolicy r7 = r13.invoke()
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r13 = r12.this$0
                com.unity3d.ads.gatewayclient.GatewayClient r4 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$getGatewayClient$p(r13)
                com.unity3d.ads.core.data.model.OperationType r8 = com.unity3d.ads.core.data.model.OperationType.INITIALIZATION
                r12.label = r3
                r5 = 0
                r10 = 1
                r11 = 0
                r9 = r12
                java.lang.Object r13 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r4, r5, r6, r7, r8, r9, r10, r11)
                if (r13 != r0) goto L74
                return r0
            L74:
                gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r13 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r13
                com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r1 = r12.this$0
                r12.label = r2
                java.lang.Object r13 = com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.access$handleResponse(r1, r13, r12)
                if (r13 != r0) goto L81
                return r0
            L81:
                kotlin.Unit r13 = kotlin.Unit.f60915a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidInitializeBoldSDK$invoke$2(AndroidInitializeBoldSDK androidInitializeBoldSDK, String str, c<? super AndroidInitializeBoldSDK$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = androidInitializeBoldSDK;
        this.$source = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidInitializeBoldSDK$invoke$2(this.this$0, this.$source, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidInitializeBoldSDK$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [kotlin.time.h$a, long, kotlin.time.TimeMark] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SessionRepository sessionRepository;
        long b10;
        SessionRepository sessionRepository2;
        ?? b11;
        Object initializationSuccess;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        boolean z10 = false;
        try {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i10 = this.I$0;
                b10 = this.J$0;
                f.b(obj);
            } else {
                f.b(obj);
                b10 = h.f61257a.b();
                sessionRepository2 = this.this$0.sessionRepository;
                boolean isFirstInitAttempt = sessionRepository2.isFirstInitAttempt();
                i10 = !isFirstInitAttempt;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$source, !isFirstInitAttempt, null);
                this.J$0 = b10;
                this.I$0 = i10;
                this.label = 1;
                if (TimeoutKt.c(UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, anonymousClass1, this) == f10) {
                    return f10;
                }
            }
            AndroidInitializeBoldSDK androidInitializeBoldSDK = this.this$0;
            b11 = h.a.b(b10);
            String str = this.$source;
            if (i10 != 0) {
                z10 = true;
            }
            this.label = 2;
            initializationSuccess = androidInitializeBoldSDK.initializationSuccess(b11, str, z10, this);
            if (initializationSuccess == f10) {
                return f10;
            }
            return Unit.f60915a;
        } catch (Exception e10) {
            InitializationException parseFrom = InitializationException.Companion.parseFrom(e10);
            if (e10 instanceof GatewayException) {
                sessionRepository = this.this$0.sessionRepository;
                sessionRepository.setShouldInitialize(false);
            }
            AndroidInitializeBoldSDK androidInitializeBoldSDK2 = this.this$0;
            h.a b12 = h.a.b(b11);
            String str2 = this.$source;
            if (i10 != 0) {
                z10 = true;
            }
            androidInitializeBoldSDK2.initializationFailure(b12, parseFrom, str2, z10);
            return Unit.f60915a;
        }
    }
}
