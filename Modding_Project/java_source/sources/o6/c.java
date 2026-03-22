package o6;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.g;
import java.util.ArrayList;
import java.util.Arrays;
import o6.c;
/* compiled from: AdPlaybackState.java */
/* loaded from: classes4.dex */
public final class c implements g {

    /* renamed from: g  reason: collision with root package name */
    public static final c f63136g = new c(null, new a[0], 0, -9223372036854775807L, 0);

    /* renamed from: h  reason: collision with root package name */
    private static final a f63137h = new a(0).j(0);

    /* renamed from: i  reason: collision with root package name */
    public static final g.a<c> f63138i = new g.a() { // from class: o6.a
        @Override // com.google.android.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            c b10;
            b10 = c.b(bundle);
            return b10;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Object f63139a;

    /* renamed from: b  reason: collision with root package name */
    public final int f63140b;

    /* renamed from: c  reason: collision with root package name */
    public final long f63141c;

    /* renamed from: d  reason: collision with root package name */
    public final long f63142d;

    /* renamed from: e  reason: collision with root package name */
    public final int f63143e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f63144f;

    /* compiled from: AdPlaybackState.java */
    /* loaded from: classes4.dex */
    public static final class a implements g {

        /* renamed from: i  reason: collision with root package name */
        public static final g.a<a> f63145i = new g.a() { // from class: o6.b
            @Override // com.google.android.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                c.a d10;
                d10 = c.a.d(bundle);
                return d10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f63146a;

        /* renamed from: b  reason: collision with root package name */
        public final int f63147b;

        /* renamed from: c  reason: collision with root package name */
        public final int f63148c;

        /* renamed from: d  reason: collision with root package name */
        public final Uri[] f63149d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f63150e;

        /* renamed from: f  reason: collision with root package name */
        public final long[] f63151f;

        /* renamed from: g  reason: collision with root package name */
        public final long f63152g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f63153h;

        public a(long j10) {
            this(j10, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        @CheckResult
        private static long[] b(long[] jArr, int i10) {
            int length = jArr.length;
            int max = Math.max(i10, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, -9223372036854775807L);
            return copyOf;
        }

        @CheckResult
        private static int[] c(int[] iArr, int i10) {
            int length = iArr.length;
            int max = Math.max(i10, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a d(Bundle bundle) {
            Uri[] uriArr;
            long[] jArr;
            long j10 = bundle.getLong(h(0));
            int i10 = bundle.getInt(h(1), -1);
            int i11 = bundle.getInt(h(7), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(2));
            int[] intArray = bundle.getIntArray(h(3));
            long[] longArray = bundle.getLongArray(h(4));
            long j11 = bundle.getLong(h(5));
            boolean z10 = bundle.getBoolean(h(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            int[] iArr = intArray;
            if (parcelableArrayList == null) {
                uriArr = new Uri[0];
            } else {
                uriArr = (Uri[]) parcelableArrayList.toArray(new Uri[0]);
            }
            if (longArray == null) {
                jArr = new long[0];
            } else {
                jArr = longArray;
            }
            return new a(j10, i10, i11, iArr, uriArr, jArr, j11, z10);
        }

        private static String h(int i10) {
            return Integer.toString(i10, 36);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f63146a == aVar.f63146a && this.f63147b == aVar.f63147b && this.f63148c == aVar.f63148c && Arrays.equals(this.f63149d, aVar.f63149d) && Arrays.equals(this.f63150e, aVar.f63150e) && Arrays.equals(this.f63151f, aVar.f63151f) && this.f63152g == aVar.f63152g && this.f63153h == aVar.f63153h) {
                return true;
            }
            return false;
        }

        public int f(@IntRange(from = -1) int i10) {
            int i11;
            int i12 = i10 + 1;
            while (true) {
                int[] iArr = this.f63150e;
                if (i12 >= iArr.length || this.f63153h || (i11 = iArr[i12]) == 0 || i11 == 1) {
                    break;
                }
                i12++;
            }
            return i12;
        }

        public boolean g() {
            if (this.f63147b == -1) {
                return true;
            }
            for (int i10 = 0; i10 < this.f63147b; i10++) {
                int i11 = this.f63150e[i10];
                if (i11 == 0 || i11 == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            long j10 = this.f63146a;
            long j11 = this.f63152g;
            return (((((((((((((this.f63147b * 31) + this.f63148c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.f63149d)) * 31) + Arrays.hashCode(this.f63150e)) * 31) + Arrays.hashCode(this.f63151f)) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f63153h ? 1 : 0);
        }

        public boolean i() {
            if (this.f63147b != -1 && e() >= this.f63147b) {
                return false;
            }
            return true;
        }

        @CheckResult
        public a j(int i10) {
            int[] c10 = c(this.f63150e, i10);
            long[] b10 = b(this.f63151f, i10);
            return new a(this.f63146a, i10, this.f63148c, c10, (Uri[]) Arrays.copyOf(this.f63149d, i10), b10, this.f63152g, this.f63153h);
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(h(0), this.f63146a);
            bundle.putInt(h(1), this.f63147b);
            bundle.putInt(h(7), this.f63148c);
            bundle.putParcelableArrayList(h(2), new ArrayList<>(Arrays.asList(this.f63149d)));
            bundle.putIntArray(h(3), this.f63150e);
            bundle.putLongArray(h(4), this.f63151f);
            bundle.putLong(h(5), this.f63152g);
            bundle.putBoolean(h(6), this.f63153h);
            return bundle;
        }

        private a(long j10, int i10, int i11, int[] iArr, Uri[] uriArr, long[] jArr, long j11, boolean z10) {
            b7.a.a(iArr.length == uriArr.length);
            this.f63146a = j10;
            this.f63147b = i10;
            this.f63148c = i11;
            this.f63150e = iArr;
            this.f63149d = uriArr;
            this.f63151f = jArr;
            this.f63152g = j11;
            this.f63153h = z10;
        }
    }

    private c(@Nullable Object obj, a[] aVarArr, long j10, long j11, int i10) {
        this.f63139a = obj;
        this.f63141c = j10;
        this.f63142d = j11;
        this.f63140b = aVarArr.length + i10;
        this.f63144f = aVarArr;
        this.f63143e = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c b(Bundle bundle) {
        a[] aVarArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(g(1));
        if (parcelableArrayList == null) {
            aVarArr = new a[0];
        } else {
            a[] aVarArr2 = new a[parcelableArrayList.size()];
            for (int i10 = 0; i10 < parcelableArrayList.size(); i10++) {
                aVarArr2[i10] = a.f63145i.fromBundle((Bundle) parcelableArrayList.get(i10));
            }
            aVarArr = aVarArr2;
        }
        return new c(null, aVarArr, bundle.getLong(g(2), 0L), bundle.getLong(g(3), -9223372036854775807L), bundle.getInt(g(4)));
    }

    private boolean f(long j10, long j11, int i10) {
        if (j10 == Long.MIN_VALUE) {
            return false;
        }
        long j12 = c(i10).f63146a;
        if (j12 == Long.MIN_VALUE) {
            if (j11 != -9223372036854775807L && j10 >= j11) {
                return false;
            }
            return true;
        } else if (j10 >= j12) {
            return false;
        } else {
            return true;
        }
    }

    private static String g(int i10) {
        return Integer.toString(i10, 36);
    }

    public a c(@IntRange(from = 0) int i10) {
        int i11 = this.f63143e;
        if (i10 < i11) {
            return f63137h;
        }
        return this.f63144f[i10 - i11];
    }

    public int d(long j10, long j11) {
        if (j10 == Long.MIN_VALUE) {
            return -1;
        }
        if (j11 != -9223372036854775807L && j10 >= j11) {
            return -1;
        }
        int i10 = this.f63143e;
        while (i10 < this.f63140b && ((c(i10).f63146a != Long.MIN_VALUE && c(i10).f63146a <= j10) || !c(i10).i())) {
            i10++;
        }
        if (i10 >= this.f63140b) {
            return -1;
        }
        return i10;
    }

    public int e(long j10, long j11) {
        int i10 = this.f63140b - 1;
        while (i10 >= 0 && f(j10, j11, i10)) {
            i10--;
        }
        if (i10 < 0 || !c(i10).g()) {
            return -1;
        }
        return i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (s0.c(this.f63139a, cVar.f63139a) && this.f63140b == cVar.f63140b && this.f63141c == cVar.f63141c && this.f63142d == cVar.f63142d && this.f63143e == cVar.f63143e && Arrays.equals(this.f63144f, cVar.f63144f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i10 = this.f63140b * 31;
        Object obj = this.f63139a;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return ((((((((i10 + hashCode) * 31) + ((int) this.f63141c)) * 31) + ((int) this.f63142d)) * 31) + this.f63143e) * 31) + Arrays.hashCode(this.f63144f);
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (a aVar : this.f63144f) {
            arrayList.add(aVar.toBundle());
        }
        bundle.putParcelableArrayList(g(1), arrayList);
        bundle.putLong(g(2), this.f63141c);
        bundle.putLong(g(3), this.f63142d);
        bundle.putInt(g(4), this.f63143e);
        return bundle;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f63139a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f63141c);
        sb2.append(", adGroups=[");
        for (int i10 = 0; i10 < this.f63144f.length; i10++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f63144f[i10].f63146a);
            sb2.append(", ads=[");
            for (int i11 = 0; i11 < this.f63144f[i10].f63150e.length; i11++) {
                sb2.append("ad(state=");
                int i12 = this.f63144f[i10].f63150e[i11];
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 != 4) {
                                    sb2.append('?');
                                } else {
                                    sb2.append('!');
                                }
                            } else {
                                sb2.append('P');
                            }
                        } else {
                            sb2.append('S');
                        }
                    } else {
                        sb2.append('R');
                    }
                } else {
                    sb2.append('_');
                }
                sb2.append(", durationUs=");
                sb2.append(this.f63144f[i10].f63151f[i11]);
                sb2.append(')');
                if (i11 < this.f63144f[i10].f63150e.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i10 < this.f63144f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
