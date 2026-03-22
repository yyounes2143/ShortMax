package d;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import ca.f;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final da.f f49733a;

    public a(da.f adLoader) {
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        this.f49733a = adLoader;
    }

    public static Activity a(ca.d adInfo, ca.f adRequestParam) {
        Activity activity;
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        WeakReference<Activity> a10 = adRequestParam.a();
        if (a10 != null) {
            activity = a10.get();
        } else {
            activity = null;
        }
        if (activity == null) {
            f(adInfo, "Activity Reference is null", adRequestParam);
        }
        return activity;
    }

    public static String b(ca.d dVar) {
        ca.c f10 = dVar.f();
        return StringsKt.n("\n            聚合平台: " + dVar.d().name() + "\n            Format: " + dVar.h().formatName() + "\n            ID: " + dVar.c() + "\n            Type: " + dVar.k() + "\n            Name: " + dVar.j() + "\n            Mediation: " + f10.a() + "\n            PAM: " + f10.f() + " (Enable: " + f10.b() + ")\n            Key: " + f10.c() + " = " + f10.d() + "\n            LastEcpm: " + f10.e() + "\n        ");
    }

    public static void c(Context context, String str) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(12.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(ColorStateList.valueOf(Color.argb(200, 0, 0, 0)));
        gradientDrawable.setCornerRadius(30.0f);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(gradientDrawable);
        frameLayout.setPadding(30, 30, 30, 30);
        frameLayout.addView(textView);
        Toast toast = new Toast(context);
        toast.setDuration(1);
        toast.setView(frameLayout);
        toast.setGravity(17, 0, 0);
        toast.show();
    }

    public static void e(ca.d adInfo, ca.f adRequestParam, Boolean bool) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdEventHandler", "handleAdDismissed -> adInfo " + adInfo + ", extra " + bool);
        f.c h10 = adRequestParam.h();
        if (h10 != null) {
            h10.a(adInfo, bool);
        }
        adRequestParam.p();
    }

    public static void f(ca.d adInfo, String str, ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        ga.a aVar = ga.a.f52235a;
        aVar.c("AdEventHandler", "handleAdShowFailed -> adInfo " + adInfo + ", errMsg " + str);
        f.e n10 = adRequestParam.n();
        if (n10 != null) {
            n10.a(adInfo, str);
        }
        adRequestParam.p();
    }

    public static final void g(a aVar, ca.d dVar, ca.f fVar) {
        Activity activity;
        ViewGroup viewGroup;
        aVar.getClass();
        WeakReference<Activity> a10 = fVar.a();
        if (a10 == null || (activity = a10.get()) == null) {
            WeakReference<ViewGroup> c10 = fVar.c();
            if (c10 != null && (viewGroup = c10.get()) != null) {
                activity = viewGroup.getContext();
            } else {
                activity = null;
            }
        }
        if (activity != null) {
            try {
                String b10 = b(dVar);
                if (Build.VERSION.SDK_INT >= 30) {
                    Toast.makeText(activity, "AdInfo: " + dVar.c() + " (" + dVar.h() + ')', 1).show();
                    ga.a aVar2 = ga.a.f52235a;
                    StringBuilder sb2 = new StringBuilder("Toast Info (Logcat Only on Android 11+):\n");
                    sb2.append(b10);
                    aVar2.d("AdEventHandler", sb2.toString());
                } else {
                    c(activity, b10);
                }
            } catch (Exception e10) {
                ga.a aVar3 = ga.a.f52235a;
                aVar3.c("AdEventHandler", "showToastLog error -> " + e10.getMessage());
            }
        }
    }

    public static void h(ca.d adInfo, ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdEventHandler", "handleAdClick -> adInfo " + adInfo);
        f.b g10 = adRequestParam.g();
        if (g10 != null) {
            g10.a(adInfo);
        }
    }

    public final void d(ca.d adInfo, ca.f adRequestParam, ca.h ecpmValue) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdEventHandler", "handleAdPaidEvent -> " + ecpmValue + ", adInfo " + adInfo);
        if (adInfo.f().b()) {
            if (this.f49733a.x() && ecpmValue.c() == 0 && adInfo.d() == AdAggregatedSdk.ADMOB) {
                ecpmValue.d((long) (Math.random() * 50 * 1000));
                aVar.c("AdEventHandler", "handleAdPaidEvent -> [Debug Mock] valueMicros=0 -> " + ecpmValue.c());
            }
            ea.b.f51279a.g(adInfo.h(), ecpmValue.c() / 1000.0d);
        }
        f.d m10 = adRequestParam.m();
        if (m10 != null) {
            m10.a(ecpmValue);
        }
    }

    public final void i(ca.d adInfo, ca.f adRequestParam) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdEventHandler", "handleAdShowSuccess -> extra(" + adInfo.f() + ") adInfo " + adInfo);
        if (adInfo.h() != AdFormat.BANNER && adInfo.h() != AdFormat.NATIVE) {
            this.f49733a.G(adInfo.i());
        }
        f.e n10 = adRequestParam.n();
        if (n10 != null) {
            n10.c(adInfo);
        }
        if (this.f49733a.y()) {
            Handler handler = g.c.f52135a;
            g.c.b(new p000admanager.c.a(this, adInfo, adRequestParam));
        }
    }
}
