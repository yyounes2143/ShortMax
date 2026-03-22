package androidx.privacysandbox.ads.adservices.appsetid;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppSetIdManager.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class AppSetIdManager {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: AppSetIdManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final AppSetIdManager obtain(@NotNull final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new AppSetIdManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (AppSetIdManager) BackCompatManager.INSTANCE.getManager(context, "AppSetIdManager", new Function1<Context, AppSetIdManagerApi31Ext9Impl>() { // from class: androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager$Companion$obtain$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final AppSetIdManagerApi31Ext9Impl invoke(Context it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return new AppSetIdManagerApi31Ext9Impl(context);
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
    public static final AppSetIdManager obtain(@NotNull Context context) {
        return Companion.obtain(context);
    }

    @Nullable
    public abstract Object getAppSetId(@NotNull rs.c<? super AppSetId> cVar);
}
