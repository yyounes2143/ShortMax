package com.moloco.sdk.internal.services;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.moloco.sdk.internal.services.o;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nAdDataService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdDataService.kt\ncom/moloco/sdk/internal/services/AdDataServiceImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"})
/* loaded from: classes6.dex */
public final class q implements p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33510a;

    public q(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33510a = context;
    }

    @Override // com.moloco.sdk.internal.services.p
    @NotNull
    public o a() {
        Object d10;
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(AdvertisingIdClient.getAdvertisingIdInfo(this.f33510a));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        o oVar = null;
        if (Result.i(d10)) {
            d10 = null;
        }
        AdvertisingIdClient.Info info = (AdvertisingIdClient.Info) d10;
        if (info != null) {
            if (info.isLimitAdTrackingEnabled()) {
                oVar = o.b.f33509a;
            } else {
                String id2 = info.getId();
                if (id2 != null) {
                    oVar = new o.a(id2);
                }
            }
            if (oVar != null) {
                return oVar;
            }
        }
        return o.b.f33509a;
    }
}
