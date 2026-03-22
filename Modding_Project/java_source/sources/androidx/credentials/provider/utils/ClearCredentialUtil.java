package androidx.credentials.provider.utils;

import android.content.pm.SigningInfo;
import android.service.credentials.CallingAppInfo;
import android.service.credentials.ClearCredentialStateRequest;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.ProviderClearCredentialStateRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClearCredentialUtil.kt */
@RequiresApi(34)
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ClearCredentialUtil {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: ClearCredentialUtil.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ProviderClearCredentialStateRequest convertToJetpackRequest$credentials_release(@NotNull ClearCredentialStateRequest request) {
            CallingAppInfo callingAppInfo;
            String packageName;
            CallingAppInfo callingAppInfo2;
            SigningInfo signingInfo;
            CallingAppInfo callingAppInfo3;
            String origin;
            Intrinsics.checkNotNullParameter(request, "request");
            callingAppInfo = request.getCallingAppInfo();
            packageName = callingAppInfo.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "request.callingAppInfo.packageName");
            callingAppInfo2 = request.getCallingAppInfo();
            signingInfo = callingAppInfo2.getSigningInfo();
            Intrinsics.checkNotNullExpressionValue(signingInfo, "request.callingAppInfo.signingInfo");
            callingAppInfo3 = request.getCallingAppInfo();
            origin = callingAppInfo3.getOrigin();
            return new ProviderClearCredentialStateRequest(new androidx.credentials.provider.CallingAppInfo(packageName, signingInfo, origin));
        }

        private Companion() {
        }
    }
}
