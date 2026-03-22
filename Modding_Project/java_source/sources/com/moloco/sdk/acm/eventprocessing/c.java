package com.moloco.sdk.acm.eventprocessing;

import android.content.Context;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import java.util.concurrent.TimeUnit;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nDBWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBWorkRequestImpl\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,134:1\n104#2:135\n*S KotlinDebug\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBWorkRequestImpl\n*L\n69#1:135\n*E\n"})
/* loaded from: classes6.dex */
public final class c implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.acm.h f31883a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final Context f31884b;

    public c(@NotNull com.moloco.sdk.acm.h config, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(context, "context");
        this.f31883a = config;
        this.f31884b = context;
    }

    @Override // com.moloco.sdk.acm.eventprocessing.b
    public void a() {
        Constraints build = new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
        Data a10 = d.a(p0.m(ms.k.a("url", this.f31883a.d()), ms.k.a("AppKey", this.f31883a.c().get("AppKey")), ms.k.a("AppBundle", this.f31883a.c().get("AppBundle")), ms.k.a("AppVersion", this.f31883a.c().get("AppVersion")), ms.k.a("OS", this.f31883a.c().get("OS")), ms.k.a("osv", this.f31883a.c().get("osv")), ms.k.a("SdkVersion", this.f31883a.c().get("SdkVersion")), ms.k.a("Mediator", this.f31883a.c().get("Mediator"))));
        if (a10 == null) {
            return;
        }
        WorkManager.getInstance(this.f31884b).enqueue(new OneTimeWorkRequest.Builder(DBRequestWorker.class).setConstraints(build).setInputData(a10).setBackoffCriteria(BackoffPolicy.EXPONENTIAL, 10000L, TimeUnit.MILLISECONDS).build());
    }
}
