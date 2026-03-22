package bn;

import android.os.Bundle;
import cn.m0;
/* compiled from: RubySpan.java */
/* loaded from: classes8.dex */
public final class f implements e {

    /* renamed from: c  reason: collision with root package name */
    private static final String f2744c = m0.C0(0);

    /* renamed from: d  reason: collision with root package name */
    private static final String f2745d = m0.C0(1);

    /* renamed from: a  reason: collision with root package name */
    public final String f2746a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2747b;

    public f(String str, int i10) {
        this.f2746a = str;
        this.f2747b = i10;
    }

    public static f a(Bundle bundle) {
        return new f((String) cn.a.e(bundle.getString(f2744c)), bundle.getInt(f2745d));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(f2744c, this.f2746a);
        bundle.putInt(f2745d, this.f2747b);
        return bundle;
    }
}
