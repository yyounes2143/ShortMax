package com.unity3d.services;

import android.app.Activity;
import android.content.Context;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.domain.GetAdObject;
import com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken;
import com.unity3d.ads.core.domain.GetGameId;
import com.unity3d.ads.core.domain.GetHeaderBiddingToken;
import com.unity3d.ads.core.domain.GetInitializationState;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.ads.core.domain.LegacyShowUseCase;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.ShouldAllowInitialization;
import com.unity3d.ads.core.domain.TokenNumberProvider;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.domain.task.InitializeSDK;
import gt.f;
import gt.g;
import gt.g0;
import gt.s;
import java.util.Map;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.h;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.r;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: UnityAdsSDK.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnityAdsSDK.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsSDK.kt\ncom/unity3d/services/UnityAdsSDK\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n29#2,5:216\n29#2,5:221\n29#2,5:226\n29#2,5:231\n19#2:236\n29#2,5:237\n19#2:242\n29#2,5:243\n19#2:248\n16#2,4:249\n29#2,5:253\n29#2,5:258\n29#2,5:263\n19#2:268\n29#2,5:269\n29#2,5:274\n29#2,5:279\n29#2,5:284\n29#2,5:290\n29#2,5:295\n29#2,5:300\n19#2:305\n29#2,5:306\n29#2,5:311\n1#3:289\n*S KotlinDebug\n*F\n+ 1 UnityAdsSDK.kt\ncom/unity3d/services/UnityAdsSDK\n*L\n74#1:216,5\n78#1:221,5\n79#1:226,5\n80#1:231,5\n82#1:236\n102#1:237,5\n105#1:242\n106#1:243,5\n116#1:248\n117#1:249,4\n139#1:253,5\n142#1:258,5\n143#1:263,5\n144#1:268\n153#1:269,5\n154#1:274,5\n155#1:279,5\n156#1:284,5\n195#1:290,5\n198#1:295,5\n199#1:300,5\n200#1:305\n209#1:306,5\n212#1:311,5\n*E\n"})
/* loaded from: classes7.dex */
public final class UnityAdsSDK implements IServiceComponent {
    @NotNull
    private final IServiceProvider serviceProvider;

    public UnityAdsSDK() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object fetchToken(String str, c<? super String> cVar) {
        String str2;
        String str3;
        String str4;
        Object b10;
        String str5;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<TokenNumberProvider>() { // from class: com.unity3d.services.UnityAdsSDK$fetchToken$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.TokenNumberProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TokenNumberProvider invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(TokenNumberProvider.class));
            }
        });
        i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<GetHeaderBiddingToken>() { // from class: com.unity3d.services.UnityAdsSDK$fetchToken$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.domain.GetHeaderBiddingToken] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetHeaderBiddingToken invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(GetHeaderBiddingToken.class));
            }
        });
        i a12 = kotlin.c.a(lazyThreadSafetyMode, new Function0<GetInitializationState>() { // from class: com.unity3d.services.UnityAdsSDK$fetchToken$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.domain.GetInitializationState] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetInitializationState invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(GetInitializationState.class));
            }
        });
        i a13 = kotlin.c.a(lazyThreadSafetyMode, new Function0<SendDiagnosticEvent>() { // from class: com.unity3d.services.UnityAdsSDK$fetchToken$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.SendDiagnosticEvent, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SendDiagnosticEvent invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class));
            }
        });
        long b11 = h.f61257a.b();
        SendDiagnosticEvent.DefaultImpls.invoke$default(fetchToken$lambda$12(a13), "native_gateway_token_started", null, p0.m(k.a("sync", str), k.a("state", GetInitializationState.DefaultImpls.invoke$default(fetchToken$lambda$11(a12), false, 1, null).toString())), null, null, null, 58, null);
        if (GetInitializationState.DefaultImpls.invoke$default(fetchToken$lambda$11(a12), false, 1, null) == InitializationState.INITIALIZED) {
            try {
                b10 = f.b(null, new UnityAdsSDK$fetchToken$token$1(a11, a10, null), 1, null);
                str4 = (String) b10;
                str2 = null;
                str3 = null;
            } catch (Exception e10) {
                String shortenedStackTrace$default = ExceptionExtensionsKt.getShortenedStackTrace$default(e10, 0, 1, null);
                str2 = "uncaught_exception";
                str3 = shortenedStackTrace$default;
                str4 = null;
            }
        } else {
            str2 = "not_initialized";
            str3 = null;
            str4 = null;
        }
        SendDiagnosticEvent fetchToken$lambda$12 = fetchToken$lambda$12(a13);
        if (str4 == null) {
            str5 = "native_gateway_token_failure_time";
        } else {
            str5 = "native_gateway_token_success_time";
        }
        String str6 = str5;
        Double b12 = a.b(TimeExtensionsKt.elapsedMillis(h.a.b(b11)));
        Map c10 = p0.c();
        c10.put("sync", str);
        c10.put("state", GetInitializationState.DefaultImpls.invoke$default(fetchToken$lambda$11(a12), false, 1, null).toString());
        if (str2 != null) {
            String str7 = (String) c10.put("reason", str2);
        }
        if (str3 != null) {
            c10.put("reason_debug", str3);
        }
        Unit unit = Unit.f60915a;
        SendDiagnosticEvent.DefaultImpls.invoke$default(fetchToken$lambda$12, str6, b12, p0.b(c10), null, null, a.d(fetchToken$lambda$9(a10).invoke()), 24, null);
        return str4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetHeaderBiddingToken fetchToken$lambda$10(i<? extends GetHeaderBiddingToken> iVar) {
        return iVar.getValue();
    }

    private static final GetInitializationState fetchToken$lambda$11(i<? extends GetInitializationState> iVar) {
        return iVar.getValue();
    }

    private static final SendDiagnosticEvent fetchToken$lambda$12(i<? extends SendDiagnosticEvent> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TokenNumberProvider fetchToken$lambda$9(i<? extends TokenNumberProvider> iVar) {
        return iVar.getValue();
    }

    private static final AlternativeFlowReader finishOMIDSession$lambda$16(i<? extends AlternativeFlowReader> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdObject finishOMIDSession$lambda$18(i<? extends GetAdObject> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OmFinishSession finishOMIDSession$lambda$19(i<? extends OmFinishSession> iVar) {
        return iVar.getValue();
    }

    private static final GetGameId getToken$lambda$6(i<? extends GetGameId> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TokenNumberProvider getToken$lambda$7(i<? extends TokenNumberProvider> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAsyncHeaderBiddingToken getToken$lambda$8(i<? extends GetAsyncHeaderBiddingToken> iVar) {
        return iVar.getValue();
    }

    public static /* synthetic */ r initialize$default(UnityAdsSDK unityAdsSDK, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "api";
        }
        return unityAdsSDK.initialize(str, str2);
    }

    private static final ShouldAllowInitialization initialize$lambda$0(i<? extends ShouldAllowInitialization> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AlternativeFlowReader initialize$lambda$1(i<? extends AlternativeFlowReader> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializeSDK initialize$lambda$2(i<InitializeSDK> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializeBoldSDK initialize$lambda$3(i<? extends InitializeBoldSDK> iVar) {
        return iVar.getValue();
    }

    public static /* synthetic */ r load$default(UnityAdsSDK unityAdsSDK, String str, UnityAdsLoadOptions unityAdsLoadOptions, IUnityAdsLoadListener iUnityAdsLoadListener, UnityBannerSize unityBannerSize, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            unityBannerSize = null;
        }
        return unityAdsSDK.load(str, unityAdsLoadOptions, iUnityAdsLoadListener, unityBannerSize);
    }

    private static final GetGameId load$lambda$4(i<? extends GetGameId> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context load$lambda$5(i<? extends Context> iVar) {
        return iVar.getValue();
    }

    private static final AlternativeFlowReader sendBannerDestroyed$lambda$20(i<? extends AlternativeFlowReader> iVar) {
        return iVar.getValue();
    }

    private static final SendDiagnosticEvent sendBannerDestroyed$lambda$21(i<? extends SendDiagnosticEvent> iVar) {
        return iVar.getValue();
    }

    @NotNull
    public final r finishOMIDSession(@NotNull String opportunityId) {
        r d10;
        s b10;
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        if (!finishOMIDSession$lambda$16(kotlin.c.a(lazyThreadSafetyMode, new Function0<AlternativeFlowReader>() { // from class: com.unity3d.services.UnityAdsSDK$finishOMIDSession$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.configuration.AlternativeFlowReader] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AlternativeFlowReader invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class));
            }
        })).invoke()) {
            b10 = JobKt__JobKt.b(null, 1, null);
            b10.complete();
            return b10;
        }
        i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<GetAdObject>() { // from class: com.unity3d.services.UnityAdsSDK$finishOMIDSession$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.domain.GetAdObject] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetAdObject invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(GetAdObject.class));
            }
        });
        i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<OmFinishSession>() { // from class: com.unity3d.services.UnityAdsSDK$finishOMIDSession$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.domain.om.OmFinishSession] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OmFinishSession invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(OmFinishSession.class));
            }
        });
        g0 g0Var = (g0) getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_OMID_SCOPE, Reflection.getOrCreateKotlinClass(g0.class));
        d10 = g.d(g0Var, null, null, new UnityAdsSDK$finishOMIDSession$2(opportunityId, g0Var, a10, a11, null), 3, null);
        return d10;
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return this.serviceProvider;
    }

    @Nullable
    public final String getToken() {
        Object b10;
        b10 = f.b(null, new UnityAdsSDK$getToken$1(this, null), 1, null);
        return (String) b10;
    }

    @NotNull
    public final synchronized r initialize(@Nullable String str, @NotNull String source) {
        r d10;
        s b10;
        Intrinsics.checkNotNullParameter(source, "source");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        if (!initialize$lambda$0(kotlin.c.a(lazyThreadSafetyMode, new Function0<ShouldAllowInitialization>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.ShouldAllowInitialization, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShouldAllowInitialization invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(ShouldAllowInitialization.class));
            }
        })).invoke(str)) {
            b10 = JobKt__JobKt.b(null, 1, null);
            return b10;
        }
        i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<AlternativeFlowReader>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.configuration.AlternativeFlowReader] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AlternativeFlowReader invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class));
            }
        });
        i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<InitializeSDK>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.services.core.domain.task.InitializeSDK] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final InitializeSDK invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(InitializeSDK.class));
            }
        });
        i a12 = kotlin.c.a(lazyThreadSafetyMode, new Function0<InitializeBoldSDK>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.InitializeBoldSDK, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final InitializeBoldSDK invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(InitializeBoldSDK.class));
            }
        });
        g0 g0Var = (g0) getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(g0.class));
        d10 = g.d(g0Var, null, null, new UnityAdsSDK$initialize$1(source, g0Var, a10, a12, a11, null), 3, null);
        return d10;
    }

    @NotNull
    public final r load(@Nullable String str, @NotNull UnityAdsLoadOptions loadOptions, @Nullable IUnityAdsLoadListener iUnityAdsLoadListener, @Nullable UnityBannerSize unityBannerSize) {
        r d10;
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        initialize(load$lambda$4(kotlin.c.a(lazyThreadSafetyMode, new Function0<GetGameId>() { // from class: com.unity3d.services.UnityAdsSDK$load$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.GetGameId, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetGameId invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(GetGameId.class));
            }
        })).invoke(), "load");
        g0 g0Var = (g0) getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_LOAD_SCOPE, Reflection.getOrCreateKotlinClass(g0.class));
        d10 = g.d(g0Var, null, null, new UnityAdsSDK$load$1(this, str, loadOptions, iUnityAdsLoadListener, unityBannerSize, g0Var, kotlin.c.a(lazyThreadSafetyMode, new Function0<Context>() { // from class: com.unity3d.services.UnityAdsSDK$load$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Context invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(Context.class));
            }
        }), null), 3, null);
        return d10;
    }

    public final void sendBannerDestroyed() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        if (!sendBannerDestroyed$lambda$20(kotlin.c.a(lazyThreadSafetyMode, new Function0<AlternativeFlowReader>() { // from class: com.unity3d.services.UnityAdsSDK$sendBannerDestroyed$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.configuration.AlternativeFlowReader] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AlternativeFlowReader invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class));
            }
        })).invoke()) {
            return;
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendBannerDestroyed$lambda$21(kotlin.c.a(lazyThreadSafetyMode, new Function0<SendDiagnosticEvent>() { // from class: com.unity3d.services.UnityAdsSDK$sendBannerDestroyed$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.SendDiagnosticEvent, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SendDiagnosticEvent invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class));
            }
        })), "native_banner_destroyed", null, null, null, null, null, 62, null);
    }

    @NotNull
    public final r show(@NotNull Activity activity, @Nullable String str, @Nullable UnityAdsShowOptions unityAdsShowOptions, @NotNull Listeners listener) {
        r d10;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        g0 g0Var = (g0) getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_SHOW_SCOPE, Reflection.getOrCreateKotlinClass(g0.class));
        d10 = g.d(g0Var, null, null, new UnityAdsSDK$show$1((LegacyShowUseCase) getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LegacyShowUseCase.class)), activity, str, unityAdsShowOptions, listener, g0Var, null), 3, null);
        return d10;
    }

    public UnityAdsSDK(@NotNull IServiceProvider serviceProvider) {
        Intrinsics.checkNotNullParameter(serviceProvider, "serviceProvider");
        this.serviceProvider = serviceProvider;
    }

    @NotNull
    public final r getToken(@Nullable IUnityAdsTokenListener iUnityAdsTokenListener) {
        return getToken(null, iUnityAdsTokenListener);
    }

    @NotNull
    public final r getToken(@Nullable TokenConfiguration tokenConfiguration, @Nullable IUnityAdsTokenListener iUnityAdsTokenListener) {
        r d10;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        initialize(getToken$lambda$6(kotlin.c.a(lazyThreadSafetyMode, new Function0<GetGameId>() { // from class: com.unity3d.services.UnityAdsSDK$getToken$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.GetGameId, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetGameId invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(GetGameId.class));
            }
        })).invoke(), "get_token");
        i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<TokenNumberProvider>() { // from class: com.unity3d.services.UnityAdsSDK$getToken$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.TokenNumberProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TokenNumberProvider invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(TokenNumberProvider.class));
            }
        });
        i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<GetAsyncHeaderBiddingToken>() { // from class: com.unity3d.services.UnityAdsSDK$getToken$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GetAsyncHeaderBiddingToken invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(GetAsyncHeaderBiddingToken.class));
            }
        });
        g0 g0Var = (g0) getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_GET_TOKEN_SCOPE, Reflection.getOrCreateKotlinClass(g0.class));
        d10 = g.d(g0Var, null, null, new UnityAdsSDK$getToken$2(tokenConfiguration, iUnityAdsTokenListener, g0Var, a11, a10, null), 3, null);
        return d10;
    }

    public /* synthetic */ UnityAdsSDK(IServiceProvider iServiceProvider, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? ServiceProvider.INSTANCE : iServiceProvider);
    }
}
