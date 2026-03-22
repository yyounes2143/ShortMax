package com.google.android.gms.internal.p002authapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.AuthorizationClient;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.auth.api.identity.zba;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.ss.ttm.player.MediaPlayer;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbad  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbad extends GoogleApi implements AuthorizationClient {
    private static final Api.ClientKey zba;
    private static final Api.AbstractClientBuilder zbb;
    private static final Api zbc;
    private final String zbd;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        zbw zbwVar = new zbw();
        zbb = zbwVar;
        zbc = new Api("Auth.Api.Identity.Authorization.API", zbwVar, clientKey);
    }

    public zbad(@NonNull Activity activity, @NonNull zba zbaVar) {
        super(activity, (Api<zba>) zbc, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zbd = zbaw.zba();
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final Task<AuthorizationResult> authorize(@NonNull AuthorizationRequest authorizationRequest) {
        Preconditions.checkNotNull(authorizationRequest);
        AuthorizationRequest.Builder zba2 = AuthorizationRequest.zba(authorizationRequest);
        zba2.zbb(this.zbd);
        final AuthorizationRequest build = zba2.build();
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbc).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbac
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbf zbfVar = (zbf) obj;
                ((zbj) zbfVar.getService()).zbc(new zbx(zbad.this, (TaskCompletionSource) obj2), (AuthorizationRequest) Preconditions.checkNotNull(build), zbaz.zba(zbfVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1534).build());
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final Task<Void> clearToken(@NonNull ClearTokenRequest clearTokenRequest) {
        Preconditions.checkNotNull(clearTokenRequest);
        ClearTokenRequest.Builder zbb2 = clearTokenRequest.zbb();
        zbb2.zba(this.zbd);
        final ClearTokenRequest build = zbb2.build();
        return doWrite(TaskApiCall.builder().setFeatures(zbav.zbe).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbab
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbf zbfVar = (zbf) obj;
                ((zbj) zbfVar.getService()).zbe(new zbz(zbad.this, (TaskCompletionSource) obj2), (ClearTokenRequest) Preconditions.checkNotNull(build), zbaz.zba(zbfVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(true).setMethodKey(MediaPlayer.MEDIA_PLAYER_OPTION_IS_MASTER_PLAYER).build());
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final AuthorizationResult getAuthorizationResultFromIntent(@Nullable Intent intent) throws ApiException {
        if (intent != null) {
            Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
            if (status != null) {
                if (status.isSuccess()) {
                    AuthorizationResult authorizationResult = (AuthorizationResult) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "authorization_result", AuthorizationResult.CREATOR);
                    if (authorizationResult != null) {
                        return authorizationResult;
                    }
                    throw new ApiException(Status.RESULT_INTERNAL_ERROR);
                }
                throw new ApiException(status);
            }
            throw new ApiException(Status.RESULT_CANCELED);
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final Task<Void> revokeAccess(@NonNull RevokeAccessRequest revokeAccessRequest) {
        Preconditions.checkNotNull(revokeAccessRequest);
        RevokeAccessRequest.Builder zbb2 = revokeAccessRequest.zbb();
        zbb2.zba(this.zbd);
        final RevokeAccessRequest build = zbb2.build();
        return doWrite(TaskApiCall.builder().setFeatures(zbav.zbd).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbaa
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbf zbfVar = (zbf) obj;
                ((zbj) zbfVar.getService()).zbd(new zby(zbad.this, (TaskCompletionSource) obj2), (RevokeAccessRequest) Preconditions.checkNotNull(build), zbaz.zba(zbfVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(true).setMethodKey(MediaPlayer.MEDIA_PLAYER_OPTION_IS_MASTER_PLAYER).build());
    }

    public zbad(@NonNull Context context, @NonNull zba zbaVar) {
        super(context, zbc, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zbd = zbaw.zba();
    }
}
