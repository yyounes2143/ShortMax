package vo;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import androidx.core.view.ViewCompat;
import ao.c0;
import cn.a0;
import cn.b0;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import dn.d;
import dn.g;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import vo.d;
import zm.g;
import zm.t;
/* compiled from: BoxParser.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f69180a = m0.u0("OpusHead");

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final long f69181a;

        /* renamed from: b  reason: collision with root package name */
        private final long f69182b;

        public a(long j10, long j11) {
            this.f69181a = j10;
            this.f69182b = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* renamed from: vo.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0952b {

        /* renamed from: a  reason: collision with root package name */
        public final int f69183a;

        /* renamed from: b  reason: collision with root package name */
        public int f69184b;

        /* renamed from: c  reason: collision with root package name */
        public int f69185c;

        /* renamed from: d  reason: collision with root package name */
        public long f69186d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f69187e;

        /* renamed from: f  reason: collision with root package name */
        private final b0 f69188f;

        /* renamed from: g  reason: collision with root package name */
        private final b0 f69189g;

        /* renamed from: h  reason: collision with root package name */
        private int f69190h;

        /* renamed from: i  reason: collision with root package name */
        private int f69191i;

        public C0952b(b0 b0Var, b0 b0Var2, boolean z10) throws ParserException {
            this.f69189g = b0Var;
            this.f69188f = b0Var2;
            this.f69187e = z10;
            b0Var2.W(12);
            this.f69183a = b0Var2.L();
            b0Var.W(12);
            this.f69191i = b0Var.L();
            ao.s.a(b0Var.q() == 1, "first_chunk must be 1");
            this.f69184b = -1;
        }

        public boolean a() {
            long J;
            int i10;
            int i11 = this.f69184b + 1;
            this.f69184b = i11;
            if (i11 == this.f69183a) {
                return false;
            }
            if (this.f69187e) {
                J = this.f69188f.O();
            } else {
                J = this.f69188f.J();
            }
            this.f69186d = J;
            if (this.f69184b == this.f69190h) {
                this.f69185c = this.f69189g.L();
                this.f69189g.X(4);
                int i12 = this.f69191i - 1;
                this.f69191i = i12;
                if (i12 > 0) {
                    i10 = this.f69189g.L() - 1;
                } else {
                    i10 = -1;
                }
                this.f69190h = i10;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f69192a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f69193b;

        /* renamed from: c  reason: collision with root package name */
        private final long f69194c;

        /* renamed from: d  reason: collision with root package name */
        private final long f69195d;

        public c(String str, byte[] bArr, long j10, long j11) {
            this.f69192a = str;
            this.f69193b = bArr;
            this.f69194c = j10;
            this.f69195d = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final g f69196a;

        public d(g gVar) {
            this.f69196a = gVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private final long f69197a;

        /* renamed from: b  reason: collision with root package name */
        private final long f69198b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f69199c;

        public e(long j10, long j11, @Nullable String str) {
            this.f69197a = j10;
            this.f69198b = j11;
            this.f69199c = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public interface f {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f69200a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f69201b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f69202c;

        public g(boolean z10, boolean z11, boolean z12) {
            this.f69200a = z10;
            this.f69201b = z11;
            this.f69202c = z12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final u[] f69203a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public io.bidmachine.media3.common.a f69204b;

        /* renamed from: c  reason: collision with root package name */
        public int f69205c;

        /* renamed from: d  reason: collision with root package name */
        public int f69206d = 0;

        public h(int i10) {
            this.f69203a = new u[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class i implements f {

        /* renamed from: a  reason: collision with root package name */
        private final int f69207a;

        /* renamed from: b  reason: collision with root package name */
        private final int f69208b;

        /* renamed from: c  reason: collision with root package name */
        private final b0 f69209c;

        public i(d.c cVar, io.bidmachine.media3.common.a aVar) {
            b0 b0Var = cVar.f50456b;
            this.f69209c = b0Var;
            b0Var.W(12);
            int L = b0Var.L();
            if (MimeTypes.AUDIO_RAW.equals(aVar.f55174o)) {
                int k02 = m0.k0(aVar.G, aVar.E);
                if (L == 0 || L % k02 != 0) {
                    cn.r.h("BoxParsers", "Audio sample size mismatch. stsd sample size: " + k02 + ", stsz sample size: " + L);
                    L = k02;
                }
            }
            this.f69207a = L == 0 ? -1 : L;
            this.f69208b = b0Var.L();
        }

        @Override // vo.b.f
        public int a() {
            return this.f69207a;
        }

        @Override // vo.b.f
        public int getSampleCount() {
            return this.f69208b;
        }

        @Override // vo.b.f
        public int readNextSampleSize() {
            int i10 = this.f69207a;
            if (i10 == -1) {
                return this.f69209c.L();
            }
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class j implements f {

        /* renamed from: a  reason: collision with root package name */
        private final b0 f69210a;

        /* renamed from: b  reason: collision with root package name */
        private final int f69211b;

        /* renamed from: c  reason: collision with root package name */
        private final int f69212c;

        /* renamed from: d  reason: collision with root package name */
        private int f69213d;

        /* renamed from: e  reason: collision with root package name */
        private int f69214e;

        public j(d.c cVar) {
            b0 b0Var = cVar.f50456b;
            this.f69210a = b0Var;
            b0Var.W(12);
            this.f69212c = b0Var.L() & 255;
            this.f69211b = b0Var.L();
        }

        @Override // vo.b.f
        public int a() {
            return -1;
        }

        @Override // vo.b.f
        public int getSampleCount() {
            return this.f69211b;
        }

        @Override // vo.b.f
        public int readNextSampleSize() {
            int i10 = this.f69212c;
            if (i10 == 8) {
                return this.f69210a.H();
            }
            if (i10 == 16) {
                return this.f69210a.P();
            }
            int i11 = this.f69213d;
            this.f69213d = i11 + 1;
            if (i11 % 2 == 0) {
                int H = this.f69210a.H();
                this.f69214e = H;
                return (H & 240) >> 4;
            }
            return this.f69214e & 15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        private final int f69215a;

        /* renamed from: b  reason: collision with root package name */
        private final long f69216b;

        /* renamed from: c  reason: collision with root package name */
        private final int f69217c;

        /* renamed from: d  reason: collision with root package name */
        private final int f69218d;

        public k(int i10, long j10, int i11, int i12) {
            this.f69215a = i10;
            this.f69216b = j10;
            this.f69217c = i11;
            this.f69218d = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BoxParser.java */
    /* loaded from: classes8.dex */
    public static final class l {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final d f69219a;

        public l(d dVar) {
            this.f69219a = dVar;
        }

        public boolean b() {
            d dVar = this.f69219a;
            if (dVar != null && dVar.f69196a.f69200a && this.f69219a.f69196a.f69201b) {
                return true;
            }
            return false;
        }
    }

    public static w A(t tVar, d.b bVar, ao.b0 b0Var) throws ParserException {
        f jVar;
        boolean z10;
        b0 b0Var2;
        b0 b0Var3;
        int i10;
        int i11;
        int i12;
        boolean z11;
        int i13;
        int i14;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int i15;
        int i16;
        boolean z12;
        int i17;
        t tVar2;
        String str;
        int[] iArr3;
        long[] jArr3;
        long j10;
        long j11;
        int[] iArr4;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int[] iArr5;
        boolean z13;
        boolean z14;
        long[] jArr4;
        int[] iArr6;
        int i25;
        int[] iArr7;
        long[] jArr5;
        int[] iArr8;
        int[] iArr9;
        int[] iArr10;
        int i26;
        long[] jArr6;
        int i27;
        boolean z15;
        t tVar3 = tVar;
        d.c e10 = bVar.e(1937011578);
        if (e10 != null) {
            jVar = new i(e10, tVar3.f69329g);
        } else {
            d.c e11 = bVar.e(1937013298);
            if (e11 != null) {
                jVar = new j(e11);
            } else {
                throw ParserException.b("Track has no sample table size information", null);
            }
        }
        int sampleCount = jVar.getSampleCount();
        if (sampleCount == 0) {
            return new w(tVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        if (tVar3.f69324b == 2) {
            long j12 = tVar3.f69328f;
            if (j12 > 0) {
                tVar3 = tVar3.a(tVar3.f69329g.b().b0(sampleCount / (((float) j12) / 1000000.0f)).N());
            }
        }
        d.c e12 = bVar.e(1937007471);
        if (e12 == null) {
            e12 = (d.c) cn.a.e(bVar.e(1668232756));
            z10 = true;
        } else {
            z10 = false;
        }
        b0 b0Var4 = e12.f50456b;
        b0 b0Var5 = ((d.c) cn.a.e(bVar.e(1937011555))).f50456b;
        b0 b0Var6 = ((d.c) cn.a.e(bVar.e(1937011827))).f50456b;
        d.c e13 = bVar.e(1937011571);
        if (e13 != null) {
            b0Var2 = e13.f50456b;
        } else {
            b0Var2 = null;
        }
        d.c e14 = bVar.e(1668576371);
        if (e14 != null) {
            b0Var3 = e14.f50456b;
        } else {
            b0Var3 = null;
        }
        C0952b c0952b = new C0952b(b0Var5, b0Var4, z10);
        b0Var6.W(12);
        int L = b0Var6.L() - 1;
        int L2 = b0Var6.L();
        int L3 = b0Var6.L();
        if (b0Var3 != null) {
            b0Var3.W(12);
            i10 = b0Var3.L();
        } else {
            i10 = 0;
        }
        if (b0Var2 != null) {
            b0Var2.W(12);
            i12 = b0Var2.L();
            if (i12 > 0) {
                i11 = b0Var2.L() - 1;
            } else {
                i11 = -1;
                b0Var2 = null;
            }
        } else {
            i11 = -1;
            i12 = 0;
        }
        int a10 = jVar.a();
        String str2 = tVar3.f69329g.f55174o;
        if (a10 != -1 && ((MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2)) && L == 0 && i10 == 0 && i12 == 0)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            int i28 = c0952b.f69183a;
            long[] jArr7 = new long[i28];
            int[] iArr11 = new int[i28];
            while (c0952b.a()) {
                int i29 = c0952b.f69184b;
                jArr7[i29] = c0952b.f69186d;
                iArr11[i29] = c0952b.f69185c;
            }
            d.b a11 = vo.d.a(a10, jArr7, iArr11, L3);
            jArr = a11.f69224a;
            int[] iArr12 = a11.f69225b;
            int i30 = a11.f69226c;
            long[] jArr8 = a11.f69227d;
            int[] iArr13 = a11.f69228e;
            long j13 = a11.f69229f;
            j11 = a11.f69230g;
            tVar2 = tVar3;
            iArr3 = iArr12;
            i13 = i30;
            jArr3 = jArr8;
            iArr4 = iArr13;
            j10 = j13;
        } else {
            long[] jArr9 = new long[sampleCount];
            int[] iArr14 = new int[sampleCount];
            long[] jArr10 = new long[sampleCount];
            int[] iArr15 = new int[sampleCount];
            int i31 = L;
            int i32 = i11;
            int i33 = i10;
            i13 = 0;
            int i34 = 0;
            int i35 = 0;
            int i36 = 0;
            long j14 = 0;
            long j15 = 0;
            long j16 = 0;
            t tVar4 = tVar3;
            int i37 = 0;
            while (true) {
                if (i37 < sampleCount) {
                    long j17 = j16;
                    int i38 = i34;
                    boolean z16 = true;
                    while (i38 == 0) {
                        z16 = c0952b.a();
                        if (!z16) {
                            break;
                        }
                        int i39 = L3;
                        long j18 = c0952b.f69186d;
                        i38 = c0952b.f69185c;
                        j17 = j18;
                        L3 = i39;
                        i12 = i12;
                        sampleCount = sampleCount;
                    }
                    int i40 = sampleCount;
                    int i41 = L3;
                    i14 = i12;
                    if (!z16) {
                        cn.r.h("BoxParsers", "Unexpected end of chunk data");
                        long[] copyOf = Arrays.copyOf(jArr9, i37);
                        int[] copyOf2 = Arrays.copyOf(iArr14, i37);
                        jArr2 = Arrays.copyOf(jArr10, i37);
                        iArr2 = Arrays.copyOf(iArr15, i37);
                        jArr = copyOf;
                        iArr = copyOf2;
                        i16 = i35;
                        sampleCount = i37;
                        i15 = i38;
                        break;
                    }
                    if (b0Var3 != null) {
                        while (i36 == 0 && i33 > 0) {
                            i36 = b0Var3.L();
                            i35 = b0Var3.q();
                            i33--;
                        }
                        i36--;
                    }
                    int i42 = i35;
                    jArr9[i37] = j17;
                    int readNextSampleSize = jVar.readNextSampleSize();
                    iArr14[i37] = readNextSampleSize;
                    C0952b c0952b2 = c0952b;
                    f fVar = jVar;
                    j15 += readNextSampleSize;
                    if (readNextSampleSize > i13) {
                        i13 = readNextSampleSize;
                    }
                    jArr10[i37] = j14 + i42;
                    if (b0Var2 == null) {
                        i18 = 1;
                    } else {
                        i18 = 0;
                    }
                    iArr15[i37] = i18;
                    if (i37 == i32) {
                        iArr15[i37] = 1;
                        i22 = i14 - 1;
                        if (i22 > 0) {
                            i32 = ((b0) cn.a.e(b0Var2)).L() - 1;
                        }
                        i19 = i32;
                        i20 = i42;
                        i21 = i41;
                    } else {
                        i19 = i32;
                        i20 = i42;
                        i21 = i41;
                        i22 = i14;
                    }
                    j14 += i21;
                    L2--;
                    if (L2 == 0 && i31 > 0) {
                        int L4 = b0Var6.L();
                        i23 = b0Var6.q();
                        i24 = i31 - 1;
                        L2 = L4;
                    } else {
                        i23 = i21;
                        i24 = i31;
                    }
                    int i43 = i23;
                    i34 = i38 - 1;
                    i37++;
                    j16 = j17 + iArr14[i37];
                    i35 = i20;
                    i32 = i19;
                    sampleCount = i40;
                    c0952b = c0952b2;
                    int i44 = i24;
                    L3 = i43;
                    i31 = i44;
                    i12 = i22;
                    jVar = fVar;
                } else {
                    i14 = i12;
                    jArr = jArr9;
                    iArr = iArr14;
                    jArr2 = jArr10;
                    iArr2 = iArr15;
                    i15 = i34;
                    i16 = i35;
                    break;
                }
            }
            long j19 = j14 + i16;
            if (b0Var3 != null) {
                while (i33 > 0) {
                    if (b0Var3.L() != 0) {
                        z12 = false;
                        break;
                    }
                    b0Var3.q();
                    i33--;
                }
            }
            z12 = true;
            if (i14 == 0 && L2 == 0 && i15 == 0 && i31 == 0) {
                i17 = i36;
                if (i17 == 0 && z12) {
                    tVar2 = tVar4;
                    iArr3 = iArr;
                    jArr3 = jArr2;
                    j10 = j19;
                    j11 = j15;
                    iArr4 = iArr2;
                }
            } else {
                i17 = i36;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Inconsistent stbl box for track ");
            tVar2 = tVar4;
            sb2.append(tVar2.f69323a);
            sb2.append(": remainingSynchronizationSamples ");
            sb2.append(i14);
            sb2.append(", remainingSamplesAtTimestampDelta ");
            sb2.append(L2);
            sb2.append(", remainingSamplesInChunk ");
            sb2.append(i15);
            sb2.append(", remainingTimestampDeltaChanges ");
            sb2.append(i31);
            sb2.append(", remainingSamplesAtTimestampOffset ");
            sb2.append(i17);
            if (!z12) {
                str = ", ctts invalid";
            } else {
                str = "";
            }
            sb2.append(str);
            cn.r.h("BoxParsers", sb2.toString());
            iArr3 = iArr;
            jArr3 = jArr2;
            j10 = j19;
            j11 = j15;
            iArr4 = iArr2;
        }
        long j20 = tVar2.f69328f;
        if (j20 > 0) {
            long h12 = m0.h1(j11 * 8, 1000000L, j20, RoundingMode.HALF_DOWN);
            if (h12 > 0 && h12 < SieveCacheKt.NodeLinkMask) {
                tVar2 = tVar2.a(tVar2.f69329g.b().Q((int) h12).N());
            }
        }
        int[] iArr16 = iArr4;
        long f12 = m0.f1(j10, 1000000L, tVar2.f69325c);
        long[] jArr11 = tVar2.f69331i;
        if (jArr11 == null) {
            m0.g1(jArr3, 1000000L, tVar2.f69325c);
            return new w(tVar2, jArr, iArr3, i13, jArr3, iArr16, f12);
        }
        if (jArr11.length == 1 && tVar2.f69324b == 1 && jArr3.length >= 2) {
            long j21 = ((long[]) cn.a.e(tVar2.f69332j))[0];
            iArr5 = iArr16;
            long f13 = m0.f1(tVar2.f69331i[0], tVar2.f69325c, tVar2.f69326d) + j21;
            if (b(jArr3, j10, j21, f13)) {
                long j22 = j10 - f13;
                long f14 = m0.f1(j21 - jArr3[0], tVar2.f69329g.F, tVar2.f69325c);
                long f15 = m0.f1(j22, tVar2.f69329g.F, tVar2.f69325c);
                if ((f14 != 0 || f15 != 0) && f14 <= SieveCacheKt.NodeLinkMask && f15 <= SieveCacheKt.NodeLinkMask) {
                    b0Var.f1753a = (int) f14;
                    b0Var.f1754b = (int) f15;
                    m0.g1(jArr3, 1000000L, tVar2.f69325c);
                    return new w(tVar2, jArr, iArr3, i13, jArr3, iArr5, m0.f1(tVar2.f69331i[0], 1000000L, tVar2.f69326d));
                }
            }
        } else {
            iArr5 = iArr16;
        }
        long[] jArr12 = tVar2.f69331i;
        if (jArr12.length == 1 && jArr12[0] == 0) {
            long j23 = ((long[]) cn.a.e(tVar2.f69332j))[0];
            for (int i45 = 0; i45 < jArr3.length; i45++) {
                jArr3[i45] = m0.f1(jArr3[i45] - j23, 1000000L, tVar2.f69325c);
            }
            return new w(tVar2, jArr, iArr3, i13, jArr3, iArr5, m0.f1(j10 - j23, 1000000L, tVar2.f69325c));
        }
        if (tVar2.f69324b == 1) {
            z13 = true;
        } else {
            z13 = false;
        }
        int[] iArr17 = new int[jArr12.length];
        int[] iArr18 = new int[jArr12.length];
        long[] jArr13 = (long[]) cn.a.e(tVar2.f69332j);
        boolean z17 = false;
        int i46 = 0;
        int i47 = 0;
        int i48 = 0;
        while (true) {
            long[] jArr14 = tVar2.f69331i;
            if (i46 >= jArr14.length) {
                break;
            }
            int i49 = i13;
            long j24 = jArr13[i46];
            if (j24 != -1) {
                long j25 = jArr14[i46];
                iArr10 = iArr3;
                i26 = sampleCount;
                jArr6 = jArr13;
                boolean z18 = z17;
                long f16 = m0.f1(j25, tVar2.f69325c, tVar2.f69326d);
                iArr17[i46] = m0.h(jArr3, j24, true, true);
                long j26 = j24 + f16;
                iArr18[i46] = m0.d(jArr3, j26, z13, false);
                int i50 = iArr17[i46];
                while (true) {
                    i27 = iArr17[i46];
                    if (i27 < 0 || (iArr5[i27] & 1) != 0) {
                        break;
                    }
                    iArr17[i46] = i27 - 1;
                }
                if (i27 < 0) {
                    iArr17[i46] = i50;
                    while (true) {
                        int i51 = iArr17[i46];
                        if (i51 >= iArr18[i46] || (iArr5[i51] & 1) != 0) {
                            break;
                        }
                        iArr17[i46] = i51 + 1;
                    }
                }
                if (tVar2.f69324b == 2 && iArr17[i46] != iArr18[i46]) {
                    while (true) {
                        int i52 = iArr18[i46];
                        if (i52 >= jArr3.length - 1 || jArr3[i52 + 1] > j26) {
                            break;
                        }
                        iArr18[i46] = i52 + 1;
                    }
                }
                int i53 = iArr18[i46];
                int i54 = iArr17[i46];
                i47 += i53 - i54;
                if (i48 != i54) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                z17 = z18 | z15;
                i48 = i53;
            } else {
                iArr10 = iArr3;
                i26 = sampleCount;
                jArr6 = jArr13;
            }
            i46++;
            jArr13 = jArr6;
            iArr3 = iArr10;
            i13 = i49;
            sampleCount = i26;
        }
        int[] iArr19 = iArr3;
        boolean z19 = z17;
        int i55 = i13;
        int i56 = 0;
        if (i47 != sampleCount) {
            z14 = true;
        } else {
            z14 = false;
        }
        boolean z20 = z19 | z14;
        if (z20) {
            jArr4 = new long[i47];
        } else {
            jArr4 = jArr;
        }
        if (z20) {
            iArr6 = new int[i47];
        } else {
            iArr6 = iArr19;
        }
        if (z20) {
            i25 = 0;
        } else {
            i25 = i55;
        }
        if (z20) {
            iArr7 = new int[i47];
        } else {
            iArr7 = iArr5;
        }
        long[] jArr15 = new long[i47];
        boolean z21 = false;
        int i57 = 0;
        int i58 = i25;
        long j27 = 0;
        while (i56 < tVar2.f69331i.length) {
            long j28 = tVar2.f69332j[i56];
            int i59 = iArr17[i56];
            int[] iArr20 = iArr17;
            int i60 = iArr18[i56];
            if (z20) {
                iArr8 = iArr18;
                int i61 = i60 - i59;
                System.arraycopy(jArr, i59, jArr4, i57, i61);
                System.arraycopy(iArr19, i59, iArr6, i57, i61);
                jArr5 = jArr;
                iArr9 = iArr5;
                System.arraycopy(iArr9, i59, iArr7, i57, i61);
            } else {
                jArr5 = jArr;
                iArr8 = iArr18;
                iArr9 = iArr5;
            }
            boolean z22 = z21;
            iArr5 = iArr9;
            int i62 = i58;
            while (i59 < i60) {
                int i63 = i60;
                int i64 = i56;
                long f17 = m0.f1(j27, 1000000L, tVar2.f69326d);
                long j29 = j27;
                long f18 = m0.f1(jArr3[i59] - j28, 1000000L, tVar2.f69325c);
                if (f18 < 0) {
                    z22 = true;
                }
                jArr15[i57] = f17 + f18;
                if (z20 && iArr6[i57] > i62) {
                    i62 = iArr19[i59];
                }
                i57++;
                i59++;
                j27 = j29;
                i56 = i64;
                i60 = i63;
            }
            int i65 = i56;
            j27 += tVar2.f69331i[i65];
            i56 = i65 + 1;
            i58 = i62;
            z21 = z22;
            iArr17 = iArr20;
            iArr18 = iArr8;
            jArr = jArr5;
        }
        long f19 = m0.f1(j27, 1000000L, tVar2.f69326d);
        if (z21) {
            tVar2 = tVar2.a(tVar2.f69329g.b().c0(true).N());
        }
        return new w(tVar2, jArr4, iArr6, i58, jArr15, iArr7, f19);
    }

    @Nullable
    private static d B(b0 b0Var, int i10, int i11) throws ParserException {
        boolean z10;
        boolean z11;
        boolean z12;
        b0Var.W(i10 + 8);
        int f10 = b0Var.f();
        while (f10 - i10 < i11) {
            b0Var.W(f10);
            int q10 = b0Var.q();
            boolean z13 = false;
            if (q10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ao.s.a(z10, "childAtomSize must be positive");
            if (b0Var.q() == 1937011305) {
                b0Var.X(4);
                int H = b0Var.H();
                if ((H & 1) == 1) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if ((H & 2) == 2) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if ((H & 8) == 8) {
                    z13 = true;
                }
                return new d(new g(z11, z12, z13));
            }
            f10 += q10;
        }
        return null;
    }

    private static h C(b0 b0Var, int i10, int i11, @Nullable String str, @Nullable DrmInitData drmInitData, boolean z10) throws ParserException {
        boolean z11;
        int i12;
        b0Var.W(12);
        int q10 = b0Var.q();
        h hVar = new h(q10);
        for (int i13 = 0; i13 < q10; i13++) {
            int f10 = b0Var.f();
            int q11 = b0Var.q();
            if (q11 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            ao.s.a(z11, "childAtomSize must be positive");
            int q12 = b0Var.q();
            if (q12 == 1635148593 || q12 == 1635148595 || q12 == 1701733238 || q12 == 1831958048 || q12 == 1836070006 || q12 == 1752589105 || q12 == 1751479857 || q12 == 1932670515 || q12 == 1211250227 || q12 == 1748121139 || q12 == 1987063864 || q12 == 1987063865 || q12 == 1635135537 || q12 == 1685479798 || q12 == 1685479729 || q12 == 1685481573 || q12 == 1685481521 || q12 == 1634760241) {
                i12 = f10;
                K(b0Var, q12, i12, q11, i10, str, i11, drmInitData, hVar, i13);
            } else if (q12 != 1836069985 && q12 != 1701733217 && q12 != 1633889587 && q12 != 1700998451 && q12 != 1633889588 && q12 != 1835823201 && q12 != 1685353315 && q12 != 1685353317 && q12 != 1685353320 && q12 != 1685353324 && q12 != 1685353336 && q12 != 1935764850 && q12 != 1935767394 && q12 != 1819304813 && q12 != 1936684916 && q12 != 1953984371 && q12 != 778924082 && q12 != 778924083 && q12 != 1835557169 && q12 != 1835560241 && q12 != 1634492771 && q12 != 1634492791 && q12 != 1970037111 && q12 != 1332770163 && q12 != 1716281667 && q12 != 1767992678) {
                if (q12 != 1414810956 && q12 != 1954034535 && q12 != 2004251764 && q12 != 1937010800 && q12 != 1664495672) {
                    if (q12 == 1835365492) {
                        u(b0Var, q12, f10, i10, hVar);
                    } else if (q12 == 1667329389) {
                        hVar.f69204b = new a.b().e0(i10).u0(MimeTypes.APPLICATION_CAMERA_MOTION).N();
                    }
                } else {
                    D(b0Var, q12, f10, q11, i10, str, hVar);
                }
                i12 = f10;
            } else {
                i12 = f10;
                h(b0Var, q12, f10, q11, i10, str, z10, drmInitData, hVar, i13);
            }
            b0Var.W(i12 + q11);
        }
        return hVar;
    }

    private static void D(b0 b0Var, int i10, int i11, int i12, int i13, @Nullable String str, h hVar) {
        b0Var.W(i11 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableList = null;
        long j10 = Long.MAX_VALUE;
        if (i10 != 1414810956) {
            if (i10 == 1954034535) {
                int i14 = i12 - 16;
                byte[] bArr = new byte[i14];
                b0Var.l(bArr, 0, i14);
                immutableList = ImmutableList.B(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i10 == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i10 == 1937010800) {
                j10 = 0;
            } else if (i10 == 1664495672) {
                hVar.f69206d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            } else {
                throw new IllegalStateException();
            }
        }
        hVar.f69204b = new a.b().e0(i13).u0(str2).j0(str).y0(j10).g0(immutableList).N();
    }

    private static k E(b0 b0Var) {
        int i10;
        long j10;
        int i11;
        long O;
        int i12 = 8;
        b0Var.W(8);
        int p10 = p(b0Var.q());
        if (p10 == 0) {
            i10 = 8;
        } else {
            i10 = 16;
        }
        b0Var.X(i10);
        int q10 = b0Var.q();
        b0Var.X(4);
        int f10 = b0Var.f();
        if (p10 == 0) {
            i12 = 4;
        }
        int i13 = 0;
        while (true) {
            j10 = -9223372036854775807L;
            if (i13 < i12) {
                if (b0Var.e()[f10 + i13] != -1) {
                    if (p10 == 0) {
                        O = b0Var.J();
                    } else {
                        O = b0Var.O();
                    }
                    if (O != 0) {
                        j10 = O;
                    }
                } else {
                    i13++;
                }
            } else {
                b0Var.X(i12);
                break;
            }
        }
        b0Var.X(10);
        int P = b0Var.P();
        b0Var.X(4);
        int q11 = b0Var.q();
        int q12 = b0Var.q();
        b0Var.X(4);
        int q13 = b0Var.q();
        int q14 = b0Var.q();
        if (q11 == 0 && q12 == 65536 && q13 == -65536 && q14 == 0) {
            i11 = 90;
        } else if (q11 == 0 && q12 == -65536 && q13 == 65536 && q14 == 0) {
            i11 = 270;
        } else if (q11 == -65536 && q12 == 0 && q13 == 0 && q14 == -65536) {
            i11 = 180;
        } else {
            i11 = 0;
        }
        return new k(q10, j10, P, i11);
    }

    @Nullable
    public static t F(d.b bVar, d.c cVar, long j10, @Nullable DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        d.c cVar2;
        long j11;
        long[] jArr;
        long[] jArr2;
        io.bidmachine.media3.common.a aVar;
        zm.t tVar;
        d.b d10;
        Pair<long[], long[]> l10;
        d.b bVar2 = (d.b) cn.a.e(bVar.d(1835297121));
        int e10 = e(q(((d.c) cn.a.e(bVar2.e(1751411826))).f50456b));
        if (e10 == -1) {
            return null;
        }
        k E = E(((d.c) cn.a.e(bVar.e(1953196132))).f50456b);
        long j12 = -9223372036854775807L;
        if (j10 == -9223372036854775807L) {
            cVar2 = cVar;
            j11 = E.f69216b;
        } else {
            cVar2 = cVar;
            j11 = j10;
        }
        long j13 = v(cVar2.f50456b).f50461c;
        if (j11 != -9223372036854775807L) {
            j12 = m0.f1(j11, 1000000L, j13);
        }
        long j14 = j12;
        e s10 = s(((d.c) cn.a.e(bVar2.e(1835296868))).f50456b);
        d.c e11 = ((d.b) cn.a.e(((d.b) cn.a.e(bVar2.d(1835626086))).d(1937007212))).e(1937011556);
        if (e11 != null) {
            h C = C(e11.f50456b, E.f69215a, E.f69218d, s10.f69199c, drmInitData, z11);
            if (!z10 && (d10 = bVar.d(1701082227)) != null && (l10 = l(d10)) != null) {
                jArr2 = (long[]) l10.second;
                jArr = (long[]) l10.first;
            } else {
                jArr = null;
                jArr2 = null;
            }
            if (C.f69204b == null) {
                return null;
            }
            if (E.f69217c != 0) {
                dn.c cVar3 = new dn.c(E.f69217c);
                a.b b10 = C.f69204b.b();
                zm.t tVar2 = C.f69204b.f55171l;
                if (tVar2 != null) {
                    tVar = tVar2.a(cVar3);
                } else {
                    tVar = new zm.t(cVar3);
                }
                aVar = b10.n0(tVar).N();
            } else {
                aVar = C.f69204b;
            }
            return new t(E.f69215a, e10, s10.f69197a, j13, j14, s10.f69198b, aVar, C.f69206d, C.f69203a, C.f69205c, jArr, jArr2);
        }
        throw ParserException.b("Malformed sample table (stbl) missing sample description (stsd)", null);
    }

    public static List<w> G(d.b bVar, ao.b0 b0Var, long j10, @Nullable DrmInitData drmInitData, boolean z10, boolean z11, h7.e<t, t> eVar) throws ParserException {
        t apply;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < bVar.f50455d.size(); i10++) {
            d.b bVar2 = bVar.f50455d.get(i10);
            if (bVar2.f50452a == 1953653099 && (apply = eVar.apply(F(bVar2, (d.c) cn.a.e(bVar.e(1836476516)), j10, drmInitData, z10, z11))) != null) {
                arrayList.add(A(apply, (d.b) cn.a.e(((d.b) cn.a.e(((d.b) cn.a.e(bVar2.d(1835297121))).d(1835626086))).d(1937007212)), b0Var));
            }
        }
        return arrayList;
    }

    public static zm.t H(d.c cVar) {
        b0 b0Var = cVar.f50456b;
        b0Var.W(8);
        zm.t tVar = new zm.t(new t.a[0]);
        while (b0Var.a() >= 8) {
            int f10 = b0Var.f();
            int q10 = b0Var.q();
            int q11 = b0Var.q();
            if (q11 == 1835365473) {
                b0Var.W(f10);
                tVar = tVar.b(I(b0Var, f10 + q10));
            } else if (q11 == 1936553057) {
                b0Var.W(f10);
                tVar = tVar.b(r.b(b0Var, f10 + q10));
            } else if (q11 == -1451722374) {
                tVar = tVar.b(L(b0Var));
            }
            b0Var.W(f10 + q10);
        }
        return tVar;
    }

    @Nullable
    private static zm.t I(b0 b0Var, int i10) {
        b0Var.X(8);
        f(b0Var);
        while (b0Var.f() < i10) {
            int f10 = b0Var.f();
            int q10 = b0Var.q();
            if (b0Var.q() == 1768715124) {
                b0Var.W(f10);
                return r(b0Var, f10 + q10);
            }
            b0Var.W(f10 + q10);
        }
        return null;
    }

    @Nullable
    static l J(b0 b0Var, int i10, int i11) throws ParserException {
        boolean z10;
        b0Var.W(i10 + 8);
        int f10 = b0Var.f();
        d dVar = null;
        while (f10 - i10 < i11) {
            b0Var.W(f10);
            int q10 = b0Var.q();
            if (q10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ao.s.a(z10, "childAtomSize must be positive");
            if (b0Var.q() == 1702454643) {
                dVar = B(b0Var, f10, q10);
            }
            f10 += q10;
        }
        if (dVar == null) {
            return null;
        }
        return new l(dVar);
    }

    private static void K(b0 b0Var, int i10, int i11, int i12, int i13, @Nullable String str, int i14, @Nullable DrmInitData drmInitData, h hVar, int i15) throws ParserException {
        String str2;
        String str3;
        DrmInitData drmInitData2;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        float f10;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25 = i11;
        int i26 = i12;
        DrmInitData drmInitData3 = drmInitData;
        h hVar2 = hVar;
        b0Var.W(i25 + 16);
        b0Var.X(16);
        int P = b0Var.P();
        int P2 = b0Var.P();
        b0Var.X(50);
        int f11 = b0Var.f();
        int i27 = i10;
        if (i27 == 1701733238) {
            Pair<Integer, u> y10 = y(b0Var, i25, i26);
            if (y10 != null) {
                i27 = ((Integer) y10.first).intValue();
                drmInitData3 = drmInitData3 == null ? null : drmInitData3.c(((u) y10.second).f69336b);
                hVar2.f69203a[i15] = (u) y10.second;
            }
            b0Var.W(f11);
        }
        String str4 = MimeTypes.VIDEO_H263;
        if (i27 != 1831958048) {
            str2 = i27 == 1211250227 ? MimeTypes.VIDEO_H263 : null;
        } else {
            str2 = MimeTypes.VIDEO_MPEG;
        }
        float f12 = 1.0f;
        int i28 = 8;
        int i29 = 8;
        ImmutableList<byte[]> immutableList = null;
        String str5 = null;
        byte[] bArr = null;
        int i30 = -1;
        int i31 = -1;
        int i32 = -1;
        int i33 = -1;
        int i34 = -1;
        int i35 = -1;
        ByteBuffer byteBuffer = null;
        a aVar = null;
        c cVar = null;
        g.k kVar = null;
        boolean z10 = false;
        while (f11 - i25 < i26) {
            b0Var.W(f11);
            int f13 = b0Var.f();
            int q10 = b0Var.q();
            if (q10 == 0) {
                str3 = str4;
                if (b0Var.f() - i25 == i26) {
                    break;
                }
            } else {
                str3 = str4;
            }
            ao.s.a(q10 > 0, "childAtomSize must be positive");
            int q11 = b0Var.q();
            if (q11 == 1635148611) {
                ao.s.a(str2 == null, null);
                b0Var.W(f13 + 8);
                ao.d b10 = ao.d.b(b0Var);
                List<byte[]> list = b10.f1782a;
                hVar2.f69205c = b10.f1783b;
                if (!z10) {
                    f12 = b10.f1792k;
                }
                String str6 = b10.f1793l;
                int i36 = b10.f1791j;
                int i37 = b10.f1788g;
                drmInitData2 = drmInitData3;
                i18 = P2;
                i19 = i27;
                i31 = i36;
                i34 = b10.f1789h;
                i35 = b10.f1790i;
                i28 = b10.f1786e;
                immutableList = list;
                str2 = "video/avc";
                str5 = str6;
                i16 = i37;
                i29 = b10.f1787f;
            } else {
                if (q11 == 1752589123) {
                    ao.s.a(str2 == null, null);
                    b0Var.W(f13 + 8);
                    c0 a10 = c0.a(b0Var);
                    List<byte[]> list2 = a10.f1767a;
                    hVar2.f69205c = a10.f1768b;
                    if (!z10) {
                        f12 = a10.f1778l;
                    }
                    int i38 = a10.f1779m;
                    int i39 = a10.f1769c;
                    String str7 = a10.f1780n;
                    int i40 = a10.f1777k;
                    immutableList = list2;
                    if (i40 != -1) {
                        i30 = i40;
                    }
                    int i41 = a10.f1774h;
                    int i42 = a10.f1775i;
                    int i43 = a10.f1776j;
                    int i44 = a10.f1772f;
                    int i45 = a10.f1773g;
                    kVar = a10.f1781o;
                    drmInitData2 = drmInitData3;
                    i18 = P2;
                    i19 = i27;
                    i34 = i42;
                    i35 = i43;
                    i28 = i44;
                    i31 = i38;
                    str2 = "video/hevc";
                    i32 = i39;
                    i16 = i41;
                    str5 = str7;
                    i29 = i45;
                } else {
                    drmInitData2 = drmInitData3;
                    if (q11 == 1818785347) {
                        ao.s.a("video/hevc".equals(str2), "lhvC must follow hvcC atom");
                        g.k kVar2 = kVar;
                        ao.s.a(kVar2 != null && kVar2.f50515b.size() >= 2, "must have at least two layers");
                        b0Var.W(f13 + 8);
                        c0 c10 = c0.c(b0Var, (g.k) cn.a.e(kVar2));
                        ao.s.a(hVar2.f69205c == c10.f1768b, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms");
                        int i46 = c10.f1774h;
                        i16 = i33;
                        if (i46 != -1) {
                            ao.s.a(i16 == i46, "colorSpace must be the same for both views");
                        }
                        int i47 = c10.f1775i;
                        int i48 = i34;
                        if (i47 != -1) {
                            ao.s.a(i48 == i47, "colorRange must be the same for both views");
                        }
                        int i49 = c10.f1776j;
                        if (i49 != -1) {
                            int i50 = i35;
                            i24 = i50;
                            ao.s.a(i50 == i49, "colorTransfer must be the same for both views");
                        } else {
                            i24 = i35;
                        }
                        ao.s.a(i28 == c10.f1772f, "bitdepthLuma must be the same for both views");
                        ao.s.a(i29 == c10.f1773g, "bitdepthChroma must be the same for both views");
                        ImmutableList<byte[]> immutableList2 = immutableList;
                        if (immutableList2 != null) {
                            immutableList = ImmutableList.r().j(immutableList2).j(c10.f1767a).k();
                        } else {
                            immutableList = immutableList2;
                            ao.s.a(false, "initializationData must be already set from hvcC atom");
                        }
                        kVar = kVar2;
                        str2 = "video/mv-hevc";
                        i18 = P2;
                        i19 = i27;
                        i34 = i48;
                        i35 = i24;
                        str5 = c10.f1780n;
                    } else {
                        ImmutableList<byte[]> immutableList3 = immutableList;
                        i16 = i33;
                        int i51 = i34;
                        int i52 = i35;
                        g.k kVar3 = kVar;
                        if (q11 == 1986361461) {
                            l J = J(b0Var, f13, q10);
                            if (J != null && J.f69219a != null) {
                                if (kVar3 == null || kVar3.f50515b.size() < 2) {
                                    i23 = i30;
                                    if (i23 == -1) {
                                        i30 = J.f69219a.f69196a.f69202c ? 5 : 4;
                                        kVar = kVar3;
                                        i18 = P2;
                                        i19 = i27;
                                        immutableList = immutableList3;
                                        i34 = i51;
                                        i35 = i52;
                                    }
                                    i30 = i23;
                                    kVar = kVar3;
                                    i18 = P2;
                                    i19 = i27;
                                    immutableList = immutableList3;
                                    i34 = i51;
                                    i35 = i52;
                                } else {
                                    ao.s.a(J.b(), "both eye views must be marked as available");
                                    ao.s.a(!J.f69219a.f69196a.f69202c, "for MV-HEVC, eye_views_reversed must be set to false");
                                }
                            }
                            i23 = i30;
                            i30 = i23;
                            kVar = kVar3;
                            i18 = P2;
                            i19 = i27;
                            immutableList = immutableList3;
                            i34 = i51;
                            i35 = i52;
                        } else {
                            int i53 = i30;
                            if (q11 == 1685480259 || q11 == 1685485123) {
                                i17 = i53;
                                i18 = P2;
                                i19 = i27;
                                i20 = i29;
                                f10 = f12;
                                i21 = i28;
                                i22 = i52;
                                ao.n a11 = ao.n.a(b0Var);
                                if (a11 != null) {
                                    str2 = "video/dolby-vision";
                                    str5 = a11.f1898c;
                                }
                            } else if (q11 == 1987076931) {
                                ao.s.a(str2 == null, null);
                                String str8 = i27 == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                                b0Var.W(f13 + 12);
                                byte H = (byte) b0Var.H();
                                byte H2 = (byte) b0Var.H();
                                int H3 = b0Var.H();
                                i29 = H3 >> 4;
                                byte b11 = (byte) ((H3 >> 1) & 7);
                                if (str8.equals(MimeTypes.VIDEO_VP9)) {
                                    immutableList3 = cn.i.h(H, H2, (byte) i29, b11);
                                }
                                boolean z11 = (H3 & 1) != 0;
                                int H4 = b0Var.H();
                                int H5 = b0Var.H();
                                int j10 = zm.g.j(H4);
                                i34 = z11 ? 1 : 2;
                                i35 = zm.g.k(H5);
                                str2 = str8;
                                i18 = P2;
                                i28 = i29;
                                kVar = kVar3;
                                i16 = j10;
                                immutableList = immutableList3;
                                i30 = i53;
                                i19 = i27;
                            } else if (q11 == 1635135811) {
                                int i54 = q10 - 8;
                                byte[] bArr2 = new byte[i54];
                                b0Var.l(bArr2, 0, i54);
                                immutableList = ImmutableList.B(bArr2);
                                b0Var.W(f13 + 8);
                                zm.g i55 = i(b0Var);
                                int i56 = i55.f71946e;
                                int i57 = i55.f71947f;
                                i16 = i55.f71942a;
                                int i58 = i55.f71943b;
                                i35 = i55.f71944c;
                                i28 = i56;
                                i18 = P2;
                                i19 = i27;
                                i34 = i58;
                                kVar = kVar3;
                                i30 = i53;
                                i29 = i57;
                                str2 = com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
                            } else if (q11 == 1668050025) {
                                if (byteBuffer == null) {
                                    byteBuffer = a();
                                }
                                ByteBuffer byteBuffer2 = byteBuffer;
                                byteBuffer2.position(21);
                                byteBuffer2.putShort(b0Var.D());
                                byteBuffer2.putShort(b0Var.D());
                                byteBuffer = byteBuffer2;
                                i18 = P2;
                                i19 = i27;
                                kVar = kVar3;
                                immutableList = immutableList3;
                                i34 = i51;
                                i35 = i52;
                                i30 = i53;
                            } else {
                                if (q11 == 1835295606) {
                                    if (byteBuffer == null) {
                                        byteBuffer = a();
                                    }
                                    ByteBuffer byteBuffer3 = byteBuffer;
                                    short D = b0Var.D();
                                    short D2 = b0Var.D();
                                    i19 = i27;
                                    short D3 = b0Var.D();
                                    short D4 = b0Var.D();
                                    int i59 = i29;
                                    short D5 = b0Var.D();
                                    int i60 = i28;
                                    short D6 = b0Var.D();
                                    i17 = i53;
                                    short D7 = b0Var.D();
                                    float f14 = f12;
                                    short D8 = b0Var.D();
                                    long J2 = b0Var.J();
                                    long J3 = b0Var.J();
                                    i18 = P2;
                                    byteBuffer3.position(1);
                                    byteBuffer3.putShort(D5);
                                    byteBuffer3.putShort(D6);
                                    byteBuffer3.putShort(D);
                                    byteBuffer3.putShort(D2);
                                    byteBuffer3.putShort(D3);
                                    byteBuffer3.putShort(D4);
                                    byteBuffer3.putShort(D7);
                                    byteBuffer3.putShort(D8);
                                    byteBuffer3.putShort((short) (J2 / 10000));
                                    byteBuffer3.putShort((short) (J3 / 10000));
                                    byteBuffer = byteBuffer3;
                                    i29 = i59;
                                    i28 = i60;
                                    immutableList = immutableList3;
                                    i34 = i51;
                                    i35 = i52;
                                    f12 = f14;
                                } else {
                                    i17 = i53;
                                    i18 = P2;
                                    i19 = i27;
                                    i20 = i29;
                                    f10 = f12;
                                    i21 = i28;
                                    if (q11 == 1681012275) {
                                        ao.s.a(str2 == null, null);
                                        str2 = str3;
                                    } else if (q11 == 1702061171) {
                                        ao.s.a(str2 == null, null);
                                        cVar = m(b0Var, f13);
                                        String str9 = cVar.f69192a;
                                        byte[] bArr3 = cVar.f69193b;
                                        immutableList = bArr3 != null ? ImmutableList.B(bArr3) : immutableList3;
                                        str2 = str9;
                                        i29 = i20;
                                        i28 = i21;
                                        i34 = i51;
                                        i35 = i52;
                                        f12 = f10;
                                    } else if (q11 == 1651798644) {
                                        aVar = j(b0Var, f13);
                                    } else {
                                        if (q11 == 1885434736) {
                                            f12 = w(b0Var, f13);
                                            i29 = i20;
                                            i28 = i21;
                                            immutableList = immutableList3;
                                            i34 = i51;
                                            i35 = i52;
                                            z10 = true;
                                        } else if (q11 == 1937126244) {
                                            bArr = x(b0Var, f13, q10);
                                        } else if (q11 == 1936995172) {
                                            int H6 = b0Var.H();
                                            b0Var.X(3);
                                            if (H6 == 0) {
                                                int H7 = b0Var.H();
                                                if (H7 == 0) {
                                                    i17 = 0;
                                                } else if (H7 == 1) {
                                                    i17 = 1;
                                                } else if (H7 == 2) {
                                                    i17 = 2;
                                                } else if (H7 == 3) {
                                                    i17 = 3;
                                                }
                                            }
                                        } else if (q11 == 1634760259) {
                                            int i61 = q10 - 12;
                                            byte[] bArr4 = new byte[i61];
                                            b0Var.W(f13 + 12);
                                            b0Var.l(bArr4, 0, i61);
                                            immutableList = ImmutableList.B(bArr4);
                                            zm.g g10 = g(new b0(bArr4));
                                            int i62 = g10.f71946e;
                                            int i63 = g10.f71947f;
                                            int i64 = g10.f71942a;
                                            int i65 = g10.f71943b;
                                            i35 = g10.f71944c;
                                            i28 = i62;
                                            i29 = i63;
                                            i34 = i65;
                                            f12 = f10;
                                            i16 = i64;
                                            str2 = "video/apv";
                                            kVar = kVar3;
                                            i30 = i17;
                                        } else if (q11 == 1668246642) {
                                            i22 = i52;
                                            if (i16 == -1 && i22 == -1) {
                                                int q12 = b0Var.q();
                                                if (q12 != 1852009592 && q12 != 1852009571) {
                                                    cn.r.h("BoxParsers", "Unsupported color type: " + dn.d.a(q12));
                                                } else {
                                                    int P3 = b0Var.P();
                                                    int P4 = b0Var.P();
                                                    b0Var.X(2);
                                                    boolean z12 = q10 == 19 && (b0Var.H() & 128) != 0;
                                                    int j11 = zm.g.j(P3);
                                                    int i66 = z12 ? 1 : 2;
                                                    i29 = i20;
                                                    i28 = i21;
                                                    immutableList = immutableList3;
                                                    f12 = f10;
                                                    i35 = zm.g.k(P4);
                                                    i34 = i66;
                                                    i16 = j11;
                                                }
                                            }
                                        } else {
                                            i22 = i52;
                                        }
                                        int i67 = i17;
                                        kVar = kVar3;
                                        i30 = i67;
                                    }
                                    i29 = i20;
                                    i28 = i21;
                                    immutableList = immutableList3;
                                    i34 = i51;
                                    i35 = i52;
                                    f12 = f10;
                                }
                                int i672 = i17;
                                kVar = kVar3;
                                i30 = i672;
                            }
                            i29 = i20;
                            i28 = i21;
                            immutableList = immutableList3;
                            i34 = i51;
                            f12 = f10;
                            i35 = i22;
                            int i6722 = i17;
                            kVar = kVar3;
                            i30 = i6722;
                        }
                    }
                }
                f11 += q10;
                i25 = i11;
                i26 = i12;
                hVar2 = hVar;
                i27 = i19;
                drmInitData3 = drmInitData2;
                P2 = i18;
                i33 = i16;
                str4 = str3;
            }
            f11 += q10;
            i25 = i11;
            i26 = i12;
            hVar2 = hVar;
            i27 = i19;
            drmInitData3 = drmInitData2;
            P2 = i18;
            i33 = i16;
            str4 = str3;
        }
        DrmInitData drmInitData4 = drmInitData3;
        int i68 = P2;
        float f15 = f12;
        ImmutableList<byte[]> immutableList4 = immutableList;
        int i69 = i30;
        int i70 = i33;
        int i71 = i34;
        int i72 = i35;
        int i73 = i29;
        int i74 = i28;
        if (str2 == null) {
            return;
        }
        a.b T = new a.b().e0(i13).u0(str2).S(str5).B0(P).d0(i68).q0(f15).t0(i14).r0(bArr).x0(i69).g0(immutableList4).l0(i31).m0(i32).Y(drmInitData4).j0(str).T(new g.b().d(i70).c(i71).e(i72).f(byteBuffer != null ? byteBuffer.array() : null).g(i74).b(i73).a());
        if (aVar != null) {
            T.Q(Ints.l(aVar.f69181a)).p0(Ints.l(aVar.f69182b));
        } else if (cVar != null) {
            T.Q(Ints.l(cVar.f69194c)).p0(Ints.l(cVar.f69195d));
        }
        hVar.f69204b = T.N();
    }

    @Nullable
    private static zm.t L(b0 b0Var) {
        short D = b0Var.D();
        b0Var.X(2);
        String E = b0Var.E(D);
        int max = Math.max(E.lastIndexOf(43), E.lastIndexOf(45));
        try {
            return new zm.t(new dn.e(Float.parseFloat(E.substring(0, max)), Float.parseFloat(E.substring(max, E.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length - 1;
        int p10 = m0.p(4, 0, length);
        int p11 = m0.p(jArr.length - 4, 0, length);
        if (jArr[0] <= j11 && j11 < jArr[p10] && jArr[p11] < j12 && j12 <= j10) {
            return true;
        }
        return false;
    }

    private static int c(b0 b0Var, int i10, int i11, int i12) throws ParserException {
        boolean z10;
        boolean z11;
        int f10 = b0Var.f();
        if (f10 >= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        ao.s.a(z10, null);
        while (f10 - i11 < i12) {
            b0Var.W(f10);
            int q10 = b0Var.q();
            if (q10 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            ao.s.a(z11, "childAtomSize must be positive");
            if (b0Var.q() == i10) {
                return f10;
            }
            f10 += q10;
        }
        return -1;
    }

    @Nullable
    private static String d(int i10) {
        char[] cArr = {(char) (((i10 >> 10) & 31) + 96), (char) (((i10 >> 5) & 31) + 96), (char) ((i10 & 31) + 96)};
        for (int i11 = 0; i11 < 3; i11++) {
            char c10 = cArr[i11];
            if (c10 < 'a' || c10 > 'z') {
                return null;
            }
        }
        return new String(cArr);
    }

    private static int e(int i10) {
        if (i10 == 1936684398) {
            return 1;
        }
        if (i10 == 1986618469) {
            return 2;
        }
        if (i10 != 1952807028 && i10 != 1935832172 && i10 != 1937072756 && i10 != 1668047728) {
            if (i10 == 1835365473) {
                return 5;
            }
            return -1;
        }
        return 3;
    }

    public static void f(b0 b0Var) {
        int f10 = b0Var.f();
        b0Var.X(4);
        if (b0Var.q() != 1751411826) {
            f10 += 4;
        }
        b0Var.W(f10);
    }

    private static zm.g g(b0 b0Var) {
        int i10;
        g.b bVar = new g.b();
        a0 a0Var = new a0(b0Var.e());
        a0Var.p(b0Var.f() * 8);
        a0Var.s(1);
        int h10 = a0Var.h(8);
        for (int i11 = 0; i11 < h10; i11++) {
            a0Var.s(1);
            int h11 = a0Var.h(8);
            for (int i12 = 0; i12 < h11; i12++) {
                a0Var.r(6);
                boolean g10 = a0Var.g();
                a0Var.q();
                a0Var.s(11);
                a0Var.r(4);
                int h12 = a0Var.h(4) + 8;
                bVar.g(h12);
                bVar.b(h12);
                a0Var.s(1);
                if (g10) {
                    int h13 = a0Var.h(8);
                    int h14 = a0Var.h(8);
                    a0Var.s(1);
                    boolean g11 = a0Var.g();
                    g.b d10 = bVar.d(zm.g.j(h13));
                    if (g11) {
                        i10 = 1;
                    } else {
                        i10 = 2;
                    }
                    d10.c(i10).e(zm.g.k(h14));
                }
            }
        }
        return bVar.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0458 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:252:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void h(cn.b0 r26, int r27, int r28, int r29, int r30, @androidx.annotation.Nullable java.lang.String r31, boolean r32, @androidx.annotation.Nullable io.bidmachine.media3.common.DrmInitData r33, vo.b.h r34, int r35) throws io.bidmachine.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 1215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vo.b.h(cn.b0, int, int, int, int, java.lang.String, boolean, io.bidmachine.media3.common.DrmInitData, vo.b$h, int):void");
    }

    private static zm.g i(b0 b0Var) {
        int i10;
        int h10;
        int h11;
        int i11;
        g.b bVar = new g.b();
        a0 a0Var = new a0(b0Var.e());
        a0Var.p(b0Var.f() * 8);
        int i12 = 1;
        a0Var.s(1);
        int h12 = a0Var.h(3);
        a0Var.r(6);
        boolean g10 = a0Var.g();
        boolean g11 = a0Var.g();
        int i13 = 10;
        if (h12 == 2 && g10) {
            if (g11) {
                i11 = 12;
            } else {
                i11 = 10;
            }
            bVar.g(i11);
            if (g11) {
                i13 = 12;
            }
            bVar.b(i13);
        } else if (h12 <= 2) {
            if (g10) {
                i10 = 10;
            } else {
                i10 = 8;
            }
            bVar.g(i10);
            if (!g10) {
                i13 = 8;
            }
            bVar.b(i13);
        }
        a0Var.r(13);
        a0Var.q();
        int h13 = a0Var.h(4);
        if (h13 != 1) {
            cn.r.f("BoxParsers", "Unsupported obu_type: " + h13);
            return bVar.a();
        } else if (a0Var.g()) {
            cn.r.f("BoxParsers", "Unsupported obu_extension_flag");
            return bVar.a();
        } else {
            boolean g12 = a0Var.g();
            a0Var.q();
            if (g12 && a0Var.h(8) > 127) {
                cn.r.f("BoxParsers", "Excessive obu_size");
                return bVar.a();
            }
            int h14 = a0Var.h(3);
            a0Var.q();
            if (a0Var.g()) {
                cn.r.f("BoxParsers", "Unsupported reduced_still_picture_header");
                return bVar.a();
            } else if (a0Var.g()) {
                cn.r.f("BoxParsers", "Unsupported timing_info_present_flag");
                return bVar.a();
            } else if (a0Var.g()) {
                cn.r.f("BoxParsers", "Unsupported initial_display_delay_present_flag");
                return bVar.a();
            } else {
                int h15 = a0Var.h(5);
                boolean z10 = false;
                for (int i14 = 0; i14 <= h15; i14++) {
                    a0Var.r(12);
                    if (a0Var.h(5) > 7) {
                        a0Var.q();
                    }
                }
                int h16 = a0Var.h(4);
                int h17 = a0Var.h(4);
                a0Var.r(h16 + 1);
                a0Var.r(h17 + 1);
                if (a0Var.g()) {
                    a0Var.r(7);
                }
                a0Var.r(7);
                boolean g13 = a0Var.g();
                if (g13) {
                    a0Var.r(2);
                }
                if (a0Var.g()) {
                    h10 = 2;
                } else {
                    h10 = a0Var.h(1);
                }
                if (h10 > 0 && !a0Var.g()) {
                    a0Var.r(1);
                }
                if (g13) {
                    a0Var.r(3);
                }
                a0Var.r(3);
                boolean g14 = a0Var.g();
                if (h14 == 2 && g14) {
                    a0Var.q();
                }
                if (h14 != 1 && a0Var.g()) {
                    z10 = true;
                }
                if (a0Var.g()) {
                    int h18 = a0Var.h(8);
                    int h19 = a0Var.h(8);
                    int h20 = a0Var.h(8);
                    if (!z10 && h18 == 1 && h19 == 13 && h20 == 0) {
                        h11 = 1;
                    } else {
                        h11 = a0Var.h(1);
                    }
                    g.b d10 = bVar.d(zm.g.j(h18));
                    if (h11 != 1) {
                        i12 = 2;
                    }
                    d10.c(i12).e(zm.g.k(h19));
                }
                return bVar.a();
            }
        }
    }

    private static a j(b0 b0Var, int i10) {
        b0Var.W(i10 + 8);
        b0Var.X(4);
        return new a(b0Var.J(), b0Var.J());
    }

    @Nullable
    static Pair<Integer, u> k(b0 b0Var, int i10, int i11) throws ParserException {
        boolean z10;
        boolean z11;
        int i12 = i10 + 8;
        boolean z12 = false;
        int i13 = -1;
        int i14 = 0;
        String str = null;
        Integer num = null;
        while (i12 - i10 < i11) {
            b0Var.W(i12);
            int q10 = b0Var.q();
            int q11 = b0Var.q();
            if (q11 == 1718775137) {
                num = Integer.valueOf(b0Var.q());
            } else if (q11 == 1935894637) {
                b0Var.X(4);
                str = b0Var.E(4);
            } else if (q11 == 1935894633) {
                i13 = i12;
                i14 = q10;
            }
            i12 += q10;
        }
        if (!C.CENC_TYPE_cenc.equals(str) && !C.CENC_TYPE_cbc1.equals(str) && !C.CENC_TYPE_cens.equals(str) && !C.CENC_TYPE_cbcs.equals(str)) {
            return null;
        }
        if (num != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        ao.s.a(z10, "frma atom is mandatory");
        if (i13 != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        ao.s.a(z11, "schi atom is mandatory");
        u z13 = z(b0Var, i13, i14, str);
        if (z13 != null) {
            z12 = true;
        }
        ao.s.a(z12, "tenc atom is mandatory");
        return Pair.create(num, (u) m0.i(z13));
    }

    @Nullable
    private static Pair<long[], long[]> l(d.b bVar) {
        long J;
        long q10;
        d.c e10 = bVar.e(1701606260);
        if (e10 == null) {
            return null;
        }
        b0 b0Var = e10.f50456b;
        b0Var.W(8);
        int p10 = p(b0Var.q());
        int L = b0Var.L();
        long[] jArr = new long[L];
        long[] jArr2 = new long[L];
        for (int i10 = 0; i10 < L; i10++) {
            if (p10 == 1) {
                J = b0Var.O();
            } else {
                J = b0Var.J();
            }
            jArr[i10] = J;
            if (p10 == 1) {
                q10 = b0Var.A();
            } else {
                q10 = b0Var.q();
            }
            jArr2[i10] = q10;
            if (b0Var.D() == 1) {
                b0Var.X(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static c m(b0 b0Var, int i10) {
        long j10;
        long j11;
        b0Var.W(i10 + 12);
        b0Var.X(1);
        n(b0Var);
        b0Var.X(2);
        int H = b0Var.H();
        if ((H & 128) != 0) {
            b0Var.X(2);
        }
        if ((H & 64) != 0) {
            b0Var.X(b0Var.H());
        }
        if ((H & 32) != 0) {
            b0Var.X(2);
        }
        b0Var.X(1);
        n(b0Var);
        String h10 = zm.u.h(b0Var.H());
        if (!MimeTypes.AUDIO_MPEG.equals(h10) && !MimeTypes.AUDIO_DTS.equals(h10) && !MimeTypes.AUDIO_DTS_HD.equals(h10)) {
            b0Var.X(4);
            long J = b0Var.J();
            long J2 = b0Var.J();
            b0Var.X(1);
            int n10 = n(b0Var);
            byte[] bArr = new byte[n10];
            b0Var.l(bArr, 0, n10);
            if (J2 > 0) {
                j10 = J2;
            } else {
                j10 = -1;
            }
            if (J > 0) {
                j11 = J;
            } else {
                j11 = -1;
            }
            return new c(h10, bArr, j10, j11);
        }
        return new c(h10, null, -1L, -1L);
    }

    private static int n(b0 b0Var) {
        int H = b0Var.H();
        int i10 = H & 127;
        while ((H & 128) == 128) {
            H = b0Var.H();
            i10 = (i10 << 7) | (H & 127);
        }
        return i10;
    }

    public static int o(int i10) {
        return i10 & ViewCompat.MEASURED_SIZE_MASK;
    }

    public static int p(int i10) {
        return (i10 >> 24) & 255;
    }

    private static int q(b0 b0Var) {
        b0Var.W(16);
        return b0Var.q();
    }

    @Nullable
    private static zm.t r(b0 b0Var, int i10) {
        b0Var.X(8);
        ArrayList arrayList = new ArrayList();
        while (b0Var.f() < i10) {
            t.a d10 = vo.j.d(b0Var);
            if (d10 != null) {
                arrayList.add(d10);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zm.t(arrayList);
    }

    private static e s(b0 b0Var) {
        int i10;
        long j10;
        long O;
        int i11 = 8;
        b0Var.W(8);
        int p10 = p(b0Var.q());
        if (p10 == 0) {
            i10 = 8;
        } else {
            i10 = 16;
        }
        b0Var.X(i10);
        long J = b0Var.J();
        int f10 = b0Var.f();
        if (p10 == 0) {
            i11 = 4;
        }
        int i12 = 0;
        while (true) {
            if (i12 < i11) {
                if (b0Var.e()[f10 + i12] != -1) {
                    if (p10 == 0) {
                        O = b0Var.J();
                    } else {
                        O = b0Var.O();
                    }
                    if (O != 0) {
                        j10 = m0.f1(O, 1000000L, J);
                    }
                } else {
                    i12++;
                }
            } else {
                b0Var.X(i11);
                break;
            }
        }
        j10 = -9223372036854775807L;
        return new e(J, j10, d(b0Var.P()));
    }

    @Nullable
    public static zm.t t(d.b bVar) {
        d.c e10 = bVar.e(1751411826);
        d.c e11 = bVar.e(1801812339);
        d.c e12 = bVar.e(1768715124);
        if (e10 == null || e11 == null || e12 == null || q(e10.f50456b) != 1835299937) {
            return null;
        }
        b0 b0Var = e11.f50456b;
        b0Var.W(12);
        int q10 = b0Var.q();
        String[] strArr = new String[q10];
        for (int i10 = 0; i10 < q10; i10++) {
            int q11 = b0Var.q();
            b0Var.X(4);
            strArr[i10] = b0Var.E(q11 - 8);
        }
        b0 b0Var2 = e12.f50456b;
        b0Var2.W(8);
        ArrayList arrayList = new ArrayList();
        while (b0Var2.a() > 8) {
            int f10 = b0Var2.f();
            int q12 = b0Var2.q();
            int q13 = b0Var2.q() - 1;
            if (q13 >= 0 && q13 < q10) {
                dn.b i11 = vo.j.i(b0Var2, f10 + q12, strArr[q13]);
                if (i11 != null) {
                    arrayList.add(i11);
                }
            } else {
                cn.r.h("BoxParsers", "Skipped metadata with unknown key index: " + q13);
            }
            b0Var2.W(f10 + q12);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zm.t(arrayList);
    }

    private static void u(b0 b0Var, int i10, int i11, int i12, h hVar) {
        b0Var.W(i11 + 16);
        if (i10 == 1835365492) {
            b0Var.B();
            String B = b0Var.B();
            if (B != null) {
                hVar.f69204b = new a.b().e0(i12).u0(B).N();
            }
        }
    }

    public static dn.f v(b0 b0Var) {
        long A;
        long A2;
        b0Var.W(8);
        if (p(b0Var.q()) == 0) {
            A = b0Var.J();
            A2 = b0Var.J();
        } else {
            A = b0Var.A();
            A2 = b0Var.A();
        }
        return new dn.f(A, A2, b0Var.J());
    }

    private static float w(b0 b0Var, int i10) {
        b0Var.W(i10 + 8);
        return b0Var.L() / b0Var.L();
    }

    @Nullable
    private static byte[] x(b0 b0Var, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            b0Var.W(i12);
            int q10 = b0Var.q();
            if (b0Var.q() == 1886547818) {
                return Arrays.copyOfRange(b0Var.e(), i12, q10 + i12);
            }
            i12 += q10;
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, u> y(b0 b0Var, int i10, int i11) throws ParserException {
        boolean z10;
        Pair<Integer, u> k10;
        int f10 = b0Var.f();
        while (f10 - i10 < i11) {
            b0Var.W(f10);
            int q10 = b0Var.q();
            if (q10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ao.s.a(z10, "childAtomSize must be positive");
            if (b0Var.q() == 1936289382 && (k10 = k(b0Var, f10, q10)) != null) {
                return k10;
            }
            f10 += q10;
        }
        return null;
    }

    @Nullable
    private static u z(b0 b0Var, int i10, int i11, String str) {
        int i12;
        int i13;
        boolean z10;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            b0Var.W(i14);
            int q10 = b0Var.q();
            if (b0Var.q() == 1952804451) {
                int p10 = p(b0Var.q());
                b0Var.X(1);
                if (p10 == 0) {
                    b0Var.X(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int H = b0Var.H();
                    i12 = H & 15;
                    i13 = (H & 240) >> 4;
                }
                if (b0Var.H() == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                int H2 = b0Var.H();
                byte[] bArr2 = new byte[16];
                b0Var.l(bArr2, 0, 16);
                if (z10 && H2 == 0) {
                    int H3 = b0Var.H();
                    bArr = new byte[H3];
                    b0Var.l(bArr, 0, H3);
                }
                return new u(z10, str, H2, bArr2, i13, i12, bArr);
            }
            i14 += q10;
        }
    }
}
