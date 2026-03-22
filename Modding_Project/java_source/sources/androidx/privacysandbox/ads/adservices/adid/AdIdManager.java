package androidx.privacysandbox.ads.adservices.adid;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdIdManager.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class AdIdManager {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: AdIdManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final AdIdManager obtain(@NotNull final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new AdIdManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (AdIdManager) BackCompatManager.INSTANCE.getManager(context, "AdIdManager", new Function1<Context, AdIdManagerApi31Ext9Impl>() { // from class: androidx.privacysandbox.ads.adservices.adid.AdIdManager$Companion$obtain$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final AdIdManagerApi31Ext9Impl invoke(Context it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return new AdIdManagerApi31Ext9Impl(context);
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
    public static final AdIdManager obtain(@NotNull Context context) {
        return Companion.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
    @Nullable
    public abstract Object getAdId(@NotNull rs.c<? super AdId> cVar);
}
