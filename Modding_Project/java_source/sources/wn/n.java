package wn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import wn.n;
/* compiled from: SlidingPercentile.java */
/* loaded from: classes8.dex */
public class n {

    /* renamed from: h  reason: collision with root package name */
    private static final Comparator<b> f70022h = new Comparator() { // from class: wn.l
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int g10;
            g10 = n.g((n.b) obj, (n.b) obj2);
            return g10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator<b> f70023i = new Comparator() { // from class: wn.m
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int h10;
            h10 = n.h((n.b) obj, (n.b) obj2);
            return h10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f70024a;

    /* renamed from: e  reason: collision with root package name */
    private int f70028e;

    /* renamed from: f  reason: collision with root package name */
    private int f70029f;

    /* renamed from: g  reason: collision with root package name */
    private int f70030g;

    /* renamed from: c  reason: collision with root package name */
    private final b[] f70026c = new b[5];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<b> f70025b = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private int f70027d = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SlidingPercentile.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f70031a;

        /* renamed from: b  reason: collision with root package name */
        public int f70032b;

        /* renamed from: c  reason: collision with root package name */
        public float f70033c;

        private b() {
        }
    }

    public n(int i10) {
        this.f70024a = i10;
    }

    private void d() {
        if (this.f70027d != 1) {
            Collections.sort(this.f70025b, f70022h);
            this.f70027d = 1;
        }
    }

    private void e() {
        if (this.f70027d != 0) {
            Collections.sort(this.f70025b, f70023i);
            this.f70027d = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.f70031a - bVar2.f70031a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.f70033c, bVar2.f70033c);
    }

    public void c(int i10, float f10) {
        b bVar;
        d();
        int i11 = this.f70030g;
        if (i11 > 0) {
            b[] bVarArr = this.f70026c;
            int i12 = i11 - 1;
            this.f70030g = i12;
            bVar = bVarArr[i12];
        } else {
            bVar = new b();
        }
        int i13 = this.f70028e;
        this.f70028e = i13 + 1;
        bVar.f70031a = i13;
        bVar.f70032b = i10;
        bVar.f70033c = f10;
        this.f70025b.add(bVar);
        this.f70029f += i10;
        while (true) {
            int i14 = this.f70029f;
            int i15 = this.f70024a;
            if (i14 > i15) {
                int i16 = i14 - i15;
                b bVar2 = this.f70025b.get(0);
                int i17 = bVar2.f70032b;
                if (i17 <= i16) {
                    this.f70029f -= i17;
                    this.f70025b.remove(0);
                    int i18 = this.f70030g;
                    if (i18 < 5) {
                        b[] bVarArr2 = this.f70026c;
                        this.f70030g = i18 + 1;
                        bVarArr2[i18] = bVar2;
                    }
                } else {
                    bVar2.f70032b = i17 - i16;
                    this.f70029f -= i16;
                }
            } else {
                return;
            }
        }
    }

    public float f(float f10) {
        ArrayList<b> arrayList;
        e();
        float f11 = f10 * this.f70029f;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f70025b.size(); i11++) {
            b bVar = this.f70025b.get(i11);
            i10 += bVar.f70032b;
            if (i10 >= f11) {
                return bVar.f70033c;
            }
        }
        if (this.f70025b.isEmpty()) {
            return Float.NaN;
        }
        return this.f70025b.get(arrayList.size() - 1).f70033c;
    }

    public void i() {
        this.f70025b.clear();
        this.f70027d = -1;
        this.f70028e = 0;
        this.f70029f = 0;
    }
}
