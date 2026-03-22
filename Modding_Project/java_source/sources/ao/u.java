package ao;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import yo.r;
/* compiled from: ExtractorsFactory.java */
/* loaded from: classes8.dex */
public interface u {

    /* renamed from: a  reason: collision with root package name */
    public static final u f1946a = new u() { // from class: ao.t
        @Override // ao.u
        public final p[] createExtractors() {
            p[] c10;
            c10 = u.c();
            return c10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ p[] c() {
        return new p[0];
    }

    p[] createExtractors();

    default p[] d(Uri uri, Map<String, List<String>> map) {
        return createExtractors();
    }

    default u a(r.a aVar) {
        return this;
    }

    default u b(int i10) {
        return this;
    }

    @Deprecated
    default u e(boolean z10) {
        return this;
    }
}
