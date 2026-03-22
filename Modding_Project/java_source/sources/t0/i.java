package t0;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.q0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: GradientStrokeContent.java */
/* loaded from: classes2.dex */
public class i extends a {
    @Nullable
    private u0.t A;

    /* renamed from: q  reason: collision with root package name */
    private final String f66723q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f66724r;

    /* renamed from: s  reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f66725s;

    /* renamed from: t  reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f66726t;

    /* renamed from: u  reason: collision with root package name */
    private final RectF f66727u;

    /* renamed from: v  reason: collision with root package name */
    private final GradientType f66728v;

    /* renamed from: w  reason: collision with root package name */
    private final int f66729w;

    /* renamed from: x  reason: collision with root package name */
    private final u0.a<z0.d, z0.d> f66730x;

    /* renamed from: y  reason: collision with root package name */
    private final u0.a<PointF, PointF> f66731y;

    /* renamed from: z  reason: collision with root package name */
    private final u0.a<PointF, PointF> f66732z;

    public i(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.a aVar2) {
        super(lottieDrawable, aVar, aVar2.b().toPaintCap(), aVar2.g().toPaintJoin(), aVar2.i(), aVar2.k(), aVar2.m(), aVar2.h(), aVar2.c());
        this.f66725s = new LongSparseArray<>();
        this.f66726t = new LongSparseArray<>();
        this.f66727u = new RectF();
        this.f66723q = aVar2.j();
        this.f66728v = aVar2.f();
        this.f66724r = aVar2.n();
        this.f66729w = (int) (lottieDrawable.K().d() / 32.0f);
        u0.a<z0.d, z0.d> a10 = aVar2.e().a();
        this.f66730x = a10;
        a10.a(this);
        aVar.j(a10);
        u0.a<PointF, PointF> a11 = aVar2.l().a();
        this.f66731y = a11;
        a11.a(this);
        aVar.j(a11);
        u0.a<PointF, PointF> a12 = aVar2.d().a();
        this.f66732z = a12;
        a12.a(this);
        aVar.j(a12);
    }

    private int[] k(int[] iArr) {
        u0.t tVar = this.A;
        if (tVar != null) {
            Integer[] numArr = (Integer[]) tVar.h();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    private int l() {
        int i10;
        int round = Math.round(this.f66731y.f() * this.f66729w);
        int round2 = Math.round(this.f66732z.f() * this.f66729w);
        int round3 = Math.round(this.f66730x.f() * this.f66729w);
        if (round != 0) {
            i10 = TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER * round;
        } else {
            i10 = 17;
        }
        if (round2 != 0) {
            i10 = i10 * 31 * round2;
        }
        if (round3 != 0) {
            return i10 * 31 * round3;
        }
        return i10;
    }

    private LinearGradient m() {
        long l10 = l();
        LinearGradient linearGradient = this.f66725s.get(l10);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF h10 = this.f66731y.h();
        PointF h11 = this.f66732z.h();
        z0.d h12 = this.f66730x.h();
        LinearGradient linearGradient2 = new LinearGradient(h10.x, h10.y, h11.x, h11.y, k(h12.d()), h12.e(), Shader.TileMode.CLAMP);
        this.f66725s.put(l10, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient n() {
        float f10;
        float f11;
        long l10 = l();
        RadialGradient radialGradient = this.f66726t.get(l10);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF h10 = this.f66731y.h();
        PointF h11 = this.f66732z.h();
        z0.d h12 = this.f66730x.h();
        int[] k10 = k(h12.d());
        float[] e10 = h12.e();
        RadialGradient radialGradient2 = new RadialGradient(h10.x, h10.y, (float) Math.hypot(h11.x - f10, h11.y - f11), k10, e10, Shader.TileMode.CLAMP);
        this.f66726t.put(l10, radialGradient2);
        return radialGradient2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // t0.a, x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == q0.O) {
            u0.t tVar = this.A;
            if (tVar != null) {
                this.f66657f.I(tVar);
            }
            if (cVar == null) {
                this.A = null;
                return;
            }
            u0.t tVar2 = new u0.t(cVar);
            this.A = tVar2;
            tVar2.a(this);
            this.f66657f.j(this.A);
        }
    }

    @Override // t0.c
    public String getName() {
        return this.f66723q;
    }

    @Override // t0.a, t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, com.airbnb.lottie.utils.a aVar) {
        Shader n10;
        if (this.f66724r) {
            return;
        }
        c(this.f66727u, matrix, false);
        if (this.f66728v == GradientType.LINEAR) {
            n10 = m();
        } else {
            n10 = n();
        }
        this.f66660i.setShader(n10);
        super.i(canvas, matrix, i10, aVar);
    }
}
