package androidx.privacysandbox.ads.adservices.customaudience;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomAudienceManager.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class CustomAudienceManager {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: CustomAudienceManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final CustomAudienceManager obtain(@NotNull final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new CustomAudienceManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (CustomAudienceManager) BackCompatManager.INSTANCE.getManager(context, "CustomAudienceManager", new Function1<Context, CustomAudienceManagerApi31Ext9Impl>() { // from class: androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager$Companion$obtain$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final CustomAudienceManagerApi31Ext9Impl invoke(Context it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return new CustomAudienceManagerApi31Ext9Impl(context);
                    }
                });
            }
            return null;
        }

        private Companion() {
        }
    }

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @Nullable
    public static final CustomAudienceManager obtain(@NotNull Context context) {
        return Companion.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @Nullable
    public abstract Object fetchAndJoinCustomAudience(@NotNull FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object joinCustomAudience(@NotNull JoinCustomAudienceRequest joinCustomAudienceRequest, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object leaveCustomAudience(@NotNull LeaveCustomAudienceRequest leaveCustomAudienceRequest, @NotNull rs.c<? super Unit> cVar);
}
