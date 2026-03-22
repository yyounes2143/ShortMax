package p6;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.g;
/* compiled from: Cue.java */
/* loaded from: classes4.dex */
public final class b implements com.google.android.exoplayer2.g {

    /* renamed from: r  reason: collision with root package name */
    public static final b f64733r = new C0897b().o("").a();

    /* renamed from: s  reason: collision with root package name */
    public static final g.a<b> f64734s = new g.a() { // from class: p6.a
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            b c10;
            c10 = b.c(bundle);
            return c10;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f64735a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Layout.Alignment f64736b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f64737c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f64738d;

    /* renamed from: e  reason: collision with root package name */
    public final float f64739e;

    /* renamed from: f  reason: collision with root package name */
    public final int f64740f;

    /* renamed from: g  reason: collision with root package name */
    public final int f64741g;

    /* renamed from: h  reason: collision with root package name */
    public final float f64742h;

    /* renamed from: i  reason: collision with root package name */
    public final int f64743i;

    /* renamed from: j  reason: collision with root package name */
    public final float f64744j;

    /* renamed from: k  reason: collision with root package name */
    public final float f64745k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f64746l;

    /* renamed from: m  reason: collision with root package name */
    public final int f64747m;

    /* renamed from: n  reason: collision with root package name */
    public final int f64748n;

    /* renamed from: o  reason: collision with root package name */
    public final float f64749o;

    /* renamed from: p  reason: collision with root package name */
    public final int f64750p;

    /* renamed from: q  reason: collision with root package name */
    public final float f64751q;

    /* compiled from: Cue.java */
    /* renamed from: p6.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0897b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f64752a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f64753b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Layout.Alignment f64754c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Layout.Alignment f64755d;

        /* renamed from: e  reason: collision with root package name */
        private float f64756e;

        /* renamed from: f  reason: collision with root package name */
        private int f64757f;

        /* renamed from: g  reason: collision with root package name */
        private int f64758g;

        /* renamed from: h  reason: collision with root package name */
        private float f64759h;

        /* renamed from: i  reason: collision with root package name */
        private int f64760i;

        /* renamed from: j  reason: collision with root package name */
        private int f64761j;

        /* renamed from: k  reason: collision with root package name */
        private float f64762k;

        /* renamed from: l  reason: collision with root package name */
        private float f64763l;

        /* renamed from: m  reason: collision with root package name */
        private float f64764m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f64765n;
        @ColorInt

        /* renamed from: o  reason: collision with root package name */
        private int f64766o;

        /* renamed from: p  reason: collision with root package name */
        private int f64767p;

        /* renamed from: q  reason: collision with root package name */
        private float f64768q;

        public b a() {
            return new b(this.f64752a, this.f64754c, this.f64755d, this.f64753b, this.f64756e, this.f64757f, this.f64758g, this.f64759h, this.f64760i, this.f64761j, this.f64762k, this.f64763l, this.f64764m, this.f64765n, this.f64766o, this.f64767p, this.f64768q);
        }

        public C0897b b() {
            this.f64765n = false;
            return this;
        }

        public int c() {
            return this.f64758g;
        }

        public int d() {
            return this.f64760i;
        }

        @Nullable
        public CharSequence e() {
            return this.f64752a;
        }

        public C0897b f(Bitmap bitmap) {
            this.f64753b = bitmap;
            return this;
        }

        public C0897b g(float f10) {
            this.f64764m = f10;
            return this;
        }

        public C0897b h(float f10, int i10) {
            this.f64756e = f10;
            this.f64757f = i10;
            return this;
        }

        public C0897b i(int i10) {
            this.f64758g = i10;
            return this;
        }

        public C0897b j(@Nullable Layout.Alignment alignment) {
            this.f64755d = alignment;
            return this;
        }

        public C0897b k(float f10) {
            this.f64759h = f10;
            return this;
        }

        public C0897b l(int i10) {
            this.f64760i = i10;
            return this;
        }

        public C0897b m(float f10) {
            this.f64768q = f10;
            return this;
        }

        public C0897b n(float f10) {
            this.f64763l = f10;
            return this;
        }

        public C0897b o(CharSequence charSequence) {
            this.f64752a = charSequence;
            return this;
        }

        public C0897b p(@Nullable Layout.Alignment alignment) {
            this.f64754c = alignment;
            return this;
        }

        public C0897b q(float f10, int i10) {
            this.f64762k = f10;
            this.f64761j = i10;
            return this;
        }

        public C0897b r(int i10) {
            this.f64767p = i10;
            return this;
        }

        public C0897b s(@ColorInt int i10) {
            this.f64766o = i10;
            this.f64765n = true;
            return this;
        }

        public C0897b() {
            this.f64752a = null;
            this.f64753b = null;
            this.f64754c = null;
            this.f64755d = null;
            this.f64756e = -3.4028235E38f;
            this.f64757f = Integer.MIN_VALUE;
            this.f64758g = Integer.MIN_VALUE;
            this.f64759h = -3.4028235E38f;
            this.f64760i = Integer.MIN_VALUE;
            this.f64761j = Integer.MIN_VALUE;
            this.f64762k = -3.4028235E38f;
            this.f64763l = -3.4028235E38f;
            this.f64764m = -3.4028235E38f;
            this.f64765n = false;
            this.f64766o = ViewCompat.MEASURED_STATE_MASK;
            this.f64767p = Integer.MIN_VALUE;
        }

        private C0897b(b bVar) {
            this.f64752a = bVar.f64735a;
            this.f64753b = bVar.f64738d;
            this.f64754c = bVar.f64736b;
            this.f64755d = bVar.f64737c;
            this.f64756e = bVar.f64739e;
            this.f64757f = bVar.f64740f;
            this.f64758g = bVar.f64741g;
            this.f64759h = bVar.f64742h;
            this.f64760i = bVar.f64743i;
            this.f64761j = bVar.f64748n;
            this.f64762k = bVar.f64749o;
            this.f64763l = bVar.f64744j;
            this.f64764m = bVar.f64745k;
            this.f64765n = bVar.f64746l;
            this.f64766o = bVar.f64747m;
            this.f64767p = bVar.f64750p;
            this.f64768q = bVar.f64751q;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b c(Bundle bundle) {
        C0897b c0897b = new C0897b();
        CharSequence charSequence = bundle.getCharSequence(d(0));
        if (charSequence != null) {
            c0897b.o(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(d(1));
        if (alignment != null) {
            c0897b.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(d(2));
        if (alignment2 != null) {
            c0897b.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(d(3));
        if (bitmap != null) {
            c0897b.f(bitmap);
        }
        if (bundle.containsKey(d(4)) && bundle.containsKey(d(5))) {
            c0897b.h(bundle.getFloat(d(4)), bundle.getInt(d(5)));
        }
        if (bundle.containsKey(d(6))) {
            c0897b.i(bundle.getInt(d(6)));
        }
        if (bundle.containsKey(d(7))) {
            c0897b.k(bundle.getFloat(d(7)));
        }
        if (bundle.containsKey(d(8))) {
            c0897b.l(bundle.getInt(d(8)));
        }
        if (bundle.containsKey(d(10)) && bundle.containsKey(d(9))) {
            c0897b.q(bundle.getFloat(d(10)), bundle.getInt(d(9)));
        }
        if (bundle.containsKey(d(11))) {
            c0897b.n(bundle.getFloat(d(11)));
        }
        if (bundle.containsKey(d(12))) {
            c0897b.g(bundle.getFloat(d(12)));
        }
        if (bundle.containsKey(d(13))) {
            c0897b.s(bundle.getInt(d(13)));
        }
        if (!bundle.getBoolean(d(14), false)) {
            c0897b.b();
        }
        if (bundle.containsKey(d(15))) {
            c0897b.r(bundle.getInt(d(15)));
        }
        if (bundle.containsKey(d(16))) {
            c0897b.m(bundle.getFloat(d(16)));
        }
        return c0897b.a();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public C0897b b() {
        return new C0897b();
    }

    public boolean equals(@Nullable Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (TextUtils.equals(this.f64735a, bVar.f64735a) && this.f64736b == bVar.f64736b && this.f64737c == bVar.f64737c && ((bitmap = this.f64738d) != null ? !((bitmap2 = bVar.f64738d) == null || !bitmap.sameAs(bitmap2)) : bVar.f64738d == null) && this.f64739e == bVar.f64739e && this.f64740f == bVar.f64740f && this.f64741g == bVar.f64741g && this.f64742h == bVar.f64742h && this.f64743i == bVar.f64743i && this.f64744j == bVar.f64744j && this.f64745k == bVar.f64745k && this.f64746l == bVar.f64746l && this.f64747m == bVar.f64747m && this.f64748n == bVar.f64748n && this.f64749o == bVar.f64749o && this.f64750p == bVar.f64750p && this.f64751q == bVar.f64751q) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return h7.h.b(this.f64735a, this.f64736b, this.f64737c, this.f64738d, Float.valueOf(this.f64739e), Integer.valueOf(this.f64740f), Integer.valueOf(this.f64741g), Float.valueOf(this.f64742h), Integer.valueOf(this.f64743i), Float.valueOf(this.f64744j), Float.valueOf(this.f64745k), Boolean.valueOf(this.f64746l), Integer.valueOf(this.f64747m), Integer.valueOf(this.f64748n), Float.valueOf(this.f64749o), Integer.valueOf(this.f64750p), Float.valueOf(this.f64751q));
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.f64735a);
        bundle.putSerializable(d(1), this.f64736b);
        bundle.putSerializable(d(2), this.f64737c);
        bundle.putParcelable(d(3), this.f64738d);
        bundle.putFloat(d(4), this.f64739e);
        bundle.putInt(d(5), this.f64740f);
        bundle.putInt(d(6), this.f64741g);
        bundle.putFloat(d(7), this.f64742h);
        bundle.putInt(d(8), this.f64743i);
        bundle.putInt(d(9), this.f64748n);
        bundle.putFloat(d(10), this.f64749o);
        bundle.putFloat(d(11), this.f64744j);
        bundle.putFloat(d(12), this.f64745k);
        bundle.putBoolean(d(14), this.f64746l);
        bundle.putInt(d(13), this.f64747m);
        bundle.putInt(d(15), this.f64750p);
        bundle.putFloat(d(16), this.f64751q);
        return bundle;
    }

    private b(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f10, int i10, int i11, float f11, int i12, int i13, float f12, float f13, float f14, boolean z10, int i14, int i15, float f15) {
        if (charSequence == null) {
            b7.a.e(bitmap);
        } else {
            b7.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f64735a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f64735a = charSequence.toString();
        } else {
            this.f64735a = null;
        }
        this.f64736b = alignment;
        this.f64737c = alignment2;
        this.f64738d = bitmap;
        this.f64739e = f10;
        this.f64740f = i10;
        this.f64741g = i11;
        this.f64742h = f11;
        this.f64743i = i12;
        this.f64744j = f13;
        this.f64745k = f14;
        this.f64746l = z10;
        this.f64747m = i14;
        this.f64748n = i13;
        this.f64749o = f12;
        this.f64750p = i15;
        this.f64751q = f15;
    }
}
