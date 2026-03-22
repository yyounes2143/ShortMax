package a7;

import a7.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* compiled from: SlidingPercentile.java */
/* loaded from: classes4.dex */
public class w {

    /* renamed from: h  reason: collision with root package name */
    private static final Comparator<b> f296h = new Comparator() { // from class: a7.u
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int g10;
            g10 = w.g((w.b) obj, (w.b) obj2);
            return g10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator<b> f297i = new Comparator() { // from class: a7.v
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int h10;
            h10 = w.h((w.b) obj, (w.b) obj2);
            return h10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f298a;

    /* renamed from: e  reason: collision with root package name */
    private int f302e;

    /* renamed from: f  reason: collision with root package name */
    private int f303f;

    /* renamed from: g  reason: collision with root package name */
    private int f304g;

    /* renamed from: c  reason: collision with root package name */
    private final b[] f300c = new b[5];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<b> f299b = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private int f301d = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SlidingPercentile.java */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f305a;

        /* renamed from: b  reason: collision with root package name */
        public int f306b;

        /* renamed from: c  reason: collision with root package name */
        public float f307c;

        private b() {
        }
    }

    public w(int i10) {
        this.f298a = i10;
    }

    private void d() {
        if (this.f301d != 1) {
            Collections.sort(this.f299b, f296h);
            this.f301d = 1;
        }
    }

    private void e() {
        if (this.f301d != 0) {
            Collections.sort(this.f299b, f297i);
            this.f301d = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.f305a - bVar2.f305a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.f307c, bVar2.f307c);
    }

    public void c(int i10, float f10) {
        b bVar;
        d();
        int i11 = this.f304g;
        if (i11 > 0) {
            b[] bVarArr = this.f300c;
            int i12 = i11 - 1;
            this.f304g = i12;
            bVar = bVarArr[i12];
        } else {
            bVar = new b();
        }
        int i13 = this.f302e;
        this.f302e = i13 + 1;
        bVar.f305a = i13;
        bVar.f306b = i10;
        bVar.f307c = f10;
        this.f299b.add(bVar);
        this.f303f += i10;
        while (true) {
            int i14 = this.f303f;
            int i15 = this.f298a;
            if (i14 > i15) {
                int i16 = i14 - i15;
                b bVar2 = this.f299b.get(0);
                int i17 = bVar2.f306b;
                if (i17 <= i16) {
                    this.f303f -= i17;
                    this.f299b.remove(0);
                    int i18 = this.f304g;
                    if (i18 < 5) {
                        b[] bVarArr2 = this.f300c;
                        this.f304g = i18 + 1;
                        bVarArr2[i18] = bVar2;
                    }
                } else {
                    bVar2.f306b = i17 - i16;
                    this.f303f -= i16;
                }
            } else {
                return;
            }
        }
    }

    public float f(float f10) {
        ArrayList<b> arrayList;
        e();
        float f11 = f10 * this.f303f;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f299b.size(); i11++) {
            b bVar = this.f299b.get(i11);
            i10 += bVar.f306b;
            if (i10 >= f11) {
                return bVar.f307c;
            }
        }
        if (this.f299b.isEmpty()) {
            return Float.NaN;
        }
        return this.f299b.get(arrayList.size() - 1).f307c;
    }

    public void i() {
        this.f299b.clear();
        this.f301d = -1;
        this.f302e = 0;
        this.f303f = 0;
    }
}
