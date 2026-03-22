package bn;

import android.os.Bundle;
import cn.m0;
/* compiled from: VoiceSpan.java */
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: b  reason: collision with root package name */
    private static final String f2754b = m0.C0(0);

    /* renamed from: a  reason: collision with root package name */
    public final String f2755a;

    public i(String str) {
        this.f2755a = str;
    }

    public static i a(Bundle bundle) {
        return new i((String) cn.a.e(bundle.getString(f2754b)));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(f2754b, this.f2755a);
        return bundle;
    }
}
