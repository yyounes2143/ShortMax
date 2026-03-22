package bn;

import android.os.Bundle;
import android.text.Spannable;
import android.text.Spanned;
import androidx.annotation.Nullable;
import cn.m0;
import java.util.ArrayList;
/* compiled from: CustomSpanBundler.java */
/* loaded from: classes8.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2739a = m0.C0(0);

    /* renamed from: b  reason: collision with root package name */
    private static final String f2740b = m0.C0(1);

    /* renamed from: c  reason: collision with root package name */
    private static final String f2741c = m0.C0(2);

    /* renamed from: d  reason: collision with root package name */
    private static final String f2742d = m0.C0(3);

    /* renamed from: e  reason: collision with root package name */
    private static final String f2743e = m0.C0(4);

    public static ArrayList<Bundle> a(Spanned spanned) {
        f[] fVarArr;
        h[] hVarArr;
        i[] iVarArr;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        for (f fVar : (f[]) spanned.getSpans(0, spanned.length(), f.class)) {
            arrayList.add(b(spanned, fVar, 1, fVar.b()));
        }
        for (h hVar : (h[]) spanned.getSpans(0, spanned.length(), h.class)) {
            arrayList.add(b(spanned, hVar, 2, hVar.b()));
        }
        for (d dVar : (d[]) spanned.getSpans(0, spanned.length(), d.class)) {
            arrayList.add(b(spanned, dVar, 3, null));
        }
        for (i iVar : (i[]) spanned.getSpans(0, spanned.length(), i.class)) {
            arrayList.add(b(spanned, iVar, 4, iVar.b()));
        }
        return arrayList;
    }

    private static Bundle b(Spanned spanned, Object obj, int i10, @Nullable Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f2739a, spanned.getSpanStart(obj));
        bundle2.putInt(f2740b, spanned.getSpanEnd(obj));
        bundle2.putInt(f2741c, spanned.getSpanFlags(obj));
        bundle2.putInt(f2742d, i10);
        if (bundle != null) {
            bundle2.putBundle(f2743e, bundle);
        }
        return bundle2;
    }

    public static void c(Bundle bundle, Spannable spannable) {
        int i10 = bundle.getInt(f2739a);
        int i11 = bundle.getInt(f2740b);
        int i12 = bundle.getInt(f2741c);
        int i13 = bundle.getInt(f2742d, -1);
        Bundle bundle2 = bundle.getBundle(f2743e);
        if (i13 != 1) {
            if (i13 != 2) {
                if (i13 != 3) {
                    if (i13 == 4) {
                        spannable.setSpan(i.a((Bundle) cn.a.e(bundle2)), i10, i11, i12);
                        return;
                    }
                    return;
                }
                spannable.setSpan(new d(), i10, i11, i12);
                return;
            }
            spannable.setSpan(h.a((Bundle) cn.a.e(bundle2)), i10, i11, i12);
            return;
        }
        spannable.setSpan(f.a((Bundle) cn.a.e(bundle2)), i10, i11, i12);
    }
}
