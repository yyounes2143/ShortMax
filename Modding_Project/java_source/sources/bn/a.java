package bn;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import cn.m0;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
/* compiled from: Cue.java */
/* loaded from: classes8.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f2700a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Layout.Alignment f2701b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f2702c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f2703d;

    /* renamed from: e  reason: collision with root package name */
    public final float f2704e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2705f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2706g;

    /* renamed from: h  reason: collision with root package name */
    public final float f2707h;

    /* renamed from: i  reason: collision with root package name */
    public final int f2708i;

    /* renamed from: j  reason: collision with root package name */
    public final float f2709j;

    /* renamed from: k  reason: collision with root package name */
    public final float f2710k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f2711l;

    /* renamed from: m  reason: collision with root package name */
    public final int f2712m;

    /* renamed from: n  reason: collision with root package name */
    public final int f2713n;

    /* renamed from: o  reason: collision with root package name */
    public final float f2714o;

    /* renamed from: p  reason: collision with root package name */
    public final int f2715p;

    /* renamed from: q  reason: collision with root package name */
    public final float f2716q;
    @Deprecated

    /* renamed from: r  reason: collision with root package name */
    public static final a f2691r = new b().o("").a();

    /* renamed from: s  reason: collision with root package name */
    private static final String f2692s = m0.C0(0);

    /* renamed from: t  reason: collision with root package name */
    private static final String f2693t = m0.C0(17);

    /* renamed from: u  reason: collision with root package name */
    private static final String f2694u = m0.C0(1);

    /* renamed from: v  reason: collision with root package name */
    private static final String f2695v = m0.C0(2);

    /* renamed from: w  reason: collision with root package name */
    private static final String f2696w = m0.C0(3);

    /* renamed from: x  reason: collision with root package name */
    private static final String f2697x = m0.C0(18);

    /* renamed from: y  reason: collision with root package name */
    private static final String f2698y = m0.C0(4);

    /* renamed from: z  reason: collision with root package name */
    private static final String f2699z = m0.C0(5);
    private static final String A = m0.C0(6);
    private static final String B = m0.C0(7);
    private static final String C = m0.C0(8);
    private static final String D = m0.C0(9);
    private static final String E = m0.C0(10);
    private static final String F = m0.C0(11);
    private static final String G = m0.C0(12);
    private static final String H = m0.C0(13);
    private static final String I = m0.C0(14);
    private static final String J = m0.C0(15);
    private static final String K = m0.C0(16);

    /* compiled from: Cue.java */
    /* loaded from: classes8.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f2717a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f2718b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Layout.Alignment f2719c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Layout.Alignment f2720d;

        /* renamed from: e  reason: collision with root package name */
        private float f2721e;

        /* renamed from: f  reason: collision with root package name */
        private int f2722f;

        /* renamed from: g  reason: collision with root package name */
        private int f2723g;

        /* renamed from: h  reason: collision with root package name */
        private float f2724h;

        /* renamed from: i  reason: collision with root package name */
        private int f2725i;

        /* renamed from: j  reason: collision with root package name */
        private int f2726j;

        /* renamed from: k  reason: collision with root package name */
        private float f2727k;

        /* renamed from: l  reason: collision with root package name */
        private float f2728l;

        /* renamed from: m  reason: collision with root package name */
        private float f2729m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f2730n;
        @ColorInt

        /* renamed from: o  reason: collision with root package name */
        private int f2731o;

        /* renamed from: p  reason: collision with root package name */
        private int f2732p;

        /* renamed from: q  reason: collision with root package name */
        private float f2733q;

        public a a() {
            return new a(this.f2717a, this.f2719c, this.f2720d, this.f2718b, this.f2721e, this.f2722f, this.f2723g, this.f2724h, this.f2725i, this.f2726j, this.f2727k, this.f2728l, this.f2729m, this.f2730n, this.f2731o, this.f2732p, this.f2733q);
        }

        public b b() {
            this.f2730n = false;
            return this;
        }

        public int c() {
            return this.f2723g;
        }

        public int d() {
            return this.f2725i;
        }

        @Nullable
        public CharSequence e() {
            return this.f2717a;
        }

        public b f(Bitmap bitmap) {
            this.f2718b = bitmap;
            return this;
        }

        public b g(float f10) {
            this.f2729m = f10;
            return this;
        }

        public b h(float f10, int i10) {
            this.f2721e = f10;
            this.f2722f = i10;
            return this;
        }

        public b i(int i10) {
            this.f2723g = i10;
            return this;
        }

        public b j(@Nullable Layout.Alignment alignment) {
            this.f2720d = alignment;
            return this;
        }

        public b k(float f10) {
            this.f2724h = f10;
            return this;
        }

        public b l(int i10) {
            this.f2725i = i10;
            return this;
        }

        public b m(float f10) {
            this.f2733q = f10;
            return this;
        }

        public b n(float f10) {
            this.f2728l = f10;
            return this;
        }

        public b o(CharSequence charSequence) {
            this.f2717a = charSequence;
            return this;
        }

        public b p(@Nullable Layout.Alignment alignment) {
            this.f2719c = alignment;
            return this;
        }

        public b q(float f10, int i10) {
            this.f2727k = f10;
            this.f2726j = i10;
            return this;
        }

        public b r(int i10) {
            this.f2732p = i10;
            return this;
        }

        public b s(@ColorInt int i10) {
            this.f2731o = i10;
            this.f2730n = true;
            return this;
        }

        public b() {
            this.f2717a = null;
            this.f2718b = null;
            this.f2719c = null;
            this.f2720d = null;
            this.f2721e = -3.4028235E38f;
            this.f2722f = Integer.MIN_VALUE;
            this.f2723g = Integer.MIN_VALUE;
            this.f2724h = -3.4028235E38f;
            this.f2725i = Integer.MIN_VALUE;
            this.f2726j = Integer.MIN_VALUE;
            this.f2727k = -3.4028235E38f;
            this.f2728l = -3.4028235E38f;
            this.f2729m = -3.4028235E38f;
            this.f2730n = false;
            this.f2731o = ViewCompat.MEASURED_STATE_MASK;
            this.f2732p = Integer.MIN_VALUE;
        }

        private b(a aVar) {
            this.f2717a = aVar.f2700a;
            this.f2718b = aVar.f2703d;
            this.f2719c = aVar.f2701b;
            this.f2720d = aVar.f2702c;
            this.f2721e = aVar.f2704e;
            this.f2722f = aVar.f2705f;
            this.f2723g = aVar.f2706g;
            this.f2724h = aVar.f2707h;
            this.f2725i = aVar.f2708i;
            this.f2726j = aVar.f2713n;
            this.f2727k = aVar.f2714o;
            this.f2728l = aVar.f2709j;
            this.f2729m = aVar.f2710k;
            this.f2730n = aVar.f2711l;
            this.f2731o = aVar.f2712m;
            this.f2732p = aVar.f2715p;
            this.f2733q = aVar.f2716q;
        }
    }

    public static a b(Bundle bundle) {
        b bVar = new b();
        CharSequence charSequence = bundle.getCharSequence(f2692s);
        if (charSequence != null) {
            bVar.o(charSequence);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(f2693t);
            if (parcelableArrayList != null) {
                SpannableString valueOf = SpannableString.valueOf(charSequence);
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    c.c((Bundle) it.next(), valueOf);
                }
                bVar.o(valueOf);
            }
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(f2694u);
        if (alignment != null) {
            bVar.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(f2695v);
        if (alignment2 != null) {
            bVar.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(f2696w);
        if (bitmap != null) {
            bVar.f(bitmap);
        } else {
            byte[] byteArray = bundle.getByteArray(f2697x);
            if (byteArray != null) {
                bVar.f(BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length));
            }
        }
        String str = f2698y;
        if (bundle.containsKey(str)) {
            String str2 = f2699z;
            if (bundle.containsKey(str2)) {
                bVar.h(bundle.getFloat(str), bundle.getInt(str2));
            }
        }
        String str3 = A;
        if (bundle.containsKey(str3)) {
            bVar.i(bundle.getInt(str3));
        }
        String str4 = B;
        if (bundle.containsKey(str4)) {
            bVar.k(bundle.getFloat(str4));
        }
        String str5 = C;
        if (bundle.containsKey(str5)) {
            bVar.l(bundle.getInt(str5));
        }
        String str6 = E;
        if (bundle.containsKey(str6)) {
            String str7 = D;
            if (bundle.containsKey(str7)) {
                bVar.q(bundle.getFloat(str6), bundle.getInt(str7));
            }
        }
        String str8 = F;
        if (bundle.containsKey(str8)) {
            bVar.n(bundle.getFloat(str8));
        }
        String str9 = G;
        if (bundle.containsKey(str9)) {
            bVar.g(bundle.getFloat(str9));
        }
        String str10 = H;
        if (bundle.containsKey(str10)) {
            bVar.s(bundle.getInt(str10));
        }
        if (!bundle.getBoolean(I, false)) {
            bVar.b();
        }
        String str11 = J;
        if (bundle.containsKey(str11)) {
            bVar.r(bundle.getInt(str11));
        }
        String str12 = K;
        if (bundle.containsKey(str12)) {
            bVar.m(bundle.getFloat(str12));
        }
        return bVar.a();
    }

    private Bundle c() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.f2700a;
        if (charSequence != null) {
            bundle.putCharSequence(f2692s, charSequence);
            CharSequence charSequence2 = this.f2700a;
            if (charSequence2 instanceof Spanned) {
                ArrayList<Bundle> a10 = c.a((Spanned) charSequence2);
                if (!a10.isEmpty()) {
                    bundle.putParcelableArrayList(f2693t, a10);
                }
            }
        }
        bundle.putSerializable(f2694u, this.f2701b);
        bundle.putSerializable(f2695v, this.f2702c);
        bundle.putFloat(f2698y, this.f2704e);
        bundle.putInt(f2699z, this.f2705f);
        bundle.putInt(A, this.f2706g);
        bundle.putFloat(B, this.f2707h);
        bundle.putInt(C, this.f2708i);
        bundle.putInt(D, this.f2713n);
        bundle.putFloat(E, this.f2714o);
        bundle.putFloat(F, this.f2709j);
        bundle.putFloat(G, this.f2710k);
        bundle.putBoolean(I, this.f2711l);
        bundle.putInt(H, this.f2712m);
        bundle.putInt(J, this.f2715p);
        bundle.putFloat(K, this.f2716q);
        return bundle;
    }

    public b a() {
        return new b();
    }

    public Bundle d() {
        Bundle c10 = c();
        if (this.f2703d != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            cn.a.g(this.f2703d.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
            c10.putByteArray(f2697x, byteArrayOutputStream.toByteArray());
        }
        return c10;
    }

    public boolean equals(@Nullable Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (TextUtils.equals(this.f2700a, aVar.f2700a) && this.f2701b == aVar.f2701b && this.f2702c == aVar.f2702c && ((bitmap = this.f2703d) != null ? !((bitmap2 = aVar.f2703d) == null || !bitmap.sameAs(bitmap2)) : aVar.f2703d == null) && this.f2704e == aVar.f2704e && this.f2705f == aVar.f2705f && this.f2706g == aVar.f2706g && this.f2707h == aVar.f2707h && this.f2708i == aVar.f2708i && this.f2709j == aVar.f2709j && this.f2710k == aVar.f2710k && this.f2711l == aVar.f2711l && this.f2712m == aVar.f2712m && this.f2713n == aVar.f2713n && this.f2714o == aVar.f2714o && this.f2715p == aVar.f2715p && this.f2716q == aVar.f2716q) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f2700a, this.f2701b, this.f2702c, this.f2703d, Float.valueOf(this.f2704e), Integer.valueOf(this.f2705f), Integer.valueOf(this.f2706g), Float.valueOf(this.f2707h), Integer.valueOf(this.f2708i), Float.valueOf(this.f2709j), Float.valueOf(this.f2710k), Boolean.valueOf(this.f2711l), Integer.valueOf(this.f2712m), Integer.valueOf(this.f2713n), Float.valueOf(this.f2714o), Integer.valueOf(this.f2715p), Float.valueOf(this.f2716q));
    }

    private a(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f10, int i10, int i11, float f11, int i12, int i13, float f12, float f13, float f14, boolean z10, int i14, int i15, float f15) {
        if (charSequence == null) {
            cn.a.e(bitmap);
        } else {
            cn.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f2700a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f2700a = charSequence.toString();
        } else {
            this.f2700a = null;
        }
        this.f2701b = alignment;
        this.f2702c = alignment2;
        this.f2703d = bitmap;
        this.f2704e = f10;
        this.f2705f = i10;
        this.f2706g = i11;
        this.f2707h = f11;
        this.f2708i = i12;
        this.f2709j = f13;
        this.f2710k = f14;
        this.f2711l = z10;
        this.f2712m = i14;
        this.f2713n = i13;
        this.f2714o = f12;
        this.f2715p = i15;
        this.f2716q = f15;
    }
}
