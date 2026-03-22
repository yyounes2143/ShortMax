package ip;

import android.util.SparseArray;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
import ip.l0;
import java.util.ArrayList;
import java.util.List;
/* compiled from: DefaultTsPayloadReaderFactory.java */
/* loaded from: classes8.dex */
public final class j implements l0.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f59773a;

    /* renamed from: b  reason: collision with root package name */
    private final List<io.bidmachine.media3.common.a> f59774b;

    public j(int i10) {
        this(i10, ImmutableList.A());
    }

    private g0 b(l0.b bVar) {
        return new g0(d(bVar), "video/mp2t");
    }

    private n0 c(l0.b bVar) {
        return new n0(d(bVar), "video/mp2t");
    }

    private List<io.bidmachine.media3.common.a> d(l0.b bVar) {
        boolean z10;
        String str;
        int i10;
        List<byte[]> list;
        if (e(32)) {
            return this.f59774b;
        }
        cn.b0 b0Var = new cn.b0(bVar.f59835e);
        List<io.bidmachine.media3.common.a> list2 = this.f59774b;
        while (b0Var.a() > 0) {
            int H = b0Var.H();
            int f10 = b0Var.f() + b0Var.H();
            if (H == 134) {
                list2 = new ArrayList<>();
                int H2 = b0Var.H() & 31;
                for (int i11 = 0; i11 < H2; i11++) {
                    String E = b0Var.E(3);
                    int H3 = b0Var.H();
                    boolean z11 = true;
                    if ((H3 & 128) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        i10 = H3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i10 = 1;
                    }
                    byte H4 = (byte) b0Var.H();
                    b0Var.X(1);
                    if (z10) {
                        if ((H4 & 64) == 0) {
                            z11 = false;
                        }
                        list = cn.i.e(z11);
                    } else {
                        list = null;
                    }
                    list2.add(new a.b().u0(str).j0(E).O(i10).g0(list).N());
                }
            }
            b0Var.W(f10);
        }
        return list2;
    }

    private boolean e(int i10) {
        if ((i10 & this.f59773a) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0059  */
    @Override // ip.l0.c
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ip.l0 a(int r6, ip.l0.b r7) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ip.j.a(int, ip.l0$b):ip.l0");
    }

    @Override // ip.l0.c
    public SparseArray<l0> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    public j(int i10, List<io.bidmachine.media3.common.a> list) {
        this.f59773a = i10;
        this.f59774b = list;
    }
}
