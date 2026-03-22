package a3;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import b3.b;
import c3.q;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* compiled from: DebugControllerOverlayDrawable.java */
/* loaded from: classes3.dex */
public class a extends Drawable implements b {

    /* renamed from: a  reason: collision with root package name */
    private String f102a;

    /* renamed from: b  reason: collision with root package name */
    private String f103b;

    /* renamed from: c  reason: collision with root package name */
    private int f104c;

    /* renamed from: d  reason: collision with root package name */
    private int f105d;

    /* renamed from: e  reason: collision with root package name */
    private int f106e;

    /* renamed from: f  reason: collision with root package name */
    private String f107f;

    /* renamed from: g  reason: collision with root package name */
    private q f108g;

    /* renamed from: i  reason: collision with root package name */
    private int f110i;

    /* renamed from: j  reason: collision with root package name */
    private int f111j;

    /* renamed from: p  reason: collision with root package name */
    private int f117p;

    /* renamed from: q  reason: collision with root package name */
    private int f118q;

    /* renamed from: r  reason: collision with root package name */
    private int f119r;

    /* renamed from: s  reason: collision with root package name */
    private int f120s;

    /* renamed from: t  reason: collision with root package name */
    private int f121t;

    /* renamed from: u  reason: collision with root package name */
    private long f122u;

    /* renamed from: v  reason: collision with root package name */
    private String f123v;

    /* renamed from: h  reason: collision with root package name */
    private HashMap<String, String> f109h = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    private int f112k = 80;

    /* renamed from: l  reason: collision with root package name */
    private final Paint f113l = new Paint(1);

    /* renamed from: m  reason: collision with root package name */
    private final Matrix f114m = new Matrix();

    /* renamed from: n  reason: collision with root package name */
    private final Rect f115n = new Rect();

    /* renamed from: o  reason: collision with root package name */
    private final RectF f116o = new RectF();

    /* renamed from: w  reason: collision with root package name */
    private int f124w = -1;

    /* renamed from: x  reason: collision with root package name */
    private int f125x = 0;

    public a() {
        i();
    }

    private void c(Canvas canvas, String str, Object obj) {
        e(canvas, str, String.valueOf(obj), -1);
    }

    private void d(Canvas canvas, String str, String str2) {
        e(canvas, str, str2, -1);
    }

    private void e(Canvas canvas, String str, String str2, int i10) {
        String str3 = str + ": ";
        float measureText = this.f113l.measureText(str3);
        float measureText2 = this.f113l.measureText(str2);
        this.f113l.setColor(1711276032);
        int i11 = this.f120s;
        int i12 = this.f121t;
        canvas.drawRect(i11 - 4, i12 + 8, i11 + measureText + measureText2 + 4.0f, i12 + this.f119r + 8, this.f113l);
        this.f113l.setColor(-1);
        canvas.drawText(str3, this.f120s, this.f121t, this.f113l);
        this.f113l.setColor(i10);
        canvas.drawText(str2, this.f120s + measureText, this.f121t, this.f113l);
        this.f121t += this.f119r;
    }

    private static String g(String str, Object... objArr) {
        if (objArr != null) {
            return String.format(Locale.US, str, objArr);
        }
        return str;
    }

    private void h(Rect rect, int i10, int i11) {
        int i12;
        int min = Math.min(40, Math.max(10, Math.min(rect.width() / i11, rect.height() / i10)));
        this.f113l.setTextSize(min);
        int i13 = min + 8;
        this.f119r = i13;
        int i14 = this.f112k;
        if (i14 == 80) {
            this.f119r = i13 * (-1);
        }
        this.f117p = rect.left + 10;
        if (i14 == 80) {
            i12 = rect.bottom - 10;
        } else {
            i12 = rect.top + 20;
        }
        this.f118q = i12;
    }

    @Override // b3.b
    public void a(long j10) {
        this.f122u = j10;
        invalidateSelf();
    }

    public void b(String str, String str2) {
        this.f109h.put(str, str2);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.f113l.setStyle(Paint.Style.STROKE);
        this.f113l.setStrokeWidth(2.0f);
        this.f113l.setColor(-26624);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f113l);
        Paint paint = this.f113l;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.f113l.setColor(this.f125x);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f113l);
        this.f113l.setStyle(style);
        this.f113l.setStrokeWidth(0.0f);
        this.f113l.setColor(-1);
        this.f120s = this.f117p;
        this.f121t = this.f118q;
        String str = this.f103b;
        if (str != null) {
            d(canvas, "IDs", g("%s, %s", this.f102a, str));
        } else {
            d(canvas, "ID", this.f102a);
        }
        d(canvas, "D", g("%dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height())));
        if (bounds.height() > 0) {
            c(canvas, "DAR", Float.valueOf(bounds.width() / bounds.height()));
        }
        e(canvas, "I", g("%dx%d", Integer.valueOf(this.f104c), Integer.valueOf(this.f105d)), f(this.f104c, this.f105d, this.f108g));
        int i10 = this.f105d;
        if (i10 > 0) {
            c(canvas, "IAR", Float.valueOf(this.f104c / i10));
        }
        d(canvas, "I", g("%d KiB", Integer.valueOf(this.f106e / 1024)));
        String str2 = this.f107f;
        if (str2 != null) {
            d(canvas, "i format", str2);
        }
        int i11 = this.f110i;
        if (i11 > 0) {
            d(canvas, "anim", g("f %d, l %d", Integer.valueOf(i11), Integer.valueOf(this.f111j)));
        }
        q qVar = this.f108g;
        if (qVar != null) {
            c(canvas, TextureRenderKeys.KEY_IS_SCALE, qVar);
        }
        long j10 = this.f122u;
        if (j10 >= 0) {
            d(canvas, IVideoEventLogger.LOG_CALLBACK_TIME, g("%d ms", Long.valueOf(j10)));
        }
        String str3 = this.f123v;
        if (str3 != null) {
            e(canvas, "origin", str3, this.f124w);
        }
        for (Map.Entry<String, String> entry : this.f109h.entrySet()) {
            d(canvas, entry.getKey(), entry.getValue());
        }
    }

    @VisibleForTesting
    int f(int i10, int i11, q qVar) {
        int width = getBounds().width();
        int height = getBounds().height();
        if (width > 0 && height > 0 && i10 > 0 && i11 > 0) {
            if (qVar != null) {
                Rect rect = this.f115n;
                rect.top = 0;
                rect.left = 0;
                rect.right = width;
                rect.bottom = height;
                this.f114m.reset();
                qVar.a(this.f114m, this.f115n, i10, i11, 0.0f, 0.0f);
                RectF rectF = this.f116o;
                rectF.top = 0.0f;
                rectF.left = 0.0f;
                rectF.right = i10;
                rectF.bottom = i11;
                this.f114m.mapRect(rectF);
                width = Math.min(width, (int) this.f116o.width());
                height = Math.min(height, (int) this.f116o.height());
            }
            float f10 = width;
            float f11 = f10 * 0.1f;
            float f12 = f10 * 0.5f;
            float f13 = height;
            float f14 = 0.1f * f13;
            float f15 = f13 * 0.5f;
            int abs = Math.abs(i10 - width);
            int abs2 = Math.abs(i11 - height);
            float f16 = abs;
            if (f16 < f11 && abs2 < f14) {
                return -16711936;
            }
            if (f16 < f12 && abs2 < f15) {
                return InputDeviceCompat.SOURCE_ANY;
            }
        }
        return SupportMenu.CATEGORY_MASK;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void i() {
        this.f104c = -1;
        this.f105d = -1;
        this.f106e = -1;
        this.f109h = new HashMap<>();
        this.f110i = -1;
        this.f111j = -1;
        this.f107f = null;
        j(null);
        this.f122u = -1L;
        this.f123v = null;
        this.f124w = -1;
        invalidateSelf();
    }

    public void j(String str) {
        if (str == null) {
            str = DevicePublicKeyStringDef.NONE;
        }
        this.f102a = str;
        invalidateSelf();
    }

    public void k(int i10, int i11) {
        this.f104c = i10;
        this.f105d = i11;
        invalidateSelf();
    }

    public void l(int i10) {
        this.f106e = i10;
    }

    public void m(q qVar) {
        this.f108g = qVar;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        h(rect, 9, 8);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
