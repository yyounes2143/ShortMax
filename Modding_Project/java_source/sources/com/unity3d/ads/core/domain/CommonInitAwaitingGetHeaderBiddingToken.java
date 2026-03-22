package com.unity3d.ads.core.domain;

import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.GetInitializationState;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.h;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonInitAwaitingGetHeaderBiddingToken.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCommonInitAwaitingGetHeaderBiddingToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonInitAwaitingGetHeaderBiddingToken.kt\ncom/unity3d/ads/core/domain/CommonInitAwaitingGetHeaderBiddingToken\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"})
/* loaded from: classes7.dex */
public final class CommonInitAwaitingGetHeaderBiddingToken implements GetAsyncHeaderBiddingToken {
    @NotNull
    private final AwaitInitialization awaitInitialization;
    private boolean didAwaitInit;
    @NotNull
    private final GetHeaderBiddingToken getHeaderBiddingToken;
    @NotNull
    private final GetInitializationState getInitializationState;
    @Nullable
    private IUnityAdsTokenListener listener;
    @NotNull
    private final SafeCallbackInvoke safeCallbackInvoke;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;
    @Nullable
    private InitializationState startState;
    private final long startTime;

    public CommonInitAwaitingGetHeaderBiddingToken(@NotNull GetHeaderBiddingToken getHeaderBiddingToken, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull GetInitializationState getInitializationState, @NotNull AwaitInitialization awaitInitialization, @NotNull SessionRepository sessionRepository, @NotNull SafeCallbackInvoke safeCallbackInvoke) {
        Intrinsics.checkNotNullParameter(getHeaderBiddingToken, "getHeaderBiddingToken");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(awaitInitialization, "awaitInitialization");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        this.getHeaderBiddingToken = getHeaderBiddingToken;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getInitializationState = getInitializationState;
        this.awaitInitialization = awaitInitialization;
        this.sessionRepository = sessionRepository;
        this.safeCallbackInvoke = safeCallbackInvoke;
        this.startTime = h.f61257a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchToken(int r6, com.unity3d.ads.TokenConfiguration r7, rs.c<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$fetchToken$1
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$fetchToken$1 r0 = (com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$fetchToken$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$fetchToken$1 r0 = new com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$fetchToken$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$0
            com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken r7 = (com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken) r7
            kotlin.f.b(r8)     // Catch: java.lang.Exception -> L30
            goto L4d
        L30:
            r8 = move-exception
            goto L55
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r8)
            com.unity3d.ads.core.domain.GetHeaderBiddingToken r8 = r5.getHeaderBiddingToken     // Catch: java.lang.Exception -> L53
            r0.L$0 = r5     // Catch: java.lang.Exception -> L53
            r0.I$0 = r6     // Catch: java.lang.Exception -> L53
            r0.label = r3     // Catch: java.lang.Exception -> L53
            java.lang.Object r8 = r8.invoke(r6, r7, r0)     // Catch: java.lang.Exception -> L53
            if (r8 != r1) goto L4c
            return r1
        L4c:
            r7 = r5
        L4d:
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Exception -> L30
            r0 = r4
            r4 = r8
            r8 = r0
            goto L5c
        L53:
            r8 = move-exception
            r7 = r5
        L55:
            r0 = 0
            java.lang.String r8 = com.unity3d.ads.core.extensions.ExceptionExtensionsKt.getShortenedStackTrace$default(r8, r0, r3, r4)
            java.lang.String r0 = "uncaught_exception"
        L5c:
            if (r4 != 0) goto L62
            r7.tokenFailure(r6, r0, r8)
            goto L65
        L62:
            r7.tokenSuccess(r6, r4)
        L65:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken.fetchToken(int, com.unity3d.ads.TokenConfiguration, rs.c):java.lang.Object");
    }

    private final void tokenFailure(int i10, String str, String str2) {
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        Double valueOf = Double.valueOf(TimeExtensionsKt.elapsedMillis(h.a.b(this.startTime)));
        Map c10 = p0.c();
        c10.put("sync", "false");
        c10.put("state", String.valueOf(this.startState));
        c10.put("complete_state", GetInitializationState.DefaultImpls.invoke$default(this.getInitializationState, false, 1, null).toString());
        c10.put("awaited_init", String.valueOf(this.didAwaitInit));
        if (str != null) {
            String str3 = (String) c10.put("reason", str);
        }
        if (str2 != null) {
            c10.put("reason_debug", str2);
        }
        Unit unit = Unit.f60915a;
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_gateway_token_failure_time", valueOf, p0.b(c10), null, null, Integer.valueOf(i10), 24, null);
        this.safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$tokenFailure$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                IUnityAdsTokenListener listener = CommonInitAwaitingGetHeaderBiddingToken.this.getListener();
                if (listener != null) {
                    listener.onUnityAdsTokenReady(null);
                }
            }
        });
    }

    static /* synthetic */ void tokenFailure$default(CommonInitAwaitingGetHeaderBiddingToken commonInitAwaitingGetHeaderBiddingToken, int i10, String str, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        commonInitAwaitingGetHeaderBiddingToken.tokenFailure(i10, str, str2);
    }

    private final void tokenStart(int i10) {
        this.startState = GetInitializationState.DefaultImpls.invoke$default(this.getInitializationState, false, 1, null);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_gateway_token_started", null, p0.m(k.a("sync", "false"), k.a("state", String.valueOf(this.startState))), null, null, Integer.valueOf(i10), 26, null);
    }

    private final void tokenSuccess(int i10, final String str) {
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_gateway_token_success_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(h.a.b(this.startTime))), p0.m(k.a("sync", "false"), k.a("state", String.valueOf(this.startState)), k.a("complete_state", GetInitializationState.DefaultImpls.invoke$default(this.getInitializationState, false, 1, null).toString()), k.a("awaited_init", String.valueOf(this.didAwaitInit))), null, null, Integer.valueOf(i10), 24, null);
        this.safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$tokenSuccess$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                IUnityAdsTokenListener listener = CommonInitAwaitingGetHeaderBiddingToken.this.getListener();
                if (listener != null) {
                    listener.onUnityAdsTokenReady(str);
                }
            }
        });
    }

    @NotNull
    public final AwaitInitialization getAwaitInitialization() {
        return this.awaitInitialization;
    }

    @NotNull
    public final GetHeaderBiddingToken getGetHeaderBiddingToken() {
        return this.getHeaderBiddingToken;
    }

    @NotNull
    public final GetInitializationState getGetInitializationState() {
        return this.getInitializationState;
    }

    @Nullable
    public final IUnityAdsTokenListener getListener() {
        return this.listener;
    }

    @NotNull
    public final SafeCallbackInvoke getSafeCallbackInvoke() {
        return this.safeCallbackInvoke;
    }

    @NotNull
    public final SendDiagnosticEvent getSendDiagnosticEvent() {
        return this.sendDiagnosticEvent;
    }

    @NotNull
    public final SessionRepository getSessionRepository() {
        return this.sessionRepository;
    }

    /* renamed from: getStartTime-z9LOYto  reason: not valid java name */
    public final long m4728getStartTimez9LOYto() {
        return this.startTime;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009c  */
    @Override // com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(int r9, @org.jetbrains.annotations.Nullable com.unity3d.ads.TokenConfiguration r10, @org.jetbrains.annotations.Nullable com.unity3d.ads.IUnityAdsTokenListener r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r12) {
        /*
            r8 = this;
            boolean r0 = r12 instanceof com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$invoke$1
            if (r0 == 0) goto L13
            r0 = r12
            com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$invoke$1 r0 = (com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$invoke$1 r0 = new com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$invoke$1
            r0.<init>(r8, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            java.lang.String r3 = "!sessionRepository.shouldInitialize"
            java.lang.String r4 = "gateway"
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L48
            if (r2 == r6) goto L3a
            if (r2 != r5) goto L32
            kotlin.f.b(r12)
            goto La9
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3a:
            int r9 = r0.I$0
            java.lang.Object r10 = r0.L$1
            com.unity3d.ads.TokenConfiguration r10 = (com.unity3d.ads.TokenConfiguration) r10
            java.lang.Object r11 = r0.L$0
            com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken r11 = (com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken) r11
            kotlin.f.b(r12)
            goto L8e
        L48:
            kotlin.f.b(r12)
            r8.listener = r11
            r8.tokenStart(r9)
            if (r11 != 0) goto L5c
            java.lang.String r10 = "listener_null"
            java.lang.String r11 = "IUnityAdsTokenListener is null"
            r8.tokenFailure(r9, r10, r11)
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        L5c:
            com.unity3d.ads.core.data.repository.SessionRepository r11 = r8.sessionRepository
            boolean r11 = r11.getShouldInitialize()
            if (r11 != 0) goto L6a
            r8.tokenFailure(r9, r4, r3)
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        L6a:
            com.unity3d.ads.core.data.repository.SessionRepository r11 = r8.sessionRepository
            gatewayprotocol.v1.NativeConfigurationOuterClass$NativeConfiguration r11 = r11.getNativeConfiguration()
            gatewayprotocol.v1.NativeConfigurationOuterClass$AdOperationsConfiguration r11 = r11.getAdOperations()
            int r11 = r11.getGetTokenTimeoutMs()
            long r11 = (long) r11
            com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$invoke$2 r2 = new com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken$invoke$2
            r2.<init>(r8, r7)
            r0.L$0 = r8
            r0.L$1 = r10
            r0.I$0 = r9
            r0.label = r6
            java.lang.Object r11 = kotlinx.coroutines.TimeoutKt.e(r11, r2, r0)
            if (r11 != r1) goto L8d
            return r1
        L8d:
            r11 = r8
        L8e:
            com.unity3d.ads.core.data.repository.SessionRepository r12 = r11.sessionRepository
            boolean r12 = r12.getShouldInitialize()
            if (r12 != 0) goto L9c
            r11.tokenFailure(r9, r4, r3)
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        L9c:
            r0.L$0 = r7
            r0.L$1 = r7
            r0.label = r5
            java.lang.Object r9 = r11.fetchToken(r9, r10, r0)
            if (r9 != r1) goto La9
            return r1
        La9:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CommonInitAwaitingGetHeaderBiddingToken.invoke(int, com.unity3d.ads.TokenConfiguration, com.unity3d.ads.IUnityAdsTokenListener, rs.c):java.lang.Object");
    }

    public final void setListener(@Nullable IUnityAdsTokenListener iUnityAdsTokenListener) {
        this.listener = iUnityAdsTokenListener;
    }
}
