package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PasswordCredential.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPasswordCredential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredential.kt\nandroidx/credentials/PasswordCredential\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"})
/* loaded from: classes.dex */
public final class PasswordCredential extends Credential {
    @NotNull
    public static final String BUNDLE_KEY_ID = "androidx.credentials.BUNDLE_KEY_ID";
    @NotNull
    public static final String BUNDLE_KEY_PASSWORD = "androidx.credentials.BUNDLE_KEY_PASSWORD";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_PASSWORD_CREDENTIAL = "android.credentials.TYPE_PASSWORD_CREDENTIAL";
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f1396id;
    @NotNull
    private final String password;

    /* compiled from: PasswordCredential.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PasswordCredential createFrom$credentials_release(@NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_ID");
                String string2 = data.getString("androidx.credentials.BUNDLE_KEY_PASSWORD");
                Intrinsics.checkNotNull(string);
                Intrinsics.checkNotNull(string2);
                return new PasswordCredential(string, string2, data, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @NotNull
        public final Bundle toBundle$credentials_release(@NotNull String id2, @NotNull String password) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(password, "password");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_ID", id2);
            bundle.putString("androidx.credentials.BUNDLE_KEY_PASSWORD", password);
            return bundle;
        }

        private Companion() {
        }
    }

    public /* synthetic */ PasswordCredential(String str, String str2, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, bundle);
    }

    @NotNull
    public final String getId() {
        return this.f1396id;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    private PasswordCredential(String str, String str2, Bundle bundle) {
        super(TYPE_PASSWORD_CREDENTIAL, bundle);
        this.f1396id = str;
        this.password = str2;
        if (str2.length() <= 0) {
            throw new IllegalArgumentException("password should not be empty");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PasswordCredential(@NotNull String id2, @NotNull String password) {
        this(id2, password, Companion.toBundle$credentials_release(id2, password));
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(password, "password");
    }
}
