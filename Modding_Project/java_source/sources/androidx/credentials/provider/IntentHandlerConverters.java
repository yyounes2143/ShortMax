package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.credentials.CreateCredentialException;
import android.credentials.CreateCredentialResponse;
import android.credentials.GetCredentialException;
import android.credentials.GetCredentialResponse;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntentHandlerConverters.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes.dex */
public final class IntentHandlerConverters {
    @RequiresApi(34)
    @Nullable
    public static final BeginGetCredentialResponse getBeginGetResponse(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (intent.hasExtra("android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE")) {
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE", d0.a());
            android.service.credentials.BeginGetCredentialResponse a10 = e0.a(parcelableExtra);
            if (a10 == null) {
                return null;
            }
            return BeginGetCredentialUtil.Companion.convertToJetpackResponse(a10);
        }
        return null;
    }

    @RequiresApi(34)
    @Nullable
    public static final CreateCredentialResponse getCreateCredentialCredentialResponse(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (intent.hasExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE")) {
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE", h0.a());
            return androidx.credentials.l0.a(parcelableExtra);
        }
        return null;
    }

    @RequiresApi(34)
    @Nullable
    public static final CreateCredentialException getCreateCredentialException(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (intent.hasExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION")) {
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION", f0.a());
            return androidx.credentials.j0.a(parcelableExtra);
        }
        return null;
    }

    @RequiresApi(34)
    @Nullable
    public static final GetCredentialException getGetCredentialException(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (intent.hasExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION")) {
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION", g0.a());
            return androidx.credentials.n0.a(parcelableExtra);
        }
        return null;
    }

    @RequiresApi(34)
    @Nullable
    public static final GetCredentialResponse getGetCredentialResponse(@NotNull Intent intent) {
        Object parcelableExtra;
        Intrinsics.checkNotNullParameter(intent, "<this>");
        if (intent.hasExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE")) {
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE", b0.a());
            return androidx.credentials.m0.a(parcelableExtra);
        }
        return null;
    }
}
