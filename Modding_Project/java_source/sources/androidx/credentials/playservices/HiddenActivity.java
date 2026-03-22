package androidx.credentials.playservices;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HiddenActivity.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class HiddenActivity extends Activity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_VALUE = 1;
    @NotNull
    private static final String KEY_AWAITING_RESULT = "androidx.credentials.playservices.AWAITING_RESULT";
    @NotNull
    private static final String TAG = "HiddenActivity";
    private boolean mWaitingForActivityResult;
    @Nullable
    private ResultReceiver resultReceiver;

    /* compiled from: HiddenActivity.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final void handleBeginSignIn() {
        Task<BeginSignInResult> task;
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) getIntent().getParcelableExtra(CredentialProviderBaseController.REQUEST_TAG);
        final int intExtra = getIntent().getIntExtra(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG, 1);
        if (beginSignInRequest != null) {
            Task<BeginSignInResult> beginSignIn = Identity.getSignInClient((Activity) this).beginSignIn(beginSignInRequest);
            final Function1<BeginSignInResult, Unit> function1 = new Function1<BeginSignInResult, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleBeginSignIn$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(BeginSignInResult beginSignInResult) {
                    invoke2(beginSignInResult);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(BeginSignInResult beginSignInResult) {
                    ResultReceiver resultReceiver;
                    try {
                        HiddenActivity.this.mWaitingForActivityResult = true;
                        HiddenActivity.this.startIntentSenderForResult(beginSignInResult.getPendingIntent().getIntentSender(), intExtra, null, 0, 0, 0, null);
                    } catch (IntentSender.SendIntentException e10) {
                        HiddenActivity hiddenActivity = HiddenActivity.this;
                        resultReceiver = hiddenActivity.resultReceiver;
                        Intrinsics.checkNotNull(resultReceiver);
                        hiddenActivity.setupFailure(resultReceiver, CredentialProviderBaseController.GET_UNKNOWN, "During begin sign in, one tap ui intent sender failure: " + e10.getMessage());
                    }
                }
            };
            task = beginSignIn.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda6
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    HiddenActivity.handleBeginSignIn$lambda$10$lambda$8(Function1.this, obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda7
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    HiddenActivity.handleBeginSignIn$lambda$10$lambda$9(HiddenActivity.this, exc);
                }
            });
        } else {
            task = null;
        }
        if (task == null) {
            Log.i(TAG, "During begin sign in, params is null, nothing to launch for begin sign in");
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleBeginSignIn$lambda$10$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleBeginSignIn$lambda$10$lambda$9(HiddenActivity this$0, Exception e10) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e10, "e");
        if ((e10 instanceof ApiException) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((ApiException) e10).getStatusCode()))) {
            str = CredentialProviderBaseController.GET_INTERRUPTED;
        } else {
            str = CredentialProviderBaseController.GET_NO_CREDENTIALS;
        }
        ResultReceiver resultReceiver = this$0.resultReceiver;
        Intrinsics.checkNotNull(resultReceiver);
        this$0.setupFailure(resultReceiver, str, "During begin sign in, failure response from one tap: " + e10.getMessage());
    }

    private final void handleCreatePassword() {
        Task<SavePasswordResult> task;
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) getIntent().getParcelableExtra(CredentialProviderBaseController.REQUEST_TAG);
        final int intExtra = getIntent().getIntExtra(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG, 1);
        if (savePasswordRequest != null) {
            Task<SavePasswordResult> savePassword = Identity.getCredentialSavingClient((Activity) this).savePassword(savePasswordRequest);
            final Function1<SavePasswordResult, Unit> function1 = new Function1<SavePasswordResult, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleCreatePassword$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SavePasswordResult savePasswordResult) {
                    invoke2(savePasswordResult);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(SavePasswordResult savePasswordResult) {
                    ResultReceiver resultReceiver;
                    try {
                        HiddenActivity.this.mWaitingForActivityResult = true;
                        HiddenActivity.this.startIntentSenderForResult(savePasswordResult.getPendingIntent().getIntentSender(), intExtra, null, 0, 0, 0, null);
                    } catch (IntentSender.SendIntentException e10) {
                        HiddenActivity hiddenActivity = HiddenActivity.this;
                        resultReceiver = hiddenActivity.resultReceiver;
                        Intrinsics.checkNotNull(resultReceiver);
                        hiddenActivity.setupFailure(resultReceiver, CredentialProviderBaseController.CREATE_UNKNOWN, "During save password, found UI intent sender failure: " + e10.getMessage());
                    }
                }
            };
            task = savePassword.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda2
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    HiddenActivity.handleCreatePassword$lambda$14$lambda$12(Function1.this, obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda3
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    HiddenActivity.handleCreatePassword$lambda$14$lambda$13(HiddenActivity.this, exc);
                }
            });
        } else {
            task = null;
        }
        if (task == null) {
            Log.i(TAG, "During save password, params is null, nothing to launch for create password");
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleCreatePassword$lambda$14$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleCreatePassword$lambda$14$lambda$13(HiddenActivity this$0, Exception e10) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e10, "e");
        if ((e10 instanceof ApiException) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((ApiException) e10).getStatusCode()))) {
            str = CredentialProviderBaseController.CREATE_INTERRUPTED;
        } else {
            str = CredentialProviderBaseController.CREATE_UNKNOWN;
        }
        ResultReceiver resultReceiver = this$0.resultReceiver;
        Intrinsics.checkNotNull(resultReceiver);
        this$0.setupFailure(resultReceiver, str, "During save password, found password failure response from one tap " + e10.getMessage());
    }

    private final void handleCreatePublicKeyCredential() {
        Task<PendingIntent> task;
        PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) getIntent().getParcelableExtra(CredentialProviderBaseController.REQUEST_TAG);
        final int intExtra = getIntent().getIntExtra(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG, 1);
        if (publicKeyCredentialCreationOptions != null) {
            Task<PendingIntent> registerPendingIntent = Fido.getFido2ApiClient((Activity) this).getRegisterPendingIntent(publicKeyCredentialCreationOptions);
            final Function1<PendingIntent, Unit> function1 = new Function1<PendingIntent, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleCreatePublicKeyCredential$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PendingIntent pendingIntent) {
                    invoke2(pendingIntent);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull PendingIntent result) {
                    ResultReceiver resultReceiver;
                    Intrinsics.checkNotNullParameter(result, "result");
                    try {
                        HiddenActivity.this.mWaitingForActivityResult = true;
                        HiddenActivity.this.startIntentSenderForResult(result.getIntentSender(), intExtra, null, 0, 0, 0, null);
                    } catch (IntentSender.SendIntentException e10) {
                        HiddenActivity hiddenActivity = HiddenActivity.this;
                        resultReceiver = hiddenActivity.resultReceiver;
                        Intrinsics.checkNotNull(resultReceiver);
                        hiddenActivity.setupFailure(resultReceiver, CredentialProviderBaseController.CREATE_UNKNOWN, "During public key credential, found IntentSender failure on public key creation: " + e10.getMessage());
                    }
                }
            };
            task = registerPendingIntent.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    HiddenActivity.handleCreatePublicKeyCredential$lambda$2$lambda$0(Function1.this, obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    HiddenActivity.handleCreatePublicKeyCredential$lambda$2$lambda$1(HiddenActivity.this, exc);
                }
            });
        } else {
            task = null;
        }
        if (task == null) {
            Log.w(TAG, "During create public key credential, request is null, so nothing to launch for public key credentials");
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleCreatePublicKeyCredential$lambda$2$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleCreatePublicKeyCredential$lambda$2$lambda$1(HiddenActivity this$0, Exception e10) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e10, "e");
        if ((e10 instanceof ApiException) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((ApiException) e10).getStatusCode()))) {
            str = CredentialProviderBaseController.CREATE_INTERRUPTED;
        } else {
            str = CredentialProviderBaseController.CREATE_UNKNOWN;
        }
        ResultReceiver resultReceiver = this$0.resultReceiver;
        Intrinsics.checkNotNull(resultReceiver);
        this$0.setupFailure(resultReceiver, str, "During create public key credential, fido registration failure: " + e10.getMessage());
    }

    private final void handleGetSignInIntent() {
        Task<PendingIntent> task;
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) getIntent().getParcelableExtra(CredentialProviderBaseController.REQUEST_TAG);
        final int intExtra = getIntent().getIntExtra(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG, 1);
        if (getSignInIntentRequest != null) {
            Task<PendingIntent> signInIntent = Identity.getSignInClient((Activity) this).getSignInIntent(getSignInIntentRequest);
            final Function1<PendingIntent, Unit> function1 = new Function1<PendingIntent, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleGetSignInIntent$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PendingIntent pendingIntent) {
                    invoke2(pendingIntent);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(PendingIntent pendingIntent) {
                    ResultReceiver resultReceiver;
                    try {
                        HiddenActivity.this.mWaitingForActivityResult = true;
                        HiddenActivity.this.startIntentSenderForResult(pendingIntent.getIntentSender(), intExtra, null, 0, 0, 0, null);
                    } catch (IntentSender.SendIntentException e10) {
                        HiddenActivity hiddenActivity = HiddenActivity.this;
                        resultReceiver = hiddenActivity.resultReceiver;
                        Intrinsics.checkNotNull(resultReceiver);
                        hiddenActivity.setupFailure(resultReceiver, CredentialProviderBaseController.GET_UNKNOWN, "During get sign-in intent, one tap ui intent sender failure: " + e10.getMessage());
                    }
                }
            };
            task = signInIntent.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda4
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    HiddenActivity.handleGetSignInIntent$lambda$6$lambda$4(Function1.this, obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.HiddenActivity$$ExternalSyntheticLambda5
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    HiddenActivity.handleGetSignInIntent$lambda$6$lambda$5(HiddenActivity.this, exc);
                }
            });
        } else {
            task = null;
        }
        if (task == null) {
            Log.i(TAG, "During get sign-in intent, params is null, nothing to launch for get sign-in intent");
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleGetSignInIntent$lambda$6$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleGetSignInIntent$lambda$6$lambda$5(HiddenActivity this$0, Exception e10) {
        String str;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(e10, "e");
        if ((e10 instanceof ApiException) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((ApiException) e10).getStatusCode()))) {
            str = CredentialProviderBaseController.GET_INTERRUPTED;
        } else {
            str = CredentialProviderBaseController.GET_NO_CREDENTIALS;
        }
        ResultReceiver resultReceiver = this$0.resultReceiver;
        Intrinsics.checkNotNull(resultReceiver);
        this$0.setupFailure(resultReceiver, str, "During get sign-in intent, failure response from one tap: " + e10.getMessage());
    }

    private final void restoreState(Bundle bundle) {
        if (bundle != null) {
            this.mWaitingForActivityResult = bundle.getBoolean(KEY_AWAITING_RESULT, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupFailure(ResultReceiver resultReceiver, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(CredentialProviderBaseController.FAILURE_RESPONSE_TAG, true);
        bundle.putString(CredentialProviderBaseController.EXCEPTION_TYPE_TAG, str);
        bundle.putString(CredentialProviderBaseController.EXCEPTION_MESSAGE_TAG, str2);
        resultReceiver.send(Integer.MAX_VALUE, bundle);
        finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        Bundle bundle = new Bundle();
        bundle.putBoolean(CredentialProviderBaseController.FAILURE_RESPONSE_TAG, false);
        bundle.putInt(CredentialProviderBaseController.ACTIVITY_REQUEST_CODE_TAG, i10);
        bundle.putParcelable(CredentialProviderBaseController.RESULT_DATA_TAG, intent);
        ResultReceiver resultReceiver = this.resultReceiver;
        if (resultReceiver != null) {
            resultReceiver.send(i11, bundle);
        }
        this.mWaitingForActivityResult = false;
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        String stringExtra = getIntent().getStringExtra(CredentialProviderBaseController.TYPE_TAG);
        ResultReceiver resultReceiver = (ResultReceiver) getIntent().getParcelableExtra(CredentialProviderBaseController.RESULT_RECEIVER_TAG);
        this.resultReceiver = resultReceiver;
        if (resultReceiver == null) {
            finish();
        }
        restoreState(bundle);
        if (this.mWaitingForActivityResult) {
            return;
        }
        if (stringExtra != null) {
            switch (stringExtra.hashCode()) {
                case -441061071:
                    if (stringExtra.equals(CredentialProviderBaseController.BEGIN_SIGN_IN_TAG)) {
                        handleBeginSignIn();
                        return;
                    }
                    break;
                case 15545322:
                    if (stringExtra.equals(CredentialProviderBaseController.CREATE_PUBLIC_KEY_CREDENTIAL_TAG)) {
                        handleCreatePublicKeyCredential();
                        return;
                    }
                    break;
                case 1246634622:
                    if (stringExtra.equals(CredentialProviderBaseController.CREATE_PASSWORD_TAG)) {
                        handleCreatePassword();
                        return;
                    }
                    break;
                case 1980564212:
                    if (stringExtra.equals(CredentialProviderBaseController.SIGN_IN_INTENT_TAG)) {
                        handleGetSignInIntent();
                        return;
                    }
                    break;
            }
        }
        Log.w(TAG, "Activity handed an unsupported type");
        finish();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        outState.putBoolean(KEY_AWAITING_RESULT, this.mWaitingForActivityResult);
        super.onSaveInstanceState(outState);
    }
}
