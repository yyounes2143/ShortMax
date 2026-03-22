package androidx.privacysandbox.ads.adservices.internal;

import android.content.Context;
import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BackCompatManager.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BackCompatManager {
    @NotNull
    public static final BackCompatManager INSTANCE = new BackCompatManager();

    private BackCompatManager() {
    }

    @Nullable
    public final <T> T getManager(@NotNull Context context, @NotNull String tag, @NotNull Function1<? super Context, ? extends T> manager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(manager, "manager");
        try {
            return manager.invoke(context);
        } catch (NoClassDefFoundError unused) {
            Log.d(tag, "Unable to find adservices code, check manifest for uses-library tag, versionS=" + AdServicesInfo.INSTANCE.extServicesVersionS());
            return null;
        }
    }
}
