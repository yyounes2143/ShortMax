package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import i.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetTopicsRequestHelper.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public final class GetTopicsRequestHelper {
    @NotNull
    public static final GetTopicsRequestHelper INSTANCE = new GetTopicsRequestHelper();

    private GetTopicsRequestHelper() {
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 5), @RequiresExtension(extension = 31, version = 9)})
    @NotNull
    public final i.a convertRequestWithRecordObservation$ads_adservices_release(@NotNull GetTopicsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        new a.C0772a().b(request.getAdsSdkName()).c(request.shouldRecordObservation()).a();
        Intrinsics.checkNotNullExpressionValue(null, "Builder()\n            .s…ion)\n            .build()");
        return null;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @NotNull
    public final i.a convertRequestWithoutRecordObservation$ads_adservices_release(@NotNull GetTopicsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        new a.C0772a().b(request.getAdsSdkName()).a();
        Intrinsics.checkNotNullExpressionValue(null, "Builder()\n            .s…ame)\n            .build()");
        return null;
    }
}
