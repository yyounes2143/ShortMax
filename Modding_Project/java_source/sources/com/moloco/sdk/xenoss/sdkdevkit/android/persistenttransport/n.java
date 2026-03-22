package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import androidx.annotation.VisibleForTesting;
import androidx.work.Data;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nPersistentHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentHttpRequest.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/PersistentHttpRequestKt\n+ 2 Data.kt\nandroidx/work/DataKt\n*L\n1#1,128:1\n31#2,5:129\n*S KotlinDebug\n*F\n+ 1 PersistentHttpRequest.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/PersistentHttpRequestKt\n*L\n122#1:129,5\n*E\n"})
/* loaded from: classes6.dex */
public final class n {
    @VisibleForTesting(otherwise = 2)
    @Nullable
    public static final Data a(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            Data.Builder builder = new Data.Builder();
            Pair pair = new Pair[]{ms.k.a("url", str)}[0];
            builder.put((String) pair.e(), pair.f());
            Data build = builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "dataBuilder.build()");
            return build;
        } catch (Exception e10) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.error$default(molocoLogger, "PersistentHttpRequest", e10.getMessage() + ". Url: " + str, null, false, 12, null);
            return null;
        }
    }
}
