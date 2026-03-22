package un;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.l;
import java.util.ArrayList;
/* compiled from: ReplacingCuesResolver.java */
/* loaded from: classes8.dex */
final class f implements a {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<yo.e> f68502a = new ArrayList<>();

    private int f(long j10) {
        for (int i10 = 0; i10 < this.f68502a.size(); i10++) {
            if (j10 < this.f68502a.get(i10).f71074b) {
                return i10;
            }
        }
        return this.f68502a.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    @Override // un.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(yo.e r10, long r11) {
        /*
            r9 = this;
            long r0 = r10.f71074b
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 0
            r4 = 1
            if (r0 == 0) goto Lf
            r0 = r4
            goto L10
        Lf:
            r0 = r1
        L10:
            cn.a.a(r0)
            long r5 = r10.f71074b
            int r0 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r0 > 0) goto L25
            long r5 = r10.f71076d
            int r0 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r0 == 0) goto L23
            int r0 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
            if (r0 >= 0) goto L25
        L23:
            r0 = r4
            goto L26
        L25:
            r0 = r1
        L26:
            java.util.ArrayList<yo.e> r2 = r9.f68502a
            int r2 = r2.size()
            int r2 = r2 - r4
        L2d:
            if (r2 < 0) goto L58
            long r5 = r10.f71074b
            java.util.ArrayList<yo.e> r3 = r9.f68502a
            java.lang.Object r3 = r3.get(r2)
            yo.e r3 = (yo.e) r3
            long r7 = r3.f71074b
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 < 0) goto L46
            java.util.ArrayList<yo.e> r11 = r9.f68502a
            int r2 = r2 + r4
            r11.add(r2, r10)
            return r0
        L46:
            java.util.ArrayList<yo.e> r3 = r9.f68502a
            java.lang.Object r3 = r3.get(r2)
            yo.e r3 = (yo.e) r3
            long r5 = r3.f71074b
            int r3 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r3 > 0) goto L55
            r0 = r1
        L55:
            int r2 = r2 + (-1)
            goto L2d
        L58:
            java.util.ArrayList<yo.e> r11 = r9.f68502a
            r11.add(r1, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: un.f.a(yo.e, long):boolean");
    }

    @Override // un.a
    public ImmutableList<bn.a> b(long j10) {
        int f10 = f(j10);
        if (f10 == 0) {
            return ImmutableList.A();
        }
        yo.e eVar = this.f68502a.get(f10 - 1);
        long j11 = eVar.f71076d;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            return ImmutableList.A();
        }
        return eVar.f71073a;
    }

    @Override // un.a
    public long c(long j10) {
        if (this.f68502a.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j10 < this.f68502a.get(0).f71074b) {
            return this.f68502a.get(0).f71074b;
        }
        for (int i10 = 1; i10 < this.f68502a.size(); i10++) {
            yo.e eVar = this.f68502a.get(i10);
            if (j10 < eVar.f71074b) {
                long j11 = this.f68502a.get(i10 - 1).f71076d;
                if (j11 == -9223372036854775807L || j11 <= j10 || j11 >= eVar.f71074b) {
                    return eVar.f71074b;
                }
                return j11;
            }
        }
        long j12 = ((yo.e) l.d(this.f68502a)).f71076d;
        if (j12 == -9223372036854775807L || j10 >= j12) {
            return Long.MIN_VALUE;
        }
        return j12;
    }

    @Override // un.a
    public void clear() {
        this.f68502a.clear();
    }

    @Override // un.a
    public void d(long j10) {
        int f10 = f(j10);
        if (f10 == 0) {
            return;
        }
        long j11 = this.f68502a.get(f10 - 1).f71076d;
        if (j11 == -9223372036854775807L || j11 >= j10) {
            f10--;
        }
        this.f68502a.subList(0, f10).clear();
    }

    @Override // un.a
    public long e(long j10) {
        if (this.f68502a.isEmpty() || j10 < this.f68502a.get(0).f71074b) {
            return -9223372036854775807L;
        }
        for (int i10 = 1; i10 < this.f68502a.size(); i10++) {
            long j11 = this.f68502a.get(i10).f71074b;
            int i11 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
            if (i11 == 0) {
                return j11;
            }
            if (i11 < 0) {
                yo.e eVar = this.f68502a.get(i10 - 1);
                long j12 = eVar.f71076d;
                if (j12 == -9223372036854775807L || j12 > j10) {
                    return eVar.f71074b;
                }
                return j12;
            }
        }
        yo.e eVar2 = (yo.e) l.d(this.f68502a);
        long j13 = eVar2.f71076d;
        if (j13 == -9223372036854775807L || j10 < j13) {
            return eVar2.f71074b;
        }
        return j13;
    }
}
