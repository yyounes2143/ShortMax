package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.n;
import com.google.android.exoplayer2.v0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import o5.r0;
/* compiled from: MergingMediaPeriod.java */
/* loaded from: classes4.dex */
final class q implements n, n.a {

    /* renamed from: a  reason: collision with root package name */
    private final n[] f18371a;

    /* renamed from: c  reason: collision with root package name */
    private final n6.d f18373c;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private n.a f18376f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private n6.w f18377g;

    /* renamed from: i  reason: collision with root package name */
    private b0 f18379i;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<n> f18374d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashMap<n6.u, n6.u> f18375e = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final IdentityHashMap<n6.q, Integer> f18372b = new IdentityHashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private n[] f18378h = new n[0];

    /* compiled from: MergingMediaPeriod.java */
    /* loaded from: classes4.dex */
    private static final class a implements z6.y {

        /* renamed from: a  reason: collision with root package name */
        private final z6.y f18380a;

        /* renamed from: b  reason: collision with root package name */
        private final n6.u f18381b;

        public a(z6.y yVar, n6.u uVar) {
            this.f18380a = yVar;
            this.f18381b = uVar;
        }

        @Override // z6.y
        public void a() {
            this.f18380a.a();
        }

        @Override // z6.y
        public void b() {
            this.f18380a.b();
        }

        @Override // z6.y
        public void c(boolean z10) {
            this.f18380a.c(z10);
        }

        @Override // z6.y
        public void disable() {
            this.f18380a.disable();
        }

        @Override // z6.y
        public void enable() {
            this.f18380a.enable();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f18380a.equals(aVar.f18380a) && this.f18381b.equals(aVar.f18381b)) {
                return true;
            }
            return false;
        }

        @Override // z6.b0
        public v0 getFormat(int i10) {
            return this.f18380a.getFormat(i10);
        }

        @Override // z6.b0
        public int getIndexInTrackGroup(int i10) {
            return this.f18380a.getIndexInTrackGroup(i10);
        }

        @Override // z6.y
        public v0 getSelectedFormat() {
            return this.f18380a.getSelectedFormat();
        }

        @Override // z6.b0
        public n6.u getTrackGroup() {
            return this.f18381b;
        }

        public int hashCode() {
            return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18381b.hashCode()) * 31) + this.f18380a.hashCode();
        }

        @Override // z6.b0
        public int indexOf(int i10) {
            return this.f18380a.indexOf(i10);
        }

        @Override // z6.b0
        public int length() {
            return this.f18380a.length();
        }

        @Override // z6.y
        public void onPlaybackSpeed(float f10) {
            this.f18380a.onPlaybackSpeed(f10);
        }
    }

    /* compiled from: MergingMediaPeriod.java */
    /* loaded from: classes4.dex */
    private static final class b implements n, n.a {

        /* renamed from: a  reason: collision with root package name */
        private final n f18382a;

        /* renamed from: b  reason: collision with root package name */
        private final long f18383b;

        /* renamed from: c  reason: collision with root package name */
        private n.a f18384c;

        public b(n nVar, long j10) {
            this.f18382a = nVar;
            this.f18383b = j10;
        }

        @Override // com.google.android.exoplayer2.source.n
        public long a(long j10, r0 r0Var) {
            return this.f18382a.a(j10 - this.f18383b, r0Var) + this.f18383b;
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public boolean continueLoading(long j10) {
            return this.f18382a.continueLoading(j10 - this.f18383b);
        }

        @Override // com.google.android.exoplayer2.source.n.a
        public void d(n nVar) {
            ((n.a) b7.a.e(this.f18384c)).d(this);
        }

        @Override // com.google.android.exoplayer2.source.n
        public void discardBuffer(long j10, boolean z10) {
            this.f18382a.discardBuffer(j10 - this.f18383b, z10);
        }

        @Override // com.google.android.exoplayer2.source.b0.a
        /* renamed from: e */
        public void b(n nVar) {
            ((n.a) b7.a.e(this.f18384c)).b(this);
        }

        @Override // com.google.android.exoplayer2.source.n
        public void f(n.a aVar, long j10) {
            this.f18384c = aVar;
            this.f18382a.f(this, j10 - this.f18383b);
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.f18382a.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f18383b + bufferedPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.f18382a.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.f18383b + nextLoadPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.n
        public n6.w getTrackGroups() {
            return this.f18382a.getTrackGroups();
        }

        @Override // com.google.android.exoplayer2.source.n
        public long h(z6.y[] yVarArr, boolean[] zArr, n6.q[] qVarArr, boolean[] zArr2, long j10) {
            n6.q[] qVarArr2 = new n6.q[qVarArr.length];
            int i10 = 0;
            while (true) {
                n6.q qVar = null;
                if (i10 >= qVarArr.length) {
                    break;
                }
                c cVar = (c) qVarArr[i10];
                if (cVar != null) {
                    qVar = cVar.b();
                }
                qVarArr2[i10] = qVar;
                i10++;
            }
            long h10 = this.f18382a.h(yVarArr, zArr, qVarArr2, zArr2, j10 - this.f18383b);
            for (int i11 = 0; i11 < qVarArr.length; i11++) {
                n6.q qVar2 = qVarArr2[i11];
                if (qVar2 == null) {
                    qVarArr[i11] = null;
                } else {
                    n6.q qVar3 = qVarArr[i11];
                    if (qVar3 == null || ((c) qVar3).b() != qVar2) {
                        qVarArr[i11] = new c(qVar2, this.f18383b);
                    }
                }
            }
            return h10 + this.f18383b;
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public boolean isLoading() {
            return this.f18382a.isLoading();
        }

        @Override // com.google.android.exoplayer2.source.n
        public void maybeThrowPrepareError() throws IOException {
            this.f18382a.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.n
        public long readDiscontinuity() {
            long readDiscontinuity = this.f18382a.readDiscontinuity();
            if (readDiscontinuity == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f18383b + readDiscontinuity;
        }

        @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
        public void reevaluateBuffer(long j10) {
            this.f18382a.reevaluateBuffer(j10 - this.f18383b);
        }

        @Override // com.google.android.exoplayer2.source.n
        public long seekToUs(long j10) {
            return this.f18382a.seekToUs(j10 - this.f18383b) + this.f18383b;
        }
    }

    /* compiled from: MergingMediaPeriod.java */
    /* loaded from: classes4.dex */
    private static final class c implements n6.q {

        /* renamed from: a  reason: collision with root package name */
        private final n6.q f18385a;

        /* renamed from: b  reason: collision with root package name */
        private final long f18386b;

        public c(n6.q qVar, long j10) {
            this.f18385a = qVar;
            this.f18386b = j10;
        }

        @Override // n6.q
        public int a(o5.b0 b0Var, DecoderInputBuffer decoderInputBuffer, int i10) {
            int a10 = this.f18385a.a(b0Var, decoderInputBuffer, i10);
            if (a10 == -4) {
                decoderInputBuffer.f17475e = Math.max(0L, decoderInputBuffer.f17475e + this.f18386b);
            }
            return a10;
        }

        public n6.q b() {
            return this.f18385a;
        }

        @Override // n6.q
        public boolean isReady() {
            return this.f18385a.isReady();
        }

        @Override // n6.q
        public void maybeThrowError() throws IOException {
            this.f18385a.maybeThrowError();
        }

        @Override // n6.q
        public int skipData(long j10) {
            return this.f18385a.skipData(j10 - this.f18386b);
        }
    }

    public q(n6.d dVar, long[] jArr, n... nVarArr) {
        this.f18373c = dVar;
        this.f18371a = nVarArr;
        this.f18379i = dVar.a(new b0[0]);
        for (int i10 = 0; i10 < nVarArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                this.f18371a[i10] = new b(nVarArr[i10], j10);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public long a(long j10, r0 r0Var) {
        n nVar;
        n[] nVarArr = this.f18378h;
        if (nVarArr.length > 0) {
            nVar = nVarArr[0];
        } else {
            nVar = this.f18371a[0];
        }
        return nVar.a(j10, r0Var);
    }

    public n c(int i10) {
        n nVar = this.f18371a[i10];
        if (nVar instanceof b) {
            return ((b) nVar).f18382a;
        }
        return nVar;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j10) {
        if (!this.f18374d.isEmpty()) {
            int size = this.f18374d.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f18374d.get(i10).continueLoading(j10);
            }
            return false;
        }
        return this.f18379i.continueLoading(j10);
    }

    @Override // com.google.android.exoplayer2.source.n.a
    public void d(n nVar) {
        this.f18374d.remove(nVar);
        if (!this.f18374d.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (n nVar2 : this.f18371a) {
            i10 += nVar2.getTrackGroups().f62840a;
        }
        n6.u[] uVarArr = new n6.u[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            n[] nVarArr = this.f18371a;
            if (i11 < nVarArr.length) {
                n6.w trackGroups = nVarArr[i11].getTrackGroups();
                int i13 = trackGroups.f62840a;
                int i14 = 0;
                while (i14 < i13) {
                    n6.u b10 = trackGroups.b(i14);
                    n6.u b11 = b10.b(i11 + ":" + b10.f62834b);
                    this.f18375e.put(b11, b10);
                    uVarArr[i12] = b11;
                    i14++;
                    i12++;
                }
                i11++;
            } else {
                this.f18377g = new n6.w(uVarArr);
                ((n.a) b7.a.e(this.f18376f)).d(this);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public void discardBuffer(long j10, boolean z10) {
        for (n nVar : this.f18378h) {
            nVar.discardBuffer(j10, z10);
        }
    }

    @Override // com.google.android.exoplayer2.source.b0.a
    /* renamed from: e */
    public void b(n nVar) {
        ((n.a) b7.a.e(this.f18376f)).b(this);
    }

    @Override // com.google.android.exoplayer2.source.n
    public void f(n.a aVar, long j10) {
        this.f18376f = aVar;
        Collections.addAll(this.f18374d, this.f18371a);
        for (n nVar : this.f18371a) {
            nVar.f(this, j10);
        }
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getBufferedPositionUs() {
        return this.f18379i.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public long getNextLoadPositionUs() {
        return this.f18379i.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.n
    public n6.w getTrackGroups() {
        return (n6.w) b7.a.e(this.f18377g);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long h(z6.y[] yVarArr, boolean[] zArr, n6.q[] qVarArr, boolean[] zArr2, long j10) {
        z6.y yVar;
        z6.y yVar2;
        int intValue;
        int[] iArr = new int[yVarArr.length];
        int[] iArr2 = new int[yVarArr.length];
        int i10 = 0;
        while (true) {
            yVar = null;
            Integer num = null;
            if (i10 >= yVarArr.length) {
                break;
            }
            n6.q qVar = qVarArr[i10];
            if (qVar != null) {
                num = this.f18372b.get(qVar);
            }
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            iArr[i10] = intValue;
            iArr2[i10] = -1;
            z6.y yVar3 = yVarArr[i10];
            if (yVar3 != null) {
                n6.u uVar = (n6.u) b7.a.e(this.f18375e.get(yVar3.getTrackGroup()));
                int i11 = 0;
                while (true) {
                    n[] nVarArr = this.f18371a;
                    if (i11 >= nVarArr.length) {
                        break;
                    } else if (nVarArr[i11].getTrackGroups().c(uVar) != -1) {
                        iArr2[i10] = i11;
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            i10++;
        }
        this.f18372b.clear();
        int length = yVarArr.length;
        n6.q[] qVarArr2 = new n6.q[length];
        n6.q[] qVarArr3 = new n6.q[yVarArr.length];
        z6.y[] yVarArr2 = new z6.y[yVarArr.length];
        ArrayList arrayList = new ArrayList(this.f18371a.length);
        long j11 = j10;
        int i12 = 0;
        while (i12 < this.f18371a.length) {
            for (int i13 = 0; i13 < yVarArr.length; i13++) {
                if (iArr[i13] == i12) {
                    yVar2 = qVarArr[i13];
                } else {
                    yVar2 = yVar;
                }
                qVarArr3[i13] = yVar2;
                if (iArr2[i13] == i12) {
                    z6.y yVar4 = (z6.y) b7.a.e(yVarArr[i13]);
                    yVarArr2[i13] = new a(yVar4, (n6.u) b7.a.e(this.f18375e.get(yVar4.getTrackGroup())));
                } else {
                    yVarArr2[i13] = yVar;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            z6.y[] yVarArr3 = yVarArr2;
            long h10 = this.f18371a[i12].h(yVarArr2, zArr, qVarArr3, zArr2, j11);
            if (i14 == 0) {
                j11 = h10;
            } else if (h10 != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i15 = 0; i15 < yVarArr.length; i15++) {
                boolean z11 = true;
                if (iArr2[i15] == i14) {
                    qVarArr2[i15] = qVarArr3[i15];
                    this.f18372b.put((n6.q) b7.a.e(qVarArr3[i15]), Integer.valueOf(i14));
                    z10 = true;
                } else if (iArr[i15] == i14) {
                    if (qVarArr3[i15] != null) {
                        z11 = false;
                    }
                    b7.a.g(z11);
                }
            }
            if (z10) {
                arrayList2.add(this.f18371a[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            yVarArr2 = yVarArr3;
            yVar = null;
        }
        System.arraycopy(qVarArr2, 0, qVarArr, 0, length);
        n[] nVarArr2 = (n[]) arrayList.toArray(new n[0]);
        this.f18378h = nVarArr2;
        this.f18379i = this.f18373c.a(nVarArr2);
        return j11;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        return this.f18379i.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.n
    public void maybeThrowPrepareError() throws IOException {
        for (n nVar : this.f18371a) {
            nVar.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.n
    public long readDiscontinuity() {
        n[] nVarArr;
        n[] nVarArr2;
        long j10 = -9223372036854775807L;
        for (n nVar : this.f18378h) {
            long readDiscontinuity = nVar.readDiscontinuity();
            if (readDiscontinuity != -9223372036854775807L) {
                if (j10 == -9223372036854775807L) {
                    for (n nVar2 : this.f18378h) {
                        if (nVar2 == nVar) {
                            break;
                        } else if (nVar2.seekToUs(readDiscontinuity) != readDiscontinuity) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j10 = readDiscontinuity;
                } else if (readDiscontinuity != j10) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j10 != -9223372036854775807L && nVar.seekToUs(j10) != j10) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.n, com.google.android.exoplayer2.source.b0
    public void reevaluateBuffer(long j10) {
        this.f18379i.reevaluateBuffer(j10);
    }

    @Override // com.google.android.exoplayer2.source.n
    public long seekToUs(long j10) {
        long seekToUs = this.f18378h[0].seekToUs(j10);
        int i10 = 1;
        while (true) {
            n[] nVarArr = this.f18378h;
            if (i10 < nVarArr.length) {
                if (nVarArr[i10].seekToUs(seekToUs) == seekToUs) {
                    i10++;
                } else {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else {
                return seekToUs;
            }
        }
    }
}
