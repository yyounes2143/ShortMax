package u0;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import java.util.Collections;
/* compiled from: SplitDimensionPathKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class n extends a<PointF, PointF> {

    /* renamed from: i  reason: collision with root package name */
    private final PointF f67747i;

    /* renamed from: j  reason: collision with root package name */
    private final PointF f67748j;

    /* renamed from: k  reason: collision with root package name */
    private final a<Float, Float> f67749k;

    /* renamed from: l  reason: collision with root package name */
    private final a<Float, Float> f67750l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    protected e1.c<Float> f67751m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    protected e1.c<Float> f67752n;

    public n(a<Float, Float> aVar, a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.f67747i = new PointF();
        this.f67748j = new PointF();
        this.f67749k = aVar;
        this.f67750l = aVar2;
        n(f());
    }

    @Override // u0.a
    public void n(float f10) {
        this.f67749k.n(f10);
        this.f67750l.n(f10);
        this.f67747i.set(this.f67749k.h().floatValue(), this.f67750l.h().floatValue());
        for (int i10 = 0; i10 < this.f67705a.size(); i10++) {
            this.f67705a.get(i10).f();
        }
    }

    @Override // u0.a
    /* renamed from: r */
    public PointF h() {
        return i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // u0.a
    /* renamed from: s */
    public PointF i(e1.a<PointF> aVar, float f10) {
        Float f11;
        e1.a<Float> b10;
        float floatValue;
        e1.a<Float> b11;
        float floatValue2;
        Float f12 = null;
        if (this.f67751m != null && (b11 = this.f67749k.b()) != null) {
            Float f13 = b11.f50730h;
            e1.c<Float> cVar = this.f67751m;
            float f14 = b11.f50729g;
            if (f13 == null) {
                floatValue2 = f14;
            } else {
                floatValue2 = f13.floatValue();
            }
            f11 = cVar.b(f14, floatValue2, b11.f50724b, b11.f50725c, this.f67749k.d(), this.f67749k.e(), this.f67749k.f());
        } else {
            f11 = null;
        }
        if (this.f67752n != null && (b10 = this.f67750l.b()) != null) {
            Float f15 = b10.f50730h;
            e1.c<Float> cVar2 = this.f67752n;
            float f16 = b10.f50729g;
            if (f15 == null) {
                floatValue = f16;
            } else {
                floatValue = f15.floatValue();
            }
            f12 = cVar2.b(f16, floatValue, b10.f50724b, b10.f50725c, this.f67750l.d(), this.f67750l.e(), this.f67750l.f());
        }
        if (f11 == null) {
            this.f67748j.set(this.f67747i.x, 0.0f);
        } else {
            this.f67748j.set(f11.floatValue(), 0.0f);
        }
        if (f12 == null) {
            PointF pointF = this.f67748j;
            pointF.set(pointF.x, this.f67747i.y);
        } else {
            PointF pointF2 = this.f67748j;
            pointF2.set(pointF2.x, f12.floatValue());
        }
        return this.f67748j;
    }

    public void t(@Nullable e1.c<Float> cVar) {
        e1.c<Float> cVar2 = this.f67751m;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f67751m = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public void u(@Nullable e1.c<Float> cVar) {
        e1.c<Float> cVar2 = this.f67752n;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f67752n = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
