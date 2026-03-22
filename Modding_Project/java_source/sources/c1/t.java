package c1;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.io.IOException;
import java.lang.ref.WeakReference;
/* compiled from: KeyframeParser.java */
/* loaded from: classes2.dex */
class t {

    /* renamed from: b  reason: collision with root package name */
    private static SparseArrayCompat<WeakReference<Interpolator>> f2901b;

    /* renamed from: a  reason: collision with root package name */
    private static final Interpolator f2900a = new LinearInterpolator();

    /* renamed from: c  reason: collision with root package name */
    static JsonReader.a f2902c = JsonReader.a.a(IVideoEventLogger.LOG_CALLBACK_TIME, "s", "e", "o", "i", "h", TypedValues.TransitionType.S_TO, "ti");

    /* renamed from: d  reason: collision with root package name */
    static JsonReader.a f2903d = JsonReader.a.a(TextureRenderKeys.KEY_IS_X, TextureRenderKeys.KEY_IS_Y);

    t() {
    }

    @Nullable
    private static WeakReference<Interpolator> a(int i10) {
        WeakReference<Interpolator> weakReference;
        synchronized (t.class) {
            weakReference = g().get(i10);
        }
        return weakReference;
    }

    private static Interpolator b(PointF pointF, PointF pointF2) {
        WeakReference<Interpolator> a10;
        Interpolator linearInterpolator;
        pointF.x = d1.k.b(pointF.x, -1.0f, 1.0f);
        pointF.y = d1.k.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = d1.k.b(pointF2.x, -1.0f, 1.0f);
        float b10 = d1.k.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = b10;
        int i10 = d1.p.i(pointF.x, pointF.y, pointF2.x, b10);
        Interpolator interpolator = null;
        if (com.airbnb.lottie.d.e()) {
            a10 = null;
        } else {
            a10 = a(i10);
        }
        if (a10 != null) {
            interpolator = a10.get();
        }
        if (a10 == null || interpolator == null) {
            try {
                linearInterpolator = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                if ("The Path cannot loop back on itself.".equals(e10.getMessage())) {
                    linearInterpolator = PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
                } else {
                    linearInterpolator = new LinearInterpolator();
                }
            }
            interpolator = linearInterpolator;
            if (!com.airbnb.lottie.d.e()) {
                try {
                    h(i10, new WeakReference(interpolator));
                } catch (ArrayIndexOutOfBoundsException unused) {
                }
            }
        }
        return interpolator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> e1.a<T> c(JsonReader jsonReader, com.airbnb.lottie.i iVar, float f10, n0<T> n0Var, boolean z10, boolean z11) throws IOException {
        if (z10 && z11) {
            return e(iVar, jsonReader, f10, n0Var);
        }
        if (z10) {
            return d(iVar, jsonReader, f10, n0Var);
        }
        return f(jsonReader, f10, n0Var);
    }

    private static <T> e1.a<T> d(com.airbnb.lottie.i iVar, JsonReader jsonReader, float f10, n0<T> n0Var) throws IOException {
        Interpolator interpolator;
        Interpolator interpolator2;
        T t10;
        jsonReader.k();
        PointF pointF = null;
        T t11 = null;
        T t12 = null;
        PointF pointF2 = null;
        PointF pointF3 = null;
        float f11 = 0.0f;
        boolean z10 = false;
        PointF pointF4 = null;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2902c)) {
                case 0:
                    f11 = (float) jsonReader.q();
                    break;
                case 1:
                    t12 = n0Var.a(jsonReader, f10);
                    break;
                case 2:
                    t11 = n0Var.a(jsonReader, f10);
                    break;
                case 3:
                    pointF = s.e(jsonReader, 1.0f);
                    break;
                case 4:
                    pointF4 = s.e(jsonReader, 1.0f);
                    break;
                case 5:
                    if (jsonReader.r() == 1) {
                        z10 = true;
                        break;
                    } else {
                        z10 = false;
                        break;
                    }
                case 6:
                    pointF2 = s.e(jsonReader, f10);
                    break;
                case 7:
                    pointF3 = s.e(jsonReader, f10);
                    break;
                default:
                    jsonReader.P();
                    break;
            }
        }
        jsonReader.m();
        if (z10) {
            interpolator2 = f2900a;
            t10 = t12;
        } else {
            if (pointF != null && pointF4 != null) {
                interpolator = b(pointF, pointF4);
            } else {
                interpolator = f2900a;
            }
            interpolator2 = interpolator;
            t10 = t11;
        }
        e1.a<T> aVar = new e1.a<>(iVar, t12, t10, interpolator2, f11, null);
        aVar.f50737o = pointF2;
        aVar.f50738p = pointF3;
        return aVar;
    }

    private static <T> e1.a<T> e(com.airbnb.lottie.i iVar, JsonReader jsonReader, float f10, n0<T> n0Var) throws IOException {
        Interpolator interpolator;
        Interpolator b10;
        Interpolator b11;
        T t10;
        PointF pointF;
        e1.a<T> aVar;
        PointF pointF2;
        float f11;
        PointF pointF3;
        float f12;
        jsonReader.k();
        PointF pointF4 = null;
        boolean z10 = false;
        PointF pointF5 = null;
        PointF pointF6 = null;
        PointF pointF7 = null;
        T t11 = null;
        PointF pointF8 = null;
        PointF pointF9 = null;
        PointF pointF10 = null;
        float f13 = 0.0f;
        PointF pointF11 = null;
        T t12 = null;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2902c)) {
                case 0:
                    pointF2 = pointF4;
                    f13 = (float) jsonReader.q();
                    break;
                case 1:
                    pointF2 = pointF4;
                    t11 = n0Var.a(jsonReader, f10);
                    break;
                case 2:
                    pointF2 = pointF4;
                    t12 = n0Var.a(jsonReader, f10);
                    break;
                case 3:
                    pointF2 = pointF4;
                    f11 = f13;
                    PointF pointF12 = pointF11;
                    if (jsonReader.v() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.k();
                        float f14 = 0.0f;
                        float f15 = 0.0f;
                        float f16 = 0.0f;
                        float f17 = 0.0f;
                        while (jsonReader.o()) {
                            int x10 = jsonReader.x(f2903d);
                            if (x10 != 0) {
                                if (x10 != 1) {
                                    jsonReader.P();
                                } else {
                                    JsonReader.Token v10 = jsonReader.v();
                                    JsonReader.Token token = JsonReader.Token.NUMBER;
                                    if (v10 == token) {
                                        f17 = (float) jsonReader.q();
                                        f15 = f17;
                                    } else {
                                        jsonReader.d();
                                        f15 = (float) jsonReader.q();
                                        if (jsonReader.v() == token) {
                                            f17 = (float) jsonReader.q();
                                        } else {
                                            f17 = f15;
                                        }
                                        jsonReader.l();
                                    }
                                }
                            } else {
                                JsonReader.Token v11 = jsonReader.v();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (v11 == token2) {
                                    f16 = (float) jsonReader.q();
                                    f14 = f16;
                                } else {
                                    jsonReader.d();
                                    f14 = (float) jsonReader.q();
                                    if (jsonReader.v() == token2) {
                                        f16 = (float) jsonReader.q();
                                    } else {
                                        f16 = f14;
                                    }
                                    jsonReader.l();
                                }
                            }
                        }
                        PointF pointF13 = new PointF(f14, f15);
                        PointF pointF14 = new PointF(f16, f17);
                        jsonReader.m();
                        pointF8 = pointF14;
                        pointF7 = pointF13;
                        pointF11 = pointF12;
                        f13 = f11;
                        break;
                    } else {
                        pointF5 = s.e(jsonReader, f10);
                        f13 = f11;
                        pointF11 = pointF12;
                        break;
                    }
                case 4:
                    if (jsonReader.v() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.k();
                        float f18 = 0.0f;
                        float f19 = 0.0f;
                        float f20 = 0.0f;
                        float f21 = 0.0f;
                        while (jsonReader.o()) {
                            PointF pointF15 = pointF11;
                            int x11 = jsonReader.x(f2903d);
                            if (x11 != 0) {
                                pointF3 = pointF4;
                                if (x11 != 1) {
                                    jsonReader.P();
                                } else {
                                    JsonReader.Token v12 = jsonReader.v();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (v12 == token3) {
                                        f21 = (float) jsonReader.q();
                                        f13 = f13;
                                        f19 = f21;
                                    } else {
                                        float f22 = f13;
                                        jsonReader.d();
                                        float q10 = (float) jsonReader.q();
                                        if (jsonReader.v() == token3) {
                                            f12 = (float) jsonReader.q();
                                        } else {
                                            f12 = q10;
                                        }
                                        jsonReader.l();
                                        f13 = f22;
                                        pointF11 = pointF15;
                                        pointF4 = pointF3;
                                        f21 = f12;
                                        f19 = q10;
                                    }
                                }
                            } else {
                                pointF3 = pointF4;
                                float f23 = f13;
                                JsonReader.Token v13 = jsonReader.v();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (v13 == token4) {
                                    f20 = (float) jsonReader.q();
                                    f13 = f23;
                                    f18 = f20;
                                } else {
                                    jsonReader.d();
                                    f18 = (float) jsonReader.q();
                                    if (jsonReader.v() == token4) {
                                        f20 = (float) jsonReader.q();
                                    } else {
                                        f20 = f18;
                                    }
                                    jsonReader.l();
                                    f13 = f23;
                                }
                            }
                            pointF11 = pointF15;
                            pointF4 = pointF3;
                        }
                        pointF2 = pointF4;
                        f11 = f13;
                        PointF pointF16 = new PointF(f18, f19);
                        PointF pointF17 = new PointF(f20, f21);
                        jsonReader.m();
                        pointF10 = pointF17;
                        pointF9 = pointF16;
                        f13 = f11;
                        break;
                    } else {
                        pointF2 = pointF4;
                        pointF6 = s.e(jsonReader, f10);
                        break;
                    }
                case 5:
                    if (jsonReader.r() == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                        continue;
                    }
                case 6:
                    pointF11 = s.e(jsonReader, f10);
                    continue;
                case 7:
                    pointF4 = s.e(jsonReader, f10);
                    continue;
                default:
                    jsonReader.P();
                    continue;
            }
            pointF4 = pointF2;
        }
        PointF pointF18 = pointF4;
        float f24 = f13;
        PointF pointF19 = pointF11;
        jsonReader.m();
        if (z10) {
            interpolator = f2900a;
            t10 = t11;
        } else {
            if (pointF5 != null && pointF6 != null) {
                interpolator = b(pointF5, pointF6);
            } else if (pointF7 != null && pointF8 != null && pointF9 != null && pointF10 != null) {
                b10 = b(pointF7, pointF9);
                b11 = b(pointF8, pointF10);
                t10 = t12;
                interpolator = null;
                if (b10 == null && b11 != null) {
                    pointF = pointF19;
                    aVar = new e1.a<>(iVar, t11, t10, b10, b11, f24, null);
                } else {
                    pointF = pointF19;
                    aVar = new e1.a<>(iVar, t11, t10, interpolator, f24, null);
                }
                aVar.f50737o = pointF;
                aVar.f50738p = pointF18;
                return aVar;
            } else {
                interpolator = f2900a;
            }
            t10 = t12;
        }
        b10 = null;
        b11 = null;
        if (b10 == null) {
        }
        pointF = pointF19;
        aVar = new e1.a<>(iVar, t11, t10, interpolator, f24, null);
        aVar.f50737o = pointF;
        aVar.f50738p = pointF18;
        return aVar;
    }

    private static <T> e1.a<T> f(JsonReader jsonReader, float f10, n0<T> n0Var) throws IOException {
        return new e1.a<>(n0Var.a(jsonReader, f10));
    }

    private static SparseArrayCompat<WeakReference<Interpolator>> g() {
        if (f2901b == null) {
            f2901b = new SparseArrayCompat<>();
        }
        return f2901b;
    }

    private static void h(int i10, WeakReference<Interpolator> weakReference) {
        synchronized (t.class) {
            f2901b.put(i10, weakReference);
        }
    }
}
