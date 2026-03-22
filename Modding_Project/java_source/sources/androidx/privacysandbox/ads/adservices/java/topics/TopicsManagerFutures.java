package androidx.privacysandbox.ads.adservices.java.topics;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.TopicsManager;
import com.google.common.util.concurrent.e;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TopicsManagerFutures.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class TopicsManagerFutures {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TopicsManagerFutures.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class CommonApiJavaImpl extends TopicsManagerFutures {
        @NotNull
        private final TopicsManager mTopicsManager;

        public CommonApiJavaImpl(@NotNull TopicsManager mTopicsManager) {
            Intrinsics.checkNotNullParameter(mTopicsManager, "mTopicsManager");
            this.mTopicsManager = mTopicsManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
        @DoNotInline
        @NotNull
        public e<GetTopicsResponse> getTopicsAsync(@NotNull GetTopicsRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.c()), null, null, new TopicsManagerFutures$CommonApiJavaImpl$getTopicsAsync$1(this, request, null), 3, null), null, 1, null);
        }
    }

    /* compiled from: TopicsManagerFutures.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nTopicsManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final TopicsManagerFutures from(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            TopicsManager obtain = TopicsManager.Companion.obtain(context);
            if (obtain != null) {
                return new CommonApiJavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @Nullable
    public static final TopicsManagerFutures from(@NotNull Context context) {
        return Companion.from(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    @NotNull
    public abstract e<GetTopicsResponse> getTopicsAsync(@NotNull GetTopicsRequest getTopicsRequest);
}
