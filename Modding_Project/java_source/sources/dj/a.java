package dj;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.MarginPageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.ui.view.banner.transform.OverlapPageTransformer;
import com.startshorts.androidplayer.ui.view.banner.transform.ScaleInTransformer;
/* compiled from: BannerManager.java */
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private b f50403a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final CompositePageTransformer f50404b = new CompositePageTransformer();

    /* renamed from: c  reason: collision with root package name */
    private MarginPageTransformer f50405c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager2.PageTransformer f50406d;

    public void a(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.f50404b.addTransformer(pageTransformer);
    }

    public void b() {
        g();
        MarginPageTransformer marginPageTransformer = new MarginPageTransformer(this.f50403a.e());
        this.f50405c = marginPageTransformer;
        this.f50404b.addTransformer(marginPageTransformer);
    }

    public b c() {
        if (this.f50403a == null) {
            this.f50403a = new b();
        }
        return this.f50403a;
    }

    public CompositePageTransformer d() {
        return this.f50404b;
    }

    public void f() {
        ViewPager2.PageTransformer pageTransformer = this.f50406d;
        if (pageTransformer != null) {
            this.f50404b.removeTransformer(pageTransformer);
        }
    }

    public void g() {
        MarginPageTransformer marginPageTransformer = this.f50405c;
        if (marginPageTransformer != null) {
            this.f50404b.removeTransformer(marginPageTransformer);
        }
    }

    public void h(boolean z10, float f10) {
        f();
        if (z10) {
            this.f50406d = new OverlapPageTransformer(this.f50403a.d(), f10, 0.0f, 1.0f, 0.0f);
        } else {
            this.f50406d = new ScaleInTransformer(f10);
        }
        this.f50404b.addTransformer(this.f50406d);
    }

    public void i(int i10) {
        this.f50403a.w(i10);
    }

    public void e(Context context, AttributeSet attributeSet) {
    }
}
