package io.bidmachine.media3.exoplayer.video;

import androidx.annotation.Nullable;
import io.bidmachine.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: Av1SampleDependencyParser.java */
/* loaded from: classes8.dex */
final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ObuParser.d f57169a;

    private boolean a(ObuParser.c cVar, boolean z10) {
        ObuParser.d dVar;
        int i10 = cVar.f55297a;
        if (i10 == 2 || i10 == 15) {
            return true;
        }
        if (i10 == 3 && !z10) {
            return false;
        }
        if ((i10 != 6 && i10 != 3) || (dVar = this.f57169a) == null) {
            return false;
        }
        ObuParser.b b10 = ObuParser.b.b(dVar, cVar);
        if (b10 != null && !b10.a()) {
            return true;
        }
        return false;
    }

    private void e(List<ObuParser.c> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).f55297a == 1) {
                this.f57169a = ObuParser.d.a(list.get(i10));
            }
        }
    }

    public void b(ByteBuffer byteBuffer) {
        e(ObuParser.e(byteBuffer));
    }

    public void c() {
        this.f57169a = null;
    }

    public int d(ByteBuffer byteBuffer, boolean z10) {
        List<ObuParser.c> e10 = ObuParser.e(byteBuffer);
        e(e10);
        int size = e10.size() - 1;
        int i10 = 0;
        while (size >= 0 && a(e10.get(size), z10)) {
            if (e10.get(size).f55297a == 6 || e10.get(size).f55297a == 3) {
                i10++;
            }
            size--;
        }
        if (i10 <= 1 && size + 1 < 8) {
            if (size >= 0) {
                return e10.get(size).f55298b.limit();
            }
            return byteBuffer.position();
        }
        return byteBuffer.limit();
    }
}
