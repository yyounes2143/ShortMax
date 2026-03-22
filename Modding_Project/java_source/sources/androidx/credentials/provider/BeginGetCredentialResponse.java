package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginGetCredentialResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeginGetCredentialResponse {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<Action> actions;
    @NotNull
    private final List<AuthenticationAction> authenticationActions;
    @NotNull
    private final List<CredentialEntry> credentialEntries;
    @Nullable
    private final RemoteEntry remoteEntry;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BeginGetCredentialResponse.kt */
    @RequiresApi(34)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api34Impl {
        @NotNull
        public static final Api34Impl INSTANCE = new Api34Impl();
        @NotNull
        private static final String REQUEST_KEY = "androidx.credentials.provider.BeginGetCredentialResponse";

        private Api34Impl() {
        }

        @DoNotInline
        public static final void asBundle(@NotNull Bundle bundle, @NotNull BeginGetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(response, "response");
            bundle.putParcelable(REQUEST_KEY, BeginGetCredentialUtil.Companion.convertToFrameworkResponse(response));
        }

        @DoNotInline
        @Nullable
        public static final BeginGetCredentialResponse fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            android.service.credentials.BeginGetCredentialResponse beginGetCredentialResponse = (android.service.credentials.BeginGetCredentialResponse) bundle.getParcelable(REQUEST_KEY, android.service.credentials.BeginGetCredentialResponse.class);
            if (beginGetCredentialResponse != null) {
                return BeginGetCredentialUtil.Companion.convertToJetpackResponse(beginGetCredentialResponse);
            }
            return null;
        }
    }

    /* compiled from: BeginGetCredentialResponse.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        @Nullable
        private RemoteEntry remoteEntry;
        @NotNull
        private List<CredentialEntry> credentialEntries = new ArrayList();
        @NotNull
        private List<Action> actions = new ArrayList();
        @NotNull
        private List<AuthenticationAction> authenticationActions = new ArrayList();

        @NotNull
        public final Builder addAction(@NotNull Action action) {
            Intrinsics.checkNotNullParameter(action, "action");
            this.actions.add(action);
            return this;
        }

        @NotNull
        public final Builder addAuthenticationAction(@NotNull AuthenticationAction authenticationAction) {
            Intrinsics.checkNotNullParameter(authenticationAction, "authenticationAction");
            this.authenticationActions.add(authenticationAction);
            return this;
        }

        @NotNull
        public final Builder addCredentialEntry(@NotNull CredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            this.credentialEntries.add(entry);
            return this;
        }

        @NotNull
        public final BeginGetCredentialResponse build() {
            return new BeginGetCredentialResponse(CollectionsKt.d1(this.credentialEntries), CollectionsKt.d1(this.actions), CollectionsKt.d1(this.authenticationActions), this.remoteEntry);
        }

        @NotNull
        public final Builder setActions(@NotNull List<Action> actions) {
            Intrinsics.checkNotNullParameter(actions, "actions");
            this.actions = CollectionsKt.g1(actions);
            return this;
        }

        @NotNull
        public final Builder setAuthenticationActions(@NotNull List<AuthenticationAction> authenticationEntries) {
            Intrinsics.checkNotNullParameter(authenticationEntries, "authenticationEntries");
            this.authenticationActions = CollectionsKt.g1(authenticationEntries);
            return this;
        }

        @NotNull
        public final Builder setCredentialEntries(@NotNull List<? extends CredentialEntry> entries) {
            Intrinsics.checkNotNullParameter(entries, "entries");
            this.credentialEntries = CollectionsKt.g1(entries);
            return this;
        }

        @NotNull
        public final Builder setRemoteEntry(@Nullable RemoteEntry remoteEntry) {
            this.remoteEntry = remoteEntry;
            return this;
        }
    }

    /* compiled from: BeginGetCredentialResponse.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Bundle asBundle(@NotNull BeginGetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            Bundle bundle = new Bundle();
            if (Build.VERSION.SDK_INT >= 34) {
                Api34Impl.asBundle(bundle, response);
            }
            return bundle;
        }

        @Nullable
        public final BeginGetCredentialResponse fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.fromBundle(bundle);
            }
            return null;
        }

        private Companion() {
        }
    }

    public BeginGetCredentialResponse() {
        this(null, null, null, null, 15, null);
    }

    @NotNull
    public static final Bundle asBundle(@NotNull BeginGetCredentialResponse beginGetCredentialResponse) {
        return Companion.asBundle(beginGetCredentialResponse);
    }

    @Nullable
    public static final BeginGetCredentialResponse fromBundle(@NotNull Bundle bundle) {
        return Companion.fromBundle(bundle);
    }

    @NotNull
    public final List<Action> getActions() {
        return this.actions;
    }

    @NotNull
    public final List<AuthenticationAction> getAuthenticationActions() {
        return this.authenticationActions;
    }

    @NotNull
    public final List<CredentialEntry> getCredentialEntries() {
        return this.credentialEntries;
    }

    @Nullable
    public final RemoteEntry getRemoteEntry() {
        return this.remoteEntry;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BeginGetCredentialResponse(@NotNull List<? extends CredentialEntry> credentialEntries, @NotNull List<Action> actions, @NotNull List<AuthenticationAction> authenticationActions, @Nullable RemoteEntry remoteEntry) {
        Intrinsics.checkNotNullParameter(credentialEntries, "credentialEntries");
        Intrinsics.checkNotNullParameter(actions, "actions");
        Intrinsics.checkNotNullParameter(authenticationActions, "authenticationActions");
        this.credentialEntries = credentialEntries;
        this.actions = actions;
        this.authenticationActions = authenticationActions;
        this.remoteEntry = remoteEntry;
    }

    public /* synthetic */ BeginGetCredentialResponse(List list, List list2, List list3, RemoteEntry remoteEntry, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CollectionsKt.n() : list, (i10 & 2) != 0 ? CollectionsKt.n() : list2, (i10 & 4) != 0 ? CollectionsKt.n() : list3, (i10 & 8) != 0 ? null : remoteEntry);
    }
}
