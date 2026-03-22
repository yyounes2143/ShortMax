package com.google.ads.mediation.bidmachine.common.error;

import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f16958a;

    public a(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.f16958a = tag;
    }

    private final void b(fr.a aVar, MediationAdLoadCallback mediationAdLoadCallback) {
        AdError a10 = b.a(aVar);
        Log.w(this.f16958a, a10.getMessage());
        mediationAdLoadCallback.onFailure(a10);
    }

    public final void a(MediationAdLoadCallback adLoadCallback) {
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        fr.a Expired = fr.a.f51918n;
        Intrinsics.checkNotNullExpressionValue(Expired, "Expired");
        b(Expired, adLoadCallback);
    }

    public final void a(fr.a bmError, MediationAdLoadCallback adLoadCallback) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        b(bmError, adLoadCallback);
    }

    public final void a(fr.a bmError, Function1 function1) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        AdError a10 = b.a(bmError);
        Log.w(this.f16958a, a10.getMessage());
        if (function1 != null) {
            function1.invoke(a10);
        }
    }
}
