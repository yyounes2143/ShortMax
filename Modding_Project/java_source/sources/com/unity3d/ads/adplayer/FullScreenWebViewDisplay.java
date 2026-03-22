package com.unity3d.ads.adplayer;

import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebView;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.JSONObjectExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.domain.ISDKDispatchers;
import gt.g;
import gt.g0;
import java.util.Map;
import java.util.UUID;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: FullScreenWebViewDisplay.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFullScreenWebViewDisplay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenWebViewDisplay.kt\ncom/unity3d/ads/adplayer/FullScreenWebViewDisplay\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 6 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 7 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,190:1\n29#2,5:191\n29#2,5:196\n1#3:201\n314#4,9:202\n323#4,2:216\n20#5:211\n22#5:215\n50#6:212\n55#6:214\n106#7:213\n*S KotlinDebug\n*F\n+ 1 FullScreenWebViewDisplay.kt\ncom/unity3d/ads/adplayer/FullScreenWebViewDisplay\n*L\n40#1:191,5\n47#1:196,5\n98#1:202,9\n98#1:216,2\n107#1:211\n107#1:215\n107#1:212\n107#1:214\n107#1:213\n*E\n"})
/* loaded from: classes7.dex */
public final class FullScreenWebViewDisplay extends ComponentActivity implements IServiceComponent {
    @NotNull
    private final i adObject$delegate;
    @NotNull
    private final i dispatchers$delegate;
    @NotNull
    private String opportunityId = "";
    @NotNull
    private final i sendDiagnosticEvent$delegate;
    @Nullable
    private Map<String, ? extends Object> showOptions;

    public FullScreenWebViewDisplay() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.sendDiagnosticEvent$delegate = c.a(lazyThreadSafetyMode, new Function0<SendDiagnosticEvent>() { // from class: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$special$$inlined$inject$default$1
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
        this.adObject$delegate = c.b(new Function0<AdObject>() { // from class: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$adObject$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            private static final AdRepository invoke$lambda$0(i<? extends AdRepository> iVar) {
                return iVar.getValue();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final AdObject invoke() {
                Object d10;
                String str;
                final FullScreenWebViewDisplay fullScreenWebViewDisplay = FullScreenWebViewDisplay.this;
                i a10 = c.a(LazyThreadSafetyMode.NONE, new Function0<AdRepository>() { // from class: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$adObject$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.data.repository.AdRepository, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final AdRepository invoke() {
                        IServiceComponent iServiceComponent = IServiceComponent.this;
                        return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(AdRepository.class));
                    }
                });
                FullScreenWebViewDisplay fullScreenWebViewDisplay2 = FullScreenWebViewDisplay.this;
                try {
                    Result.a aVar = Result.f60901b;
                    AdRepository invoke$lambda$0 = invoke$lambda$0(a10);
                    str = fullScreenWebViewDisplay2.opportunityId;
                    UUID fromString = UUID.fromString(str);
                    Intrinsics.checkNotNullExpressionValue(fromString, "fromString(opportunityId)");
                    d10 = Result.d(invoke$lambda$0.getAd(ProtobufExtensionsKt.toByteString(fromString)));
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(f.a(th2));
                }
                if (Result.i(d10)) {
                    d10 = null;
                }
                return (AdObject) d10;
            }
        });
        this.dispatchers$delegate = c.a(lazyThreadSafetyMode, new Function0<ISDKDispatchers>() { // from class: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.services.core.domain.ISDKDispatchers] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ISDKDispatchers invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(ISDKDispatchers.class));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getAdObject() {
        return (AdObject) this.adObject$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ISDKDispatchers getDispatchers() {
        return (ISDKDispatchers) this.dispatchers$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SendDiagnosticEvent getSendDiagnosticEvent() {
        return (SendDiagnosticEvent) this.sendDiagnosticEvent$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object listenToAdPlayerEvents(rs.c<? super Unit> cVar) {
        e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        final kt.f Q = kotlinx.coroutines.flow.c.Q(AndroidFullscreenWebViewAdPlayer.Companion.getDisplayMessages(), new FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1(this, eVar, null));
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(new kt.b<DisplayMessage>() { // from class: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 FullScreenWebViewDisplay.kt\ncom/unity3d/ads/adplayer/FullScreenWebViewDisplay\n*L\n1#1,222:1\n21#2:223\n22#2:225\n107#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;
                final /* synthetic */ FullScreenWebViewDisplay this$0;

                /* compiled from: Emitters.kt */
                @Metadata
                @d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1$2", f = "FullScreenWebViewDisplay.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(rs.c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar, FullScreenWebViewDisplay fullScreenWebViewDisplay) {
                    this.$this_unsafeFlow = cVar;
                    this.this$0 = fullScreenWebViewDisplay;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r6, @org.jetbrains.annotations.NotNull rs.c r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r7)
                        goto L52
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.f.b(r7)
                        kt.c r7 = r5.$this_unsafeFlow
                        r2 = r6
                        com.unity3d.ads.adplayer.DisplayMessage r2 = (com.unity3d.ads.adplayer.DisplayMessage) r2
                        java.lang.String r2 = r2.getOpportunityId()
                        com.unity3d.ads.adplayer.FullScreenWebViewDisplay r4 = r5.this$0
                        java.lang.String r4 = com.unity3d.ads.adplayer.FullScreenWebViewDisplay.access$getOpportunityId$p(r4)
                        boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
                        if (r2 == 0) goto L52
                        r0.label = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L52
                        return r1
                    L52:
                        kotlin.Unit r6 = kotlin.Unit.f60915a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super DisplayMessage> cVar2, @NotNull rs.c cVar3) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar2, this), cVar3);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }, new FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3(this, null)), LifecycleOwnerKt.getLifecycleScope(this));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadWebView(WebView webView) {
        g.d(kotlinx.coroutines.i.a(getDispatchers().getMain()), null, null, new FullScreenWebViewDisplay$loadWebView$1(webView, this, null), 3, null);
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        AdPlayer adPlayer;
        g0 scope;
        Object d10;
        Map<String, ? extends Object> map;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("opportunityId");
        if (stringExtra == null) {
            stringExtra = "not_provided";
        }
        this.opportunityId = stringExtra;
        SendDiagnosticEvent.DefaultImpls.invoke$default(getSendDiagnosticEvent(), "native_show_ad_viewer_fullscreen_intent_creation_starts", null, p0.f(k.a("intentOpportunityId", this.opportunityId)), null, getAdObject(), null, 42, null);
        if (Intrinsics.areEqual(this.opportunityId, "not_provided")) {
            setResult(0);
            g.d(kotlinx.coroutines.i.a(getDispatchers().getDefault()), null, null, new FullScreenWebViewDisplay$onCreate$1(this, null), 3, null);
            SendDiagnosticEvent.DefaultImpls.invoke$default(getSendDiagnosticEvent(), "native_show_ad_viewer_fullscreen_intent_creation_fails", null, p0.f(k.a("reason_debug", "no_opportunity_id")), null, null, null, 58, null);
            finish();
            return;
        }
        AdObject adObject = getAdObject();
        if (adObject != null) {
            adPlayer = adObject.getAdPlayer();
        } else {
            adPlayer = null;
        }
        if (adPlayer != null && (scope = adPlayer.getScope()) != null && kotlinx.coroutines.i.h(scope)) {
            boolean hasExtra = getIntent().hasExtra(AdUnitActivity.EXTRA_ORIENTATION);
            Boolean valueOf = Boolean.valueOf(hasExtra);
            if (!hasExtra) {
                valueOf = null;
            }
            if (valueOf != null) {
                setRequestedOrientation(getIntent().getIntExtra(AdUnitActivity.EXTRA_ORIENTATION, -1));
            }
            String stringExtra2 = getIntent().getStringExtra("showOptions");
            if (stringExtra2 != null) {
                try {
                    Result.a aVar = Result.f60901b;
                    d10 = Result.d(JSONObjectExtensionsKt.toBuiltInMap(new JSONObject(stringExtra2)));
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(f.a(th2));
                }
                if (Result.i(d10)) {
                    d10 = null;
                }
                map = (Map) d10;
            } else {
                map = null;
            }
            this.showOptions = map;
            g.d(LifecycleOwnerKt.getLifecycleScope(this), null, null, new FullScreenWebViewDisplay$onCreate$6(this, null), 3, null);
            return;
        }
        setResult(0);
        g.d(kotlinx.coroutines.i.a(getDispatchers().getDefault()), null, null, new FullScreenWebViewDisplay$onCreate$2(this, null), 3, null);
        finish();
        SendDiagnosticEvent.DefaultImpls.invoke$default(getSendDiagnosticEvent(), "native_show_ad_viewer_fullscreen_intent_creation_fails", null, p0.f(k.a("reason_debug", "ad_player_scope_not_active")), null, null, null, 58, null);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        SendDiagnosticEvent.DefaultImpls.invoke$default(getSendDiagnosticEvent(), "native_show_ad_viewer_fullscreen_intent_destroyed", null, null, null, getAdObject(), null, 46, null);
        if (isFinishing()) {
            g.d(kotlinx.coroutines.i.a(getDispatchers().getDefault()), null, null, new FullScreenWebViewDisplay$onDestroy$1(this, null), 3, null);
            SendDiagnosticEvent.DefaultImpls.invoke$default(getSendDiagnosticEvent(), "native_show_ad_viewer_fullscreen_intent_finishing_on_destroy", null, null, null, getAdObject(), null, 46, null);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, @Nullable KeyEvent keyEvent) {
        if (i10 == 4) {
            return true;
        }
        return false;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        g.d(kotlinx.coroutines.i.a(getDispatchers().getDefault()), null, null, new FullScreenWebViewDisplay$onPause$1(this, null), 3, null);
        if (isFinishing()) {
            g.d(kotlinx.coroutines.i.a(getDispatchers().getDefault()), null, null, new FullScreenWebViewDisplay$onPause$2(this, null), 3, null);
            SendDiagnosticEvent.DefaultImpls.invoke$default(getSendDiagnosticEvent(), "native_show_ad_viewer_fullscreen_intent_finishing_on_pause", null, null, null, getAdObject(), null, 46, null);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        g.d(kotlinx.coroutines.i.a(getDispatchers().getDefault()), null, null, new FullScreenWebViewDisplay$onResume$1(this, null), 3, null);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        g.d(kotlinx.coroutines.i.a(getDispatchers().getDefault()), null, null, new FullScreenWebViewDisplay$onWindowFocusChanged$1(this, z10, null), 3, null);
    }
}
