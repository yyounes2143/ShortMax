package io.bidmachine.media3.exoplayer.dash;

import androidx.annotation.Nullable;
import en.o;
import hn.b2;
import io.bidmachine.media3.exoplayer.dash.f;
import java.util.List;
import tn.i;
import vn.q;
import wn.k;
import yo.r;
/* compiled from: DashChunkSource.java */
/* loaded from: classes8.dex */
public interface a extends i {
    void c(kn.c cVar, int i10);

    void d(q qVar);

    /* compiled from: DashChunkSource.java */
    /* renamed from: io.bidmachine.media3.exoplayer.dash.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0800a {
        a e(k kVar, kn.c cVar, jn.b bVar, int i10, int[] iArr, q qVar, int i11, long j10, boolean z10, List<io.bidmachine.media3.common.a> list, @Nullable f.c cVar2, @Nullable o oVar, b2 b2Var, @Nullable wn.e eVar);

        default InterfaceC0800a a(r.a aVar) {
            return this;
        }

        default InterfaceC0800a b(int i10) {
            return this;
        }

        default InterfaceC0800a c(boolean z10) {
            return this;
        }

        default io.bidmachine.media3.common.a d(io.bidmachine.media3.common.a aVar) {
            return aVar;
        }
    }
}
