package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.core.content.ContextCompat;
import com.inmobi.ads.R;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.k2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3027k2 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public final String f24919a;

    /* renamed from: b  reason: collision with root package name */
    public final C2995i2 f24920b;

    /* renamed from: c  reason: collision with root package name */
    public final R6 f24921c;

    /* renamed from: d  reason: collision with root package name */
    public final String f24922d;

    /* renamed from: e  reason: collision with root package name */
    public final C3203v3 f24923e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f24924f;

    /* renamed from: g  reason: collision with root package name */
    public final C3219w3 f24925g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f24926h;

    /* renamed from: i  reason: collision with root package name */
    public final WeakReference f24927i;

    /* renamed from: j  reason: collision with root package name */
    public final WeakReference f24928j;

    public C3027k2(String urlToLoad, C2995i2 c2995i2, Context context, InterfaceC2931e2 interfaceC2931e2, InterfaceC3259yb redirectionValidator, R6 r62, String api) {
        Intrinsics.checkNotNullParameter(urlToLoad, "urlToLoad");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(redirectionValidator, "redirectionValidator");
        Intrinsics.checkNotNullParameter(api, "api");
        this.f24919a = urlToLoad;
        this.f24920b = c2995i2;
        this.f24921c = r62;
        this.f24922d = api;
        C3203v3 c3203v3 = new C3203v3();
        this.f24923e = c3203v3;
        this.f24925g = new C3219w3(interfaceC2931e2, r62);
        this.f24927i = new WeakReference(interfaceC2931e2);
        this.f24928j = new WeakReference(redirectionValidator);
        Intrinsics.checkNotNullParameter(this, "connectionCallback");
        c3203v3.f25354c = this;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.f24924f = applicationContext;
        Uc.a(context, this);
    }

    public final void a() {
        String a10;
        C3203v3 c3203v3 = this.f24923e;
        Context context = this.f24924f;
        if (c3203v3.f25352a != null || context == null || (a10 = AbstractC3235x3.a(context)) == null) {
            return;
        }
        C3171t3 c3171t3 = new C3171t3(c3203v3);
        c3203v3.f25353b = c3171t3;
        CustomTabsClient.bindCustomTabsService(context, a10, c3171t3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        C3203v3 c3203v3 = this.f24923e;
        Context context = this.f24924f;
        c3203v3.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        C3171t3 c3171t3 = c3203v3.f25353b;
        if (c3171t3 != null) {
            context.unbindService(c3171t3);
            c3203v3.f25352a = null;
        }
        c3203v3.f25353b = null;
        activity.getApplication().unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    public final void a(Uri uri) {
        CustomTabsIntent.Builder builder;
        CustomTabsSession newSession;
        C2995i2 c2995i2 = this.f24920b;
        if (c2995i2 != null) {
            try {
                builder = a(c2995i2);
            } catch (Error unused) {
                C3203v3 c3203v3 = this.f24923e;
                CustomTabsSession customTabsSession = c3203v3.f25355d;
                if (customTabsSession == null) {
                    CustomTabsClient customTabsClient = c3203v3.f25352a;
                    newSession = customTabsClient != null ? customTabsClient.newSession(new C3187u3(c3203v3)) : null;
                    c3203v3.f25355d = newSession;
                    customTabsSession = newSession;
                }
                builder = new CustomTabsIntent.Builder(customTabsSession);
                builder.setUrlBarHidingEnabled(true);
            }
        } else {
            C3203v3 c3203v32 = this.f24923e;
            CustomTabsSession customTabsSession2 = c3203v32.f25355d;
            if (customTabsSession2 == null) {
                CustomTabsClient customTabsClient2 = c3203v32.f25352a;
                newSession = customTabsClient2 != null ? customTabsClient2.newSession(new C3187u3(c3203v32)) : null;
                c3203v32.f25355d = newSession;
                customTabsSession2 = newSession;
            }
            builder = new CustomTabsIntent.Builder(customTabsSession2);
            builder.setUrlBarHidingEnabled(true);
        }
        Context context = this.f24924f;
        CustomTabsIntent build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        AbstractC3155s3.a(context, build, uri, (InterfaceC2931e2) this.f24927i.get(), this.f24921c, (InterfaceC3259yb) this.f24928j.get(), this.f24922d);
    }

    public final CustomTabsIntent.Builder a(C2995i2 c2995i2) {
        Bitmap bitmap;
        C3203v3 c3203v3 = this.f24923e;
        CustomTabsSession customTabsSession = c3203v3.f25355d;
        if (customTabsSession == null) {
            CustomTabsClient customTabsClient = c3203v3.f25352a;
            customTabsSession = customTabsClient != null ? customTabsClient.newSession(new C3187u3(c3203v3)) : null;
            c3203v3.f25355d = customTabsSession;
        }
        CustomTabsIntent.Builder closeButtonPosition = new CustomTabsIntent.Builder(customTabsSession).setCloseButtonPosition(2);
        Intrinsics.checkNotNullExpressionValue(closeButtonPosition, "setCloseButtonPosition(...)");
        try {
            closeButtonPosition.setShareState(2);
            closeButtonPosition.setShowTitle(false);
            closeButtonPosition.setDownloadButtonEnabled(false);
            closeButtonPosition.setBookmarksButtonEnabled(false);
        } catch (Error unused) {
        }
        if (c2995i2.f24841b) {
            Context context = this.f24924f;
            int i10 = R.drawable.im_close_transparent;
            Intrinsics.checkNotNullParameter(context, "<this>");
            Drawable drawable = ContextCompat.getDrawable(context, i10);
            if (drawable instanceof BitmapDrawable) {
                bitmap = ((BitmapDrawable) drawable).getBitmap();
                Intrinsics.checkNotNullExpressionValue(bitmap, "getBitmap(...)");
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(drawable != null ? drawable.getIntrinsicWidth() : 24, drawable != null ? drawable.getIntrinsicHeight() : 24, Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(createBitmap, "Bitmap.createBitmap(width, height, config)");
                Canvas canvas = new Canvas(createBitmap);
                if (drawable != null) {
                    drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                }
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                bitmap = createBitmap;
            }
            closeButtonPosition.setCloseButtonIcon(bitmap);
        }
        V3 h10 = U3.h();
        EnumC3115pa a10 = AbstractC3131qa.a(U3.g());
        if (a10 != EnumC3115pa.f25155b && a10 != EnumC3115pa.f25157d) {
            closeButtonPosition.setInitialActivityHeightPx((int) (((int) (h10.f24298b * c2995i2.f24840a)) * h10.f24299c), 2);
        } else {
            int i11 = (int) (h10.f24297a * c2995i2.f24840a);
            closeButtonPosition.setInitialActivityWidthPx((int) (i11 * h10.f24299c));
            closeButtonPosition.setActivitySideSheetBreakpointDp(i11);
        }
        closeButtonPosition.setUrlBarHidingEnabled(true);
        return closeButtonPosition;
    }
}
