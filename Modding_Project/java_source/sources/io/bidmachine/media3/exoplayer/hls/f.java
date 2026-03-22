package io.bidmachine.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import en.o;
import gn.i0;
import hn.b2;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.hls.k;
import io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import io.bidmachine.media3.exoplayer.hls.playlist.d;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.g0;
import io.bidmachine.media3.exoplayer.source.q;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sn.x;
import zm.b0;
import zm.p;
import zm.t;
import zm.u;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HlsMediaPeriod.java */
/* loaded from: classes8.dex */
public final class f implements q, HlsPlaylistTracker.b {

    /* renamed from: a  reason: collision with root package name */
    private final mn.e f56056a;

    /* renamed from: b  reason: collision with root package name */
    private final HlsPlaylistTracker f56057b;

    /* renamed from: c  reason: collision with root package name */
    private final mn.d f56058c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final o f56059d;

    /* renamed from: e  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.drm.i f56060e;

    /* renamed from: f  reason: collision with root package name */
    private final h.a f56061f;

    /* renamed from: g  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f56062g;

    /* renamed from: h  reason: collision with root package name */
    private final s.a f56063h;

    /* renamed from: i  reason: collision with root package name */
    private final wn.b f56064i;

    /* renamed from: l  reason: collision with root package name */
    private final sn.e f56067l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f56068m;

    /* renamed from: n  reason: collision with root package name */
    private final int f56069n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f56070o;

    /* renamed from: p  reason: collision with root package name */
    private final b2 f56071p;

    /* renamed from: r  reason: collision with root package name */
    private final long f56073r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private q.a f56074s;

    /* renamed from: t  reason: collision with root package name */
    private int f56075t;

    /* renamed from: u  reason: collision with root package name */
    private x f56076u;

    /* renamed from: y  reason: collision with root package name */
    private int f56080y;

    /* renamed from: z  reason: collision with root package name */
    private g0 f56081z;

    /* renamed from: q  reason: collision with root package name */
    private final k.b f56072q = new b();

    /* renamed from: j  reason: collision with root package name */
    private final IdentityHashMap<sn.s, Integer> f56065j = new IdentityHashMap<>();

    /* renamed from: k  reason: collision with root package name */
    private final mn.i f56066k = new mn.i();

    /* renamed from: v  reason: collision with root package name */
    private k[] f56077v = new k[0];

    /* renamed from: w  reason: collision with root package name */
    private k[] f56078w = new k[0];

    /* renamed from: x  reason: collision with root package name */
    private int[][] f56079x = new int[0];

    /* compiled from: HlsMediaPeriod.java */
    /* loaded from: classes8.dex */
    private class b implements k.b {
        private b() {
        }

        @Override // io.bidmachine.media3.exoplayer.source.g0.a
        /* renamed from: a */
        public void f(k kVar) {
            f.this.f56074s.f(f.this);
        }

        @Override // io.bidmachine.media3.exoplayer.hls.k.b
        public void g(Uri uri) {
            f.this.f56057b.l(uri);
        }

        @Override // io.bidmachine.media3.exoplayer.hls.k.b
        public void onPrepared() {
            k[] kVarArr;
            if (f.g(f.this) <= 0) {
                int i10 = 0;
                for (k kVar : f.this.f56077v) {
                    i10 += kVar.getTrackGroups().f66547a;
                }
                b0[] b0VarArr = new b0[i10];
                int i11 = 0;
                for (k kVar2 : f.this.f56077v) {
                    int i12 = kVar2.getTrackGroups().f66547a;
                    int i13 = 0;
                    while (i13 < i12) {
                        b0VarArr[i11] = kVar2.getTrackGroups().b(i13);
                        i13++;
                        i11++;
                    }
                }
                f.this.f56076u = new x(b0VarArr);
                f.this.f56074s.d(f.this);
            }
        }
    }

    public f(mn.e eVar, HlsPlaylistTracker hlsPlaylistTracker, mn.d dVar, @Nullable o oVar, @Nullable wn.e eVar2, io.bidmachine.media3.exoplayer.drm.i iVar, h.a aVar, io.bidmachine.media3.exoplayer.upstream.b bVar, s.a aVar2, wn.b bVar2, sn.e eVar3, boolean z10, int i10, boolean z11, b2 b2Var, long j10) {
        this.f56056a = eVar;
        this.f56057b = hlsPlaylistTracker;
        this.f56058c = dVar;
        this.f56059d = oVar;
        this.f56060e = iVar;
        this.f56061f = aVar;
        this.f56062g = bVar;
        this.f56063h = aVar2;
        this.f56064i = bVar2;
        this.f56067l = eVar3;
        this.f56068m = z10;
        this.f56069n = i10;
        this.f56070o = z11;
        this.f56071p = b2Var;
        this.f56073r = j10;
        this.f56081z = eVar3.a();
    }

    static /* synthetic */ int g(f fVar) {
        int i10 = fVar.f56075t - 1;
        fVar.f56075t = i10;
        return i10;
    }

    private void m(long j10, List<d.a> list, List<k> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        boolean z10;
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10).f56280d;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z11 = true;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    if (Objects.equals(str, list.get(i11).f56280d)) {
                        d.a aVar = list.get(i11);
                        arrayList3.add(Integer.valueOf(i11));
                        arrayList.add(aVar.f56277a);
                        arrayList2.add(aVar.f56278b);
                        if (m0.R(aVar.f56278b.f55170k, 1) == 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 &= z10;
                    }
                }
                String str2 = "audio:" + str;
                k p10 = p(str2, 1, (Uri[]) arrayList.toArray((Uri[]) m0.j(new Uri[0])), (io.bidmachine.media3.common.a[]) arrayList2.toArray(new io.bidmachine.media3.common.a[0]), null, Collections.emptyList(), map, j10);
                list3.add(Ints.m(arrayList3));
                list2.add(p10);
                if (this.f56068m && z11) {
                    p10.V(new b0[]{new b0(str2, (io.bidmachine.media3.common.a[]) arrayList2.toArray(new io.bidmachine.media3.common.a[0]))}, 0, new int[0]);
                }
            }
        }
    }

    private void n(io.bidmachine.media3.exoplayer.hls.playlist.d dVar, long j10, List<k> list, List<int[]> list2, Map<String, DrmInitData> map) {
        int i10;
        boolean z10;
        boolean z11;
        boolean z12;
        int i11;
        int size = dVar.f56268e.size();
        int[] iArr = new int[size];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < dVar.f56268e.size(); i14++) {
            io.bidmachine.media3.common.a aVar = dVar.f56268e.get(i14).f56282b;
            if (aVar.f55182w <= 0 && m0.S(aVar.f55170k, 2) == null) {
                if (m0.S(aVar.f55170k, 1) != null) {
                    iArr[i14] = 1;
                    i13++;
                } else {
                    iArr[i14] = -1;
                }
            } else {
                iArr[i14] = 2;
                i12++;
            }
        }
        if (i12 > 0) {
            i10 = i12;
            z11 = false;
            z10 = true;
        } else if (i13 < size) {
            i10 = size - i13;
            z10 = false;
            z11 = true;
        } else {
            i10 = size;
            z10 = false;
            z11 = false;
        }
        Uri[] uriArr = new Uri[i10];
        io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[i10];
        int[] iArr2 = new int[i10];
        int i15 = 0;
        for (int i16 = 0; i16 < dVar.f56268e.size(); i16++) {
            if ((!z10 || iArr[i16] == 2) && (!z11 || iArr[i16] != 1)) {
                d.b bVar = dVar.f56268e.get(i16);
                uriArr[i15] = bVar.f56281a;
                aVarArr[i15] = bVar.f56282b;
                iArr2[i15] = i16;
                i15++;
            }
        }
        String str = aVarArr[0].f55170k;
        int R = m0.R(str, 2);
        int R2 = m0.R(str, 1);
        if ((R2 == 1 || (R2 == 0 && dVar.f56270g.isEmpty())) && R <= 1 && R2 + R > 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z10 && R2 > 0) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        k p10 = p("main", i11, uriArr, aVarArr, dVar.f56273j, dVar.f56274k, map, j10);
        list.add(p10);
        list2.add(iArr2);
        if (this.f56068m && z12) {
            ArrayList arrayList = new ArrayList();
            if (R > 0) {
                io.bidmachine.media3.common.a[] aVarArr2 = new io.bidmachine.media3.common.a[i10];
                for (int i17 = 0; i17 < i10; i17++) {
                    aVarArr2[i17] = s(aVarArr[i17]);
                }
                arrayList.add(new b0("main", aVarArr2));
                if (R2 > 0 && (dVar.f56273j != null || dVar.f56270g.isEmpty())) {
                    arrayList.add(new b0("main:audio", q(aVarArr[0], dVar.f56273j, false)));
                }
                List<io.bidmachine.media3.common.a> list3 = dVar.f56274k;
                if (list3 != null) {
                    for (int i18 = 0; i18 < list3.size(); i18++) {
                        arrayList.add(new b0("main:cc:" + i18, this.f56056a.d(list3.get(i18))));
                    }
                }
            } else {
                io.bidmachine.media3.common.a[] aVarArr3 = new io.bidmachine.media3.common.a[i10];
                for (int i19 = 0; i19 < i10; i19++) {
                    aVarArr3[i19] = q(aVarArr[i19], dVar.f56273j, true);
                }
                arrayList.add(new b0("main", aVarArr3));
            }
            b0 b0Var = new b0("main:id3", new a.b().f0("ID3").u0(MimeTypes.APPLICATION_ID3).N());
            arrayList.add(b0Var);
            p10.V((b0[]) arrayList.toArray(new b0[0]), 0, arrayList.indexOf(b0Var));
        }
    }

    private void o(long j10) {
        Map<String, DrmInitData> emptyMap;
        io.bidmachine.media3.exoplayer.hls.playlist.d dVar = (io.bidmachine.media3.exoplayer.hls.playlist.d) cn.a.e(this.f56057b.k());
        if (this.f56070o) {
            emptyMap = r(dVar.f56276m);
        } else {
            emptyMap = Collections.emptyMap();
        }
        Map<String, DrmInitData> map = emptyMap;
        boolean isEmpty = dVar.f56268e.isEmpty();
        List<d.a> list = dVar.f56270g;
        List<d.a> list2 = dVar.f56271h;
        int i10 = 0;
        this.f56075t = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!isEmpty) {
            n(dVar, j10, arrayList, arrayList2, map);
        }
        m(j10, list, arrayList, arrayList2, map);
        this.f56080y = arrayList.size();
        int i11 = 0;
        while (i11 < list2.size()) {
            d.a aVar = list2.get(i11);
            String str = "subtitle:" + i11 + ":" + aVar.f56280d;
            io.bidmachine.media3.common.a aVar2 = aVar.f56278b;
            int i12 = i11;
            k p10 = p(str, 3, new Uri[]{aVar.f56277a}, new io.bidmachine.media3.common.a[]{aVar2}, null, Collections.emptyList(), map, j10);
            arrayList2.add(new int[]{i12});
            arrayList.add(p10);
            p10.V(new b0[]{new b0(str, this.f56056a.d(aVar2))}, 0, new int[0]);
            i11 = i12 + 1;
            i10 = 0;
            map = map;
        }
        int i13 = i10;
        this.f56077v = (k[]) arrayList.toArray(new k[i13]);
        this.f56079x = (int[][]) arrayList2.toArray(new int[i13]);
        this.f56075t = this.f56077v.length;
        for (int i14 = i13; i14 < this.f56080y; i14++) {
            this.f56077v[i14].e0(true);
        }
        k[] kVarArr = this.f56077v;
        int length = kVarArr.length;
        for (int i15 = i13; i15 < length; i15++) {
            kVarArr[i15].r();
        }
        this.f56078w = this.f56077v;
    }

    private k p(String str, int i10, Uri[] uriArr, io.bidmachine.media3.common.a[] aVarArr, @Nullable io.bidmachine.media3.common.a aVar, @Nullable List<io.bidmachine.media3.common.a> list, Map<String, DrmInitData> map, long j10) {
        return new k(str, i10, this.f56072q, new io.bidmachine.media3.exoplayer.hls.b(this.f56056a, this.f56057b, uriArr, aVarArr, this.f56058c, this.f56059d, this.f56066k, this.f56073r, list, this.f56071p, null), map, this.f56064i, j10, aVar, this.f56060e, this.f56061f, this.f56062g, this.f56063h, this.f56069n);
    }

    private static io.bidmachine.media3.common.a q(io.bidmachine.media3.common.a aVar, @Nullable io.bidmachine.media3.common.a aVar2, boolean z10) {
        t tVar;
        int i10;
        String str;
        int i11;
        int i12;
        String str2;
        String str3;
        List<p> list;
        int i13;
        List<p> A = ImmutableList.A();
        int i14 = -1;
        if (aVar2 != null) {
            str3 = aVar2.f55170k;
            tVar = aVar2.f55171l;
            i11 = aVar2.E;
            i10 = aVar2.f55164e;
            i12 = aVar2.f55165f;
            str = aVar2.f55163d;
            str2 = aVar2.f55161b;
            list = aVar2.f55162c;
        } else {
            String S = m0.S(aVar.f55170k, 1);
            tVar = aVar.f55171l;
            if (z10) {
                i11 = aVar.E;
                i10 = aVar.f55164e;
                i12 = aVar.f55165f;
                str = aVar.f55163d;
                str2 = aVar.f55161b;
                A = aVar.f55162c;
            } else {
                i10 = 0;
                str = null;
                i11 = -1;
                i12 = 0;
                str2 = null;
            }
            List<p> list2 = A;
            str3 = S;
            list = list2;
        }
        String g10 = u.g(str3);
        if (z10) {
            i13 = aVar.f55167h;
        } else {
            i13 = -1;
        }
        if (z10) {
            i14 = aVar.f55168i;
        }
        return new a.b().f0(aVar.f55160a).h0(str2).i0(list).U(aVar.f55173n).u0(g10).S(str3).n0(tVar).Q(i13).p0(i14).R(i11).w0(i10).s0(i12).j0(str).N();
    }

    private static Map<String, DrmInitData> r(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap hashMap = new HashMap();
        int i10 = 0;
        while (i10 < arrayList.size()) {
            DrmInitData drmInitData = list.get(i10);
            String str = drmInitData.f55104c;
            i10++;
            int i11 = i10;
            while (i11 < arrayList.size()) {
                DrmInitData drmInitData2 = (DrmInitData) arrayList.get(i11);
                if (TextUtils.equals(drmInitData2.f55104c, str)) {
                    drmInitData = drmInitData.f(drmInitData2);
                    arrayList.remove(i11);
                } else {
                    i11++;
                }
            }
            hashMap.put(str, drmInitData);
        }
        return hashMap;
    }

    private static io.bidmachine.media3.common.a s(io.bidmachine.media3.common.a aVar) {
        String S = m0.S(aVar.f55170k, 2);
        return new a.b().f0(aVar.f55160a).h0(aVar.f55161b).i0(aVar.f55162c).U(aVar.f55173n).u0(u.g(S)).S(S).n0(aVar.f55171l).Q(aVar.f55167h).p0(aVar.f55168i).B0(aVar.f55181v).d0(aVar.f55182w).b0(aVar.f55183x).w0(aVar.f55164e).s0(aVar.f55165f).N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List t(k kVar) {
        return kVar.getTrackGroups().c();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, i0 i0Var) {
        k[] kVarArr;
        for (k kVar : this.f56078w) {
            if (kVar.H()) {
                return kVar.a(j10, i0Var);
            }
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        if (this.f56076u == null) {
            for (k kVar : this.f56077v) {
                kVar.r();
            }
            return false;
        }
        return this.f56081z.b(k1Var);
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
    public void c() {
        for (k kVar : this.f56077v) {
            kVar.T();
        }
        this.f56074s.f(this);
    }

    @Override // io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.b
    public boolean d(Uri uri, b.c cVar, boolean z10) {
        boolean z11 = true;
        for (k kVar : this.f56077v) {
            z11 &= kVar.S(uri, cVar, z10);
        }
        this.f56074s.f(this);
        return z11;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
        for (k kVar : this.f56078w) {
            kVar.discardBuffer(j10, z10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        this.f56074s = aVar;
        this.f56057b.e(this);
        o(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        return this.f56081z.getBufferedPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        return this.f56081z.getNextLoadPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public x getTrackGroups() {
        return (x) cn.a.e(this.f56076u);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        boolean z10;
        sn.s sVar;
        int intValue;
        sn.s[] sVarArr2 = sVarArr;
        int[] iArr = new int[qVarArr.length];
        int[] iArr2 = new int[qVarArr.length];
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            sn.s sVar2 = sVarArr2[i10];
            if (sVar2 == null) {
                intValue = -1;
            } else {
                intValue = this.f56065j.get(sVar2).intValue();
            }
            iArr[i10] = intValue;
            iArr2[i10] = -1;
            vn.q qVar = qVarArr[i10];
            if (qVar != null) {
                b0 trackGroup = qVar.getTrackGroup();
                int i11 = 0;
                while (true) {
                    k[] kVarArr = this.f56077v;
                    if (i11 >= kVarArr.length) {
                        break;
                    } else if (kVarArr[i11].getTrackGroups().d(trackGroup) != -1) {
                        iArr2[i10] = i11;
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
        this.f56065j.clear();
        int length = qVarArr.length;
        sn.s[] sVarArr3 = new sn.s[length];
        sn.s[] sVarArr4 = new sn.s[qVarArr.length];
        vn.q[] qVarArr2 = new vn.q[qVarArr.length];
        k[] kVarArr2 = new k[this.f56077v.length];
        int i12 = 0;
        int i13 = 0;
        boolean z11 = false;
        while (i13 < this.f56077v.length) {
            for (int i14 = 0; i14 < qVarArr.length; i14++) {
                vn.q qVar2 = null;
                if (iArr[i14] == i13) {
                    sVar = sVarArr2[i14];
                } else {
                    sVar = null;
                }
                sVarArr4[i14] = sVar;
                if (iArr2[i14] == i13) {
                    qVar2 = qVarArr[i14];
                }
                qVarArr2[i14] = qVar2;
            }
            k kVar = this.f56077v[i13];
            int i15 = i12;
            int i16 = length;
            int i17 = i13;
            vn.q[] qVarArr3 = qVarArr2;
            k[] kVarArr3 = kVarArr2;
            boolean b02 = kVar.b0(qVarArr2, zArr, sVarArr4, zArr2, j10, z11);
            int i18 = 0;
            boolean z12 = false;
            while (true) {
                z10 = true;
                if (i18 >= qVarArr.length) {
                    break;
                }
                sn.s sVar3 = sVarArr4[i18];
                if (iArr2[i18] == i17) {
                    cn.a.e(sVar3);
                    sVarArr3[i18] = sVar3;
                    this.f56065j.put(sVar3, Integer.valueOf(i17));
                    z12 = true;
                } else if (iArr[i18] == i17) {
                    if (sVar3 != null) {
                        z10 = false;
                    }
                    cn.a.g(z10);
                }
                i18++;
            }
            if (z12) {
                kVarArr3[i15] = kVar;
                i12 = i15 + 1;
                if (i15 == 0) {
                    kVar.e0(true);
                    if (!b02) {
                        k[] kVarArr4 = this.f56078w;
                        if (kVarArr4.length != 0 && kVar == kVarArr4[0]) {
                        }
                    }
                    this.f56066k.b();
                    z11 = true;
                } else {
                    if (i17 >= this.f56080y) {
                        z10 = false;
                    }
                    kVar.e0(z10);
                }
            } else {
                i12 = i15;
            }
            i13 = i17 + 1;
            sVarArr2 = sVarArr;
            kVarArr2 = kVarArr3;
            length = i16;
            qVarArr2 = qVarArr3;
        }
        System.arraycopy(sVarArr3, 0, sVarArr2, 0, length);
        k[] kVarArr5 = (k[]) m0.Y0(kVarArr2, i12);
        this.f56078w = kVarArr5;
        ImmutableList v10 = ImmutableList.v(kVarArr5);
        this.f56081z = this.f56067l.b(v10, Lists.l(v10, new h7.e() { // from class: io.bidmachine.media3.exoplayer.hls.e
            @Override // h7.e
            public final Object apply(Object obj) {
                List t10;
                t10 = f.t((k) obj);
                return t10;
            }
        }));
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f56081z.isLoading();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        for (k kVar : this.f56077v) {
            kVar.maybeThrowPrepareError();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        this.f56081z.reevaluateBuffer(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        k[] kVarArr = this.f56078w;
        if (kVarArr.length > 0) {
            boolean a02 = kVarArr[0].a0(j10, false);
            int i10 = 1;
            while (true) {
                k[] kVarArr2 = this.f56078w;
                if (i10 >= kVarArr2.length) {
                    break;
                }
                kVarArr2[i10].a0(j10, a02);
                i10++;
            }
            if (a02) {
                this.f56066k.b();
            }
        }
        return j10;
    }

    public void u() {
        this.f56057b.b(this);
        for (k kVar : this.f56077v) {
            kVar.X();
        }
        this.f56074s = null;
    }
}
