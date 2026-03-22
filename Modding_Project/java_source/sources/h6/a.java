package h6;

import androidx.annotation.Nullable;
import b7.f0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.dvbsi.AppInfoTable;
import g6.e;
import h7.c;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* compiled from: AppInfoTableDecoder.java */
/* loaded from: classes4.dex */
public final class a extends e {
    @Nullable
    private static Metadata c(f0 f0Var) {
        f0Var.r(12);
        int d10 = (f0Var.d() + f0Var.h(12)) - 4;
        f0Var.r(44);
        f0Var.s(f0Var.h(12));
        f0Var.r(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String str = null;
            if (f0Var.d() >= d10) {
                break;
            }
            f0Var.r(48);
            int h10 = f0Var.h(8);
            f0Var.r(4);
            int d11 = f0Var.d() + f0Var.h(12);
            String str2 = null;
            while (f0Var.d() < d11) {
                int h11 = f0Var.h(8);
                int h12 = f0Var.h(8);
                int d12 = f0Var.d() + h12;
                if (h11 == 2) {
                    int h13 = f0Var.h(16);
                    f0Var.r(8);
                    if (h13 != 3) {
                    }
                    while (f0Var.d() < d12) {
                        str = f0Var.l(f0Var.h(8), c.f52593a);
                        int h14 = f0Var.h(8);
                        for (int i10 = 0; i10 < h14; i10++) {
                            f0Var.s(f0Var.h(8));
                        }
                    }
                } else if (h11 == 21) {
                    str2 = f0Var.l(h12, c.f52593a);
                }
                f0Var.p(d12 * 8);
            }
            f0Var.p(d11 * 8);
            if (str != null && str2 != null) {
                arrayList.add(new AppInfoTable(h10, str + str2));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    @Override // g6.e
    @Nullable
    protected Metadata b(g6.c cVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return c(new f0(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
