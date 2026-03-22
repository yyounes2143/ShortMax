package v2;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c3.i;
/* compiled from: DefaultDrawableFactory.java */
/* loaded from: classes3.dex */
public class a implements x3.a {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f68650a;

    /* renamed from: b  reason: collision with root package name */
    private final x3.a f68651b;

    /* renamed from: c  reason: collision with root package name */
    private final x3.a f68652c;

    public a(Resources resources, x3.a aVar, x3.a aVar2) {
        this.f68650a = resources;
        this.f68651b = aVar;
        this.f68652c = aVar2;
    }

    private static boolean a(y3.f fVar) {
        if (fVar.H() != 1 && fVar.H() != 0) {
            return true;
        }
        return false;
    }

    private static boolean b(y3.f fVar) {
        if (fVar.q0() != 0 && fVar.q0() != -1) {
            return true;
        }
        return false;
    }

    @Override // x3.a
    public Drawable createDrawable(y3.e eVar) {
        try {
            if (f4.b.d()) {
                f4.b.a("DefaultDrawableFactory#createDrawable");
            }
            if (eVar instanceof y3.f) {
                y3.f fVar = (y3.f) eVar;
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f68650a, fVar.B0());
                if (!b(fVar) && !a(fVar)) {
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                    return bitmapDrawable;
                }
                i iVar = new i(bitmapDrawable, fVar.q0(), fVar.H());
                if (f4.b.d()) {
                    f4.b.b();
                }
                return iVar;
            }
            x3.a aVar = this.f68651b;
            if (aVar != null && aVar.supportsImageType(eVar)) {
                Drawable createDrawable = this.f68651b.createDrawable(eVar);
                if (f4.b.d()) {
                    f4.b.b();
                }
                return createDrawable;
            }
            x3.a aVar2 = this.f68652c;
            if (aVar2 != null && aVar2.supportsImageType(eVar)) {
                Drawable createDrawable2 = this.f68652c.createDrawable(eVar);
                if (f4.b.d()) {
                    f4.b.b();
                }
                return createDrawable2;
            } else if (f4.b.d()) {
                f4.b.b();
                return null;
            } else {
                return null;
            }
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }

    @Override // x3.a
    public boolean supportsImageType(y3.e eVar) {
        return true;
    }
}
