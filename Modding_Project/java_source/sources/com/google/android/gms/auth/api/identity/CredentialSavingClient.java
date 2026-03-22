package com.google.android.gms.auth.api.identity;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* loaded from: classes4.dex */
public interface CredentialSavingClient extends HasApiKey<zbk> {
    @NonNull
    Status getStatusFromIntent(@Nullable Intent intent);

    @NonNull
    Task<SaveAccountLinkingTokenResult> saveAccountLinkingToken(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest);

    @NonNull
    @Deprecated
    Task<SavePasswordResult> savePassword(@NonNull SavePasswordRequest savePasswordRequest);
}
