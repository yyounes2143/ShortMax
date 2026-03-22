package t0;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CompoundTrimPathContent.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final List<u> f66670a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(u uVar) {
        this.f66670a.add(uVar);
    }

    public void b(Path path) {
        for (int size = this.f66670a.size() - 1; size >= 0; size--) {
            d1.p.b(path, this.f66670a.get(size));
        }
    }
}
