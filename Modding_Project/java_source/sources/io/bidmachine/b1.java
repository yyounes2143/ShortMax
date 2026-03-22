package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.protobuf.sdk.App;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppReleaseParams.java */
/* loaded from: classes7.dex */
public final class b1 {
    @NonNull
    private Context.App.Release c(@NonNull android.content.Context context) {
        BuildInfo obtain = BuildInfo.obtain(context);
        Context.App.Release.Builder newBuilder = Context.App.Release.newBuilder();
        newBuilder.setType(d(obtain));
        String sha1Signature = obtain.getSha1Signature(context);
        if (!TextUtils.isEmpty(sha1Signature)) {
            newBuilder.setSignatureSHA1(sha1Signature);
        }
        String sha256Signature = obtain.getSha256Signature(context);
        if (!TextUtils.isEmpty(sha256Signature)) {
            newBuilder.setSignatureSHA256(sha256Signature);
        }
        return newBuilder.build();
    }

    @NonNull
    private String d(@NonNull BuildInfo buildInfo) {
        if (buildInfo.isDebuggable()) {
            return "debug";
        }
        return "release";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull android.content.Context context, @NonNull Context.App.Builder builder) {
        builder.setRelease(c(context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull android.content.Context context, @NonNull App.Builder builder) {
        builder.setRelease(c(context));
    }
}
