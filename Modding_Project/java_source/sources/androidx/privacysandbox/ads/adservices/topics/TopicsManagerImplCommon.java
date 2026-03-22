package androidx.privacysandbox.ads.adservices.topics;

import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TopicsManagerImplCommon.kt */
@RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
@Metadata
@SuppressLint({"NewApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nTopicsManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,62:1\n314#2,11:63\n*S KotlinDebug\n*F\n+ 1 TopicsManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon\n*L\n46#1:63,11\n*E\n"})
/* loaded from: classes2.dex */
public class TopicsManagerImplCommon extends TopicsManager {
    @NotNull
    private final i.d mTopicsManager;

    public TopicsManagerImplCommon(@NotNull i.d mTopicsManager) {
        Intrinsics.checkNotNullParameter(mTopicsManager, "mTopicsManager");
        this.mTopicsManager = mTopicsManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @androidx.annotation.RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    @androidx.annotation.DoNotInline
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object getTopics$suspendImpl(androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon r4, androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest r5, rs.c<? super androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse> r6) {
        /*
            boolean r0 = r6 instanceof androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1 r0 = (androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1 r0 = new androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon$getTopics$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon r4 = (androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon) r4
            kotlin.f.b(r6)
            goto L47
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.f.b(r6)
            r4.convertRequest$ads_adservices_release(r5)
            r0.L$0 = r4
            r0.label = r3
            r5 = 0
            java.lang.Object r6 = r4.getTopicsAsyncInternal(r5, r0)
            if (r6 != r1) goto L47
            return r1
        L47:
            i.b r6 = (i.b) r6
            androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse r4 = r4.convertResponse$ads_adservices_release(r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon.getTopics$suspendImpl(androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon, androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    public final Object getTopicsAsyncInternal(i.a aVar, rs.c<? super i.b> cVar) {
        e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        this.mTopicsManager.b(aVar, new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            f.c(cVar);
        }
        return B;
    }

    @NotNull
    public i.a convertRequest$ads_adservices_release(@NotNull GetTopicsRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        GetTopicsRequestHelper.INSTANCE.convertRequestWithoutRecordObservation$ads_adservices_release(request);
        return null;
    }

    @NotNull
    public GetTopicsResponse convertResponse$ads_adservices_release(@NotNull i.b response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return GetTopicsResponseHelper.INSTANCE.convertResponse$ads_adservices_release(response);
    }

    @Override // androidx.privacysandbox.ads.adservices.topics.TopicsManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    @DoNotInline
    @Nullable
    public Object getTopics(@NotNull GetTopicsRequest getTopicsRequest, @NotNull rs.c<? super GetTopicsResponse> cVar) {
        return getTopics$suspendImpl(this, getTopicsRequest, cVar);
    }
}
