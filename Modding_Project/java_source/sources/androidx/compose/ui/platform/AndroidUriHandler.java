package androidx.compose.ui.platform;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.compose.runtime.internal.StabilityInferred;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidUriHandler.android.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AndroidUriHandler implements UriHandler {
    public static final int $stable = 8;
    @NotNull
    private final Context context;

    public AndroidUriHandler(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // androidx.compose.ui.platform.UriHandler
    public void openUri(@NotNull String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.context.startActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(uri)));
    }
}
