package d1;

import androidx.core.os.TraceCompat;
/* compiled from: LottieTrace.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final String[] f49773a = new String[5];

    /* renamed from: b  reason: collision with root package name */
    private final long[] f49774b = new long[5];

    /* renamed from: c  reason: collision with root package name */
    private int f49775c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f49776d = 0;

    public void a(String str) {
        int i10 = this.f49775c;
        if (i10 == 5) {
            this.f49776d++;
            return;
        }
        this.f49773a[i10] = str;
        this.f49774b[i10] = System.nanoTime();
        TraceCompat.beginSection(str);
        this.f49775c++;
    }

    public float b(String str) {
        int i10 = this.f49776d;
        if (i10 > 0) {
            this.f49776d = i10 - 1;
            return 0.0f;
        }
        int i11 = this.f49775c - 1;
        this.f49775c = i11;
        if (i11 != -1) {
            if (str.equals(this.f49773a[i11])) {
                TraceCompat.endSection();
                return ((float) (System.nanoTime() - this.f49774b[this.f49775c])) / 1000000.0f;
            }
            throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + this.f49773a[this.f49775c] + ".");
        }
        throw new IllegalStateException("Can't end trace section. There are none.");
    }
}
