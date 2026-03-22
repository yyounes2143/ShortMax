package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHandleGatewayAdResponse.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3", f = "AndroidHandleGatewayAdResponse.kt", l = {176}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidHandleGatewayAdResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n79#2,5:246\n113#2,6:251\n119#2:258\n1#3:257\n*S KotlinDebug\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse$invoke$3\n*L\n175#1:246,5\n175#1:251,6\n175#1:258\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHandleGatewayAdResponse$invoke$3 extends SuspendLambda implements Function1<c<? super Unit>, Object> {
    final /* synthetic */ AdObject $tmpAdObject;
    final /* synthetic */ String $webViewUrl;
    final /* synthetic */ AndroidWebViewContainer $webviewContainer;
    long J$0;
    int label;
    final /* synthetic */ AndroidHandleGatewayAdResponse this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayAdResponse$invoke$3(AndroidHandleGatewayAdResponse androidHandleGatewayAdResponse, AndroidWebViewContainer androidWebViewContainer, String str, AdObject adObject, c<? super AndroidHandleGatewayAdResponse$invoke$3> cVar) {
        super(1, cVar);
        this.this$0 = androidHandleGatewayAdResponse;
        this.$webviewContainer = androidWebViewContainer;
        this.$webViewUrl = str;
        this.$tmpAdObject = adObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new AndroidHandleGatewayAdResponse$invoke$3(this.this$0, this.$webviewContainer, this.$webViewUrl, this.$tmpAdObject, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
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
            r2 = 1
            if (r1 == 0) goto L1b
            if (r1 != r2) goto L13
            long r0 = r12.J$0
            kotlin.f.b(r13)     // Catch: java.lang.Throwable -> L11
            goto L36
        L11:
            r13 = move-exception
            goto L3f
        L13:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L1b:
            kotlin.f.b(r13)
            com.unity3d.ads.adplayer.AndroidWebViewContainer r13 = r12.$webviewContainer
            java.lang.String r1 = r12.$webViewUrl
            kotlin.time.h r3 = kotlin.time.h.f61257a
            long r3 = r3.b()
            kotlin.Result$a r5 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L3d
            r12.J$0 = r3     // Catch: java.lang.Throwable -> L3d
            r12.label = r2     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r13 = r13.loadUrl(r1, r12)     // Catch: java.lang.Throwable -> L3d
            if (r13 != r0) goto L35
            return r0
        L35:
            r0 = r3
        L36:
            kotlin.Unit r13 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L11
            java.lang.Object r13 = kotlin.Result.d(r13)     // Catch: java.lang.Throwable -> L11
            goto L49
        L3d:
            r13 = move-exception
            r0 = r3
        L3f:
            kotlin.Result$a r2 = kotlin.Result.f60901b
            java.lang.Object r13 = kotlin.f.a(r13)
            java.lang.Object r13 = kotlin.Result.d(r13)
        L49:
            kotlin.Result r13 = kotlin.Result.b(r13)
            et.c r2 = new et.c
            long r0 = kotlin.time.h.a.f(r0)
            r3 = 0
            r2.<init>(r13, r0, r3)
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse r13 = r12.this$0
            com.unity3d.ads.core.data.model.AdObject r8 = r12.$tmpAdObject
            java.lang.Object r0 = r2.a()
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            long r1 = r2.b()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r3 = com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.access$getSendDiagnosticEvent$p(r13)
            boolean r13 = kotlin.Result.j(r0)
            if (r13 == 0) goto L77
            java.lang.String r13 = "native_load_file_task_success_time"
        L75:
            r4 = r13
            goto L7a
        L77:
            java.lang.String r13 = "native_load_file_task_failure_time"
            goto L75
        L7a:
            kotlin.time.DurationUnit r13 = kotlin.time.DurationUnit.MILLISECONDS
            double r1 = kotlin.time.b.H(r1, r13)
            java.lang.Double r5 = kotlin.coroutines.jvm.internal.a.b(r1)
            r10 = 44
            r11 = 0
            r6 = 0
            r7 = 0
            r9 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            kotlin.f.b(r0)
            kotlin.Unit r13 = kotlin.Unit.f60915a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$invoke$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function1
    @Nullable
    public final Object invoke(@Nullable c<? super Unit> cVar) {
        return ((AndroidHandleGatewayAdResponse$invoke$3) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
