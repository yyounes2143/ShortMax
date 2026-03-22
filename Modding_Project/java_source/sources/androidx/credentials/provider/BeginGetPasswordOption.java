package androidx.credentials.provider;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.GetPasswordOption;
import androidx.credentials.PasswordCredential;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BeginGetPasswordOption.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeginGetPasswordOption extends BeginGetCredentialOption {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Set<String> allowedUserIds;

    /* compiled from: BeginGetPasswordOption.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @VisibleForTesting
        @NotNull
        public final BeginGetPasswordOption createForTest(@NotNull Bundle data, @NotNull String id2) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(id2, "id");
            return createFrom$credentials_release(data, id2);
        }

        @NotNull
        public final BeginGetPasswordOption createFrom$credentials_release(@NotNull Bundle data, @NotNull String id2) {
            Set f10;
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(id2, "id");
            ArrayList<String> stringArrayList = data.getStringArrayList(GetPasswordOption.BUNDLE_KEY_ALLOWED_USER_IDS);
            if (stringArrayList == null || (f10 = CollectionsKt.i1(stringArrayList)) == null) {
                f10 = kotlin.collections.y0.f();
            }
            return new BeginGetPasswordOption(f10, data, id2);
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeginGetPasswordOption(@NotNull Set<String> allowedUserIds, @NotNull Bundle candidateQueryData, @NotNull String id2) {
        super(id2, PasswordCredential.TYPE_PASSWORD_CREDENTIAL, candidateQueryData);
        Intrinsics.checkNotNullParameter(allowedUserIds, "allowedUserIds");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(id2, "id");
        this.allowedUserIds = allowedUserIds;
    }

    @VisibleForTesting
    @NotNull
    public static final BeginGetPasswordOption createForTest(@NotNull Bundle bundle, @NotNull String str) {
        return Companion.createForTest(bundle, str);
    }

    @NotNull
    public final Set<String> getAllowedUserIds() {
        return this.allowedUserIds;
    }
}
