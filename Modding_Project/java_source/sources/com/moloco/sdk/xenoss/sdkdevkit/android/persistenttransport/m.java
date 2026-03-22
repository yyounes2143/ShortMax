package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import com.moloco.sdk.internal.MolocoLogger;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nPersistentHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentHttpRequest.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/PersistentHttpRequestImpl\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n+ 3 Data.kt\nandroidx/work/DataKt\n*L\n1#1,128:1\n59#1:129\n61#1:131\n60#1,10:132\n59#1:147\n61#1:149\n60#1,10:150\n104#2:130\n104#2:148\n104#2:160\n31#3,5:142\n*S KotlinDebug\n*F\n+ 1 PersistentHttpRequest.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/PersistentHttpRequestImpl\n*L\n36#1:129\n36#1:131\n36#1:132,10\n53#1:147\n53#1:149\n53#1:150,10\n36#1:130\n53#1:148\n59#1:160\n46#1:142,5\n*E\n"})
/* loaded from: classes6.dex */
public final class m implements l {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f36663c = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final o f36664b;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public m(@NotNull o worker) {
        Intrinsics.checkNotNullParameter(worker, "worker");
        this.f36664b = worker;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f
    public void a(@NotNull String url) {
        Data a10;
        Intrinsics.checkNotNullParameter(url, "url");
        if (e.d(url) && (a10 = n.a(url)) != null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.info$default(molocoLogger, "PersistentHttpRequest", "Enqueuing request to " + url, null, false, 12, null);
            this.f36664b.a(new OneTimeWorkRequest.Builder(UrlGetRequestWorker.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).setBackoffCriteria(BackoffPolicy.LINEAR, 10000L, TimeUnit.MILLISECONDS).setInputData(a10).build());
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f
    public void a(@NotNull String url, @NotNull byte[] body, @NotNull io.ktor.http.a contentType, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        if (e.d(url)) {
            try {
                Pair[] pairArr = {ms.k.a("url", url), ms.k.a("body", body), ms.k.a("contentType", contentType.toString()), ms.k.a("contentEncoding", str)};
                Data.Builder builder = new Data.Builder();
                for (int i10 = 0; i10 < 4; i10++) {
                    Pair pair = pairArr[i10];
                    builder.put((String) pair.e(), pair.f());
                }
                Data build = builder.build();
                Intrinsics.checkNotNullExpressionValue(build, "dataBuilder.build()");
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "PersistentHttpRequest", "Enqueuing request to " + url, null, false, 12, null);
                this.f36664b.a(new OneTimeWorkRequest.Builder(UrlPostRequestWorker.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).setBackoffCriteria(BackoffPolicy.LINEAR, 10000L, TimeUnit.MILLISECONDS).setInputData(build).build());
            } catch (Exception e10) {
                MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                MolocoLogger.error$default(molocoLogger2, "PersistentHttpRequest", "Failed to enqueue persistent request for url: " + url, e10, false, 8, null);
            }
        }
    }
}
