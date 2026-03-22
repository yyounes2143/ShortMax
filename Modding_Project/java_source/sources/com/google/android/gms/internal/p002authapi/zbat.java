package com.google.android.gms.internal.p002authapi;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.auth.api.identity.GetPhoneNumberHintIntentRequest;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.SignInClient;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.auth.api.identity.zbx;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbat  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbat extends GoogleApi implements SignInClient {
    private static final Api.ClientKey zba;
    private static final Api.AbstractClientBuilder zbb;
    private static final Api zbc;
    private final String zbd;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        zbak zbakVar = new zbak();
        zbb = zbakVar;
        zbc = new Api("Auth.Api.Identity.SignIn.API", zbakVar, clientKey);
    }

    public zbat(@NonNull Activity activity, @NonNull zbx zbxVar) {
        super(activity, (Api<zbx>) zbc, zbxVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zbd = zbaw.zba();
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final Task<BeginSignInResult> beginSignIn(@NonNull BeginSignInRequest beginSignInRequest) {
        Preconditions.checkNotNull(beginSignInRequest);
        BeginSignInRequest.Builder zba2 = BeginSignInRequest.zba(beginSignInRequest);
        zba2.zba(this.zbd);
        final BeginSignInRequest build = zba2.build();
        return doRead(TaskApiCall.builder().setFeatures(new Feature("auth_api_credentials_begin_sign_in", 8L)).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbas
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbau zbauVar = (zbau) obj;
                ((zbv) zbauVar.getService()).zbc(new zbal(zbat.this, (TaskCompletionSource) obj2), (BeginSignInRequest) Preconditions.checkNotNull(build), zbaz.zba(zbauVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1553).build());
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final String getPhoneNumberFromIntent(@Nullable Intent intent) throws ApiException {
        if (intent != null) {
            Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
            if (status != null) {
                if (status.isSuccess()) {
                    String stringExtra = intent.getStringExtra("phone_number_hint_result");
                    if (stringExtra != null) {
                        return stringExtra;
                    }
                    throw new ApiException(Status.RESULT_INTERNAL_ERROR);
                }
                throw new ApiException(status);
            }
            throw new ApiException(Status.RESULT_CANCELED);
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final Task<PendingIntent> getPhoneNumberHintIntent(@NonNull final GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest) {
        Preconditions.checkNotNull(getPhoneNumberHintIntentRequest);
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbi).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbar
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbat.this.zbb(getPhoneNumberHintIntentRequest, (zbau) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(1653).build());
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final SignInCredential getSignInCredentialFromIntent(@Nullable Intent intent) throws ApiException {
        if (intent != null) {
            Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "status", Status.CREATOR);
            if (status != null) {
                if (status.isSuccess()) {
                    SignInCredential signInCredential = (SignInCredential) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "sign_in_credential", SignInCredential.CREATOR);
                    if (signInCredential != null) {
                        return signInCredential;
                    }
                    throw new ApiException(Status.RESULT_INTERNAL_ERROR);
                }
                throw new ApiException(status);
            }
            throw new ApiException(Status.RESULT_CANCELED);
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final Task<PendingIntent> getSignInIntent(@NonNull GetSignInIntentRequest getSignInIntentRequest) {
        Preconditions.checkNotNull(getSignInIntentRequest);
        GetSignInIntentRequest.Builder zba2 = GetSignInIntentRequest.zba(getSignInIntentRequest);
        zba2.zba(this.zbd);
        final GetSignInIntentRequest build = zba2.build();
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbg).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbaq
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbau zbauVar = (zbau) obj;
                ((zbv) zbauVar.getService()).zbe(new zban(zbat.this, (TaskCompletionSource) obj2), (GetSignInIntentRequest) Preconditions.checkNotNull(build), zbaz.zba(zbauVar.getContext()));
            }
        }).setMethodKey(1555).build());
    }

    @Override // com.google.android.gms.auth.api.identity.SignInClient
    public final Task<Void> signOut() {
        getApplicationContext().getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();
        for (GoogleApiClient googleApiClient : GoogleApiClient.getAllClients()) {
            googleApiClient.maybeSignOut();
        }
        GoogleApiManager.reportSignOut();
        return doWrite(TaskApiCall.builder().setFeatures(zbav.zbb).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbap
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbat.this.zba((zbau) obj, (TaskCompletionSource) obj2);
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1554).build());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zba(zbau zbauVar, TaskCompletionSource taskCompletionSource) {
        ((zbv) zbauVar.getService()).zbd(new zbam(this, taskCompletionSource), this.zbd, zbaz.zba(zbauVar.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zbb(GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest, zbau zbauVar, TaskCompletionSource taskCompletionSource) {
        ((zbv) zbauVar.getService()).zbf(new zbao(this, taskCompletionSource), getPhoneNumberHintIntentRequest, this.zbd, zbaz.zba(zbauVar.getContext()));
    }

    public zbat(@NonNull Context context, @NonNull zbx zbxVar) {
        super(context, zbc, zbxVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zbd = zbaw.zba();
    }
}
