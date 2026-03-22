package ap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import bn.a;
import cn.a0;
import cn.b0;
import cn.l;
import cn.m0;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
import yo.r;
/* compiled from: DvbParser.java */
/* loaded from: classes8.dex */
public final class a implements r {

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f1966h = {0, 7, 8, 15};

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f1967i = {0, 119, -120, -1};

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f1968j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a  reason: collision with root package name */
    private final Paint f1969a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f1970b;

    /* renamed from: c  reason: collision with root package name */
    private final Canvas f1971c;

    /* renamed from: d  reason: collision with root package name */
    private final b f1972d;

    /* renamed from: e  reason: collision with root package name */
    private final C0073a f1973e;

    /* renamed from: f  reason: collision with root package name */
    private final h f1974f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f1975g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* renamed from: ap.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0073a {

        /* renamed from: a  reason: collision with root package name */
        public final int f1976a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f1977b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f1978c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f1979d;

        public C0073a(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f1976a = i10;
            this.f1977b = iArr;
            this.f1978c = iArr2;
            this.f1979d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f1980a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1981b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1982c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1983d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1984e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1985f;

        public b(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f1980a = i10;
            this.f1981b = i11;
            this.f1982c = i12;
            this.f1983d = i13;
            this.f1984e = i14;
            this.f1985f = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f1986a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1987b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f1988c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f1989d;

        public c(int i10, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f1986a = i10;
            this.f1987b = z10;
            this.f1988c = bArr;
            this.f1989d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f1990a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1991b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1992c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f1993d;

        public d(int i10, int i11, int i12, SparseArray<e> sparseArray) {
            this.f1990a = i10;
            this.f1991b = i11;
            this.f1992c = i12;
            this.f1993d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f1994a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1995b;

        public e(int i10, int i11) {
            this.f1994a = i10;
            this.f1995b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes8.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f1996a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1997b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1998c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1999d;

        /* renamed from: e  reason: collision with root package name */
        public final int f2000e;

        /* renamed from: f  reason: collision with root package name */
        public final int f2001f;

        /* renamed from: g  reason: collision with root package name */
        public final int f2002g;

        /* renamed from: h  reason: collision with root package name */
        public final int f2003h;

        /* renamed from: i  reason: collision with root package name */
        public final int f2004i;

        /* renamed from: j  reason: collision with root package name */
        public final int f2005j;

        /* renamed from: k  reason: collision with root package name */
        public final SparseArray<g> f2006k;

        public f(int i10, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, SparseArray<g> sparseArray) {
            this.f1996a = i10;
            this.f1997b = z10;
            this.f1998c = i11;
            this.f1999d = i12;
            this.f2000e = i13;
            this.f2001f = i14;
            this.f2002g = i15;
            this.f2003h = i16;
            this.f2004i = i17;
            this.f2005j = i18;
            this.f2006k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray<g> sparseArray = fVar.f2006k;
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                this.f2006k.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes8.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f2007a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2008b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2009c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2010d;

        /* renamed from: e  reason: collision with root package name */
        public final int f2011e;

        /* renamed from: f  reason: collision with root package name */
        public final int f2012f;

        public g(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f2007a = i10;
            this.f2008b = i11;
            this.f2009c = i12;
            this.f2010d = i13;
            this.f2011e = i14;
            this.f2012f = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes8.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f2013a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2014b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f2015c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<C0073a> f2016d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<c> f2017e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray<C0073a> f2018f = new SparseArray<>();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray<c> f2019g = new SparseArray<>();
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public b f2020h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        public d f2021i;

        public h(int i10, int i11) {
            this.f2013a = i10;
            this.f2014b = i11;
        }

        public void a() {
            this.f2015c.clear();
            this.f2016d.clear();
            this.f2017e.clear();
            this.f2018f.clear();
            this.f2019g.clear();
            this.f2020h = null;
            this.f2021i = null;
        }
    }

    public a(List<byte[]> list) {
        b0 b0Var = new b0(list.get(0));
        int P = b0Var.P();
        int P2 = b0Var.P();
        Paint paint = new Paint();
        this.f1969a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f1970b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f1971c = new Canvas();
        this.f1972d = new b(719, 575, 0, 719, 0, 575);
        this.f1973e = new C0073a(0, e(), f(), g());
        this.f1974f = new h(P, P2);
    }

    private static byte[] d(int i10, int i11, a0 a0Var) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) a0Var.h(i11);
        }
        return bArr;
    }

    private static int[] e() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] f() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i15 = 1; i15 < 16; i15++) {
            if (i15 < 8) {
                if ((i15 & 1) != 0) {
                    i12 = 255;
                } else {
                    i12 = 0;
                }
                if ((i15 & 2) != 0) {
                    i13 = 255;
                } else {
                    i13 = 0;
                }
                if ((i15 & 4) != 0) {
                    i14 = 255;
                } else {
                    i14 = 0;
                }
                iArr[i15] = h(255, i12, i13, i14);
            } else {
                int i16 = 127;
                if ((i15 & 1) != 0) {
                    i10 = 127;
                } else {
                    i10 = 0;
                }
                if ((i15 & 2) != 0) {
                    i11 = 127;
                } else {
                    i11 = 0;
                }
                if ((i15 & 4) == 0) {
                    i16 = 0;
                }
                iArr[i15] = h(255, i10, i11, i16);
            }
        }
        return iArr;
    }

    private static int[] g() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i28 = 0; i28 < 256; i28++) {
            int i29 = 255;
            if (i28 < 8) {
                if ((i28 & 1) != 0) {
                    i26 = 255;
                } else {
                    i26 = 0;
                }
                if ((i28 & 2) != 0) {
                    i27 = 255;
                } else {
                    i27 = 0;
                }
                if ((i28 & 4) == 0) {
                    i29 = 0;
                }
                iArr[i28] = h(63, i26, i27, i29);
            } else {
                int i30 = i28 & 136;
                int i31 = 170;
                int i32 = 85;
                if (i30 != 0) {
                    if (i30 != 8) {
                        int i33 = 43;
                        if (i30 != 128) {
                            if (i30 == 136) {
                                if ((i28 & 1) != 0) {
                                    i22 = 43;
                                } else {
                                    i22 = 0;
                                }
                                if ((i28 & 16) != 0) {
                                    i23 = 85;
                                } else {
                                    i23 = 0;
                                }
                                int i34 = i22 + i23;
                                if ((i28 & 2) != 0) {
                                    i24 = 43;
                                } else {
                                    i24 = 0;
                                }
                                if ((i28 & 32) != 0) {
                                    i25 = 85;
                                } else {
                                    i25 = 0;
                                }
                                int i35 = i24 + i25;
                                if ((i28 & 4) == 0) {
                                    i33 = 0;
                                }
                                if ((i28 & 64) == 0) {
                                    i32 = 0;
                                }
                                iArr[i28] = h(255, i34, i35, i33 + i32);
                            }
                        } else {
                            if ((i28 & 1) != 0) {
                                i18 = 43;
                            } else {
                                i18 = 0;
                            }
                            int i36 = i18 + 127;
                            if ((i28 & 16) != 0) {
                                i19 = 85;
                            } else {
                                i19 = 0;
                            }
                            int i37 = i36 + i19;
                            if ((i28 & 2) != 0) {
                                i20 = 43;
                            } else {
                                i20 = 0;
                            }
                            int i38 = i20 + 127;
                            if ((i28 & 32) != 0) {
                                i21 = 85;
                            } else {
                                i21 = 0;
                            }
                            int i39 = i38 + i21;
                            if ((i28 & 4) == 0) {
                                i33 = 0;
                            }
                            int i40 = i33 + 127;
                            if ((i28 & 64) == 0) {
                                i32 = 0;
                            }
                            iArr[i28] = h(255, i37, i39, i40 + i32);
                        }
                    } else {
                        if ((i28 & 1) != 0) {
                            i14 = 85;
                        } else {
                            i14 = 0;
                        }
                        if ((i28 & 16) != 0) {
                            i15 = 170;
                        } else {
                            i15 = 0;
                        }
                        int i41 = i14 + i15;
                        if ((i28 & 2) != 0) {
                            i16 = 85;
                        } else {
                            i16 = 0;
                        }
                        if ((i28 & 32) != 0) {
                            i17 = 170;
                        } else {
                            i17 = 0;
                        }
                        int i42 = i16 + i17;
                        if ((i28 & 4) == 0) {
                            i32 = 0;
                        }
                        if ((i28 & 64) == 0) {
                            i31 = 0;
                        }
                        iArr[i28] = h(127, i41, i42, i32 + i31);
                    }
                } else {
                    if ((i28 & 1) != 0) {
                        i10 = 85;
                    } else {
                        i10 = 0;
                    }
                    if ((i28 & 16) != 0) {
                        i11 = 170;
                    } else {
                        i11 = 0;
                    }
                    int i43 = i10 + i11;
                    if ((i28 & 2) != 0) {
                        i12 = 85;
                    } else {
                        i12 = 0;
                    }
                    if ((i28 & 32) != 0) {
                        i13 = 170;
                    } else {
                        i13 = 0;
                    }
                    int i44 = i12 + i13;
                    if ((i28 & 4) == 0) {
                        i32 = 0;
                    }
                    if ((i28 & 64) == 0) {
                        i31 = 0;
                    }
                    iArr[i28] = h(255, i43, i44, i32 + i31);
                }
            }
        }
        return iArr;
    }

    private static int h(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    private static int i(a0 a0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z10;
        int i12;
        int h10;
        int h11;
        int i13 = i10;
        boolean z11 = false;
        while (true) {
            byte h12 = a0Var.h(2);
            if (h12 != 0) {
                z10 = z11;
                i12 = 1;
            } else {
                if (a0Var.g()) {
                    h10 = a0Var.h(3) + 3;
                    h11 = a0Var.h(2);
                } else {
                    if (a0Var.g()) {
                        z10 = z11;
                        i12 = 1;
                    } else {
                        int h13 = a0Var.h(2);
                        if (h13 != 0) {
                            if (h13 != 1) {
                                if (h13 != 2) {
                                    if (h13 != 3) {
                                        z10 = z11;
                                    } else {
                                        h10 = a0Var.h(8) + 29;
                                        h11 = a0Var.h(2);
                                    }
                                } else {
                                    h10 = a0Var.h(4) + 12;
                                    h11 = a0Var.h(2);
                                }
                            } else {
                                z10 = z11;
                                i12 = 2;
                            }
                        } else {
                            z10 = true;
                        }
                        h12 = 0;
                        i12 = 0;
                    }
                    h12 = 0;
                }
                z10 = z11;
                i12 = h10;
                h12 = h11;
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    h12 = bArr[h12];
                }
                paint.setColor(iArr[h12]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z10) {
                return i13;
            }
            z11 = z10;
        }
    }

    private static int j(a0 a0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z10;
        int i12;
        int h10;
        int h11;
        int i13 = i10;
        boolean z11 = false;
        while (true) {
            byte h12 = a0Var.h(4);
            if (h12 != 0) {
                z10 = z11;
                i12 = 1;
            } else if (!a0Var.g()) {
                int h13 = a0Var.h(3);
                if (h13 != 0) {
                    z10 = z11;
                    i12 = h13 + 2;
                    h12 = 0;
                } else {
                    z10 = true;
                    h12 = 0;
                    i12 = 0;
                }
            } else {
                if (!a0Var.g()) {
                    h10 = a0Var.h(2) + 4;
                    h11 = a0Var.h(4);
                } else {
                    int h14 = a0Var.h(2);
                    if (h14 != 0) {
                        if (h14 != 1) {
                            if (h14 != 2) {
                                if (h14 != 3) {
                                    z10 = z11;
                                    h12 = 0;
                                    i12 = 0;
                                } else {
                                    h10 = a0Var.h(8) + 25;
                                    h11 = a0Var.h(4);
                                }
                            } else {
                                h10 = a0Var.h(4) + 9;
                                h11 = a0Var.h(4);
                            }
                        } else {
                            z10 = z11;
                            i12 = 2;
                        }
                    } else {
                        z10 = z11;
                        i12 = 1;
                    }
                    h12 = 0;
                }
                z10 = z11;
                i12 = h10;
                h12 = h11;
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    h12 = bArr[h12];
                }
                paint.setColor(iArr[h12]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z10) {
                return i13;
            }
            z11 = z10;
        }
    }

    private static int k(a0 a0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z10;
        int h10;
        int i12 = i10;
        boolean z11 = false;
        while (true) {
            byte h11 = a0Var.h(8);
            if (h11 != 0) {
                z10 = z11;
                h10 = 1;
            } else if (!a0Var.g()) {
                int h12 = a0Var.h(7);
                if (h12 != 0) {
                    z10 = z11;
                    h10 = h12;
                    h11 = 0;
                } else {
                    z10 = true;
                    h11 = 0;
                    h10 = 0;
                }
            } else {
                z10 = z11;
                h10 = a0Var.h(7);
                h11 = a0Var.h(8);
            }
            if (h10 != 0 && paint != null) {
                if (bArr != null) {
                    h11 = bArr[h11];
                }
                paint.setColor(iArr[h11]);
                canvas.drawRect(i12, i11, i12 + h10, i11 + 1, paint);
            }
            i12 += h10;
            if (z10) {
                return i12;
            }
            z11 = z10;
        }
    }

    private static void l(byte[] bArr, int[] iArr, int i10, int i11, int i12, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        a0 a0Var = new a0(bArr);
        int i13 = i11;
        int i14 = i12;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        byte[] bArr8 = null;
        while (a0Var.b() != 0) {
            int h10 = a0Var.h(8);
            if (h10 != 240) {
                switch (h10) {
                    case 16:
                        if (i10 == 3) {
                            if (bArr6 == null) {
                                bArr3 = f1967i;
                            } else {
                                bArr3 = bArr6;
                            }
                        } else if (i10 == 2) {
                            if (bArr8 == null) {
                                bArr3 = f1966h;
                            } else {
                                bArr3 = bArr8;
                            }
                        } else {
                            bArr2 = null;
                            i13 = i(a0Var, iArr, bArr2, i13, i14, paint, canvas);
                            a0Var.c();
                            continue;
                        }
                        bArr2 = bArr3;
                        i13 = i(a0Var, iArr, bArr2, i13, i14, paint, canvas);
                        a0Var.c();
                        continue;
                    case 17:
                        if (i10 == 3) {
                            if (bArr7 == null) {
                                bArr5 = f1968j;
                            } else {
                                bArr5 = bArr7;
                            }
                            bArr4 = bArr5;
                        } else {
                            bArr4 = null;
                        }
                        i13 = j(a0Var, iArr, bArr4, i13, i14, paint, canvas);
                        a0Var.c();
                        continue;
                    case 18:
                        i13 = k(a0Var, iArr, null, i13, i14, paint, canvas);
                        continue;
                    default:
                        switch (h10) {
                            case 32:
                                bArr8 = d(4, 4, a0Var);
                                continue;
                            case 33:
                                bArr6 = d(4, 8, a0Var);
                                continue;
                            case 34:
                                bArr7 = d(16, 8, a0Var);
                                continue;
                            default:
                                continue;
                        }
                }
            } else {
                i14 += 2;
                i13 = i11;
            }
        }
    }

    private static void m(c cVar, C0073a c0073a, int i10, int i11, int i12, @Nullable Paint paint, Canvas canvas) {
        int[] iArr;
        if (i10 == 3) {
            iArr = c0073a.f1979d;
        } else if (i10 == 2) {
            iArr = c0073a.f1978c;
        } else {
            iArr = c0073a.f1977b;
        }
        int[] iArr2 = iArr;
        l(cVar.f1988c, iArr2, i10, i11, i12, paint, canvas);
        l(cVar.f1989d, iArr2, i10, i11, i12 + 1, paint, canvas);
    }

    private yo.e n(a0 a0Var) {
        int i10;
        c cVar;
        int i11;
        SparseArray<g> sparseArray;
        Paint paint;
        while (a0Var.b() >= 48 && a0Var.h(8) == 15) {
            t(a0Var, this.f1974f);
        }
        h hVar = this.f1974f;
        d dVar = hVar.f2021i;
        if (dVar == null) {
            return new yo.e(ImmutableList.A(), -9223372036854775807L, -9223372036854775807L);
        }
        b bVar = hVar.f2020h;
        if (bVar == null) {
            bVar = this.f1972d;
        }
        Bitmap bitmap = this.f1975g;
        if (bitmap == null || bVar.f1980a + 1 != bitmap.getWidth() || bVar.f1981b + 1 != this.f1975g.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(bVar.f1980a + 1, bVar.f1981b + 1, Bitmap.Config.ARGB_8888);
            this.f1975g = createBitmap;
            this.f1971c.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = dVar.f1993d;
        for (int i12 = 0; i12 < sparseArray2.size(); i12++) {
            this.f1971c.save();
            e valueAt = sparseArray2.valueAt(i12);
            f fVar = this.f1974f.f2015c.get(sparseArray2.keyAt(i12));
            int i13 = valueAt.f1994a + bVar.f1982c;
            int i14 = valueAt.f1995b + bVar.f1984e;
            this.f1971c.clipRect(i13, i14, Math.min(fVar.f1998c + i13, bVar.f1983d), Math.min(fVar.f1999d + i14, bVar.f1985f));
            C0073a c0073a = this.f1974f.f2016d.get(fVar.f2002g);
            if (c0073a == null && (c0073a = this.f1974f.f2018f.get(fVar.f2002g)) == null) {
                c0073a = this.f1973e;
            }
            SparseArray<g> sparseArray3 = fVar.f2006k;
            int i15 = 0;
            while (i15 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i15);
                g valueAt2 = sparseArray3.valueAt(i15);
                c cVar2 = this.f1974f.f2017e.get(keyAt);
                if (cVar2 == null) {
                    cVar = this.f1974f.f2019g.get(keyAt);
                } else {
                    cVar = cVar2;
                }
                if (cVar != null) {
                    if (cVar.f1987b) {
                        paint = null;
                    } else {
                        paint = this.f1969a;
                    }
                    i11 = i15;
                    sparseArray = sparseArray3;
                    m(cVar, c0073a, fVar.f2001f, valueAt2.f2009c + i13, i14 + valueAt2.f2010d, paint, this.f1971c);
                } else {
                    i11 = i15;
                    sparseArray = sparseArray3;
                }
                i15 = i11 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.f1997b) {
                int i16 = fVar.f2001f;
                if (i16 == 3) {
                    i10 = c0073a.f1979d[fVar.f2003h];
                } else if (i16 == 2) {
                    i10 = c0073a.f1978c[fVar.f2004i];
                } else {
                    i10 = c0073a.f1977b[fVar.f2005j];
                }
                this.f1970b.setColor(i10);
                this.f1971c.drawRect(i13, i14, fVar.f1998c + i13, fVar.f1999d + i14, this.f1970b);
            }
            arrayList.add(new a.b().f(Bitmap.createBitmap(this.f1975g, i13, i14, fVar.f1998c, fVar.f1999d)).k(i13 / bVar.f1980a).l(0).h(i14 / bVar.f1981b, 0).i(0).n(fVar.f1998c / bVar.f1980a).g(fVar.f1999d / bVar.f1981b).a());
            this.f1971c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f1971c.restore();
        }
        return new yo.e(arrayList, -9223372036854775807L, -9223372036854775807L);
    }

    private static C0073a o(a0 a0Var, int i10) {
        int[] iArr;
        int h10;
        int i11;
        int h11;
        int h12;
        int i12;
        int i13 = 8;
        int h13 = a0Var.h(8);
        a0Var.r(8);
        int i14 = 2;
        int i15 = i10 - 2;
        int[] e10 = e();
        int[] f10 = f();
        int[] g10 = g();
        while (i15 > 0) {
            int h14 = a0Var.h(i13);
            int h15 = a0Var.h(i13);
            if ((h15 & 128) != 0) {
                iArr = e10;
            } else if ((h15 & 64) != 0) {
                iArr = f10;
            } else {
                iArr = g10;
            }
            if ((h15 & 1) != 0) {
                h12 = a0Var.h(i13);
                i12 = a0Var.h(i13);
                h10 = a0Var.h(i13);
                h11 = a0Var.h(i13);
                i11 = i15 - 6;
            } else {
                int h16 = a0Var.h(4) << 4;
                h10 = a0Var.h(4) << 4;
                i11 = i15 - 4;
                h11 = a0Var.h(i14) << 6;
                h12 = a0Var.h(6) << i14;
                i12 = h16;
            }
            if (h12 == 0) {
                h11 = 255;
                i12 = 0;
                h10 = 0;
            }
            double d10 = h12;
            double d11 = i12 - 128;
            double d12 = h10 - 128;
            iArr[h14] = h((byte) (255 - (h11 & 255)), m0.p((int) (d10 + (1.402d * d11)), 0, 255), m0.p((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255), m0.p((int) (d10 + (d12 * 1.772d)), 0, 255));
            i15 = i11;
            h13 = h13;
            i13 = 8;
            i14 = 2;
        }
        return new C0073a(h13, e10, f10, g10);
    }

    private static b p(a0 a0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        a0Var.r(4);
        boolean g10 = a0Var.g();
        a0Var.r(3);
        int h10 = a0Var.h(16);
        int h11 = a0Var.h(16);
        if (g10) {
            int h12 = a0Var.h(16);
            int h13 = a0Var.h(16);
            int h14 = a0Var.h(16);
            i13 = a0Var.h(16);
            i12 = h13;
            i11 = h14;
            i10 = h12;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = h10;
            i13 = h11;
        }
        return new b(h10, h11, i10, i12, i11, i13);
    }

    private static c q(a0 a0Var) {
        byte[] bArr;
        int h10 = a0Var.h(16);
        a0Var.r(4);
        int h11 = a0Var.h(2);
        boolean g10 = a0Var.g();
        a0Var.r(1);
        byte[] bArr2 = m0.f3619f;
        if (h11 == 1) {
            a0Var.r(a0Var.h(8) * 16);
        } else if (h11 == 0) {
            int h12 = a0Var.h(16);
            int h13 = a0Var.h(16);
            if (h12 > 0) {
                bArr2 = new byte[h12];
                a0Var.k(bArr2, 0, h12);
            }
            if (h13 > 0) {
                bArr = new byte[h13];
                a0Var.k(bArr, 0, h13);
                return new c(h10, g10, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(h10, g10, bArr2, bArr);
    }

    private static d r(a0 a0Var, int i10) {
        int h10 = a0Var.h(8);
        int h11 = a0Var.h(4);
        int h12 = a0Var.h(2);
        a0Var.r(2);
        int i11 = i10 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i11 > 0) {
            int h13 = a0Var.h(8);
            a0Var.r(8);
            i11 -= 6;
            sparseArray.put(h13, new e(a0Var.h(16), a0Var.h(16)));
        }
        return new d(h10, h11, h12, sparseArray);
    }

    private static f s(a0 a0Var, int i10) {
        int i11;
        int i12;
        int i13;
        int h10 = a0Var.h(8);
        a0Var.r(4);
        boolean g10 = a0Var.g();
        a0Var.r(3);
        int i14 = 16;
        int h11 = a0Var.h(16);
        int h12 = a0Var.h(16);
        int h13 = a0Var.h(3);
        int h14 = a0Var.h(3);
        int i15 = 2;
        a0Var.r(2);
        int h15 = a0Var.h(8);
        int h16 = a0Var.h(8);
        int h17 = a0Var.h(4);
        int h18 = a0Var.h(2);
        a0Var.r(2);
        int i16 = i10 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i16 > 0) {
            int h19 = a0Var.h(i14);
            int h20 = a0Var.h(i15);
            int h21 = a0Var.h(i15);
            int h22 = a0Var.h(12);
            int i17 = h18;
            a0Var.r(4);
            int h23 = a0Var.h(12);
            int i18 = i16 - 6;
            if (h20 != 1) {
                i11 = 2;
                if (h20 != 2) {
                    i13 = 0;
                    i12 = 0;
                    i16 = i18;
                    sparseArray.put(h19, new g(h20, h21, h22, h23, i13, i12));
                    i15 = i11;
                    h18 = i17;
                    i14 = 16;
                }
            } else {
                i11 = 2;
            }
            i16 -= 8;
            i13 = a0Var.h(8);
            i12 = a0Var.h(8);
            sparseArray.put(h19, new g(h20, h21, h22, h23, i13, i12));
            i15 = i11;
            h18 = i17;
            i14 = 16;
        }
        return new f(h10, g10, h11, h12, h13, h14, h15, h16, h17, h18, sparseArray);
    }

    private static void t(a0 a0Var, h hVar) {
        f fVar;
        int h10 = a0Var.h(8);
        int h11 = a0Var.h(16);
        int h12 = a0Var.h(16);
        int d10 = a0Var.d() + h12;
        if (h12 * 8 > a0Var.b()) {
            cn.r.h("DvbParser", "Data field length exceeds limit");
            a0Var.r(a0Var.b());
            return;
        }
        switch (h10) {
            case 16:
                if (h11 == hVar.f2013a) {
                    d dVar = hVar.f2021i;
                    d r10 = r(a0Var, h12);
                    if (r10.f1992c != 0) {
                        hVar.f2021i = r10;
                        hVar.f2015c.clear();
                        hVar.f2016d.clear();
                        hVar.f2017e.clear();
                        break;
                    } else if (dVar != null && dVar.f1991b != r10.f1991b) {
                        hVar.f2021i = r10;
                        break;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f2021i;
                if (h11 == hVar.f2013a && dVar2 != null) {
                    f s10 = s(a0Var, h12);
                    if (dVar2.f1992c == 0 && (fVar = hVar.f2015c.get(s10.f1996a)) != null) {
                        s10.a(fVar);
                    }
                    hVar.f2015c.put(s10.f1996a, s10);
                    break;
                }
                break;
            case 18:
                if (h11 == hVar.f2013a) {
                    C0073a o10 = o(a0Var, h12);
                    hVar.f2016d.put(o10.f1976a, o10);
                    break;
                } else if (h11 == hVar.f2014b) {
                    C0073a o11 = o(a0Var, h12);
                    hVar.f2018f.put(o11.f1976a, o11);
                    break;
                }
                break;
            case 19:
                if (h11 == hVar.f2013a) {
                    c q10 = q(a0Var);
                    hVar.f2017e.put(q10.f1986a, q10);
                    break;
                } else if (h11 == hVar.f2014b) {
                    c q11 = q(a0Var);
                    hVar.f2019g.put(q11.f1986a, q11);
                    break;
                }
                break;
            case 20:
                if (h11 == hVar.f2013a) {
                    hVar.f2020h = p(a0Var);
                    break;
                }
                break;
        }
        a0Var.s(d10 - a0Var.d());
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<yo.e> lVar) {
        a0 a0Var = new a0(bArr, i11 + i10);
        a0Var.p(i10);
        lVar.accept(n(a0Var));
    }

    @Override // yo.r
    public int b() {
        return 2;
    }

    @Override // yo.r
    public void reset() {
        this.f1974f.a();
    }
}
