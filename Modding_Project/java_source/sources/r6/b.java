package r6;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import b7.f0;
import b7.q;
import b7.s0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p6.b;
/* compiled from: DvbParser.java */
/* loaded from: classes4.dex */
final class b {

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f65613h = {0, 7, 8, 15};

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f65614i = {0, 119, -120, -1};

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f65615j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a  reason: collision with root package name */
    private final Paint f65616a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f65617b;

    /* renamed from: c  reason: collision with root package name */
    private final Canvas f65618c;

    /* renamed from: d  reason: collision with root package name */
    private final C0913b f65619d;

    /* renamed from: e  reason: collision with root package name */
    private final a f65620e;

    /* renamed from: f  reason: collision with root package name */
    private final h f65621f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f65622g;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f65623a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f65624b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f65625c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f65626d;

        public a(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f65623a = i10;
            this.f65624b = iArr;
            this.f65625c = iArr2;
            this.f65626d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* renamed from: r6.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0913b {

        /* renamed from: a  reason: collision with root package name */
        public final int f65627a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65628b;

        /* renamed from: c  reason: collision with root package name */
        public final int f65629c;

        /* renamed from: d  reason: collision with root package name */
        public final int f65630d;

        /* renamed from: e  reason: collision with root package name */
        public final int f65631e;

        /* renamed from: f  reason: collision with root package name */
        public final int f65632f;

        public C0913b(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f65627a = i10;
            this.f65628b = i11;
            this.f65629c = i12;
            this.f65630d = i13;
            this.f65631e = i14;
            this.f65632f = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f65633a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f65634b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f65635c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f65636d;

        public c(int i10, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f65633a = i10;
            this.f65634b = z10;
            this.f65635c = bArr;
            this.f65636d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f65637a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65638b;

        /* renamed from: c  reason: collision with root package name */
        public final int f65639c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f65640d;

        public d(int i10, int i11, int i12, SparseArray<e> sparseArray) {
            this.f65637a = i10;
            this.f65638b = i11;
            this.f65639c = i12;
            this.f65640d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes4.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f65641a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65642b;

        public e(int i10, int i11) {
            this.f65641a = i10;
            this.f65642b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes4.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f65643a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f65644b;

        /* renamed from: c  reason: collision with root package name */
        public final int f65645c;

        /* renamed from: d  reason: collision with root package name */
        public final int f65646d;

        /* renamed from: e  reason: collision with root package name */
        public final int f65647e;

        /* renamed from: f  reason: collision with root package name */
        public final int f65648f;

        /* renamed from: g  reason: collision with root package name */
        public final int f65649g;

        /* renamed from: h  reason: collision with root package name */
        public final int f65650h;

        /* renamed from: i  reason: collision with root package name */
        public final int f65651i;

        /* renamed from: j  reason: collision with root package name */
        public final int f65652j;

        /* renamed from: k  reason: collision with root package name */
        public final SparseArray<g> f65653k;

        public f(int i10, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, SparseArray<g> sparseArray) {
            this.f65643a = i10;
            this.f65644b = z10;
            this.f65645c = i11;
            this.f65646d = i12;
            this.f65647e = i13;
            this.f65648f = i14;
            this.f65649g = i15;
            this.f65650h = i16;
            this.f65651i = i17;
            this.f65652j = i18;
            this.f65653k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray<g> sparseArray = fVar.f65653k;
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                this.f65653k.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes4.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f65654a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65655b;

        /* renamed from: c  reason: collision with root package name */
        public final int f65656c;

        /* renamed from: d  reason: collision with root package name */
        public final int f65657d;

        /* renamed from: e  reason: collision with root package name */
        public final int f65658e;

        /* renamed from: f  reason: collision with root package name */
        public final int f65659f;

        public g(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f65654a = i10;
            this.f65655b = i11;
            this.f65656c = i12;
            this.f65657d = i13;
            this.f65658e = i14;
            this.f65659f = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DvbParser.java */
    /* loaded from: classes4.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f65660a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65661b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f65662c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f65663d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<c> f65664e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray<a> f65665f = new SparseArray<>();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray<c> f65666g = new SparseArray<>();
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public C0913b f65667h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        public d f65668i;

        public h(int i10, int i11) {
            this.f65660a = i10;
            this.f65661b = i11;
        }

        public void a() {
            this.f65662c.clear();
            this.f65663d.clear();
            this.f65664e.clear();
            this.f65665f.clear();
            this.f65666g.clear();
            this.f65667h = null;
            this.f65668i = null;
        }
    }

    public b(int i10, int i11) {
        Paint paint = new Paint();
        this.f65616a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f65617b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f65618c = new Canvas();
        this.f65619d = new C0913b(719, 575, 0, 719, 0, 575);
        this.f65620e = new a(0, c(), d(), e());
        this.f65621f = new h(i10, i11);
    }

    private static byte[] a(int i10, int i11, f0 f0Var) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) f0Var.h(i11);
        }
        return bArr;
    }

    private static int[] c() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] d() {
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
                iArr[i15] = f(255, i12, i13, i14);
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
                iArr[i15] = f(255, i10, i11, i16);
            }
        }
        return iArr;
    }

    private static int[] e() {
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
                iArr[i28] = f(63, i26, i27, i29);
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
                                iArr[i28] = f(255, i34, i35, i33 + i32);
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
                            iArr[i28] = f(255, i37, i39, i40 + i32);
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
                        iArr[i28] = f(127, i41, i42, i32 + i31);
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
                    iArr[i28] = f(255, i43, i44, i32 + i31);
                }
            }
        }
        return iArr;
    }

    private static int f(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    private static int g(f0 f0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z10;
        int i12;
        int h10;
        int h11;
        int i13 = i10;
        boolean z11 = false;
        while (true) {
            byte h12 = f0Var.h(2);
            if (h12 != 0) {
                z10 = z11;
                i12 = 1;
            } else {
                if (f0Var.g()) {
                    h10 = f0Var.h(3) + 3;
                    h11 = f0Var.h(2);
                } else {
                    if (f0Var.g()) {
                        z10 = z11;
                        i12 = 1;
                    } else {
                        int h13 = f0Var.h(2);
                        if (h13 != 0) {
                            if (h13 != 1) {
                                if (h13 != 2) {
                                    if (h13 != 3) {
                                        z10 = z11;
                                    } else {
                                        h10 = f0Var.h(8) + 29;
                                        h11 = f0Var.h(2);
                                    }
                                } else {
                                    h10 = f0Var.h(4) + 12;
                                    h11 = f0Var.h(2);
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

    private static int h(f0 f0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z10;
        int i12;
        int h10;
        int h11;
        int i13 = i10;
        boolean z11 = false;
        while (true) {
            byte h12 = f0Var.h(4);
            if (h12 != 0) {
                z10 = z11;
                i12 = 1;
            } else if (!f0Var.g()) {
                int h13 = f0Var.h(3);
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
                if (!f0Var.g()) {
                    h10 = f0Var.h(2) + 4;
                    h11 = f0Var.h(4);
                } else {
                    int h14 = f0Var.h(2);
                    if (h14 != 0) {
                        if (h14 != 1) {
                            if (h14 != 2) {
                                if (h14 != 3) {
                                    z10 = z11;
                                    h12 = 0;
                                    i12 = 0;
                                } else {
                                    h10 = f0Var.h(8) + 25;
                                    h11 = f0Var.h(4);
                                }
                            } else {
                                h10 = f0Var.h(4) + 9;
                                h11 = f0Var.h(4);
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

    private static int i(f0 f0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z10;
        int h10;
        int i12 = i10;
        boolean z11 = false;
        while (true) {
            byte h11 = f0Var.h(8);
            if (h11 != 0) {
                z10 = z11;
                h10 = 1;
            } else if (!f0Var.g()) {
                int h12 = f0Var.h(7);
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
                h10 = f0Var.h(7);
                h11 = f0Var.h(8);
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

    private static void j(byte[] bArr, int[] iArr, int i10, int i11, int i12, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        f0 f0Var = new f0(bArr);
        int i13 = i11;
        int i14 = i12;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        byte[] bArr8 = null;
        while (f0Var.b() != 0) {
            int h10 = f0Var.h(8);
            if (h10 != 240) {
                switch (h10) {
                    case 16:
                        if (i10 == 3) {
                            if (bArr6 == null) {
                                bArr3 = f65614i;
                            } else {
                                bArr3 = bArr6;
                            }
                        } else if (i10 == 2) {
                            if (bArr8 == null) {
                                bArr3 = f65613h;
                            } else {
                                bArr3 = bArr8;
                            }
                        } else {
                            bArr2 = null;
                            i13 = g(f0Var, iArr, bArr2, i13, i14, paint, canvas);
                            f0Var.c();
                            continue;
                        }
                        bArr2 = bArr3;
                        i13 = g(f0Var, iArr, bArr2, i13, i14, paint, canvas);
                        f0Var.c();
                        continue;
                    case 17:
                        if (i10 == 3) {
                            if (bArr7 == null) {
                                bArr5 = f65615j;
                            } else {
                                bArr5 = bArr7;
                            }
                            bArr4 = bArr5;
                        } else {
                            bArr4 = null;
                        }
                        i13 = h(f0Var, iArr, bArr4, i13, i14, paint, canvas);
                        f0Var.c();
                        continue;
                    case 18:
                        i13 = i(f0Var, iArr, null, i13, i14, paint, canvas);
                        continue;
                    default:
                        switch (h10) {
                            case 32:
                                bArr8 = a(4, 4, f0Var);
                                continue;
                            case 33:
                                bArr6 = a(4, 8, f0Var);
                                continue;
                            case 34:
                                bArr7 = a(16, 8, f0Var);
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

    private static void k(c cVar, a aVar, int i10, int i11, int i12, @Nullable Paint paint, Canvas canvas) {
        int[] iArr;
        if (i10 == 3) {
            iArr = aVar.f65626d;
        } else if (i10 == 2) {
            iArr = aVar.f65625c;
        } else {
            iArr = aVar.f65624b;
        }
        int[] iArr2 = iArr;
        j(cVar.f65635c, iArr2, i10, i11, i12, paint, canvas);
        j(cVar.f65636d, iArr2, i10, i11, i12 + 1, paint, canvas);
    }

    private static a l(f0 f0Var, int i10) {
        int[] iArr;
        int h10;
        int i11;
        int h11;
        int h12;
        int i12;
        int i13 = 8;
        int h13 = f0Var.h(8);
        f0Var.r(8);
        int i14 = 2;
        int i15 = i10 - 2;
        int[] c10 = c();
        int[] d10 = d();
        int[] e10 = e();
        while (i15 > 0) {
            int h14 = f0Var.h(i13);
            int h15 = f0Var.h(i13);
            if ((h15 & 128) != 0) {
                iArr = c10;
            } else if ((h15 & 64) != 0) {
                iArr = d10;
            } else {
                iArr = e10;
            }
            if ((h15 & 1) != 0) {
                h12 = f0Var.h(i13);
                i12 = f0Var.h(i13);
                h10 = f0Var.h(i13);
                h11 = f0Var.h(i13);
                i11 = i15 - 6;
            } else {
                int h16 = f0Var.h(4) << 4;
                h10 = f0Var.h(4) << 4;
                i11 = i15 - 4;
                h11 = f0Var.h(i14) << 6;
                h12 = f0Var.h(6) << i14;
                i12 = h16;
            }
            if (h12 == 0) {
                h11 = 255;
                i12 = 0;
                h10 = 0;
            }
            double d11 = h12;
            double d12 = i12 - 128;
            double d13 = h10 - 128;
            iArr[h14] = f((byte) (255 - (h11 & 255)), s0.p((int) (d11 + (1.402d * d12)), 0, 255), s0.p((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255), s0.p((int) (d11 + (d13 * 1.772d)), 0, 255));
            i15 = i11;
            h13 = h13;
            i13 = 8;
            i14 = 2;
        }
        return new a(h13, c10, d10, e10);
    }

    private static C0913b m(f0 f0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        f0Var.r(4);
        boolean g10 = f0Var.g();
        f0Var.r(3);
        int h10 = f0Var.h(16);
        int h11 = f0Var.h(16);
        if (g10) {
            int h12 = f0Var.h(16);
            int h13 = f0Var.h(16);
            int h14 = f0Var.h(16);
            i13 = f0Var.h(16);
            i12 = h13;
            i11 = h14;
            i10 = h12;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = h10;
            i13 = h11;
        }
        return new C0913b(h10, h11, i10, i12, i11, i13);
    }

    private static c n(f0 f0Var) {
        byte[] bArr;
        int h10 = f0Var.h(16);
        f0Var.r(4);
        int h11 = f0Var.h(2);
        boolean g10 = f0Var.g();
        f0Var.r(1);
        byte[] bArr2 = s0.f2511f;
        if (h11 == 1) {
            f0Var.r(f0Var.h(8) * 16);
        } else if (h11 == 0) {
            int h12 = f0Var.h(16);
            int h13 = f0Var.h(16);
            if (h12 > 0) {
                bArr2 = new byte[h12];
                f0Var.k(bArr2, 0, h12);
            }
            if (h13 > 0) {
                bArr = new byte[h13];
                f0Var.k(bArr, 0, h13);
                return new c(h10, g10, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(h10, g10, bArr2, bArr);
    }

    private static d o(f0 f0Var, int i10) {
        int h10 = f0Var.h(8);
        int h11 = f0Var.h(4);
        int h12 = f0Var.h(2);
        f0Var.r(2);
        int i11 = i10 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i11 > 0) {
            int h13 = f0Var.h(8);
            f0Var.r(8);
            i11 -= 6;
            sparseArray.put(h13, new e(f0Var.h(16), f0Var.h(16)));
        }
        return new d(h10, h11, h12, sparseArray);
    }

    private static f p(f0 f0Var, int i10) {
        int i11;
        int i12;
        int i13;
        int h10 = f0Var.h(8);
        f0Var.r(4);
        boolean g10 = f0Var.g();
        f0Var.r(3);
        int i14 = 16;
        int h11 = f0Var.h(16);
        int h12 = f0Var.h(16);
        int h13 = f0Var.h(3);
        int h14 = f0Var.h(3);
        int i15 = 2;
        f0Var.r(2);
        int h15 = f0Var.h(8);
        int h16 = f0Var.h(8);
        int h17 = f0Var.h(4);
        int h18 = f0Var.h(2);
        f0Var.r(2);
        int i16 = i10 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i16 > 0) {
            int h19 = f0Var.h(i14);
            int h20 = f0Var.h(i15);
            int h21 = f0Var.h(i15);
            int h22 = f0Var.h(12);
            int i17 = h18;
            f0Var.r(4);
            int h23 = f0Var.h(12);
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
            i13 = f0Var.h(8);
            i12 = f0Var.h(8);
            sparseArray.put(h19, new g(h20, h21, h22, h23, i13, i12));
            i15 = i11;
            h18 = i17;
            i14 = 16;
        }
        return new f(h10, g10, h11, h12, h13, h14, h15, h16, h17, h18, sparseArray);
    }

    private static void q(f0 f0Var, h hVar) {
        f fVar;
        int h10 = f0Var.h(8);
        int h11 = f0Var.h(16);
        int h12 = f0Var.h(16);
        int d10 = f0Var.d() + h12;
        if (h12 * 8 > f0Var.b()) {
            q.i("DvbParser", "Data field length exceeds limit");
            f0Var.r(f0Var.b());
            return;
        }
        switch (h10) {
            case 16:
                if (h11 == hVar.f65660a) {
                    d dVar = hVar.f65668i;
                    d o10 = o(f0Var, h12);
                    if (o10.f65639c != 0) {
                        hVar.f65668i = o10;
                        hVar.f65662c.clear();
                        hVar.f65663d.clear();
                        hVar.f65664e.clear();
                        break;
                    } else if (dVar != null && dVar.f65638b != o10.f65638b) {
                        hVar.f65668i = o10;
                        break;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f65668i;
                if (h11 == hVar.f65660a && dVar2 != null) {
                    f p10 = p(f0Var, h12);
                    if (dVar2.f65639c == 0 && (fVar = hVar.f65662c.get(p10.f65643a)) != null) {
                        p10.a(fVar);
                    }
                    hVar.f65662c.put(p10.f65643a, p10);
                    break;
                }
                break;
            case 18:
                if (h11 == hVar.f65660a) {
                    a l10 = l(f0Var, h12);
                    hVar.f65663d.put(l10.f65623a, l10);
                    break;
                } else if (h11 == hVar.f65661b) {
                    a l11 = l(f0Var, h12);
                    hVar.f65665f.put(l11.f65623a, l11);
                    break;
                }
                break;
            case 19:
                if (h11 == hVar.f65660a) {
                    c n10 = n(f0Var);
                    hVar.f65664e.put(n10.f65633a, n10);
                    break;
                } else if (h11 == hVar.f65661b) {
                    c n11 = n(f0Var);
                    hVar.f65666g.put(n11.f65633a, n11);
                    break;
                }
                break;
            case 20:
                if (h11 == hVar.f65660a) {
                    hVar.f65667h = m(f0Var);
                    break;
                }
                break;
        }
        f0Var.s(d10 - f0Var.d());
    }

    public List<p6.b> b(byte[] bArr, int i10) {
        int i11;
        c cVar;
        int i12;
        SparseArray<g> sparseArray;
        Paint paint;
        f0 f0Var = new f0(bArr, i10);
        while (f0Var.b() >= 48 && f0Var.h(8) == 15) {
            q(f0Var, this.f65621f);
        }
        h hVar = this.f65621f;
        d dVar = hVar.f65668i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0913b c0913b = hVar.f65667h;
        if (c0913b == null) {
            c0913b = this.f65619d;
        }
        Bitmap bitmap = this.f65622g;
        if (bitmap == null || c0913b.f65627a + 1 != bitmap.getWidth() || c0913b.f65628b + 1 != this.f65622g.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c0913b.f65627a + 1, c0913b.f65628b + 1, Bitmap.Config.ARGB_8888);
            this.f65622g = createBitmap;
            this.f65618c.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = dVar.f65640d;
        for (int i13 = 0; i13 < sparseArray2.size(); i13++) {
            this.f65618c.save();
            e valueAt = sparseArray2.valueAt(i13);
            f fVar = this.f65621f.f65662c.get(sparseArray2.keyAt(i13));
            int i14 = valueAt.f65641a + c0913b.f65629c;
            int i15 = valueAt.f65642b + c0913b.f65631e;
            this.f65618c.clipRect(i14, i15, Math.min(fVar.f65645c + i14, c0913b.f65630d), Math.min(fVar.f65646d + i15, c0913b.f65632f));
            a aVar = this.f65621f.f65663d.get(fVar.f65649g);
            if (aVar == null && (aVar = this.f65621f.f65665f.get(fVar.f65649g)) == null) {
                aVar = this.f65620e;
            }
            SparseArray<g> sparseArray3 = fVar.f65653k;
            int i16 = 0;
            while (i16 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i16);
                g valueAt2 = sparseArray3.valueAt(i16);
                c cVar2 = this.f65621f.f65664e.get(keyAt);
                if (cVar2 == null) {
                    cVar = this.f65621f.f65666g.get(keyAt);
                } else {
                    cVar = cVar2;
                }
                if (cVar != null) {
                    if (cVar.f65634b) {
                        paint = null;
                    } else {
                        paint = this.f65616a;
                    }
                    i12 = i16;
                    sparseArray = sparseArray3;
                    k(cVar, aVar, fVar.f65648f, valueAt2.f65656c + i14, i15 + valueAt2.f65657d, paint, this.f65618c);
                } else {
                    i12 = i16;
                    sparseArray = sparseArray3;
                }
                i16 = i12 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.f65644b) {
                int i17 = fVar.f65648f;
                if (i17 == 3) {
                    i11 = aVar.f65626d[fVar.f65650h];
                } else if (i17 == 2) {
                    i11 = aVar.f65625c[fVar.f65651i];
                } else {
                    i11 = aVar.f65624b[fVar.f65652j];
                }
                this.f65617b.setColor(i11);
                this.f65618c.drawRect(i14, i15, fVar.f65645c + i14, fVar.f65646d + i15, this.f65617b);
            }
            arrayList.add(new b.C0897b().f(Bitmap.createBitmap(this.f65622g, i14, i15, fVar.f65645c, fVar.f65646d)).k(i14 / c0913b.f65627a).l(0).h(i15 / c0913b.f65628b, 0).i(0).n(fVar.f65645c / c0913b.f65627a).g(fVar.f65646d / c0913b.f65628b).a());
            this.f65618c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f65618c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.f65621f.a();
    }
}
