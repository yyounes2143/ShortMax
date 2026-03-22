package un;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.t;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MergingCuesResolver.java */
/* loaded from: classes8.dex */
final class e implements a {

    /* renamed from: b  reason: collision with root package name */
    private static final t<yo.e> f68500b = t.e().f(new h7.e() { // from class: un.c
        @Override // h7.e
        public final Object apply(Object obj) {
            Long h10;
            h10 = e.h((yo.e) obj);
            return h10;
        }
    }).b(t.e().g().f(new h7.e() { // from class: un.d
        @Override // h7.e
        public final Object apply(Object obj) {
            Long i10;
            i10 = e.i((yo.e) obj);
            return i10;
        }
    }));

    /* renamed from: a  reason: collision with root package name */
    private final List<yo.e> f68501a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long h(yo.e eVar) {
        return Long.valueOf(eVar.f71074b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long i(yo.e eVar) {
        return Long.valueOf(eVar.f71075c);
    }

    @Override // un.a
    public boolean a(yo.e eVar, long j10) {
        boolean z10;
        boolean z11;
        boolean z12;
        if (eVar.f71074b != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (eVar.f71075c != -9223372036854775807L) {
            z11 = true;
        } else {
            z11 = false;
        }
        cn.a.a(z11);
        if (eVar.f71074b <= j10 && j10 < eVar.f71076d) {
            z12 = true;
        } else {
            z12 = false;
        }
        for (int size = this.f68501a.size() - 1; size >= 0; size--) {
            if (eVar.f71074b >= this.f68501a.get(size).f71074b) {
                this.f68501a.add(size + 1, eVar);
                return z12;
            }
        }
        this.f68501a.add(0, eVar);
        return z12;
    }

    @Override // un.a
    public ImmutableList<bn.a> b(long j10) {
        if (!this.f68501a.isEmpty()) {
            if (j10 >= this.f68501a.get(0).f71074b) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < this.f68501a.size(); i10++) {
                    yo.e eVar = this.f68501a.get(i10);
                    if (j10 >= eVar.f71074b && j10 < eVar.f71076d) {
                        arrayList.add(eVar);
                    }
                    if (j10 < eVar.f71074b) {
                        break;
                    }
                }
                ImmutableList H = ImmutableList.H(f68500b, arrayList);
                ImmutableList.a r10 = ImmutableList.r();
                for (int i11 = 0; i11 < H.size(); i11++) {
                    r10.j(((yo.e) H.get(i11)).f71073a);
                }
                return r10.k();
            }
        }
        return ImmutableList.A();
    }

    @Override // un.a
    public long c(long j10) {
        int i10 = 0;
        long j11 = -9223372036854775807L;
        while (true) {
            if (i10 >= this.f68501a.size()) {
                break;
            }
            long j12 = this.f68501a.get(i10).f71074b;
            long j13 = this.f68501a.get(i10).f71076d;
            if (j10 < j12) {
                if (j11 == -9223372036854775807L) {
                    j11 = j12;
                } else {
                    j11 = Math.min(j11, j12);
                }
            } else {
                if (j10 < j13) {
                    if (j11 == -9223372036854775807L) {
                        j11 = j13;
                    } else {
                        j11 = Math.min(j11, j13);
                    }
                }
                i10++;
            }
        }
        if (j11 == -9223372036854775807L) {
            return Long.MIN_VALUE;
        }
        return j11;
    }

    @Override // un.a
    public void clear() {
        this.f68501a.clear();
    }

    @Override // un.a
    public void d(long j10) {
        int i10 = 0;
        while (i10 < this.f68501a.size()) {
            int i11 = (j10 > this.f68501a.get(i10).f71074b ? 1 : (j10 == this.f68501a.get(i10).f71074b ? 0 : -1));
            if (i11 > 0 && j10 > this.f68501a.get(i10).f71076d) {
                this.f68501a.remove(i10);
                i10--;
            } else if (i11 < 0) {
                return;
            }
            i10++;
        }
    }

    @Override // un.a
    public long e(long j10) {
        if (!this.f68501a.isEmpty()) {
            if (j10 >= this.f68501a.get(0).f71074b) {
                long j11 = this.f68501a.get(0).f71074b;
                for (int i10 = 0; i10 < this.f68501a.size(); i10++) {
                    long j12 = this.f68501a.get(i10).f71074b;
                    long j13 = this.f68501a.get(i10).f71076d;
                    if (j13 <= j10) {
                        j11 = Math.max(j11, j13);
                    } else if (j12 > j10) {
                        break;
                    } else {
                        j11 = Math.max(j11, j12);
                    }
                }
                return j11;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }
}
