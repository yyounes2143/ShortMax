package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.model.WebViewEvent;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.core.log.DeviceLog;
import gt.c0;
import gt.f0;
import gt.g0;
import gt.p;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.i;
import kt.d;
import kt.e;
import kt.f;
import kt.g;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import rs.c;
/* compiled from: CommonWebViewBridge.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCommonWebViewBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonWebViewBridge.kt\ncom/unity3d/ads/adplayer/CommonWebViewBridge\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n13579#2,2:166\n13579#2,2:173\n230#3,5:168\n230#3,5:176\n1#4:175\n*S KotlinDebug\n*F\n+ 1 CommonWebViewBridge.kt\ncom/unity3d/ads/adplayer/CommonWebViewBridge\n*L\n45#1:166,2\n63#1:173,2\n57#1:168,5\n90#1:176,5\n*E\n"})
/* loaded from: classes7.dex */
public final class CommonWebViewBridge implements WebViewBridge {
    @NotNull
    private final d<Invocation> _onInvocation;
    @NotNull
    private final e<Set<Pair<String, p<Object[]>>>> callbacks;
    @NotNull
    private final f<Invocation> onInvocation;
    @NotNull
    private final g0 scope;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final WebViewContainer webViewContainer;

    /* compiled from: CommonWebViewBridge.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$1", f = "CommonWebViewBridge.kt", l = {33}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        int label;

        AnonymousClass1(c<? super AnonymousClass1> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                WebViewContainer webViewContainer = CommonWebViewBridge.this.webViewContainer;
                CommonWebViewBridge commonWebViewBridge = CommonWebViewBridge.this;
                this.label = 1;
                if (webViewContainer.addJavascriptInterface(commonWebViewBridge, "webviewbridge", this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public CommonWebViewBridge(@NotNull c0 dispatcher, @NotNull WebViewContainer webViewContainer, @NotNull g0 adPlayerScope, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.webViewContainer = webViewContainer;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        g0 i10 = i.i(i.i(adPlayerScope, dispatcher), new f0("CommonWebViewBridge"));
        this.scope = i10;
        this.callbacks = o.a(y0.f());
        d<Invocation> b10 = g.b(0, 64, null, 5, null);
        this._onInvocation = b10;
        this.onInvocation = kotlinx.coroutines.flow.c.c(b10);
        gt.g.d(i10, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object execute(HandlerType handlerType, String str, c<? super Unit> cVar) {
        WebViewContainer webViewContainer = this.webViewContainer;
        Object evaluateJavascript = webViewContainer.evaluateJavascript("window.nativebridge." + handlerType.getJsPath() + '(' + str + ");", cVar);
        if (evaluateJavascript == kotlin.coroutines.intrinsics.a.f()) {
            return evaluateJavascript;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object respond(String str, String str2, Object[] objArr, c<? super Unit> cVar) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONArray.put(str2);
        jSONArray.put(new JSONArray(objArr));
        HandlerType handlerType = HandlerType.CALLBACK;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        sb2.append(jSONArray);
        sb2.append(']');
        Object execute = execute(handlerType, sb2.toString(), cVar);
        if (execute == kotlin.coroutines.intrinsics.a.f()) {
            return execute;
        }
        return Unit.f60915a;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    @NotNull
    public f<Invocation> getOnInvocation() {
        return this.onInvocation;
    }

    @NotNull
    public final g0 getScope() {
        return this.scope;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b5, code lost:
        if (r19.equals("OK") == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
        if (r19.equals("success") == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00bf, code lost:
        r1.i(r3);
     */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleCallback(@org.jetbrains.annotations.NotNull java.lang.String r18, @org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.NotNull java.lang.String r20) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            java.lang.String r4 = "callbackId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r4)
            java.lang.String r4 = "callbackStatus"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r4)
            java.lang.String r4 = "rawParameters"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r4)
            org.json.JSONArray r4 = new org.json.JSONArray
            r4.<init>(r3)
            java.lang.Object[] r3 = com.unity3d.ads.core.extensions.JSONArrayExtensionsKt.toTypedArray(r4)
            kt.e<java.util.Set<kotlin.Pair<java.lang.String, gt.p<java.lang.Object[]>>>> r4 = r0.callbacks
            java.lang.Object r4 = r4.getValue()
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.util.Iterator r4 = r4.iterator()
        L2c:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L46
            java.lang.Object r5 = r4.next()
            r6 = r5
            kotlin.Pair r6 = (kotlin.Pair) r6
            java.lang.Object r6 = r6.b()
            java.lang.String r6 = (java.lang.String) r6
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r1)
            if (r6 == 0) goto L2c
            goto L47
        L46:
            r5 = 0
        L47:
            kotlin.Pair r5 = (kotlin.Pair) r5
            if (r5 != 0) goto L4c
            return
        L4c:
            java.lang.Object r1 = r5.d()
            gt.p r1 = (gt.p) r1
            java.lang.String r4 = "success"
            java.lang.String r6 = "error"
            java.lang.String[] r7 = new java.lang.String[]{r4, r6}
            java.util.Set r7 = kotlin.collections.y0.j(r7)
            boolean r7 = r7.contains(r2)
            if (r7 == 0) goto L74
            com.unity3d.ads.core.domain.SendDiagnosticEvent r8 = r0.sendDiagnosticEvent
            r15 = 62
            r16 = 0
            java.lang.String r9 = "old_callback_status"
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r8, r9, r10, r11, r12, r13, r14, r15, r16)
        L74:
            int r7 = r19.hashCode()
            r8 = -1867169789(0xffffffff90b54003, float:-7.149054E-29)
            if (r7 == r8) goto Lb8
            r4 = 2524(0x9dc, float:3.537E-42)
            if (r7 == r4) goto Laf
            r4 = 66247144(0x3f2d9e8, float:1.42735105E-36)
            if (r7 == r4) goto L93
            r4 = 96784904(0x5c4d208, float:1.8508905E-35)
            if (r7 == r4) goto L8c
            goto Lc2
        L8c:
            boolean r2 = r2.equals(r6)
            if (r2 != 0) goto L9c
            goto Lc2
        L93:
            java.lang.String r4 = "ERROR"
            boolean r2 = r2.equals(r4)
            if (r2 != 0) goto L9c
            goto Lc2
        L9c:
            java.lang.Exception r2 = new java.lang.Exception
            r4 = 0
            r3 = r3[r4]
            java.lang.String r4 = "null cannot be cast to non-null type kotlin.String"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r4)
            java.lang.String r3 = (java.lang.String) r3
            r2.<init>(r3)
            r1.d(r2)
            goto Lc2
        Laf:
            java.lang.String r4 = "OK"
            boolean r2 = r2.equals(r4)
            if (r2 != 0) goto Lbf
            goto Lc2
        Lb8:
            boolean r2 = r2.equals(r4)
            if (r2 != 0) goto Lbf
            goto Lc2
        Lbf:
            r1.i(r3)
        Lc2:
            kt.e<java.util.Set<kotlin.Pair<java.lang.String, gt.p<java.lang.Object[]>>>> r1 = r0.callbacks
        Lc4:
            java.lang.Object r2 = r1.getValue()
            r3 = r2
            java.util.Set r3 = (java.util.Set) r3
            java.util.Set r3 = kotlin.collections.y0.l(r3, r5)
            boolean r2 = r1.b(r2, r3)
            if (r2 == 0) goto Lc4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.handleCallback(java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void handleInvocation(@NotNull String message) {
        JSONArray jSONArray;
        String str;
        String str2;
        JSONArray jSONArray2;
        String str3;
        Intrinsics.checkNotNullParameter(message, "message");
        try {
            try {
                JSONArray jSONArray3 = new JSONArray(message);
                int length = jSONArray3.length();
                for (int i10 = 0; i10 < length; i10++) {
                    Object obj = jSONArray3.get(i10);
                    if (obj instanceof JSONArray) {
                        jSONArray = (JSONArray) obj;
                    } else {
                        jSONArray = null;
                    }
                    if (jSONArray != null) {
                        if (jSONArray.length() == 4) {
                            Object obj2 = jSONArray.get(0);
                            if (obj2 instanceof String) {
                                str = (String) obj2;
                            } else {
                                str = null;
                            }
                            if (str != null) {
                                Object obj3 = jSONArray.get(1);
                                if (obj3 instanceof String) {
                                    str2 = (String) obj3;
                                } else {
                                    str2 = null;
                                }
                                if (str2 != null) {
                                    Object obj4 = jSONArray.get(2);
                                    if (obj4 instanceof JSONArray) {
                                        jSONArray2 = (JSONArray) obj4;
                                    } else {
                                        jSONArray2 = null;
                                    }
                                    if (jSONArray2 != null) {
                                        Object obj5 = jSONArray.get(3);
                                        if (obj5 instanceof String) {
                                            str3 = (String) obj5;
                                        } else {
                                            str3 = null;
                                        }
                                        if (str3 != null) {
                                            String str4 = str + '.' + str2;
                                            DeviceLog.debug("Unity Ads WebView calling for: " + str4 + '(' + jSONArray2 + ')');
                                            gt.g.d(this.scope, null, null, new CommonWebViewBridge$handleInvocation$7(str4, jSONArray2, this, str3, null), 3, null);
                                        } else {
                                            throw new IllegalArgumentException(("Invalid callback id passed to CommonWebViewBridge: " + message).toString());
                                        }
                                    } else {
                                        throw new IllegalArgumentException(("Invalid parameters passed to CommonWebViewBridge: " + message).toString());
                                    }
                                } else {
                                    throw new IllegalArgumentException(("Invalid method name passed to CommonWebViewBridge: " + message).toString());
                                }
                            } else {
                                throw new IllegalArgumentException(("Invalid class name passed to CommonWebViewBridge: " + message).toString());
                            }
                        } else {
                            throw new IllegalArgumentException(("Invocation must have 4 elements: " + jSONArray).toString());
                        }
                    } else {
                        throw new IllegalArgumentException(("Invalid invocation passed to CommonWebViewBridge: " + message).toString());
                    }
                }
            } catch (JSONException e10) {
                throw new IllegalArgumentException("Invalid JSON array passed to CommonWebViewBridge: " + message, e10);
            }
        } catch (Exception e11) {
            DeviceLog.error("Error handling invocation from webview (" + message + ')');
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            String message2 = e11.getMessage();
            if (message2 == null) {
                message2 = e11.getClass().getSimpleName();
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_webview_invocation_error", null, p0.m(k.a("reason_debug", message2), k.a("webview_invocation", message)), null, null, null, 58, null);
            throw new IllegalArgumentException("Invalid message passed to CommonWebViewBridge: " + message, e11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009f A[PHI: r14 
      PHI: (r14v4 java.lang.Object) = (r14v3 java.lang.Object), (r14v1 java.lang.Object) binds: [B:27:0x009c, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object request(@org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.Object[] r13, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Object[]> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.adplayer.CommonWebViewBridge$request$1
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.adplayer.CommonWebViewBridge$request$1 r0 = (com.unity3d.ads.adplayer.CommonWebViewBridge$request$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.CommonWebViewBridge$request$1 r0 = new com.unity3d.ads.adplayer.CommonWebViewBridge$request$1
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L35
            if (r2 != r3) goto L2d
            kotlin.f.b(r14)
            goto L9f
        L2d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L35:
            java.lang.Object r11 = r0.L$0
            gt.p r11 = (gt.p) r11
            kotlin.f.b(r14)
            goto L94
        L3d:
            kotlin.f.b(r14)
            gt.p r14 = gt.r.b(r4, r5, r4)
            int r2 = r14.hashCode()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            kt.e<java.util.Set<kotlin.Pair<java.lang.String, gt.p<java.lang.Object[]>>>> r6 = r10.callbacks
        L4e:
            java.lang.Object r7 = r6.getValue()
            r8 = r7
            java.util.Set r8 = (java.util.Set) r8
            kotlin.Pair r9 = ms.k.a(r2, r14)
            java.util.Set r8 = kotlin.collections.y0.n(r8, r9)
            boolean r7 = r6.b(r7, r8)
            if (r7 == 0) goto L4e
            org.json.JSONArray r6 = new org.json.JSONArray
            r6.<init>()
            r6.put(r11)
            r6.put(r12)
            r6.put(r2)
            int r11 = r13.length
            r12 = 0
        L73:
            if (r12 >= r11) goto L7d
            r2 = r13[r12]
            r6.put(r2)
            int r12 = r12 + 1
            goto L73
        L7d:
            com.unity3d.ads.adplayer.HandlerType r11 = com.unity3d.ads.adplayer.HandlerType.INVOCATION
            java.lang.String r12 = r6.toString()
            java.lang.String r13 = "arguments.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r13)
            r0.L$0 = r14
            r0.label = r5
            java.lang.Object r11 = r10.execute(r11, r12, r0)
            if (r11 != r1) goto L93
            return r1
        L93:
            r11 = r14
        L94:
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r14 = r11.await(r0)
            if (r14 != r1) goto L9f
            return r1
        L9f:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.request(java.lang.String, java.lang.String, java.lang.Object[], rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    @Nullable
    public Object sendEvent(@NotNull WebViewEvent webViewEvent, @NotNull c<? super Unit> cVar) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(webViewEvent.getCategory());
        jSONArray.put(webViewEvent.getName());
        for (Object obj : webViewEvent.getParameters()) {
            jSONArray.put(obj);
        }
        HandlerType handlerType = HandlerType.EVENT;
        String jSONArray2 = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(jSONArray2, "arguments.toString()");
        Object execute = execute(handlerType, jSONArray2, cVar);
        if (execute == kotlin.coroutines.intrinsics.a.f()) {
            return execute;
        }
        return Unit.f60915a;
    }
}
