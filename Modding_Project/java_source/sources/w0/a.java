package w0;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import d1.f;
import java.util.HashMap;
import java.util.Map;
import x0.h;
/* compiled from: FontAssetManager.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private final AssetManager f69599d;

    /* renamed from: a  reason: collision with root package name */
    private final h<String> f69596a = new h<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<h<String>, Typeface> f69597b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Typeface> f69598c = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private String f69600e = ".ttf";

    public a(Drawable.Callback callback, @Nullable com.airbnb.lottie.a aVar) {
        if (!(callback instanceof View)) {
            f.c("LottieDrawable must be inside of a view for images to work.");
            this.f69599d = null;
            return;
        }
        this.f69599d = ((View) callback).getContext().getAssets();
    }

    private Typeface a(x0.b bVar) {
        String a10 = bVar.a();
        Typeface typeface = this.f69598c.get(a10);
        if (typeface != null) {
            return typeface;
        }
        bVar.c();
        bVar.b();
        if (bVar.d() != null) {
            return bVar.d();
        }
        Typeface createFromAsset = Typeface.createFromAsset(this.f69599d, "fonts/" + a10 + this.f69600e);
        this.f69598c.put(a10, createFromAsset);
        return createFromAsset;
    }

    private Typeface e(Typeface typeface, String str) {
        int i10;
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        if (contains && contains2) {
            i10 = 3;
        } else if (contains) {
            i10 = 2;
        } else if (contains2) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (typeface.getStyle() == i10) {
            return typeface;
        }
        return Typeface.create(typeface, i10);
    }

    public Typeface b(x0.b bVar) {
        this.f69596a.b(bVar.a(), bVar.c());
        Typeface typeface = this.f69597b.get(this.f69596a);
        if (typeface != null) {
            return typeface;
        }
        Typeface e10 = e(a(bVar), bVar.c());
        this.f69597b.put(this.f69596a, e10);
        return e10;
    }

    public void c(String str) {
        this.f69600e = str;
    }

    public void d(@Nullable com.airbnb.lottie.a aVar) {
    }
}
