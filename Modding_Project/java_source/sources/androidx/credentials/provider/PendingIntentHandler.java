package androidx.credentials.provider;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.SigningInfo;
import android.os.Bundle;
import android.os.Parcelable;
import android.service.credentials.GetCredentialRequest;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.provider.PendingIntentHandler;
import androidx.credentials.provider.ProviderGetCredentialRequest;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import java.io.Serializable;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PendingIntentHandler.kt */
@RequiresApi(34)
@Metadata
/* loaded from: classes.dex */
public final class PendingIntentHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "PendingIntentHandler";

    /* compiled from: PendingIntentHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPendingIntentHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PendingIntentHandler.kt\nandroidx/credentials/provider/PendingIntentHandler$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,335:1\n1#2:336\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CredentialOption retrieveProviderGetCredentialRequest$lambda$1(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (CredentialOption) tmp0.invoke(obj);
        }

        @Nullable
        public final BeginGetCredentialRequest retrieveBeginGetCredentialRequest(@NotNull Intent intent) {
            Object parcelableExtra;
            Intrinsics.checkNotNullParameter(intent, "intent");
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.BEGIN_GET_CREDENTIAL_REQUEST", z0.a());
            android.service.credentials.BeginGetCredentialRequest a10 = a1.a(parcelableExtra);
            if (a10 != null) {
                return BeginGetCredentialUtil.Companion.convertToJetpackRequest$credentials_release(a10);
            }
            return null;
        }

        @Nullable
        public final ProviderCreateCredentialRequest retrieveProviderCreateCredentialRequest(@NotNull Intent intent) {
            Object parcelableExtra;
            String type;
            Bundle data;
            Bundle data2;
            android.service.credentials.CallingAppInfo callingAppInfo;
            String origin;
            android.service.credentials.CallingAppInfo callingAppInfo2;
            String packageName;
            android.service.credentials.CallingAppInfo callingAppInfo3;
            SigningInfo signingInfo;
            android.service.credentials.CallingAppInfo callingAppInfo4;
            String origin2;
            Intrinsics.checkNotNullParameter(intent, "intent");
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST", b1.a());
            ProviderCreateCredentialRequest a10 = k0.a(parcelableExtra);
            if (a10 == null) {
                Log.i(PendingIntentHandler.TAG, "Request not found in pendingIntent");
                return a10;
            }
            CreateCredentialRequest.Companion companion = CreateCredentialRequest.Companion;
            type = a10.getType();
            Intrinsics.checkNotNullExpressionValue(type, "frameworkReq.type");
            data = a10.getData();
            Intrinsics.checkNotNullExpressionValue(data, "frameworkReq.data");
            data2 = a10.getData();
            Intrinsics.checkNotNullExpressionValue(data2, "frameworkReq.data");
            callingAppInfo = a10.getCallingAppInfo();
            origin = callingAppInfo.getOrigin();
            CreateCredentialRequest createFrom = companion.createFrom(type, data, data2, false, origin);
            if (createFrom != null) {
                callingAppInfo2 = a10.getCallingAppInfo();
                packageName = callingAppInfo2.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "frameworkReq.callingAppInfo.packageName");
                callingAppInfo3 = a10.getCallingAppInfo();
                signingInfo = callingAppInfo3.getSigningInfo();
                Intrinsics.checkNotNullExpressionValue(signingInfo, "frameworkReq.callingAppInfo.signingInfo");
                callingAppInfo4 = a10.getCallingAppInfo();
                origin2 = callingAppInfo4.getOrigin();
                return new ProviderCreateCredentialRequest(createFrom, new CallingAppInfo(packageName, signingInfo, origin2));
            }
            return null;
        }

        @Nullable
        public final ProviderGetCredentialRequest retrieveProviderGetCredentialRequest(@NotNull Intent intent) {
            Object parcelableExtra;
            List credentialOptions;
            android.service.credentials.CallingAppInfo callingAppInfo;
            String packageName;
            android.service.credentials.CallingAppInfo callingAppInfo2;
            SigningInfo signingInfo;
            android.service.credentials.CallingAppInfo callingAppInfo3;
            String origin;
            Intrinsics.checkNotNullParameter(intent, "intent");
            parcelableExtra = intent.getParcelableExtra("android.service.credentials.extra.GET_CREDENTIAL_REQUEST", i0.a());
            GetCredentialRequest a10 = u0.a(parcelableExtra);
            if (a10 == null) {
                Log.i(PendingIntentHandler.TAG, "Get request from framework is null");
                return null;
            }
            ProviderGetCredentialRequest.Companion companion = ProviderGetCredentialRequest.Companion;
            credentialOptions = a10.getCredentialOptions();
            Stream stream = credentialOptions.stream();
            final PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1 pendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1 = new Function1<android.credentials.CredentialOption, CredentialOption>() { // from class: androidx.credentials.provider.PendingIntentHandler$Companion$retrieveProviderGetCredentialRequest$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ CredentialOption invoke(android.credentials.CredentialOption credentialOption) {
                    return invoke2(i1.a(credentialOption));
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final CredentialOption invoke2(android.credentials.CredentialOption credentialOption) {
                    String type;
                    Bundle credentialRetrievalData;
                    Bundle candidateQueryData;
                    boolean isSystemProviderRequired;
                    Set<ComponentName> allowedProviders;
                    CredentialOption.Companion companion2 = CredentialOption.Companion;
                    type = credentialOption.getType();
                    Intrinsics.checkNotNullExpressionValue(type, "option.type");
                    credentialRetrievalData = credentialOption.getCredentialRetrievalData();
                    Intrinsics.checkNotNullExpressionValue(credentialRetrievalData, "option.credentialRetrievalData");
                    candidateQueryData = credentialOption.getCandidateQueryData();
                    Intrinsics.checkNotNullExpressionValue(candidateQueryData, "option.candidateQueryData");
                    isSystemProviderRequired = credentialOption.isSystemProviderRequired();
                    allowedProviders = credentialOption.getAllowedProviders();
                    Intrinsics.checkNotNullExpressionValue(allowedProviders, "option.allowedProviders");
                    return companion2.createFrom(type, credentialRetrievalData, candidateQueryData, isSystemProviderRequired, allowedProviders);
                }
            };
            Object collect = stream.map(new Function() { // from class: androidx.credentials.provider.c1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    CredentialOption retrieveProviderGetCredentialRequest$lambda$1;
                    retrieveProviderGetCredentialRequest$lambda$1 = PendingIntentHandler.Companion.retrieveProviderGetCredentialRequest$lambda$1(Function1.this, obj);
                    return retrieveProviderGetCredentialRequest$lambda$1;
                }
            }).collect(Collectors.toList());
            Intrinsics.checkNotNullExpressionValue(collect, "frameworkReq.credentialO…lect(Collectors.toList())");
            callingAppInfo = a10.getCallingAppInfo();
            packageName = callingAppInfo.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "frameworkReq.callingAppInfo.packageName");
            callingAppInfo2 = a10.getCallingAppInfo();
            signingInfo = callingAppInfo2.getSigningInfo();
            Intrinsics.checkNotNullExpressionValue(signingInfo, "frameworkReq.callingAppInfo.signingInfo");
            callingAppInfo3 = a10.getCallingAppInfo();
            origin = callingAppInfo3.getOrigin();
            return companion.createFrom$credentials_release((List) collect, new CallingAppInfo(packageName, signingInfo, origin));
        }

        public final void setBeginGetCredentialResponse(@NotNull Intent intent, @NotNull BeginGetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(response, "response");
            intent.putExtra("android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE", (Parcelable) BeginGetCredentialUtil.Companion.convertToFrameworkResponse(response));
        }

        public final void setCreateCredentialException(@NotNull Intent intent, @NotNull CreateCredentialException exception) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(exception, "exception");
            w.a();
            intent.putExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION", (Serializable) v.a(exception.getType(), exception.getMessage()));
        }

        public final void setCreateCredentialResponse(@NotNull Intent intent, @NotNull CreateCredentialResponse response) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(response, "response");
            s0.a();
            intent.putExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE", (Parcelable) r0.a(response.getData()));
        }

        public final void setGetCredentialException(@NotNull Intent intent, @NotNull GetCredentialException exception) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(exception, "exception");
            y.a();
            intent.putExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION", (Serializable) x.a(exception.getType(), exception.getMessage()));
        }

        public final void setGetCredentialResponse(@NotNull Intent intent, @NotNull GetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            Intrinsics.checkNotNullParameter(response, "response");
            p0.a();
            q0.a();
            intent.putExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE", (Parcelable) o0.a(n0.a(response.getCredential().getType(), response.getCredential().getData())));
        }

        private Companion() {
        }
    }

    @Nullable
    public static final BeginGetCredentialRequest retrieveBeginGetCredentialRequest(@NotNull Intent intent) {
        return Companion.retrieveBeginGetCredentialRequest(intent);
    }

    @Nullable
    public static final ProviderCreateCredentialRequest retrieveProviderCreateCredentialRequest(@NotNull Intent intent) {
        return Companion.retrieveProviderCreateCredentialRequest(intent);
    }

    @Nullable
    public static final ProviderGetCredentialRequest retrieveProviderGetCredentialRequest(@NotNull Intent intent) {
        return Companion.retrieveProviderGetCredentialRequest(intent);
    }

    public static final void setBeginGetCredentialResponse(@NotNull Intent intent, @NotNull BeginGetCredentialResponse beginGetCredentialResponse) {
        Companion.setBeginGetCredentialResponse(intent, beginGetCredentialResponse);
    }

    public static final void setCreateCredentialException(@NotNull Intent intent, @NotNull CreateCredentialException createCredentialException) {
        Companion.setCreateCredentialException(intent, createCredentialException);
    }

    public static final void setCreateCredentialResponse(@NotNull Intent intent, @NotNull CreateCredentialResponse createCredentialResponse) {
        Companion.setCreateCredentialResponse(intent, createCredentialResponse);
    }

    public static final void setGetCredentialException(@NotNull Intent intent, @NotNull GetCredentialException getCredentialException) {
        Companion.setGetCredentialException(intent, getCredentialException);
    }

    public static final void setGetCredentialResponse(@NotNull Intent intent, @NotNull GetCredentialResponse getCredentialResponse) {
        Companion.setGetCredentialResponse(intent, getCredentialResponse);
    }
}
