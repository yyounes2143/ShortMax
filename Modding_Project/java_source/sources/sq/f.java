package sq;

import androidx.annotation.NonNull;
import java.io.File;
/* loaded from: classes8.dex */
public class f extends b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66575a;

    public f(@NonNull String str) {
        this.f66575a = str;
    }

    @Override // sq.b
    protected boolean a(@NonNull File file) {
        return e.i(file, this.f66575a);
    }
}
