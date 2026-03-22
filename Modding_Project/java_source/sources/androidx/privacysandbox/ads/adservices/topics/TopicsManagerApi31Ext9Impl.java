package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TopicsManagerApi31Ext9Impl.kt */
@Metadata
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@RequiresExtension(extension = 31, version = 9)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public final class TopicsManagerApi31Ext9Impl extends TopicsManagerImplCommon {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TopicsManagerApi31Ext9Impl(@org.jetbrains.annotations.NotNull android.content.Context r2) {
        /*
            r1 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            i.d r2 = i.d.a(r2)
            java.lang.String r0 = "get(context)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.topics.TopicsManagerApi31Ext9Impl.<init>(android.content.Context):void");
    }

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon
    @NotNull
    public i.a convertRequest$ads_adservices_release(@NotNull GetTopicsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        GetTopicsRequestHelper.INSTANCE.convertRequestWithRecordObservation$ads_adservices_release(request);
        return null;
    }
}
