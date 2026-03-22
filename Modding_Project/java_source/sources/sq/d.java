package sq;

import androidx.annotation.NonNull;
import java.io.File;
import java.util.Date;
/* loaded from: classes8.dex */
public class d extends b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Date f66574a;

    public d() {
        this(3);
    }

    @Override // sq.b
    protected boolean a(@NonNull File file) {
        return e.h(file, this.f66574a);
    }

    public d(int i10) {
        this.f66574a = m.b(i10);
    }
}
