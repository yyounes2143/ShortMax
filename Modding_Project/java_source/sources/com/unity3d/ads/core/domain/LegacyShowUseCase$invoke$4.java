package com.unity3d.ads.core.domain;

import at.q;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.data.model.ShowEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kt.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LegacyShowUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LegacyShowUseCase$invoke$4<T> implements c {
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ Listeners $listeners;
    final /* synthetic */ String $placement;
    final /* synthetic */ q<String, UnityAds.UnityAdsShowError, String, Integer, String, rs.c<? super Unit>, Object> $reportShowError;
    final /* synthetic */ long $startTime;
    final /* synthetic */ LegacyShowUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public LegacyShowUseCase$invoke$4(LegacyShowUseCase legacyShowUseCase, long j10, String str, Listeners listeners, AdObject adObject, q<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super rs.c<? super Unit>, ? extends Object> qVar) {
        this.this$0 = legacyShowUseCase;
        this.$startTime = j10;
        this.$placement = str;
        this.$listeners = listeners;
        this.$adObject = adObject;
        this.$reportShowError = qVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010f A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(@org.jetbrains.annotations.NotNull com.unity3d.ads.core.data.model.ShowEvent r19, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$4.emit(com.unity3d.ads.core.data.model.ShowEvent, rs.c):java.lang.Object");
    }

    @Override // kt.c
    public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
        return emit((ShowEvent) obj, (rs.c<? super Unit>) cVar);
    }
}
