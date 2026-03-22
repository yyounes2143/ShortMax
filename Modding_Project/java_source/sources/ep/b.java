package ep;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.google.common.collect.ImmutableSet;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.regex.Pattern;
/* compiled from: TextEmphasis.java */
/* loaded from: classes8.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f51449d = Pattern.compile("\\s+");

    /* renamed from: e  reason: collision with root package name */
    private static final ImmutableSet<String> f51450e = ImmutableSet.B("auto", DevicePublicKeyStringDef.NONE);

    /* renamed from: f  reason: collision with root package name */
    private static final ImmutableSet<String> f51451f = ImmutableSet.C("dot", "sesame", "circle");

    /* renamed from: g  reason: collision with root package name */
    private static final ImmutableSet<String> f51452g = ImmutableSet.B("filled", MRAIDPresenter.OPEN);

    /* renamed from: h  reason: collision with root package name */
    private static final ImmutableSet<String> f51453h = ImmutableSet.C("after", "before", "outside");

    /* renamed from: a  reason: collision with root package name */
    public final int f51454a;

    /* renamed from: b  reason: collision with root package name */
    public final int f51455b;

    /* renamed from: c  reason: collision with root package name */
    public final int f51456c;

    private b(int i10, int i11, int i12) {
        this.f51454a = i10;
        this.f51455b = i11;
        this.f51456c = i12;
    }

    @Nullable
    public static b a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String e10 = h7.a.e(str.trim());
        if (e10.isEmpty()) {
            return null;
        }
        return b(ImmutableSet.u(TextUtils.split(e10, f51449d)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ed, code lost:
        if (r9.equals("dot") != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static ep.b b(com.google.common.collect.ImmutableSet<java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ep.b.b(com.google.common.collect.ImmutableSet):ep.b");
    }
}
