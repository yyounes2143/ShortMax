package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TopicsManagerApi33Ext5Impl.kt */
@Metadata
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 5)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public final class TopicsManagerApi33Ext5Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TopicsManagerApi33Ext5Impl(@org.jetbrains.annotations.NotNull android.content.Context r2) {
        /*
            r1 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.Class<i.d> r0 = i.d.class
            java.lang.Object r2 = r2.getSystemService(r0)
            java.lang.String r0 = "context.getSystemService…opicsManager::class.java)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            i.d r2 = (i.d) r2
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.topics.TopicsManagerApi33Ext5Impl.<init>(android.content.Context):void");
    }

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon
    @NotNull
    public i.a convertRequest$ads_adservices_release(@NotNull GetTopicsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        GetTopicsRequestHelper.INSTANCE.convertRequestWithRecordObservation$ads_adservices_release(request);
        return null;
    }
}
