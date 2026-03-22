package p9;

import com.inmobi.commons.core.configs.AdConfig;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
/* compiled from: HighLevelEncoder.java */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    static final String[] f64827b = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: c  reason: collision with root package name */
    static final int[][] f64828c = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: d  reason: collision with root package name */
    private static final int[][] f64829d;

    /* renamed from: e  reason: collision with root package name */
    static final int[][] f64830e;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f64831a;

    /* compiled from: HighLevelEncoder.java */
    /* loaded from: classes5.dex */
    class a implements Comparator<f> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(f fVar, f fVar2) {
            return fVar.d() - fVar2.d();
        }
    }

    static {
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, 5, 256);
        f64829d = iArr;
        iArr[0][32] = 1;
        for (int i10 = 65; i10 <= 90; i10++) {
            f64829d[0][i10] = i10 - 63;
        }
        f64829d[1][32] = 1;
        for (int i11 = 97; i11 <= 122; i11++) {
            f64829d[1][i11] = i11 - 95;
        }
        f64829d[2][32] = 1;
        for (int i12 = 48; i12 <= 57; i12++) {
            f64829d[2][i12] = i12 - 46;
        }
        int[] iArr2 = f64829d[2];
        iArr2[44] = 12;
        iArr2[46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127};
        for (int i13 = 0; i13 < 28; i13++) {
            f64829d[3][iArr3[i13]] = i13;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i14 = 0; i14 < 31; i14++) {
            int i15 = iArr4[i14];
            if (i15 > 0) {
                f64829d[4][i15] = i14;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance(Integer.TYPE, 6, 6);
        f64830e = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = f64830e;
        iArr7[0][4] = 0;
        int[] iArr8 = iArr7[1];
        iArr8[4] = 0;
        iArr8[0] = 28;
        iArr7[3][4] = 0;
        int[] iArr9 = iArr7[2];
        iArr9[4] = 0;
        iArr9[0] = 15;
    }

    public d(byte[] bArr) {
        this.f64831a = bArr;
    }

    private static Collection<f> b(Iterable<f> iterable) {
        LinkedList linkedList = new LinkedList();
        for (f fVar : iterable) {
            Iterator it = linkedList.iterator();
            while (true) {
                if (it.hasNext()) {
                    f fVar2 = (f) it.next();
                    if (fVar2.f(fVar)) {
                        break;
                    } else if (fVar.f(fVar2)) {
                        it.remove();
                    }
                } else {
                    linkedList.add(fVar);
                    break;
                }
            }
        }
        return linkedList;
    }

    private void c(f fVar, int i10, Collection<f> collection) {
        boolean z10;
        char c10 = (char) (this.f64831a[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        if (f64829d[fVar.e()][c10] > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        f fVar2 = null;
        for (int i11 = 0; i11 <= 4; i11++) {
            int i12 = f64829d[i11][c10];
            if (i12 > 0) {
                if (fVar2 == null) {
                    fVar2 = fVar.b(i10);
                }
                if (!z10 || i11 == fVar.e() || i11 == 2) {
                    collection.add(fVar2.g(i11, i12));
                }
                if (!z10 && f64830e[fVar.e()][i11] >= 0) {
                    collection.add(fVar2.h(i11, i12));
                }
            }
        }
        if (fVar.c() > 0 || f64829d[fVar.e()][c10] == 0) {
            collection.add(fVar.a(i10));
        }
    }

    private static void d(f fVar, int i10, int i11, Collection<f> collection) {
        f b10 = fVar.b(i10);
        collection.add(b10.g(4, i11));
        if (fVar.e() != 4) {
            collection.add(b10.h(4, i11));
        }
        if (i11 == 3 || i11 == 4) {
            collection.add(b10.g(2, 16 - i11).g(2, 1));
        }
        if (fVar.c() > 0) {
            collection.add(fVar.a(i10).a(i10 + 1));
        }
    }

    private Collection<f> e(Iterable<f> iterable, int i10) {
        LinkedList linkedList = new LinkedList();
        for (f fVar : iterable) {
            c(fVar, i10, linkedList);
        }
        return b(linkedList);
    }

    private static Collection<f> f(Iterable<f> iterable, int i10, int i11) {
        LinkedList linkedList = new LinkedList();
        for (f fVar : iterable) {
            d(fVar, i10, i11, linkedList);
        }
        return b(linkedList);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q9.a a() {
        /*
            r8 = this;
            p9.f r0 = p9.f.f64835e
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r1 = 0
            r2 = r1
        L8:
            byte[] r3 = r8.f64831a
            int r4 = r3.length
            if (r2 >= r4) goto L4c
            int r4 = r2 + 1
            int r5 = r3.length
            if (r4 >= r5) goto L15
            r5 = r3[r4]
            goto L16
        L15:
            r5 = r1
        L16:
            r3 = r3[r2]
            r6 = 13
            if (r3 == r6) goto L38
            r6 = 44
            r7 = 32
            if (r3 == r6) goto L34
            r6 = 46
            if (r3 == r6) goto L30
            r6 = 58
            if (r3 == r6) goto L2c
        L2a:
            r3 = r1
            goto L3d
        L2c:
            if (r5 != r7) goto L2a
            r3 = 5
            goto L3d
        L30:
            if (r5 != r7) goto L2a
            r3 = 3
            goto L3d
        L34:
            if (r5 != r7) goto L2a
            r3 = 4
            goto L3d
        L38:
            r3 = 10
            if (r5 != r3) goto L2a
            r3 = 2
        L3d:
            if (r3 <= 0) goto L45
            java.util.Collection r0 = f(r0, r2, r3)
            r2 = r4
            goto L49
        L45:
            java.util.Collection r0 = r8.e(r0, r2)
        L49:
            int r2 = r2 + 1
            goto L8
        L4c:
            p9.d$a r1 = new p9.d$a
            r1.<init>()
            java.lang.Object r0 = java.util.Collections.min(r0, r1)
            p9.f r0 = (p9.f) r0
            byte[] r1 = r8.f64831a
            q9.a r0 = r0.i(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p9.d.a():q9.a");
    }
}
