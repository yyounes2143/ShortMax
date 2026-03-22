package com.google.android.gms.internal.p002authapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.CredentialSavingClient;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenResult;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.auth.api.identity.zbk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbaj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbaj extends GoogleApi implements CredentialSavingClient {
    private static final Api.ClientKey zba;
    private static final Api.AbstractClientBuilder zbb;
    private static final Api zbc;
    private final String zbd;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        zbae zbaeVar = new zbae();
        zbb = zbaeVar;
        zbc = new Api("Auth.Api.Identity.CredentialSaving.API", zbaeVar, clientKey);
    }

    public zbaj(@NonNull Activity activity, @NonNull zbk zbkVar) {
        super(activity, (Api<zbk>) zbc, zbkVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zbd = zbaw.zba();
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final Status getStatusFromIntent(@Nullable Intent intent) {
        if (intent == null) {
            return Status.RESULT_INTERNAL_ERROR;
        }
        Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
        if (status == null) {
            return Status.RESULT_INTERNAL_ERROR;
        }
        return status;
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final Task<SaveAccountLinkingTokenResult> saveAccountLinkingToken(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        Preconditions.checkNotNull(saveAccountLinkingTokenRequest);
        SaveAccountLinkingTokenRequest.Builder zba2 = SaveAccountLinkingTokenRequest.zba(saveAccountLinkingTokenRequest);
        zba2.zba(this.zbd);
        final SaveAccountLinkingTokenRequest build = zba2.build();
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbh).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbai
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbg zbgVar = (zbg) obj;
                ((zbm) zbgVar.getService()).zbc(new zbaf(zbaj.this, (TaskCompletionSource) obj2), (SaveAccountLinkingTokenRequest) Preconditions.checkNotNull(build), zbaz.zba(zbgVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1535).build());
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final Task<SavePasswordResult> savePassword(@NonNull SavePasswordRequest savePasswordRequest) {
        Preconditions.checkNotNull(savePasswordRequest);
        SavePasswordRequest.Builder zba2 = SavePasswordRequest.zba(savePasswordRequest);
        zba2.zbb(this.zbd);
        final SavePasswordRequest build = zba2.build();
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbf).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbah
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbg zbgVar = (zbg) obj;
                ((zbm) zbgVar.getService()).zbd(new zbag(zbaj.this, (TaskCompletionSource) obj2), (SavePasswordRequest) Preconditions.checkNotNull(build), zbaz.zba(zbgVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1536).build());
    }

    public zbaj(@NonNull Context context, @NonNull zbk zbkVar) {
        super(context, zbc, zbkVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zbd = zbaw.zba();
    }
}
