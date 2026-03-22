package androidx.privacysandbox.ads.adservices.java.appsetid;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetId;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager;
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
/* compiled from: AppSetIdManagerFutures.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class AppSetIdManagerFutures {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AppSetIdManagerFutures.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api33Ext4JavaImpl extends AppSetIdManagerFutures {
        @NotNull
        private final AppSetIdManager mAppSetIdManager;

        public Api33Ext4JavaImpl(@NotNull AppSetIdManager mAppSetIdManager) {
            Intrinsics.checkNotNullParameter(mAppSetIdManager, "mAppSetIdManager");
            this.mAppSetIdManager = mAppSetIdManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.appsetid.AppSetIdManagerFutures
        @DoNotInline
        @NotNull
        public e<AppSetId> getAppSetIdAsync() {
            k0 b10;
            b10 = g.b(i.a(q0.a()), null, null, new AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1(this, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    /* compiled from: AppSetIdManagerFutures.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAppSetIdManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSetIdManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/appsetid/AppSetIdManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AppSetIdManagerFutures from(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AppSetIdManager obtain = AppSetIdManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @Nullable
    public static final AppSetIdManagerFutures from(@NotNull Context context) {
        return Companion.from(context);
    }

    @NotNull
    public abstract e<AppSetId> getAppSetIdAsync();
}
