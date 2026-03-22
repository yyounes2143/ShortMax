package io.bidmachine.media3.exoplayer.dash;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import en.o;
import gn.i0;
import hn.b2;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.dash.a;
import io.bidmachine.media3.exoplayer.dash.f;
import io.bidmachine.media3.exoplayer.drm.h;
import io.bidmachine.media3.exoplayer.drm.i;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.source.g0;
import io.bidmachine.media3.exoplayer.source.q;
import io.bidmachine.media3.exoplayer.source.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kn.g;
import kn.j;
import sn.x;
import tn.h;
import wn.k;
import zm.b0;
/* compiled from: DashMediaPeriod.java */
/* loaded from: classes8.dex */
final class c implements q, g0.a<h<io.bidmachine.media3.exoplayer.dash.a>>, h.b<io.bidmachine.media3.exoplayer.dash.a> {
    private static final Pattern A = Pattern.compile("CC([1-4])=(.+)");
    private static final Pattern B = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    /* renamed from: a  reason: collision with root package name */
    final int f55685a;

    /* renamed from: b  reason: collision with root package name */
    private final a.InterfaceC0800a f55686b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final o f55687c;

    /* renamed from: d  reason: collision with root package name */
    private final i f55688d;

    /* renamed from: e  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.upstream.b f55689e;

    /* renamed from: f  reason: collision with root package name */
    private final jn.b f55690f;

    /* renamed from: g  reason: collision with root package name */
    private final long f55691g;

    /* renamed from: h  reason: collision with root package name */
    private final k f55692h;

    /* renamed from: i  reason: collision with root package name */
    private final wn.b f55693i;

    /* renamed from: j  reason: collision with root package name */
    private final x f55694j;

    /* renamed from: k  reason: collision with root package name */
    private final a[] f55695k;

    /* renamed from: l  reason: collision with root package name */
    private final sn.e f55696l;

    /* renamed from: m  reason: collision with root package name */
    private final f f55697m;

    /* renamed from: o  reason: collision with root package name */
    private final s.a f55699o;

    /* renamed from: p  reason: collision with root package name */
    private final h.a f55700p;

    /* renamed from: q  reason: collision with root package name */
    private final b2 f55701q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private q.a f55702r;

    /* renamed from: u  reason: collision with root package name */
    private g0 f55705u;

    /* renamed from: v  reason: collision with root package name */
    private kn.c f55706v;

    /* renamed from: w  reason: collision with root package name */
    private int f55707w;

    /* renamed from: x  reason: collision with root package name */
    private List<kn.f> f55708x;

    /* renamed from: z  reason: collision with root package name */
    private long f55710z;

    /* renamed from: y  reason: collision with root package name */
    private boolean f55709y = true;

    /* renamed from: s  reason: collision with root package name */
    private tn.h<io.bidmachine.media3.exoplayer.dash.a>[] f55703s = z(0);

    /* renamed from: t  reason: collision with root package name */
    private e[] f55704t = new e[0];

    /* renamed from: n  reason: collision with root package name */
    private final IdentityHashMap<tn.h<io.bidmachine.media3.exoplayer.dash.a>, f.c> f55698n = new IdentityHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaPeriod.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f55711a;

        /* renamed from: b  reason: collision with root package name */
        public final int f55712b;

        /* renamed from: c  reason: collision with root package name */
        public final int f55713c;

        /* renamed from: d  reason: collision with root package name */
        public final int f55714d;

        /* renamed from: e  reason: collision with root package name */
        public final int f55715e;

        /* renamed from: f  reason: collision with root package name */
        public final int f55716f;

        /* renamed from: g  reason: collision with root package name */
        public final int f55717g;

        /* renamed from: h  reason: collision with root package name */
        public final ImmutableList<io.bidmachine.media3.common.a> f55718h;

        private a(int i10, int i11, int[] iArr, int i12, int i13, int i14, int i15, ImmutableList<io.bidmachine.media3.common.a> immutableList) {
            this.f55712b = i10;
            this.f55711a = iArr;
            this.f55713c = i11;
            this.f55715e = i12;
            this.f55716f = i13;
            this.f55717g = i14;
            this.f55714d = i15;
            this.f55718h = immutableList;
        }

        public static a a(int[] iArr, int i10, ImmutableList<io.bidmachine.media3.common.a> immutableList) {
            return new a(3, 1, iArr, i10, -1, -1, -1, immutableList);
        }

        public static a b(int[] iArr, int i10) {
            return new a(5, 1, iArr, i10, -1, -1, -1, ImmutableList.A());
        }

        public static a c(int i10) {
            return new a(5, 2, new int[0], -1, -1, -1, i10, ImmutableList.A());
        }

        public static a d(int i10, int[] iArr, int i11, int i12, int i13) {
            return new a(i10, 0, iArr, i11, i12, i13, -1, ImmutableList.A());
        }
    }

    public c(int i10, kn.c cVar, jn.b bVar, int i11, a.InterfaceC0800a interfaceC0800a, @Nullable o oVar, @Nullable wn.e eVar, i iVar, h.a aVar, io.bidmachine.media3.exoplayer.upstream.b bVar2, s.a aVar2, long j10, k kVar, wn.b bVar3, sn.e eVar2, f.b bVar4, b2 b2Var) {
        this.f55685a = i10;
        this.f55706v = cVar;
        this.f55690f = bVar;
        this.f55707w = i11;
        this.f55686b = interfaceC0800a;
        this.f55687c = oVar;
        this.f55688d = iVar;
        this.f55700p = aVar;
        this.f55689e = bVar2;
        this.f55699o = aVar2;
        this.f55691g = j10;
        this.f55692h = kVar;
        this.f55693i = bVar3;
        this.f55696l = eVar2;
        this.f55701q = b2Var;
        this.f55697m = new f(cVar, bVar4, bVar3);
        this.f55705u = eVar2.a();
        g c10 = cVar.c(i11);
        List<kn.f> list = c10.f60844d;
        this.f55708x = list;
        Pair<x, a[]> m10 = m(iVar, interfaceC0800a, c10.f60843c, list);
        this.f55694j = (x) m10.first;
        this.f55695k = (a[]) m10.second;
    }

    private static io.bidmachine.media3.common.a[] B(kn.e eVar, Pattern pattern, io.bidmachine.media3.common.a aVar) {
        String str = eVar.f60834b;
        if (str == null) {
            return new io.bidmachine.media3.common.a[]{aVar};
        }
        String[] m12 = m0.m1(str, ";");
        io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[m12.length];
        for (int i10 = 0; i10 < m12.length; i10++) {
            Matcher matcher = pattern.matcher(m12[i10]);
            if (!matcher.matches()) {
                return new io.bidmachine.media3.common.a[]{aVar};
            }
            int parseInt = Integer.parseInt(matcher.group(1));
            a.b b10 = aVar.b();
            aVarArr[i10] = b10.f0(aVar.f55160a + ":" + parseInt).O(parseInt).j0(matcher.group(2)).N();
        }
        return aVarArr;
    }

    private void D(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr) {
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            if (qVarArr[i10] == null || !zArr[i10]) {
                sn.s sVar = sVarArr[i10];
                if (sVar instanceof tn.h) {
                    ((tn.h) sVar).G(this);
                } else if (sVar instanceof h.a) {
                    ((h.a) sVar).b();
                }
                sVarArr[i10] = null;
            }
        }
    }

    private void E(vn.q[] qVarArr, sn.s[] sVarArr, int[] iArr) {
        boolean z10;
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            sn.s sVar = sVarArr[i10];
            if ((sVar instanceof sn.h) || (sVar instanceof h.a)) {
                int t10 = t(i10, iArr);
                if (t10 == -1) {
                    z10 = sVarArr[i10] instanceof sn.h;
                } else {
                    sn.s sVar2 = sVarArr[i10];
                    if ((sVar2 instanceof h.a) && ((h.a) sVar2).f67496a == sVarArr[t10]) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (!z10) {
                    sn.s sVar3 = sVarArr[i10];
                    if (sVar3 instanceof h.a) {
                        ((h.a) sVar3).b();
                    }
                    sVarArr[i10] = null;
                }
            }
        }
    }

    private void F(vn.q[] qVarArr, sn.s[] sVarArr, boolean[] zArr, long j10, int[] iArr) {
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            vn.q qVar = qVarArr[i10];
            if (qVar != null) {
                sn.s sVar = sVarArr[i10];
                if (sVar == null) {
                    zArr[i10] = true;
                    a aVar = this.f55695k[iArr[i10]];
                    int i11 = aVar.f55713c;
                    if (i11 == 0) {
                        sVarArr[i10] = l(aVar, qVar, j10);
                    } else if (i11 == 2) {
                        sVarArr[i10] = new e(this.f55708x.get(aVar.f55714d), qVar.getTrackGroup().a(0), this.f55706v.f60808d);
                    }
                } else if (sVar instanceof tn.h) {
                    ((io.bidmachine.media3.exoplayer.dash.a) ((tn.h) sVar).u()).d(qVar);
                }
            }
        }
        for (int i12 = 0; i12 < qVarArr.length; i12++) {
            if (sVarArr[i12] == null && qVarArr[i12] != null) {
                a aVar2 = this.f55695k[iArr[i12]];
                if (aVar2.f55713c == 1) {
                    int t10 = t(i12, iArr);
                    if (t10 == -1) {
                        sVarArr[i12] = new sn.h();
                    } else {
                        sVarArr[i12] = ((tn.h) sVarArr[t10]).J(j10, aVar2.f55712b);
                    }
                }
            }
        }
    }

    private static void j(List<kn.f> list, b0[] b0VarArr, a[] aVarArr, int i10) {
        int i11 = 0;
        while (i11 < list.size()) {
            kn.f fVar = list.get(i11);
            io.bidmachine.media3.common.a N = new a.b().f0(fVar.a()).u0(MimeTypes.APPLICATION_EMSG).N();
            b0VarArr[i10] = new b0(fVar.a() + ":" + i11, N);
            aVarArr[i10] = a.c(i11);
            i11++;
            i10++;
        }
    }

    private static int k(i iVar, a.InterfaceC0800a interfaceC0800a, List<kn.a> list, int[][] iArr, int i10, boolean[] zArr, io.bidmachine.media3.common.a[][] aVarArr, b0[] b0VarArr, a[] aVarArr2) {
        String str;
        int i11;
        int i12;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i10) {
            int[] iArr2 = iArr[i13];
            ArrayList arrayList = new ArrayList();
            for (int i15 : iArr2) {
                arrayList.addAll(list.get(i15).f60797c);
            }
            int size = arrayList.size();
            io.bidmachine.media3.common.a[] aVarArr3 = new io.bidmachine.media3.common.a[size];
            for (int i16 = 0; i16 < size; i16++) {
                io.bidmachine.media3.common.a aVar = ((j) arrayList.get(i16)).f60856b;
                aVarArr3[i16] = aVar.b().V(iVar.a(aVar)).N();
            }
            kn.a aVar2 = list.get(iArr2[0]);
            long j10 = aVar2.f60795a;
            if (j10 != -1) {
                str = Long.toString(j10);
            } else {
                str = "unset:" + i13;
            }
            int i17 = i14 + 1;
            if (zArr[i13]) {
                i11 = i14 + 2;
            } else {
                i11 = i17;
                i17 = -1;
            }
            if (aVarArr[i13].length != 0) {
                i12 = i11 + 1;
            } else {
                i12 = i11;
                i11 = -1;
            }
            y(interfaceC0800a, aVarArr3);
            b0VarArr[i14] = new b0(str, aVarArr3);
            aVarArr2[i14] = a.d(aVar2.f60796b, iArr2, i14, i17, i11);
            if (i17 != -1) {
                String str2 = str + ":emsg";
                b0VarArr[i17] = new b0(str2, new a.b().f0(str2).u0(MimeTypes.APPLICATION_EMSG).N());
                aVarArr2[i17] = a.b(iArr2, i14);
            }
            if (i11 != -1) {
                aVarArr2[i11] = a.a(iArr2, i14, ImmutableList.v(aVarArr[i13]));
                y(interfaceC0800a, aVarArr[i13]);
                b0VarArr[i11] = new b0(str + ":cc", aVarArr[i13]);
            }
            i13++;
            i14 = i12;
        }
        return i14;
    }

    private tn.h<io.bidmachine.media3.exoplayer.dash.a> l(a aVar, vn.q qVar, long j10) {
        boolean z10;
        int i10;
        b0 b0Var;
        ImmutableList<io.bidmachine.media3.common.a> A2;
        int i11;
        int i12 = aVar.f55716f;
        if (i12 != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        f.c cVar = null;
        if (z10) {
            b0Var = this.f55694j.b(i12);
            i10 = 1;
        } else {
            i10 = 0;
            b0Var = null;
        }
        int i13 = aVar.f55717g;
        if (i13 != -1) {
            A2 = this.f55695k[i13].f55718h;
        } else {
            A2 = ImmutableList.A();
        }
        int size = i10 + A2.size();
        io.bidmachine.media3.common.a[] aVarArr = new io.bidmachine.media3.common.a[size];
        int[] iArr = new int[size];
        if (z10) {
            aVarArr[0] = b0Var.a(0);
            iArr[0] = 5;
            i11 = 1;
        } else {
            i11 = 0;
        }
        ArrayList arrayList = new ArrayList();
        for (int i14 = 0; i14 < A2.size(); i14++) {
            io.bidmachine.media3.common.a aVar2 = A2.get(i14);
            aVarArr[i11] = aVar2;
            iArr[i11] = 3;
            arrayList.add(aVar2);
            i11++;
        }
        if (this.f55706v.f60808d && z10) {
            cVar = this.f55697m.k();
        }
        f.c cVar2 = cVar;
        tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar = new tn.h<>(aVar.f55712b, iArr, aVarArr, this.f55686b.e(this.f55692h, this.f55706v, this.f55690f, this.f55707w, aVar.f55711a, qVar, aVar.f55712b, this.f55691g, z10, arrayList, cVar2, this.f55687c, this.f55701q, null), this, this.f55693i, j10, this.f55688d, this.f55700p, this.f55689e, this.f55699o, this.f55709y, null);
        synchronized (this) {
            this.f55698n.put(hVar, cVar2);
        }
        return hVar;
    }

    private static Pair<x, a[]> m(i iVar, a.InterfaceC0800a interfaceC0800a, List<kn.a> list, List<kn.f> list2) {
        int[][] s10 = s(list);
        int length = s10.length;
        boolean[] zArr = new boolean[length];
        io.bidmachine.media3.common.a[][] aVarArr = new io.bidmachine.media3.common.a[length];
        int w10 = w(length, list, s10, zArr, aVarArr) + length + list2.size();
        b0[] b0VarArr = new b0[w10];
        a[] aVarArr2 = new a[w10];
        j(list2, b0VarArr, aVarArr2, k(iVar, interfaceC0800a, list, s10, length, zArr, aVarArr, b0VarArr, aVarArr2));
        return Pair.create(new x(b0VarArr), aVarArr2);
    }

    private static boolean n(kn.a aVar, kn.a aVar2) {
        if (aVar.f60796b != aVar2.f60796b) {
            return false;
        }
        if (aVar.f60797c.isEmpty() || aVar2.f60797c.isEmpty()) {
            return true;
        }
        io.bidmachine.media3.common.a aVar3 = aVar.f60797c.get(0).f60856b;
        io.bidmachine.media3.common.a aVar4 = aVar2.f60797c.get(0).f60856b;
        if (!Objects.equals(aVar3.f55163d, aVar4.f55163d) || aVar3.f55165f != aVar4.f55165f) {
            return false;
        }
        return true;
    }

    @Nullable
    private static kn.e o(List<kn.e> list) {
        return p(list, "urn:mpeg:dash:adaptation-set-switching:2016");
    }

    @Nullable
    private static kn.e p(List<kn.e> list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            kn.e eVar = list.get(i10);
            if (str.equals(eVar.f60833a)) {
                return eVar;
            }
        }
        return null;
    }

    @Nullable
    private static kn.e q(List<kn.e> list) {
        return p(list, "http://dashif.org/guidelines/trickmode");
    }

    private static io.bidmachine.media3.common.a[] r(List<kn.a> list, int[] iArr) {
        for (int i10 : iArr) {
            kn.a aVar = list.get(i10);
            List<kn.e> list2 = list.get(i10).f60798d;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                kn.e eVar = list2.get(i11);
                if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f60833a)) {
                    return B(eVar, A, new a.b().u0(MimeTypes.APPLICATION_CEA608).f0(aVar.f60795a + ":cea608").N());
                } else if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f60833a)) {
                    return B(eVar, B, new a.b().u0(MimeTypes.APPLICATION_CEA708).f0(aVar.f60795a + ":cea708").N());
                }
            }
        }
        return new io.bidmachine.media3.common.a[0];
    }

    private static int[][] s(List<kn.a> list) {
        int i10;
        kn.e o10;
        Integer num;
        int size = list.size();
        HashMap e10 = Maps.e(size);
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i11 = 0; i11 < size; i11++) {
            e10.put(Long.valueOf(list.get(i11).f60795a), Integer.valueOf(i11));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i11));
            arrayList.add(arrayList2);
            sparseArray.put(i11, arrayList2);
        }
        for (int i12 = 0; i12 < size; i12++) {
            kn.a aVar = list.get(i12);
            kn.e q10 = q(aVar.f60799e);
            if (q10 == null) {
                q10 = q(aVar.f60800f);
            }
            if (q10 != null && (num = (Integer) e10.get(Long.valueOf(Long.parseLong(q10.f60834b)))) != null) {
                i10 = num.intValue();
            } else {
                i10 = i12;
            }
            if (i10 == i12 && (o10 = o(aVar.f60800f)) != null) {
                for (String str : m0.m1(o10.f60834b, ",")) {
                    Integer num2 = (Integer) e10.get(Long.valueOf(Long.parseLong(str)));
                    if (num2 != null && n(aVar, list.get(num2.intValue()))) {
                        i10 = Math.min(i10, num2.intValue());
                    }
                }
            }
            if (i10 != i12) {
                List list2 = (List) sparseArray.get(i12);
                List list3 = (List) sparseArray.get(i10);
                list3.addAll(list2);
                sparseArray.put(i12, list3);
                arrayList.remove(list2);
            }
        }
        int size2 = arrayList.size();
        int[][] iArr = new int[size2];
        for (int i13 = 0; i13 < size2; i13++) {
            int[] m10 = Ints.m((Collection) arrayList.get(i13));
            iArr[i13] = m10;
            Arrays.sort(m10);
        }
        return iArr;
    }

    private int t(int i10, int[] iArr) {
        int i11 = iArr[i10];
        if (i11 == -1) {
            return -1;
        }
        int i12 = this.f55695k[i11].f55715e;
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            if (i14 == i12 && this.f55695k[i14].f55713c == 0) {
                return i13;
            }
        }
        return -1;
    }

    private int[] u(vn.q[] qVarArr) {
        int[] iArr = new int[qVarArr.length];
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            vn.q qVar = qVarArr[i10];
            if (qVar != null) {
                iArr[i10] = this.f55694j.d(qVar.getTrackGroup());
            } else {
                iArr[i10] = -1;
            }
        }
        return iArr;
    }

    private static boolean v(List<kn.a> list, int[] iArr) {
        for (int i10 : iArr) {
            List<j> list2 = list.get(i10).f60797c;
            for (int i11 = 0; i11 < list2.size(); i11++) {
                if (!list2.get(i11).f60859e.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int w(int i10, List<kn.a> list, int[][] iArr, boolean[] zArr, io.bidmachine.media3.common.a[][] aVarArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (v(list, iArr[i12])) {
                zArr[i12] = true;
                i11++;
            }
            io.bidmachine.media3.common.a[] r10 = r(list, iArr[i12]);
            aVarArr[i12] = r10;
            if (r10.length != 0) {
                i11++;
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List x(tn.h hVar) {
        return ImmutableList.B(Integer.valueOf(hVar.f67471a));
    }

    private static void y(a.InterfaceC0800a interfaceC0800a, io.bidmachine.media3.common.a[] aVarArr) {
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            aVarArr[i10] = interfaceC0800a.d(aVarArr[i10]);
        }
    }

    private static tn.h<io.bidmachine.media3.exoplayer.dash.a>[] z(int i10) {
        return new tn.h[i10];
    }

    @Override // io.bidmachine.media3.exoplayer.source.g0.a
    /* renamed from: A */
    public void f(tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar) {
        this.f55702r.f(this);
    }

    public void C() {
        this.f55697m.o();
        for (tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar : this.f55703s) {
            hVar.G(this);
        }
        this.f55702r = null;
    }

    public void G(kn.c cVar, int i10) {
        e[] eVarArr;
        this.f55706v = cVar;
        this.f55707w = i10;
        this.f55697m.q(cVar);
        tn.h<io.bidmachine.media3.exoplayer.dash.a>[] hVarArr = this.f55703s;
        if (hVarArr != null) {
            for (tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar : hVarArr) {
                hVar.u().c(cVar, i10);
            }
            this.f55702r.f(this);
        }
        this.f55708x = cVar.c(i10).f60844d;
        for (e eVar : this.f55704t) {
            Iterator<kn.f> it = this.f55708x.iterator();
            while (true) {
                if (it.hasNext()) {
                    kn.f next = it.next();
                    if (next.a().equals(eVar.a())) {
                        boolean z10 = true;
                        eVar.d(next, (cVar.f60808d && i10 == cVar.d() - 1) ? false : false);
                    }
                }
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long a(long j10, i0 i0Var) {
        tn.h<io.bidmachine.media3.exoplayer.dash.a>[] hVarArr;
        for (tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar : this.f55703s) {
            if (hVar.f67471a == 2) {
                return hVar.a(j10, i0Var);
            }
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean b(k1 k1Var) {
        return this.f55705u.b(k1Var);
    }

    @Override // tn.h.b
    public synchronized void c(tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar) {
        f.c remove = this.f55698n.remove(hVar);
        if (remove != null) {
            remove.o();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void discardBuffer(long j10, boolean z10) {
        for (tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar : this.f55703s) {
            hVar.discardBuffer(j10, z10);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void e(q.a aVar, long j10) {
        this.f55702r = aVar;
        aVar.d(this);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getBufferedPositionUs() {
        return this.f55705u.getBufferedPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public long getNextLoadPositionUs() {
        return this.f55705u.getNextLoadPositionUs();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public x getTrackGroups() {
        return this.f55694j;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long i(vn.q[] qVarArr, boolean[] zArr, sn.s[] sVarArr, boolean[] zArr2, long j10) {
        int[] u10 = u(qVarArr);
        D(qVarArr, zArr, sVarArr);
        E(qVarArr, sVarArr, u10);
        F(qVarArr, sVarArr, zArr2, j10, u10);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (sn.s sVar : sVarArr) {
            if (sVar instanceof tn.h) {
                arrayList.add((tn.h) sVar);
            } else if (sVar instanceof e) {
                arrayList2.add((e) sVar);
            }
        }
        tn.h<io.bidmachine.media3.exoplayer.dash.a>[] z10 = z(arrayList.size());
        this.f55703s = z10;
        arrayList.toArray(z10);
        e[] eVarArr = new e[arrayList2.size()];
        this.f55704t = eVarArr;
        arrayList2.toArray(eVarArr);
        this.f55705u = this.f55696l.b(arrayList, Lists.l(arrayList, new h7.e() { // from class: io.bidmachine.media3.exoplayer.dash.b
            @Override // h7.e
            public final Object apply(Object obj) {
                List x10;
                x10 = c.x((tn.h) obj);
                return x10;
            }
        }));
        if (this.f55709y) {
            this.f55709y = false;
            this.f55710z = j10;
        }
        return j10;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public boolean isLoading() {
        return this.f55705u.isLoading();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public void maybeThrowPrepareError() throws IOException {
        this.f55692h.maybeThrowError();
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long readDiscontinuity() {
        for (tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar : this.f55703s) {
            if (hVar.p()) {
                return this.f55710z;
            }
        }
        return -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.exoplayer.source.q, io.bidmachine.media3.exoplayer.source.g0
    public void reevaluateBuffer(long j10) {
        tn.h<io.bidmachine.media3.exoplayer.dash.a>[] hVarArr;
        for (tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar : this.f55703s) {
            if (!hVar.isLoading()) {
                hVar.t(this.f55706v.f(this.f55707w));
            }
        }
        this.f55705u.reevaluateBuffer(j10);
    }

    @Override // io.bidmachine.media3.exoplayer.source.q
    public long seekToUs(long j10) {
        for (tn.h<io.bidmachine.media3.exoplayer.dash.a> hVar : this.f55703s) {
            hVar.I(j10);
        }
        for (e eVar : this.f55704t) {
            eVar.b(j10);
        }
        return j10;
    }
}
