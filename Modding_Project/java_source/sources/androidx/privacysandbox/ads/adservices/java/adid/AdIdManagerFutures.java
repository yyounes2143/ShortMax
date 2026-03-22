package androidx.privacysandbox.ads.adservices.java.adid;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.adid.AdId;
import androidx.privacysandbox.ads.adservices.adid.AdIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.e;
import gt.g;
import gt.k0;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdIdManagerFutures.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class AdIdManagerFutures {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdIdManagerFutures.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api33Ext4JavaImpl extends AdIdManagerFutures {
        @NotNull
        private final AdIdManager mAdIdManager;

        public Api33Ext4JavaImpl(@NotNull AdIdManager mAdIdManager) {
            Intrinsics.checkNotNullParameter(mAdIdManager, "mAdIdManager");
            this.mAdIdManager = mAdIdManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adid.AdIdManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
        @DoNotInline
        @NotNull
        public e<AdId> getAdIdAsync() {
            k0 b10;
            b10 = g.b(i.a(q0.a()), null, null, new AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(this, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    /* compiled from: AdIdManagerFutures.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAdIdManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdIdManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/adid/AdIdManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AdIdManagerFutures from(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AdIdManager obtain = AdIdManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @Nullable
    public static final AdIdManagerFutures from(@NotNull Context context) {
        return Companion.from(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
    @NotNull
    public abstract e<AdId> getAdIdAsync();
}
