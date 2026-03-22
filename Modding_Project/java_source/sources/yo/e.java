package yo;

import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: CuesWithTiming.java */
/* loaded from: classes8.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final ImmutableList<bn.a> f71073a;

    /* renamed from: b  reason: collision with root package name */
    public final long f71074b;

    /* renamed from: c  reason: collision with root package name */
    public final long f71075c;

    /* renamed from: d  reason: collision with root package name */
    public final long f71076d;

    public e(List<bn.a> list, long j10, long j11) {
        this.f71073a = ImmutableList.u(list);
        this.f71074b = j10;
        this.f71075c = j11;
        long j12 = -9223372036854775807L;
        if (j10 != -9223372036854775807L && j11 != -9223372036854775807L) {
            j12 = j10 + j11;
        }
        this.f71076d = j12;
    }
}
