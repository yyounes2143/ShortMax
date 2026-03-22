package t0;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import java.util.ArrayList;
import java.util.List;
import u0.a;
/* compiled from: RoundedCornersContent.java */
/* loaded from: classes2.dex */
public class q implements s, a.b {

    /* renamed from: a  reason: collision with root package name */
    private final LottieDrawable f66780a;

    /* renamed from: b  reason: collision with root package name */
    private final String f66781b;

    /* renamed from: c  reason: collision with root package name */
    private final u0.a<Float, Float> f66782c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private z0.i f66783d;

    public q(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, z0.h hVar) {
        this.f66780a = lottieDrawable;
        this.f66781b = hVar.c();
        u0.a<Float, Float> a10 = hVar.b().a();
        this.f66782c = a10;
        aVar.j(a10);
        a10.a(this);
    }

    private static int b(int i10, int i11) {
        int i12 = i10 / i11;
        if ((i10 ^ i11) < 0 && i11 * i12 != i10) {
            return i12 - 1;
        }
        return i12;
    }

    private static int d(int i10, int i11) {
        return i10 - (b(i10, i11) * i11);
    }

    @NonNull
    private z0.i j(z0.i iVar) {
        PointF c10;
        PointF b10;
        boolean z10;
        List<x0.a> a10 = iVar.a();
        boolean d10 = iVar.d();
        int i10 = 0;
        for (int size = a10.size() - 1; size >= 0; size--) {
            x0.a aVar = a10.get(size);
            x0.a aVar2 = a10.get(d(size - 1, a10.size()));
            if (size == 0 && !d10) {
                c10 = iVar.b();
            } else {
                c10 = aVar2.c();
            }
            if (size == 0 && !d10) {
                b10 = c10;
            } else {
                b10 = aVar2.b();
            }
            PointF a11 = aVar.a();
            if (!iVar.d() && (size == 0 || size == a10.size() - 1)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (b10.equals(c10) && a11.equals(c10) && !z10) {
                i10 += 2;
            } else {
                i10++;
            }
        }
        z0.i iVar2 = this.f66783d;
        if (iVar2 == null || iVar2.a().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new x0.a());
            }
            this.f66783d = new z0.i(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.f66783d.e(d10);
        return this.f66783d;
    }

    @Override // t0.s
    public void a(a.b bVar) {
        this.f66782c.a(bVar);
    }

    public u0.a<Float, Float> e() {
        return this.f66782c;
    }

    @Override // u0.a.b
    public void f() {
        this.f66780a.invalidateSelf();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x009c, code lost:
        if (r7 != (r0.size() - 1)) goto L37;
     */
    @Override // t0.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public z0.i h(z0.i r19) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: t0.q.h(z0.i):z0.i");
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
    }
}
