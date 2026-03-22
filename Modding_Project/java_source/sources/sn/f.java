package sn;

import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.exoplayer.source.g0;
import java.util.List;
/* compiled from: DefaultCompositeSequenceableLoaderFactory.java */
/* loaded from: classes8.dex */
public final class f implements e {
    @Override // sn.e
    public g0 a() {
        return new d(ImmutableList.A(), ImmutableList.A());
    }

    @Override // sn.e
    public g0 b(List<? extends g0> list, List<List<Integer>> list2) {
        return new d(list, list2);
    }
}
