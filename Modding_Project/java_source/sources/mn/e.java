package mn;

import android.net.Uri;
import androidx.annotation.Nullable;
import ao.q;
import cn.h0;
import hn.b2;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import yo.r;
/* compiled from: HlsExtractorFactory.java */
/* loaded from: classes8.dex */
public interface e {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final e f62540a = new c();

    f e(Uri uri, io.bidmachine.media3.common.a aVar, @Nullable List<io.bidmachine.media3.common.a> list, h0 h0Var, Map<String, List<String>> map, q qVar, b2 b2Var) throws IOException;

    default e a(r.a aVar) {
        return this;
    }

    default e b(int i10) {
        return this;
    }

    default e c(boolean z10) {
        return this;
    }

    default io.bidmachine.media3.common.a d(io.bidmachine.media3.common.a aVar) {
        return aVar;
    }
}
