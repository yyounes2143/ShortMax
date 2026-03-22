package com.google.android.gms.auth.api.identity;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p002authapi.zbad;
import com.google.android.gms.internal.p002authapi.zbaj;
import com.google.android.gms.internal.p002authapi.zbat;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* loaded from: classes4.dex */
public final class Identity {
    private Identity() {
    }

    @NonNull
    public static AuthorizationClient getAuthorizationClient(@NonNull Activity activity) {
        return new zbad((Activity) Preconditions.checkNotNull(activity), new zba(null));
    }

    @NonNull
    public static CredentialSavingClient getCredentialSavingClient(@NonNull Activity activity) {
        return new zbaj((Activity) Preconditions.checkNotNull(activity), new zbk());
    }

    @NonNull
    public static SignInClient getSignInClient(@NonNull Activity activity) {
        return new zbat((Activity) Preconditions.checkNotNull(activity), new zbx());
    }

    @NonNull
    public static AuthorizationClient getAuthorizationClient(@NonNull Context context) {
        return new zbad((Context) Preconditions.checkNotNull(context), new zba(null));
    }

    @NonNull
    public static CredentialSavingClient getCredentialSavingClient(@NonNull Context context) {
        return new zbaj((Context) Preconditions.checkNotNull(context), new zbk());
    }

    @NonNull
    public static SignInClient getSignInClient(@NonNull Context context) {
        return new zbat((Context) Preconditions.checkNotNull(context), new zbx());
    }
}
