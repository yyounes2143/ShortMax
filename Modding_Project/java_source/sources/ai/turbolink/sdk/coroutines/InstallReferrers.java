package ai.turbolink.sdk.coroutines;

import android.content.Context;
import at.p;
import com.android.installreferrer.api.InstallReferrerClient;
import gt.g;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: InstallReferrers.kt */
@Metadata
/* loaded from: classes.dex */
public final class InstallReferrers {
    @NotNull
    public static final InstallReferrers INSTANCE = new InstallReferrers();

    private InstallReferrers() {
    }

    public final void googleInstallReferrer(@NotNull Context context, @NotNull p<? super Boolean, ? super String, ? super Long, ? super Long, ? super Boolean, Unit> onResult) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onResult, "onResult");
        InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder(context).build()");
        g.d(i.a(q0.b()), null, null, new InstallReferrers$googleInstallReferrer$1(build, onResult, null), 3, null);
    }
}
