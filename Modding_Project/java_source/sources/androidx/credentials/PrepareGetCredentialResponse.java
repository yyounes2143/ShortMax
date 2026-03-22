package androidx.credentials;

import android.annotation.SuppressLint;
import android.credentials.PrepareGetCredentialResponse;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrepareGetCredentialResponse.kt */
@RequiresApi(34)
@Metadata
@SuppressLint({"MissingGetterMatchingBuilder"})
/* loaded from: classes.dex */
public final class PrepareGetCredentialResponse {
    @Nullable
    private final Function1<String, Boolean> credentialTypeDelegate;
    @Nullable
    private final Function0<Boolean> hasAuthResultsDelegate;
    @Nullable
    private final Function0<Boolean> hasRemoteResultsDelegate;
    private final boolean isNullHandlesForTest;
    @Nullable
    private final PendingGetCredentialHandle pendingGetCredentialHandle;

    /* compiled from: PrepareGetCredentialResponse.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static final class Builder {
        @Nullable
        private android.credentials.PrepareGetCredentialResponse frameworkResponse;
        @Nullable
        private Function0<Boolean> hasAuthResultsDelegate;
        @Nullable
        private Function1<? super String, Boolean> hasCredentialResultsDelegate;
        @Nullable
        private Function0<Boolean> hasRemoteResultsDelegate;
        @Nullable
        private PendingGetCredentialHandle pendingGetCredentialHandle;

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
        public final boolean hasAuthenticationResults() {
            boolean hasAuthenticationResults;
            android.credentials.PrepareGetCredentialResponse prepareGetCredentialResponse = this.frameworkResponse;
            Intrinsics.checkNotNull(prepareGetCredentialResponse);
            hasAuthenticationResults = prepareGetCredentialResponse.hasAuthenticationResults();
            return hasAuthenticationResults;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
        public final boolean hasCredentialType(String str) {
            boolean hasCredentialResults;
            android.credentials.PrepareGetCredentialResponse prepareGetCredentialResponse = this.frameworkResponse;
            Intrinsics.checkNotNull(prepareGetCredentialResponse);
            hasCredentialResults = prepareGetCredentialResponse.hasCredentialResults(str);
            return hasCredentialResults;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
        public final boolean hasRemoteResults() {
            boolean hasRemoteResults;
            android.credentials.PrepareGetCredentialResponse prepareGetCredentialResponse = this.frameworkResponse;
            Intrinsics.checkNotNull(prepareGetCredentialResponse);
            hasRemoteResults = prepareGetCredentialResponse.hasRemoteResults();
            return hasRemoteResults;
        }

        @NotNull
        public final PrepareGetCredentialResponse build() {
            return new PrepareGetCredentialResponse(this.pendingGetCredentialHandle, this.hasRemoteResultsDelegate, this.hasAuthResultsDelegate, this.hasCredentialResultsDelegate, false, null);
        }

        @NotNull
        public final Builder setFrameworkResponse(@Nullable android.credentials.PrepareGetCredentialResponse prepareGetCredentialResponse) {
            this.frameworkResponse = prepareGetCredentialResponse;
            if (prepareGetCredentialResponse != null) {
                this.hasCredentialResultsDelegate = new PrepareGetCredentialResponse$Builder$setFrameworkResponse$1(this);
                this.hasAuthResultsDelegate = new PrepareGetCredentialResponse$Builder$setFrameworkResponse$2(this);
                this.hasRemoteResultsDelegate = new PrepareGetCredentialResponse$Builder$setFrameworkResponse$3(this);
            }
            return this;
        }

        @NotNull
        public final Builder setPendingGetCredentialHandle(@NotNull PendingGetCredentialHandle handle) {
            Intrinsics.checkNotNullParameter(handle, "handle");
            this.pendingGetCredentialHandle = handle;
            return this;
        }
    }

    /* compiled from: PrepareGetCredentialResponse.kt */
    @RequiresApi(34)
    @Metadata
    /* loaded from: classes.dex */
    public static final class PendingGetCredentialHandle {
        @Nullable
        private final PrepareGetCredentialResponse.PendingGetCredentialHandle frameworkHandle;

        public PendingGetCredentialHandle(@Nullable PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle) {
            this.frameworkHandle = pendingGetCredentialHandle;
            if (Build.VERSION.SDK_INT >= 34) {
                Intrinsics.checkNotNull(pendingGetCredentialHandle);
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @Nullable
        public final PrepareGetCredentialResponse.PendingGetCredentialHandle getFrameworkHandle() {
            return this.frameworkHandle;
        }
    }

    /* compiled from: PrepareGetCredentialResponse.kt */
    @Metadata
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class TestBuilder {
        @Nullable
        private Function0<Boolean> hasAuthResultsDelegate;
        @Nullable
        private Function1<? super String, Boolean> hasCredentialResultsDelegate;
        @Nullable
        private Function0<Boolean> hasRemoteResultsDelegate;

        @NotNull
        public final PrepareGetCredentialResponse build() {
            return new PrepareGetCredentialResponse(null, this.hasRemoteResultsDelegate, this.hasAuthResultsDelegate, this.hasCredentialResultsDelegate, true, null);
        }

        @VisibleForTesting
        @NotNull
        public final TestBuilder setCredentialTypeDelegate(@NotNull Function1<? super String, Boolean> handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            this.hasCredentialResultsDelegate = handler;
            return this;
        }

        @VisibleForTesting
        @NotNull
        public final TestBuilder setHasAuthResultsDelegate(@NotNull Function0<Boolean> handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            this.hasAuthResultsDelegate = handler;
            return this;
        }

        @VisibleForTesting
        @NotNull
        public final TestBuilder setHasRemoteResultsDelegate(@NotNull Function0<Boolean> handler) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            this.hasRemoteResultsDelegate = handler;
            return this;
        }
    }

    public /* synthetic */ PrepareGetCredentialResponse(PendingGetCredentialHandle pendingGetCredentialHandle, Function0 function0, Function0 function02, Function1 function1, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(pendingGetCredentialHandle, function0, function02, function1, z10);
    }

    @Nullable
    public final Function1<String, Boolean> getCredentialTypeDelegate() {
        return this.credentialTypeDelegate;
    }

    @Nullable
    public final Function0<Boolean> getHasAuthResultsDelegate() {
        return this.hasAuthResultsDelegate;
    }

    @Nullable
    public final Function0<Boolean> getHasRemoteResultsDelegate() {
        return this.hasRemoteResultsDelegate;
    }

    @Nullable
    public final PendingGetCredentialHandle getPendingGetCredentialHandle() {
        return this.pendingGetCredentialHandle;
    }

    @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
    public final boolean hasAuthenticationResults() {
        Function0<Boolean> function0 = this.hasAuthResultsDelegate;
        if (function0 != null) {
            return function0.invoke().booleanValue();
        }
        return false;
    }

    @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
    public final boolean hasCredentialResults(@NotNull String credentialType) {
        Intrinsics.checkNotNullParameter(credentialType, "credentialType");
        Function1<String, Boolean> function1 = this.credentialTypeDelegate;
        if (function1 != null) {
            return function1.invoke(credentialType).booleanValue();
        }
        return false;
    }

    @RequiresPermission("android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS")
    public final boolean hasRemoteResults() {
        Function0<Boolean> function0 = this.hasRemoteResultsDelegate;
        if (function0 != null) {
            return function0.invoke().booleanValue();
        }
        return false;
    }

    public final boolean isNullHandlesForTest() {
        return this.isNullHandlesForTest;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private PrepareGetCredentialResponse(PendingGetCredentialHandle pendingGetCredentialHandle, Function0<Boolean> function0, Function0<Boolean> function02, Function1<? super String, Boolean> function1, boolean z10) {
        this.pendingGetCredentialHandle = pendingGetCredentialHandle;
        this.hasRemoteResultsDelegate = function0;
        this.hasAuthResultsDelegate = function02;
        this.credentialTypeDelegate = function1;
        this.isNullHandlesForTest = z10;
        if (Build.VERSION.SDK_INT < 34 || z10) {
            return;
        }
        Intrinsics.checkNotNull(pendingGetCredentialHandle);
    }
}
