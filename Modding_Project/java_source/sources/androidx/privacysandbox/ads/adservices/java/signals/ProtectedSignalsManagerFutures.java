package androidx.privacysandbox.ads.adservices.java.signals;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.signals.ProtectedSignalsManager;
import androidx.privacysandbox.ads.adservices.signals.UpdateSignalsRequest;
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
/* compiled from: ProtectedSignalsManagerFutures.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class ProtectedSignalsManagerFutures {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: ProtectedSignalsManagerFutures.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nProtectedSignalsManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedSignalsManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final ProtectedSignalsManagerFutures from(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ProtectedSignalsManager obtain = ProtectedSignalsManager.Companion.obtain(context);
            if (obtain != null) {
                return new JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ProtectedSignalsManagerFutures.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class JavaImpl extends ProtectedSignalsManagerFutures {
        @Nullable
        private final ProtectedSignalsManager mProtectedSignalsManager;

        public JavaImpl(@Nullable ProtectedSignalsManager protectedSignalsManager) {
            this.mProtectedSignalsManager = protectedSignalsManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.signals.ProtectedSignalsManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS")
        @DoNotInline
        @NotNull
        public e<Unit> updateSignalsAsync(@NotNull UpdateSignalsRequest request) {
            k0 b10;
            Intrinsics.checkNotNullParameter(request, "request");
            b10 = g.b(i.a(q0.a()), null, null, new ProtectedSignalsManagerFutures$JavaImpl$updateSignalsAsync$1(this, request, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }

    @Nullable
    public static final ProtectedSignalsManagerFutures from(@NotNull Context context) {
        return Companion.from(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS")
    @NotNull
    public abstract e<Unit> updateSignalsAsync(@NotNull UpdateSignalsRequest updateSignalsRequest);
}
