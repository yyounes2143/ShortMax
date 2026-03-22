package sq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes8.dex */
public class h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66577a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f66578b;

    public h(@NonNull String str) {
        this.f66577a = str;
    }

    @NonNull
    public String toString() {
        if (this.f66578b == null) {
            this.f66578b = this.f66577a + " @" + Integer.toHexString(hashCode());
        }
        return this.f66578b;
    }
}
