package p6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
/* compiled from: ExoplayerCuesDecoder.java */
/* loaded from: classes4.dex */
public final class g implements j {

    /* renamed from: a  reason: collision with root package name */
    private final c f64773a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final m f64774b = new m();

    /* renamed from: c  reason: collision with root package name */
    private final Deque<n> f64775c = new ArrayDeque();

    /* renamed from: d  reason: collision with root package name */
    private int f64776d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f64777e;

    /* compiled from: ExoplayerCuesDecoder.java */
    /* loaded from: classes4.dex */
    class a extends n {
        a() {
        }

        @Override // r5.f
        public void l() {
            g.this.e(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoplayerCuesDecoder.java */
    /* loaded from: classes4.dex */
    public static final class b implements i {

        /* renamed from: a  reason: collision with root package name */
        private final long f64779a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<p6.b> f64780b;

        public b(long j10, ImmutableList<p6.b> immutableList) {
            this.f64779a = j10;
            this.f64780b = immutableList;
        }

        @Override // p6.i
        public List<p6.b> getCues(long j10) {
            if (j10 >= this.f64779a) {
                return this.f64780b;
            }
            return ImmutableList.A();
        }

        @Override // p6.i
        public long getEventTime(int i10) {
            boolean z10;
            if (i10 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.a(z10);
            return this.f64779a;
        }

        @Override // p6.i
        public int getEventTimeCount() {
            return 1;
        }

        @Override // p6.i
        public int getNextEventTimeIndex(long j10) {
            if (this.f64779a > j10) {
                return 0;
            }
            return -1;
        }
    }

    public g() {
        for (int i10 = 0; i10 < 2; i10++) {
            this.f64775c.addFirst(new a());
        }
        this.f64776d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(n nVar) {
        boolean z10;
        if (this.f64775c.size() < 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        b7.a.a(!this.f64775c.contains(nVar));
        nVar.b();
        this.f64775c.addFirst(nVar);
    }

    @Override // r5.d
    @Nullable
    /* renamed from: b */
    public m dequeueInputBuffer() throws SubtitleDecoderException {
        b7.a.g(!this.f64777e);
        if (this.f64776d != 0) {
            return null;
        }
        this.f64776d = 1;
        return this.f64774b;
    }

    @Override // r5.d
    @Nullable
    /* renamed from: c */
    public n dequeueOutputBuffer() throws SubtitleDecoderException {
        b7.a.g(!this.f64777e);
        if (this.f64776d == 2 && !this.f64775c.isEmpty()) {
            n removeFirst = this.f64775c.removeFirst();
            if (this.f64774b.h()) {
                removeFirst.a(4);
            } else {
                m mVar = this.f64774b;
                removeFirst.m(this.f64774b.f17475e, new b(mVar.f17475e, this.f64773a.a(((ByteBuffer) b7.a.e(mVar.f17473c)).array())), 0L);
            }
            this.f64774b.b();
            this.f64776d = 0;
            return removeFirst;
        }
        return null;
    }

    @Override // r5.d
    /* renamed from: d */
    public void queueInputBuffer(m mVar) throws SubtitleDecoderException {
        boolean z10;
        boolean z11 = true;
        b7.a.g(!this.f64777e);
        if (this.f64776d == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (this.f64774b != mVar) {
            z11 = false;
        }
        b7.a.a(z11);
        this.f64776d = 2;
    }

    @Override // r5.d
    public void flush() {
        b7.a.g(!this.f64777e);
        this.f64774b.b();
        this.f64776d = 0;
    }

    @Override // r5.d
    public void release() {
        this.f64777e = true;
    }

    @Override // p6.j
    public void setPositionUs(long j10) {
    }
}
