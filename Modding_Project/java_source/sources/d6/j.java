package d6;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import d6.i0;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DefaultTsPayloadReaderFactory.java */
/* loaded from: classes4.dex */
public final class j implements i0.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f49978a;

    /* renamed from: b  reason: collision with root package name */
    private final List<v0> f49979b;

    public j(int i10) {
        this(i10, ImmutableList.A());
    }

    private d0 b(i0.b bVar) {
        return new d0(d(bVar));
    }

    private k0 c(i0.b bVar) {
        return new k0(d(bVar));
    }

    private List<v0> d(i0.b bVar) {
        boolean z10;
        String str;
        int i10;
        List<byte[]> list;
        if (e(32)) {
            return this.f49979b;
        }
        b7.g0 g0Var = new b7.g0(bVar.f49972d);
        List<v0> list2 = this.f49979b;
        while (g0Var.a() > 0) {
            int D = g0Var.D();
            int e10 = g0Var.e() + g0Var.D();
            if (D == 134) {
                list2 = new ArrayList<>();
                int D2 = g0Var.D() & 31;
                for (int i11 = 0; i11 < D2; i11++) {
                    String A = g0Var.A(3);
                    int D3 = g0Var.D();
                    boolean z11 = true;
                    if ((D3 & 128) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        i10 = D3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i10 = 1;
                    }
                    byte D4 = (byte) g0Var.D();
                    g0Var.Q(1);
                    if (z10) {
                        if ((D4 & 64) == 0) {
                            z11 = false;
                        }
                        list = b7.e.b(z11);
                    } else {
                        list = null;
                    }
                    list2.add(new v0.b().e0(str).V(A).F(i10).T(list).E());
                }
            }
            g0Var.P(e10);
        }
        return list2;
    }

    private boolean e(int i10) {
        if ((i10 & this.f49978a) != 0) {
            return true;
        }
        return false;
    }

    @Override // d6.i0.c
    @Nullable
    public i0 a(int i10, i0.b bVar) {
        if (i10 != 2) {
            if (i10 != 3 && i10 != 4) {
                if (i10 != 21) {
                    if (i10 != 27) {
                        if (i10 != 36) {
                            if (i10 != 89) {
                                if (i10 != 138) {
                                    if (i10 != 172) {
                                        if (i10 != 257) {
                                            if (i10 != 134) {
                                                if (i10 != 135) {
                                                    switch (i10) {
                                                        case 15:
                                                            if (e(2)) {
                                                                return null;
                                                            }
                                                            return new w(new i(false, bVar.f49970b));
                                                        case 16:
                                                            return new w(new o(c(bVar)));
                                                        case 17:
                                                            if (e(2)) {
                                                                return null;
                                                            }
                                                            return new w(new s(bVar.f49970b));
                                                        default:
                                                            switch (i10) {
                                                                case 128:
                                                                    break;
                                                                case 129:
                                                                    break;
                                                                case 130:
                                                                    if (!e(64)) {
                                                                        return null;
                                                                    }
                                                                    break;
                                                                default:
                                                                    return null;
                                                            }
                                                    }
                                                }
                                                return new w(new c(bVar.f49970b));
                                            } else if (e(16)) {
                                                return null;
                                            } else {
                                                return new c0(new v(MimeTypes.APPLICATION_SCTE35));
                                            }
                                        }
                                        return new c0(new v("application/vnd.dvb.ait"));
                                    }
                                    return new w(new f(bVar.f49970b));
                                }
                                return new w(new k(bVar.f49970b));
                            }
                            return new w(new l(bVar.f49971c));
                        }
                        return new w(new q(b(bVar)));
                    } else if (e(4)) {
                        return null;
                    } else {
                        return new w(new p(b(bVar), e(1), e(8)));
                    }
                }
                return new w(new r());
            }
            return new w(new t(bVar.f49970b));
        }
        return new w(new n(c(bVar)));
    }

    @Override // d6.i0.c
    public SparseArray<i0> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    public j(int i10, List<v0> list) {
        this.f49978a = i10;
        this.f49979b = list;
    }
}
