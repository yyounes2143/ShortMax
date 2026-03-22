package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetPasswordOption.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetPasswordOption extends CredentialOption {
    @NotNull
    public static final String BUNDLE_KEY_ALLOWED_USER_IDS = "androidx.credentials.BUNDLE_KEY_ALLOWED_USER_IDS";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Set<String> allowedUserIds;

    /* compiled from: GetPasswordOption.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GetPasswordOption createFrom$credentials_release(@NotNull Bundle data, @NotNull Set<ComponentName> allowedProviders, @NotNull Bundle candidateQueryData) {
            Set f10;
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            ArrayList<String> stringArrayList = data.getStringArrayList(GetPasswordOption.BUNDLE_KEY_ALLOWED_USER_IDS);
            if (stringArrayList == null || (f10 = CollectionsKt.i1(stringArrayList)) == null) {
                f10 = y0.f();
            }
            return new GetPasswordOption(f10, data.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false), allowedProviders, data, candidateQueryData, null);
        }

        @NotNull
        public final Bundle toBundle$credentials_release(@NotNull Set<String> allowUserIds) {
            Intrinsics.checkNotNullParameter(allowUserIds, "allowUserIds");
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(GetPasswordOption.BUNDLE_KEY_ALLOWED_USER_IDS, new ArrayList<>(allowUserIds));
            return bundle;
        }

        private Companion() {
        }
    }

    public GetPasswordOption() {
        this((Set) null, false, (Set) null, 7, (DefaultConstructorMarker) null);
    }

    @NotNull
    public final Set<String> getAllowedUserIds() {
        return this.allowedUserIds;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetPasswordOption(@NotNull Set<String> allowedUserIds) {
        this((Set) allowedUserIds, false, (Set) null, 6, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(allowedUserIds, "allowedUserIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetPasswordOption(@NotNull Set<String> allowedUserIds, boolean z10) {
        this(allowedUserIds, z10, (Set) null, 4, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(allowedUserIds, "allowedUserIds");
    }

    public /* synthetic */ GetPasswordOption(Set set, boolean z10, Set set2, Bundle bundle, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, z10, set2, bundle, bundle2);
    }

    private GetPasswordOption(Set<String> set, boolean z10, Set<ComponentName> set2, Bundle bundle, Bundle bundle2) {
        super(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, bundle, bundle2, false, z10, set2);
        this.allowedUserIds = set;
    }

    public /* synthetic */ GetPasswordOption(Set set, boolean z10, Set set2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? y0.f() : set, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? y0.f() : set2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GetPasswordOption(@org.jetbrains.annotations.NotNull java.util.Set<java.lang.String> r8, boolean r9, @org.jetbrains.annotations.NotNull java.util.Set<android.content.ComponentName> r10) {
        /*
            r7 = this;
            java.lang.String r0 = "allowedUserIds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "allowedProviders"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            androidx.credentials.GetPasswordOption$Companion r0 = androidx.credentials.GetPasswordOption.Companion
            android.os.Bundle r5 = r0.toBundle$credentials_release(r8)
            android.os.Bundle r6 = r0.toBundle$credentials_release(r8)
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.GetPasswordOption.<init>(java.util.Set, boolean, java.util.Set):void");
    }
}
