package androidx.privacysandbox.ads.adservices.java.customaudience;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager;
import androidx.privacysandbox.ads.adservices.customaudience.FetchAndJoinCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.customaudience.JoinCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.customaudience.LeaveCustomAudienceRequest;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.e;
import gt.g;
import gt.k0;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomAudienceManagerFutures.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class CustomAudienceManagerFutures {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CustomAudienceManagerFutures.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api33Ext4JavaImpl extends CustomAudienceManagerFutures {
        @Nullable
        private final CustomAudienceManager mCustomAudienceManager;

        public Api33Ext4JavaImpl(@Nullable CustomAudienceManager customAudienceManager) {
            this.mCustomAudienceManager = customAudienceManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.customaudience.CustomAudienceManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<Unit> fetchAndJoinCustomAudienceAsync(@NotNull FetchAndJoinCustomAudienceRequest request) {
            k0 b10;
            Intrinsics.checkNotNullParameter(request, "request");
            b10 = g.b(i.a(q0.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$fetchAndJoinCustomAudienceAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.customaudience.CustomAudienceManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<Unit> joinCustomAudienceAsync(@NotNull JoinCustomAudienceRequest request) {
            k0 b10;
            Intrinsics.checkNotNullParameter(request, "request");
            b10 = g.b(i.a(q0.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$joinCustomAudienceAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.customaudience.CustomAudienceManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<Unit> leaveCustomAudienceAsync(@NotNull LeaveCustomAudienceRequest request) {
            k0 b10;
            Intrinsics.checkNotNullParameter(request, "request");
            b10 = g.b(i.a(q0.a()), null, null, new CustomAudienceManagerFutures$Api33Ext4JavaImpl$leaveCustomAudienceAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    /* compiled from: CustomAudienceManagerFutures.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCustomAudienceManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomAudienceManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/customaudience/CustomAudienceManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,184:1\n1#2:185\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final CustomAudienceManagerFutures from(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            CustomAudienceManager obtain = CustomAudienceManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @Nullable
    public static final CustomAudienceManagerFutures from(@NotNull Context context) {
        return Companion.from(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @NotNull
    public abstract e<Unit> fetchAndJoinCustomAudienceAsync(@NotNull FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @NotNull
    public abstract e<Unit> joinCustomAudienceAsync(@NotNull JoinCustomAudienceRequest joinCustomAudienceRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @NotNull
    public abstract e<Unit> leaveCustomAudienceAsync(@NotNull LeaveCustomAudienceRequest leaveCustomAudienceRequest);
}
