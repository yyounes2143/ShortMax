package w3;

import java.io.IOException;
import java.io.InputStream;
import k2.h;
import k2.m;
import y3.k;
/* compiled from: ProgressiveJpegParser.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: g  reason: collision with root package name */
    private boolean f69629g;

    /* renamed from: h  reason: collision with root package name */
    private final n2.a f69630h;

    /* renamed from: c  reason: collision with root package name */
    private int f69625c = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f69624b = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f69626d = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f69628f = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f69627e = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f69623a = 0;

    public e(n2.a aVar) {
        this.f69630h = (n2.a) h.g(aVar);
    }

    private boolean a(InputStream inputStream) {
        int read;
        int i10 = this.f69627e;
        while (this.f69623a != 6 && (read = inputStream.read()) != -1) {
            try {
                int i11 = this.f69625c;
                this.f69625c = i11 + 1;
                if (this.f69629g) {
                    this.f69623a = 6;
                    this.f69629g = false;
                    return false;
                }
                int i12 = this.f69623a;
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 != 4) {
                                    if (i12 != 5) {
                                        h.i(false);
                                    } else {
                                        int i13 = ((this.f69624b << 8) + read) - 2;
                                        r2.c.a(inputStream, i13);
                                        this.f69625c += i13;
                                        this.f69623a = 2;
                                    }
                                } else {
                                    this.f69623a = 5;
                                }
                            } else if (read == 255) {
                                this.f69623a = 3;
                            } else if (read == 0) {
                                this.f69623a = 2;
                            } else if (read == 217) {
                                this.f69629g = true;
                                f(i11 - 1);
                                this.f69623a = 2;
                            } else {
                                if (read == 218) {
                                    f(i11 - 1);
                                }
                                if (b(read)) {
                                    this.f69623a = 4;
                                } else {
                                    this.f69623a = 2;
                                }
                            }
                        } else if (read == 255) {
                            this.f69623a = 3;
                        }
                    } else if (read == 216) {
                        this.f69623a = 2;
                    } else {
                        this.f69623a = 6;
                    }
                } else if (read == 255) {
                    this.f69623a = 1;
                } else {
                    this.f69623a = 6;
                }
                this.f69624b = read;
            } catch (IOException e10) {
                m.a(e10);
            }
        }
        if (this.f69623a == 6 || this.f69627e == i10) {
            return false;
        }
        return true;
    }

    private static boolean b(int i10) {
        if (i10 == 1) {
            return false;
        }
        if ((i10 >= 208 && i10 <= 215) || i10 == 217 || i10 == 216) {
            return false;
        }
        return true;
    }

    private void f(int i10) {
        int i11 = this.f69626d;
        if (i11 > 0) {
            this.f69628f = i10;
        }
        this.f69626d = i11 + 1;
        this.f69627e = i11;
    }

    public int c() {
        return this.f69628f;
    }

    public int d() {
        return this.f69627e;
    }

    public boolean e() {
        return this.f69629g;
    }

    public boolean g(k kVar) {
        if (this.f69623a == 6 || kVar.u() <= this.f69625c) {
            return false;
        }
        n2.f fVar = new n2.f(kVar.s(), this.f69630h.get(16384), this.f69630h);
        try {
            r2.c.a(fVar, this.f69625c);
            return a(fVar);
        } catch (IOException e10) {
            m.a(e10);
            return false;
        } finally {
            k2.b.b(fVar);
        }
    }
}
