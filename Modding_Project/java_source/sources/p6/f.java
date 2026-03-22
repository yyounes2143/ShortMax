package p6;

import android.os.Bundle;
import com.google.android.exoplayer2.g;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CueGroup.java */
/* loaded from: classes4.dex */
public final class f implements com.google.android.exoplayer2.g {

    /* renamed from: c  reason: collision with root package name */
    public static final f f64769c = new f(ImmutableList.A(), 0);

    /* renamed from: d  reason: collision with root package name */
    public static final g.a<f> f64770d = new g.a() { // from class: p6.e
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            f c10;
            c10 = f.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final ImmutableList<b> f64771a;

    /* renamed from: b  reason: collision with root package name */
    public final long f64772b;

    public f(List<b> list, long j10) {
        this.f64771a = ImmutableList.u(list);
        this.f64772b = j10;
    }

    private static ImmutableList<b> b(List<b> list) {
        ImmutableList.a r10 = ImmutableList.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).f64738d == null) {
                r10.a(list.get(i10));
            }
        }
        return r10.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f c(Bundle bundle) {
        ImmutableList b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        if (parcelableArrayList == null) {
            b10 = ImmutableList.A();
        } else {
            b10 = b7.c.b(b.f64734s, parcelableArrayList);
        }
        return new f(b10, bundle.getLong(d(1)));
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), b7.c.d(b(this.f64771a)));
        bundle.putLong(d(1), this.f64772b);
        return bundle;
    }
}
