package androidx.credentials.playservices.controllers;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.ResultReceiver;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialInterruptedException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.NoCredentialException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialProviderBaseController.kt */
@Metadata
/* loaded from: classes.dex */
public class CredentialProviderBaseController {
    @NotNull
    public static final String ACTIVITY_REQUEST_CODE_TAG = "ACTIVITY_REQUEST_CODE";
    @NotNull
    public static final String BEGIN_SIGN_IN_TAG = "BEGIN_SIGN_IN";
    @NotNull
    public static final String CREATE_CANCELED = "CREATE_CANCELED";
    @NotNull
    public static final String CREATE_INTERRUPTED = "CREATE_INTERRUPTED";
    @NotNull
    public static final String CREATE_PASSWORD_TAG = "CREATE_PASSWORD";
    @NotNull
    public static final String CREATE_PUBLIC_KEY_CREDENTIAL_TAG = "CREATE_PUBLIC_KEY_CREDENTIAL";
    @NotNull
    public static final String CREATE_UNKNOWN = "CREATE_UNKNOWN";
    @NotNull
    public static final String EXCEPTION_MESSAGE_TAG = "EXCEPTION_MESSAGE";
    @NotNull
    public static final String EXCEPTION_TYPE_TAG = "EXCEPTION_TYPE";
    @NotNull
    public static final String FAILURE_RESPONSE_TAG = "FAILURE_RESPONSE";
    @NotNull
    public static final String GET_CANCELED = "GET_CANCELED_TAG";
    @NotNull
    public static final String GET_INTERRUPTED = "GET_INTERRUPTED";
    @NotNull
    public static final String GET_NO_CREDENTIALS = "GET_NO_CREDENTIALS";
    @NotNull
    public static final String GET_UNKNOWN = "GET_UNKNOWN";
    @NotNull
    public static final String REQUEST_TAG = "REQUEST_TYPE";
    @NotNull
    public static final String RESULT_DATA_TAG = "RESULT_DATA";
    @NotNull
    public static final String RESULT_RECEIVER_TAG = "RESULT_RECEIVER";
    @NotNull
    public static final String SIGN_IN_INTENT_TAG = "SIGN_IN_INTENT";
    @NotNull
    public static final String TYPE_TAG = "TYPE";
    @NotNull
    private final Context context;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Set<Integer> retryables = y0.j(7, 20);
    private static final int CONTROLLER_REQUEST_CODE = 1;

    /* compiled from: CredentialProviderBaseController.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CreateCredentialException createCredentialExceptionTypeToException$credentials_play_services_auth_release(@Nullable String str, @Nullable String str2) {
            if (Intrinsics.areEqual(str, CredentialProviderBaseController.CREATE_CANCELED)) {
                return new CreateCredentialCancellationException(str2);
            }
            if (Intrinsics.areEqual(str, CredentialProviderBaseController.CREATE_INTERRUPTED)) {
                return new CreateCredentialInterruptedException(str2);
            }
            return new CreateCredentialUnknownException(str2);
        }

        protected final int getCONTROLLER_REQUEST_CODE() {
            return CredentialProviderBaseController.CONTROLLER_REQUEST_CODE;
        }

        @NotNull
        public final GetCredentialException getCredentialExceptionTypeToException$credentials_play_services_auth_release(@Nullable String str, @Nullable String str2) {
            if (str != null) {
                int hashCode = str.hashCode();
                if (hashCode != -1567968963) {
                    if (hashCode != -154594663) {
                        if (hashCode == 1996705159 && str.equals(CredentialProviderBaseController.GET_NO_CREDENTIALS)) {
                            return new NoCredentialException(str2);
                        }
                    } else if (str.equals(CredentialProviderBaseController.GET_INTERRUPTED)) {
                        return new GetCredentialInterruptedException(str2);
                    }
                } else if (str.equals(CredentialProviderBaseController.GET_CANCELED)) {
                    return new GetCredentialCancellationException(str2);
                }
            }
            return new GetCredentialUnknownException(str2);
        }

        @NotNull
        public final Set<Integer> getRetryables() {
            return CredentialProviderBaseController.retryables;
        }

        private Companion() {
        }

        protected static /* synthetic */ void getCONTROLLER_REQUEST_CODE$annotations() {
        }
    }

    public CredentialProviderBaseController(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final int getCONTROLLER_REQUEST_CODE() {
        return Companion.getCONTROLLER_REQUEST_CODE();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void generateHiddenActivityIntent(@NotNull ResultReceiver resultReceiver, @NotNull Intent hiddenIntent, @NotNull String typeTag) {
        Intrinsics.checkNotNullParameter(resultReceiver, "resultReceiver");
        Intrinsics.checkNotNullParameter(hiddenIntent, "hiddenIntent");
        Intrinsics.checkNotNullParameter(typeTag, "typeTag");
        hiddenIntent.putExtra(TYPE_TAG, typeTag);
        hiddenIntent.putExtra(ACTIVITY_REQUEST_CODE_TAG, CONTROLLER_REQUEST_CODE);
        hiddenIntent.putExtra(RESULT_RECEIVER_TAG, toIpcFriendlyResultReceiver(resultReceiver));
        hiddenIntent.setFlags(65536);
    }

    @Nullable
    public final <T extends ResultReceiver> ResultReceiver toIpcFriendlyResultReceiver(T t10) {
        Parcel obtain = Parcel.obtain();
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
        Intrinsics.checkNotNull(t10);
        t10.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        ResultReceiver resultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return resultReceiver;
    }
}
