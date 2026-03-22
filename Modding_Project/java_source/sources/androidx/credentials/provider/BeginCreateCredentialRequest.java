package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginCreateCredentialUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginCreateCredentialRequest.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class BeginCreateCredentialRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final CallingAppInfo callingAppInfo;
    @NotNull
    private final Bundle candidateQueryData;
    @NotNull
    private final String type;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BeginCreateCredentialRequest.kt */
    @RequiresApi(34)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api34Impl {
        @NotNull
        public static final Api34Impl INSTANCE = new Api34Impl();
        @NotNull
        private static final String REQUEST_KEY = "androidx.credentials.provider.BeginCreateCredentialRequest";

        private Api34Impl() {
        }

        @DoNotInline
        public static final void asBundle(@NotNull Bundle bundle, @NotNull BeginCreateCredentialRequest request) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(request, "request");
            bundle.putParcelable(REQUEST_KEY, BeginCreateCredentialUtil.Companion.convertToFrameworkRequest(request));
        }

        @DoNotInline
        @Nullable
        public static final BeginCreateCredentialRequest fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            android.service.credentials.BeginCreateCredentialRequest beginCreateCredentialRequest = (android.service.credentials.BeginCreateCredentialRequest) bundle.getParcelable(REQUEST_KEY, android.service.credentials.BeginCreateCredentialRequest.class);
            if (beginCreateCredentialRequest != null) {
                return BeginCreateCredentialUtil.Companion.convertToJetpackRequest$credentials_release(beginCreateCredentialRequest);
            }
            return null;
        }
    }

    /* compiled from: BeginCreateCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Bundle asBundle(@NotNull BeginCreateCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Bundle bundle = new Bundle();
            if (Build.VERSION.SDK_INT >= 34) {
                Api34Impl.asBundle(bundle, request);
            }
            return bundle;
        }

        @Nullable
        public final BeginCreateCredentialRequest fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.fromBundle(bundle);
            }
            return null;
        }

        private Companion() {
        }
    }

    public BeginCreateCredentialRequest(@NotNull String type, @NotNull Bundle candidateQueryData, @Nullable CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        this.type = type;
        this.candidateQueryData = candidateQueryData;
        this.callingAppInfo = callingAppInfo;
    }

    @NotNull
    public static final Bundle asBundle(@NotNull BeginCreateCredentialRequest beginCreateCredentialRequest) {
        return Companion.asBundle(beginCreateCredentialRequest);
    }

    @Nullable
    public static final BeginCreateCredentialRequest fromBundle(@NotNull Bundle bundle) {
        return Companion.fromBundle(bundle);
    }

    @Nullable
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }

    @NotNull
    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }
}
