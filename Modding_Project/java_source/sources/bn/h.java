package bn;

import android.os.Bundle;
import cn.m0;
/* compiled from: TextEmphasisSpan.java */
/* loaded from: classes8.dex */
public final class h implements e {

    /* renamed from: d  reason: collision with root package name */
    private static final String f2748d = m0.C0(0);

    /* renamed from: e  reason: collision with root package name */
    private static final String f2749e = m0.C0(1);

    /* renamed from: f  reason: collision with root package name */
    private static final String f2750f = m0.C0(2);

    /* renamed from: a  reason: collision with root package name */
    public int f2751a;

    /* renamed from: b  reason: collision with root package name */
    public int f2752b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2753c;

    public h(int i10, int i11, int i12) {
        this.f2751a = i10;
        this.f2752b = i11;
        this.f2753c = i12;
    }

    public static h a(Bundle bundle) {
        return new h(bundle.getInt(f2748d), bundle.getInt(f2749e), bundle.getInt(f2750f));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt(f2748d, this.f2751a);
        bundle.putInt(f2749e, this.f2752b);
        bundle.putInt(f2750f, this.f2753c);
        return bundle;
    }
}
