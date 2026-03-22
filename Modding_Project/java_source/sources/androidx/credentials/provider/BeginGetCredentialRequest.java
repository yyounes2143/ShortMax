package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginGetCredentialRequest.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeginGetCredentialRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<BeginGetCredentialOption> beginGetCredentialOptions;
    @Nullable
    private final CallingAppInfo callingAppInfo;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BeginGetCredentialRequest.kt */
    @RequiresApi(34)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api34Impl {
        @NotNull
        public static final Api34Impl INSTANCE = new Api34Impl();
        @NotNull
        private static final String REQUEST_KEY = "androidx.credentials.provider.BeginGetCredentialRequest";

        private Api34Impl() {
        }

        @DoNotInline
        public static final void asBundle(@NotNull Bundle bundle, @NotNull BeginGetCredentialRequest request) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(request, "request");
            bundle.putParcelable(REQUEST_KEY, BeginGetCredentialUtil.Companion.convertToFrameworkRequest(request));
        }

        @DoNotInline
        @Nullable
        public static final BeginGetCredentialRequest fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            android.service.credentials.BeginGetCredentialRequest beginGetCredentialRequest = (android.service.credentials.BeginGetCredentialRequest) bundle.getParcelable(REQUEST_KEY, android.service.credentials.BeginGetCredentialRequest.class);
            if (beginGetCredentialRequest != null) {
                return BeginGetCredentialUtil.Companion.convertToJetpackRequest$credentials_release(beginGetCredentialRequest);
            }
            return null;
        }
    }

    /* compiled from: BeginGetCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Bundle asBundle(@NotNull BeginGetCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Bundle bundle = new Bundle();
            if (Build.VERSION.SDK_INT >= 34) {
                Api34Impl.asBundle(bundle, request);
            }
            return bundle;
        }

        @Nullable
        public final BeginGetCredentialRequest fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.fromBundle(bundle);
            }
            return null;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BeginGetCredentialRequest(@NotNull List<? extends BeginGetCredentialOption> beginGetCredentialOptions) {
        this(beginGetCredentialOptions, null, 2, null);
        Intrinsics.checkNotNullParameter(beginGetCredentialOptions, "beginGetCredentialOptions");
    }

    @NotNull
    public static final Bundle asBundle(@NotNull BeginGetCredentialRequest beginGetCredentialRequest) {
        return Companion.asBundle(beginGetCredentialRequest);
    }

    @Nullable
    public static final BeginGetCredentialRequest fromBundle(@NotNull Bundle bundle) {
        return Companion.fromBundle(bundle);
    }

    @NotNull
    public final List<BeginGetCredentialOption> getBeginGetCredentialOptions() {
        return this.beginGetCredentialOptions;
    }

    @Nullable
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BeginGetCredentialRequest(@NotNull List<? extends BeginGetCredentialOption> beginGetCredentialOptions, @Nullable CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(beginGetCredentialOptions, "beginGetCredentialOptions");
        this.beginGetCredentialOptions = beginGetCredentialOptions;
        this.callingAppInfo = callingAppInfo;
    }

    public /* synthetic */ BeginGetCredentialRequest(List list, CallingAppInfo callingAppInfo, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i10 & 2) != 0 ? null : callingAppInfo);
    }
}
