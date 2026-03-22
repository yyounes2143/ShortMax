package ja;

import android.app.Activity;
import com.google.firebase.auth.AuthCredential;
import com.hades.aar.auth.base.AuthType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class a extends ka.i {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final v.a f60352d = new v.a();

    @Override // ka.i
    public void i(@NotNull Activity activity, @NotNull AuthCredential authCredential, @Nullable ka.j jVar) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(authCredential, "authCredential");
        super.i(activity, authCredential, jVar);
        b(activity, AuthType.CREDENTIAL, authCredential, null, null, jVar);
    }

    @Override // ka.a
    @NotNull
    public String tag() {
        return "CredentialAuth";
    }
}
