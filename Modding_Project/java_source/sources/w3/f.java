package w3;

import java.util.Collections;
import java.util.List;
import k2.h;
import y3.o;
import y3.p;
/* compiled from: SimpleProgressiveJpegConfig.java */
/* loaded from: classes3.dex */
public class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final b f69631a;

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes3.dex */
    private static class a implements b {
        @Override // w3.f.b
        public List<Integer> a() {
            return Collections.EMPTY_LIST;
        }

        @Override // w3.f.b
        public int b() {
            return 0;
        }

        private a() {
        }
    }

    /* compiled from: SimpleProgressiveJpegConfig.java */
    /* loaded from: classes3.dex */
    public interface b {
        List<Integer> a();

        int b();
    }

    public f() {
        this(new a());
    }

    @Override // w3.d
    public int a(int i10) {
        List<Integer> a10 = this.f69631a.a();
        if (a10 != null && !a10.isEmpty()) {
            for (int i11 = 0; i11 < a10.size(); i11++) {
                if (a10.get(i11).intValue() > i10) {
                    return a10.get(i11).intValue();
                }
            }
            return Integer.MAX_VALUE;
        }
        return i10 + 1;
    }

    @Override // w3.d
    public p b(int i10) {
        boolean z10;
        if (i10 >= this.f69631a.b()) {
            z10 = true;
        } else {
            z10 = false;
        }
        return o.d(i10, z10, false);
    }

    @Override // w3.d
    public boolean c() {
        return true;
    }

    public f(b bVar) {
        this.f69631a = (b) h.g(bVar);
    }
}
