package b9;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.mbridge.msdk.mbbid.out.BidResponsed;
/* compiled from: com.google.firebase:firebase-auth-interop@@20.0.0 */
@KeepForSdk
/* loaded from: classes5.dex */
public class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f2572a;

    @KeepForSdk
    public b(@Nullable String str) {
        this.f2572a = str;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return Objects.equal(this.f2572a, ((b) obj).f2572a);
    }

    public int hashCode() {
        return Objects.hashCode(this.f2572a);
    }

    @NonNull
    public String toString() {
        return Objects.toStringHelper(this).add(BidResponsed.KEY_TOKEN, this.f2572a).toString();
    }
}
