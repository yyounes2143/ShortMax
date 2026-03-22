package sn;

import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.g0;
import java.util.List;
/* compiled from: CompositeSequenceableLoader.java */
/* loaded from: classes8.dex */
public final class d implements g0 {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<a> f66482a;

    /* renamed from: b  reason: collision with root package name */
    private long f66483b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CompositeSequenceableLoader.java */
    /* loaded from: classes8.dex */
    public static final class a implements g0 {

        /* renamed from: a  reason: collision with root package name */
        private final g0 f66484a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<Integer> f66485b;

        public a(g0 g0Var, List<Integer> list) {
            this.f66484a = g0Var;
            this.f66485b = ImmutableList.u(list);
        }

        @Override // io.bidmachine.media3.exoplayer.source.g0
        public boolean b(k1 k1Var) {
            return this.f66484a.b(k1Var);
        }

        public ImmutableList<Integer> c() {
            return this.f66485b;
        }

        @Override // io.bidmachine.media3.exoplayer.source.g0
        public long getBufferedPositionUs() {
            return this.f66484a.getBufferedPositionUs();
        }

        @Override // io.bidmachine.media3.exoplayer.source.g0
        public long getNextLoadPositionUs() {
            return this.f66484a.getNextLoadPositionUs();
        }

        @Override // io.bidmachine.media3.exoplayer.source.g0
        public boolean isLoading() {
            return this.f66484a.isLoading();
        }

        @Override // io.bidmachine.media3.exoplayer.source.g0
        public void reevaluateBuffer(long j10) {
            this.f66484a.reevaluateBuffer(j10);
        }
    }

    public d(List<? extends g0> list, List<List<Integer>> list2) {
        boolean z10;
        ImmutableList.a r10 = ImmutableList.r();
        if (list.size() == list2.size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        for (int i10 = 0; i10 < list.size(); i10++) {
            r10.a(new a(list.get(i10), list2.get(i10)));
        }
        this.f66482a = r10.k();
        this.f66483b = -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            z10 = false;
            for (int i10 = 0; i10 < this.f66482a.size(); i10++) {
                long nextLoadPositionUs2 = this.f66482a.get(i10).getNextLoadPositionUs();
                if (nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= k1Var.f56411a) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (nextLoadPositionUs2 == nextLoadPositionUs || z11) {
                    z10 |= this.f66482a.get(i10).b(k1Var);
                }
            }
            z12 |= z10;
        } while (z10);
        return z12;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        long j10 = Long.MAX_VALUE;
        long j11 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < this.f66482a.size(); i10++) {
            a aVar = this.f66482a.get(i10);
            long bufferedPositionUs = aVar.getBufferedPositionUs();
            if ((aVar.c().contains(1) || aVar.c().contains(2) || aVar.c().contains(4)) && bufferedPositionUs != Long.MIN_VALUE) {
                j10 = Math.min(j10, bufferedPositionUs);
            }
            if (bufferedPositionUs != Long.MIN_VALUE) {
                j11 = Math.min(j11, bufferedPositionUs);
            }
        }
        if (j10 != Long.MAX_VALUE) {
            this.f66483b = j10;
            return j10;
        } else if (j11 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        } else {
            long j12 = this.f66483b;
            if (j12 != -9223372036854775807L) {
                return j12;
            }
            return j11;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < this.f66482a.size(); i10++) {
            long nextLoadPositionUs = this.f66482a.get(i10).getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                j10 = Math.min(j10, nextLoadPositionUs);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        for (int i10 = 0; i10 < this.f66482a.size(); i10++) {
            if (this.f66482a.get(i10).isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        for (int i10 = 0; i10 < this.f66482a.size(); i10++) {
            this.f66482a.get(i10).reevaluateBuffer(j10);
        }
    }
}
