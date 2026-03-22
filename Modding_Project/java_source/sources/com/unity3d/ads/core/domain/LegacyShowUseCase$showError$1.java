package com.unity3d.ads.core.domain;

import at.q;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.core.log.DeviceLog;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.time.TimeMark;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyShowUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1", f = "LegacyShowUseCase.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LegacyShowUseCase$showError$1 extends SuspendLambda implements q<String, UnityAds.UnityAdsShowError, String, Integer, String, c<? super Unit>, Object> {
    final /* synthetic */ Listeners $listeners;
    final /* synthetic */ String $opportunityId;
    final /* synthetic */ String $placement;
    final /* synthetic */ TimeMark $startTime;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    /* synthetic */ Object L$3;
    /* synthetic */ Object L$4;
    int label;
    final /* synthetic */ LegacyShowUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyShowUseCase$showError$1(String str, LegacyShowUseCase legacyShowUseCase, String str2, TimeMark timeMark, Listeners listeners, c<? super LegacyShowUseCase$showError$1> cVar) {
        super(6, cVar);
        this.$placement = str;
        this.this$0 = legacyShowUseCase;
        this.$opportunityId = str2;
        this.$startTime = timeMark;
        this.$listeners = listeners;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AdObject adObject;
        SendDiagnosticEvent sendDiagnosticEvent;
        Map tags;
        SafeCallbackInvoke safeCallbackInvoke;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            String str = (String) this.L$0;
            final UnityAds.UnityAdsShowError unityAdsShowError = (UnityAds.UnityAdsShowError) this.L$1;
            final String str2 = (String) this.L$2;
            Integer num = (Integer) this.L$3;
            String str3 = (String) this.L$4;
            DeviceLog.debug("Unity Ads Show Failed for placement " + this.$placement);
            adObject = this.this$0.adObject;
            if (adObject == null) {
                adObject = this.this$0.getTmpAdObject(this.$opportunityId);
            }
            sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
            Double b10 = kotlin.coroutines.jvm.internal.a.b(TimeExtensionsKt.elapsedMillis(this.$startTime));
            tags = this.this$0.getTags(str, num, str3);
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_failure_time", b10, tags, null, adObject, null, 40, null);
            safeCallbackInvoke = this.this$0.safeCallbackInvoke;
            final Listeners listeners = this.$listeners;
            final String str4 = this.$placement;
            safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1.1
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
                    Listeners.this.onError(str4, unityAdsShowError, str2);
                }
            });
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.q
    @Nullable
    public final Object invoke(@NotNull String str, @NotNull UnityAds.UnityAdsShowError unityAdsShowError, @NotNull String str2, @Nullable Integer num, @Nullable String str3, @Nullable c<? super Unit> cVar) {
        LegacyShowUseCase$showError$1 legacyShowUseCase$showError$1 = new LegacyShowUseCase$showError$1(this.$placement, this.this$0, this.$opportunityId, this.$startTime, this.$listeners, cVar);
        legacyShowUseCase$showError$1.L$0 = str;
        legacyShowUseCase$showError$1.L$1 = unityAdsShowError;
        legacyShowUseCase$showError$1.L$2 = str2;
        legacyShowUseCase$showError$1.L$3 = num;
        legacyShowUseCase$showError$1.L$4 = str3;
        return legacyShowUseCase$showError$1.invokeSuspend(Unit.f60915a);
    }
}
