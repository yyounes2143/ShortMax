package e4;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.facebook.imagepipeline.nativecode.Bitmaps;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import t3.w;
/* compiled from: BasePostprocessor.java */
/* loaded from: classes3.dex */
public abstract class a implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final Bitmap.Config f50792a = Bitmap.Config.ARGB_8888;

    /* renamed from: b  reason: collision with root package name */
    private static Method f50793b;

    private static void d(Bitmap bitmap, Bitmap bitmap2) {
        if (w.a() && bitmap.getConfig() == bitmap2.getConfig()) {
            try {
                if (f50793b == null) {
                    int i10 = Bitmaps.f15687a;
                    f50793b = Bitmaps.class.getDeclaredMethod("copyBitmap", Bitmap.class, Bitmap.class);
                }
                f50793b.invoke(null, bitmap, bitmap2);
                return;
            } catch (ClassNotFoundException e10) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e10);
            } catch (IllegalAccessException e11) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e11);
            } catch (NoSuchMethodException e12) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e12);
            } catch (InvocationTargetException e13) {
                throw new RuntimeException("Wrong Native code setup, reflection failed.", e13);
            }
        }
        new Canvas(bitmap).drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
    }

    @Override // e4.b
    public o2.a<Bitmap> a(Bitmap bitmap, q3.d dVar) {
        Bitmap.Config config = bitmap.getConfig();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (config == null) {
            config = f50792a;
        }
        o2.a<Bitmap> d10 = dVar.d(width, height, config);
        try {
            f(d10.s(), bitmap);
            return d10.clone();
        } finally {
            o2.a.r(d10);
        }
    }

    public abstract void e(Bitmap bitmap);

    public void f(Bitmap bitmap, Bitmap bitmap2) {
        d(bitmap, bitmap2);
        e(bitmap);
    }

    @Override // e4.b
    public String getName() {
        return "Unknown postprocessor";
    }
}
