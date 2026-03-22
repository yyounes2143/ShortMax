package t5;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* compiled from: ExtractorsFactory.java */
/* loaded from: classes4.dex */
public interface p {

    /* renamed from: a  reason: collision with root package name */
    public static final p f67176a = new p() { // from class: t5.o
        @Override // t5.p
        public final k[] createExtractors() {
            k[] c10;
            c10 = p.c();
            return c10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ k[] c() {
        return new k[0];
    }

    k[] createExtractors();

    default k[] d(Uri uri, Map<String, List<String>> map) {
        return createExtractors();
    }
}
