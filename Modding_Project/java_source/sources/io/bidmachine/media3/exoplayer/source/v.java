package io.bidmachine.media3.exoplayer.source;

import androidx.annotation.Nullable;
import com.google.common.collect.Lists;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
/* compiled from: MergingMediaPeriod.java */
/* loaded from: classes8.dex */
final class v implements q, q.a {

    /* renamed from: a  reason: collision with root package name */
    private final q[] f57001a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean[] f57002b;

    /* renamed from: d  reason: collision with root package name */
    private final sn.e f57004d;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private q.a f57007g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private sn.x f57008h;

    /* renamed from: j  reason: collision with root package name */
    private g0 f57010j;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList<q> f57005e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private final HashMap<zm.b0, zm.b0> f57006f = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final IdentityHashMap<sn.s, Integer> f57003c = new IdentityHashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private q[] f57009i = new q[0];

    /* compiled from: MergingMediaPeriod.java */
    /* loaded from: classes8.dex */
    private static final class a implements vn.q {

        /* renamed from: a  reason: collision with root package name */
        private final vn.q f57011a;

        /* renamed from: b  reason: collision with root package name */
        private final zm.b0 f57012b;

        public a(vn.q qVar, zm.b0 b0Var) {
            this.f57011a = qVar;
            this.f57012b = b0Var;
        }

        @Override // vn.q
        public void a() {
            this.f57011a.a();
        }

        @Override // vn.q
        public void b() {
            this.f57011a.b();
        }

        @Override // vn.q
        public void c(boolean z10) {
            this.f57011a.c(z10);
        }

        @Override // vn.q
        public boolean d(int i10, long j10) {
            return this.f57011a.d(i10, j10);
        }

        @Override // vn.q
        public void disable() {
            this.f57011a.disable();
        }

        @Override // vn.t
        public int e(io.bidmachine.media3.common.a aVar) {
            return this.f57011a.indexOf(this.f57012b.b(aVar));
        }

        @Override // vn.q
        public void enable() {
            this.f57011a.enable();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f57011a.equals(aVar.f57011a) && this.f57012b.equals(aVar.f57012b)) {
                return true;
            }
            return false;
        }

        @Override // vn.q
        public int evaluateQueueSize(long j10, List<? extends tn.m> list) {
            return this.f57011a.evaluateQueueSize(j10, list);
        }

        @Override // vn.q
        public boolean f(int i10, long j10) {
            return this.f57011a.f(i10, j10);
        }

        @Override // vn.q
        public boolean g(long j10, tn.e eVar, List<? extends tn.m> list) {
            return this.f57011a.g(j10, eVar, list);
        }

        @Override // vn.t
        public io.bidmachine.media3.common.a getFormat(int i10) {
            return this.f57012b.a(this.f57011a.getIndexInTrackGroup(i10));
        }

        @Override // vn.t
        public int getIndexInTrackGroup(int i10) {
            return this.f57011a.getIndexInTrackGroup(i10);
        }

        @Override // vn.q
        public io.bidmachine.media3.common.a getSelectedFormat() {
            return this.f57012b.a(this.f57011a.getSelectedIndexInTrackGroup());
        }

        @Override // vn.q
        public int getSelectedIndex() {
            return this.f57011a.getSelectedIndex();
        }

        @Override // vn.q
        public int getSelectedIndexInTrackGroup() {
            return this.f57011a.getSelectedIndexInTrackGroup();
        }

        @Override // vn.q
        @Nullable
        public Object getSelectionData() {
            return this.f57011a.getSelectionData();
        }

        @Override // vn.q
        public int getSelectionReason() {
            return this.f57011a.getSelectionReason();
        }

        @Override // vn.t
        public zm.b0 getTrackGroup() {
            return this.f57012b;
        }

        @Override // vn.q
        public void h(long j10, long j11, long j12, List<? extends tn.m> list, tn.n[] nVarArr) {
            this.f57011a.h(j10, j11, j12, list, nVarArr);
        }

        public int hashCode() {
            return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f57012b.hashCode()) * 31) + this.f57011a.hashCode();
        }

        @Override // vn.t
        public int indexOf(int i10) {
            return this.f57011a.indexOf(i10);
        }

        @Override // vn.t
        public int length() {
            return this.f57011a.length();
        }

        @Override // vn.q
        public void onPlaybackSpeed(float f10) {
            this.f57011a.onPlaybackSpeed(f10);
        }
    }

    public v(sn.e eVar, long[] jArr, q... qVarArr) {
        this.f57004d = eVar;
        this.f57001a = qVarArr;
        this.f57010j = eVar.a();
        this.f57002b = new boolean[qVarArr.length];
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            long j10 = jArr[i10];
            if (j10 != 0) {
                this.f57002b[i10] = true;
                this.f57001a[i10] = new k0(qVarArr[i10], j10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List j(q qVar) {
        return qVar.getTrackGroups().c();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, gn.i0 i0Var) {
        q qVar;
        q[] qVarArr = this.f57009i;
        if (qVarArr.length > 0) {
            qVar = qVarArr[0];
        } else {
            qVar = this.f57001a[0];
        }
        return qVar.a(j10, i0Var);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        if (!this.f57005e.isEmpty()) {
            int size = this.f57005e.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f57005e.get(i10).b(k1Var);
            }
            return false;
        }
        return this.f57010j.b(k1Var);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q.a
    public void d(q qVar) {
        this.f57005e.remove(qVar);
        if (!this.f57005e.isEmpty()) {
            return;
        }
        int i10 = 0;
        for (q qVar2 : this.f57001a) {
            i10 += qVar2.getTrackGroups().f66547a;
        }
        zm.b0[] b0VarArr = new zm.b0[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            q[] qVarArr = this.f57001a;
            if (i11 < qVarArr.length) {
                sn.x trackGroups = qVarArr[i11].getTrackGroups();
                int i13 = trackGroups.f66547a;
                int i14 = 0;
                while (i14 < i13) {
                    zm.b0 b10 = trackGroups.b(i14);
                    io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[b10.f71809a];
                    for (int i15 = 0; i15 < b10.f71809a; i15++) {
                        io.bidmachine.media3.common.a a10 = b10.a(i15);
                        a.b b11 = a10.b();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(i11);
                        sb2.append(":");
                        String str = a10.f55160a;
                        if (str == null) {
                            str = "";
                        }
                        sb2.append(str);
                        aVarArr[i15] = b11.f0(sb2.toString()).N();
                    }
                    zm.b0 b0Var = new zm.b0(i11 + ":" + b10.f71810b, aVarArr);
                    this.f57006f.put(b0Var, b10);
                    b0VarArr[i12] = b0Var;
                    i14++;
                    i12++;
                }
                i11++;
            } else {
                this.f57008h = new sn.x(b0VarArr);
                ((q.a) cn.a.e(this.f57007g)).d(this);
                return;
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
        for (q qVar : this.f57009i) {
            qVar.discardBuffer(j10, z10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        this.f57007g = aVar;
        Collections.addAll(this.f57005e, this.f57001a);
        for (q qVar : this.f57001a) {
            qVar.e(this, j10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        return this.f57010j.getBufferedPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        return this.f57010j.getNextLoadPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public sn.x getTrackGroups() {
        return (sn.x) cn.a.e(this.f57008h);
    }

    public q h(int i10) {
        if (this.f57002b[i10]) {
            return ((k0) this.f57001a[i10]).c();
        }
        return this.f57001a[i10];
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        vn.q qVar;
        vn.q qVar2;
        int intValue;
        int[] iArr = new int[qVarArr.length];
        int[] iArr2 = new int[qVarArr.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            qVar = null;
            Integer num = null;
            if (i11 >= qVarArr.length) {
                break;
            }
            sn.s sVar = sVarArr[i11];
            if (sVar != null) {
                num = this.f57003c.get(sVar);
            }
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            iArr[i11] = intValue;
            vn.q qVar3 = qVarArr[i11];
            if (qVar3 != null) {
                String str = qVar3.getTrackGroup().f71810b;
                iArr2[i11] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr2[i11] = -1;
            }
            i11++;
        }
        this.f57003c.clear();
        int length = qVarArr.length;
        sn.s[] sVarArr2 = new sn.s[length];
        sn.s[] sVarArr3 = new sn.s[qVarArr.length];
        vn.q[] qVarArr2 = new vn.q[qVarArr.length];
        ArrayList arrayList = new ArrayList(this.f57001a.length);
        long j11 = j10;
        int i12 = 0;
        while (i12 < this.f57001a.length) {
            for (int i13 = i10; i13 < qVarArr.length; i13++) {
                if (iArr[i13] == i12) {
                    qVar2 = sVarArr[i13];
                } else {
                    qVar2 = qVar;
                }
                sVarArr3[i13] = qVar2;
                if (iArr2[i13] == i12) {
                    vn.q qVar4 = (vn.q) cn.a.e(qVarArr[i13]);
                    qVarArr2[i13] = new a(qVar4, (zm.b0) cn.a.e(this.f57006f.get(qVar4.getTrackGroup())));
                } else {
                    qVarArr2[i13] = qVar;
                }
            }
            int i14 = i12;
            ArrayList arrayList2 = arrayList;
            vn.q[] qVarArr3 = qVarArr2;
            long i15 = this.f57001a[i12].i(qVarArr2, zArr, sVarArr3, zArr2, j11);
            if (i14 == 0) {
                j11 = i15;
            } else if (i15 != j11) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z10 = false;
            for (int i16 = 0; i16 < qVarArr.length; i16++) {
                boolean z11 = true;
                if (iArr2[i16] == i14) {
                    sVarArr2[i16] = sVarArr3[i16];
                    this.f57003c.put((sn.s) cn.a.e(sVarArr3[i16]), Integer.valueOf(i14));
                    z10 = true;
                } else if (iArr[i16] == i14) {
                    if (sVarArr3[i16] != null) {
                        z11 = false;
                    }
                    cn.a.g(z11);
                }
            }
            if (z10) {
                arrayList2.add(this.f57001a[i14]);
            }
            i12 = i14 + 1;
            arrayList = arrayList2;
            qVarArr2 = qVarArr3;
            i10 = 0;
            qVar = null;
        }
        int i17 = i10;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(sVarArr2, i17, sVarArr, i17, length);
        this.f57009i = (q[]) arrayList3.toArray(new q[i17]);
        this.f57010j = this.f57004d.b(arrayList3, Lists.l(arrayList3, new h7.e() { // from class: io.bidmachine.media3.exoplayer.source.u
            @Override // h7.e
            public final Object apply(Object obj) {
                List j12;
                j12 = v.j((q) obj);
                return j12;
            }
        }));
        return j11;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f57010j.isLoading();
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0.a
    /* renamed from: k */
    public void f(q qVar) {
        ((q.a) cn.a.e(this.f57007g)).f(this);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        for (q qVar : this.f57001a) {
            qVar.maybeThrowPrepareError();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        q[] qVarArr;
        q[] qVarArr2;
        long j10 = -9223372036854775807L;
        for (q qVar : this.f57009i) {
            long readDiscontinuity = qVar.readDiscontinuity();
            if (readDiscontinuity != -9223372036854775807L) {
                if (j10 == -9223372036854775807L) {
                    for (q qVar2 : this.f57009i) {
                        if (qVar2 == qVar) {
                            break;
                        } else if (qVar2.seekToUs(readDiscontinuity) != readDiscontinuity) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j10 = readDiscontinuity;
                } else if (readDiscontinuity != j10) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j10 != -9223372036854775807L && qVar.seekToUs(j10) != j10) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        this.f57010j.reevaluateBuffer(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        long seekToUs = this.f57009i[0].seekToUs(j10);
        int i10 = 1;
        while (true) {
            q[] qVarArr = this.f57009i;
            if (i10 < qVarArr.length) {
                if (qVarArr[i10].seekToUs(seekToUs) == seekToUs) {
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
