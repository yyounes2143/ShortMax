package ao;

import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.List;
/* compiled from: Extractor.java */
/* loaded from: classes8.dex */
public interface p {
    void b(r rVar);

    default List<n0> d() {
        return ImmutableList.A();
    }

    boolean e(q qVar) throws IOException;

    int f(q qVar, i0 i0Var) throws IOException;

    void release();

    void seek(long j10, long j11);

    default p c() {
        return this;
    }
}
