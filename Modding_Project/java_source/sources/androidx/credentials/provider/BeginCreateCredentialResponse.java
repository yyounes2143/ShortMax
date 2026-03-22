package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginCreateCredentialUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginCreateCredentialResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeginCreateCredentialResponse {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<CreateEntry> createEntries;
    @Nullable
    private final RemoteEntry remoteEntry;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BeginCreateCredentialResponse.kt */
    @RequiresApi(34)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api34Impl {
        @NotNull
        public static final Api34Impl INSTANCE = new Api34Impl();
        @NotNull
        private static final String REQUEST_KEY = "androidx.credentials.provider.BeginCreateCredentialResponse";

        private Api34Impl() {
        }

        @DoNotInline
        public static final void asBundle(@NotNull Bundle bundle, @NotNull BeginCreateCredentialResponse response) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(response, "response");
            bundle.putParcelable(REQUEST_KEY, BeginCreateCredentialUtil.Companion.convertToFrameworkResponse(response));
        }

        @DoNotInline
        @Nullable
        public static final BeginCreateCredentialResponse fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            android.service.credentials.BeginCreateCredentialResponse beginCreateCredentialResponse = (android.service.credentials.BeginCreateCredentialResponse) bundle.getParcelable(REQUEST_KEY, android.service.credentials.BeginCreateCredentialResponse.class);
            if (beginCreateCredentialResponse != null) {
                return BeginCreateCredentialUtil.Companion.convertToJetpackResponse(beginCreateCredentialResponse);
            }
            return null;
        }
    }

    /* compiled from: BeginCreateCredentialResponse.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        @NotNull
        private List<CreateEntry> createEntries = new ArrayList();
        @Nullable
        private RemoteEntry remoteEntry;

        @NotNull
        public final Builder addCreateEntry(@NotNull CreateEntry createEntry) {
            Intrinsics.checkNotNullParameter(createEntry, "createEntry");
            this.createEntries.add(createEntry);
            return this;
        }

        @NotNull
        public final BeginCreateCredentialResponse build() {
            return new BeginCreateCredentialResponse(CollectionsKt.d1(this.createEntries), this.remoteEntry);
        }

        @NotNull
        public final Builder setCreateEntries(@NotNull List<CreateEntry> createEntries) {
            Intrinsics.checkNotNullParameter(createEntries, "createEntries");
            this.createEntries = CollectionsKt.g1(createEntries);
            return this;
        }

        @NotNull
        public final Builder setRemoteEntry(@Nullable RemoteEntry remoteEntry) {
            this.remoteEntry = remoteEntry;
            return this;
        }
    }

    /* compiled from: BeginCreateCredentialResponse.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Bundle asBundle(@NotNull BeginCreateCredentialResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            Bundle bundle = new Bundle();
            if (Build.VERSION.SDK_INT >= 34) {
                Api34Impl.asBundle(bundle, response);
            }
            return bundle;
        }

        @Nullable
        public final BeginCreateCredentialResponse fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.fromBundle(bundle);
            }
            return null;
        }

        private Companion() {
        }
    }

    public BeginCreateCredentialResponse() {
        this(null, null, 3, null);
    }

    @NotNull
    public static final Bundle asBundle(@NotNull BeginCreateCredentialResponse beginCreateCredentialResponse) {
        return Companion.asBundle(beginCreateCredentialResponse);
    }

    @Nullable
    public static final BeginCreateCredentialResponse fromBundle(@NotNull Bundle bundle) {
        return Companion.fromBundle(bundle);
    }

    @NotNull
    public final List<CreateEntry> getCreateEntries() {
        return this.createEntries;
    }

    @Nullable
    public final RemoteEntry getRemoteEntry() {
        return this.remoteEntry;
    }

    public BeginCreateCredentialResponse(@NotNull List<CreateEntry> createEntries, @Nullable RemoteEntry remoteEntry) {
        Intrinsics.checkNotNullParameter(createEntries, "createEntries");
        this.createEntries = createEntries;
        this.remoteEntry = remoteEntry;
    }

    public /* synthetic */ BeginCreateCredentialResponse(List list, RemoteEntry remoteEntry, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CollectionsKt.n() : list, (i10 & 2) != 0 ? null : remoteEntry);
    }
}
