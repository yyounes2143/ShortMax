package r0;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import androidx.collection.SieveCacheKt;
import androidx.core.content.ContextCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import coil.decode.DataSource;
import coil.intercept.RealInterceptorChain;
import coil.request.ViewTargetRequestManager;
import coil.size.Scale;
import e0.a;
import h0.a;
import java.io.Closeable;
import java.io.File;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import n0.c;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Utils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.Config[] f65448a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Bitmap.Config f65449b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Headers f65450c;

    /* compiled from: Utils.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[DataSource.values().length];
            iArr[DataSource.MEMORY_CACHE.ordinal()] = 1;
            iArr[DataSource.MEMORY.ordinal()] = 2;
            iArr[DataSource.DISK.ordinal()] = 3;
            iArr[DataSource.NETWORK.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            iArr2[ImageView.ScaleType.FIT_START.ordinal()] = 1;
            iArr2[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            iArr2[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            iArr2[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 4;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Scale.values().length];
            iArr3[Scale.FILL.ordinal()] = 1;
            iArr3[Scale.FIT.ordinal()] = 2;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    static {
        Bitmap.Config[] configArr;
        Bitmap.Config config;
        Bitmap.Config config2;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            config2 = Bitmap.Config.RGBA_F16;
            configArr = new Bitmap.Config[]{Bitmap.Config.ARGB_8888, config2};
        } else {
            configArr = new Bitmap.Config[]{Bitmap.Config.ARGB_8888};
        }
        f65448a = configArr;
        if (i10 >= 26) {
            config = Bitmap.Config.HARDWARE;
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        f65449b = config;
        f65450c = new Headers.Builder().f();
    }

    public static final void a(@NotNull a.b bVar) {
        try {
            bVar.abort();
        } catch (Exception unused) {
        }
    }

    @NotNull
    public static final Headers.Builder b(@NotNull Headers.Builder builder, @NotNull String str) {
        int p02 = StringsKt.p0(str, ':', 0, false, 6, null);
        if (p02 != -1) {
            String substring = str.substring(0, p02);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String obj = StringsKt.v1(substring).toString();
            String substring2 = str.substring(p02 + 1);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            builder.e(obj, substring2);
            return builder;
        }
        throw new IllegalArgumentException(("Unexpected header: " + str).toString());
    }

    public static final int c(@NotNull Context context, double d10) {
        int i10;
        try {
            Object systemService = ContextCompat.getSystemService(context, ActivityManager.class);
            Intrinsics.checkNotNull(systemService);
            ActivityManager activityManager = (ActivityManager) systemService;
            if ((context.getApplicationInfo().flags & 1048576) != 0) {
                i10 = activityManager.getLargeMemoryClass();
            } else {
                i10 = activityManager.getMemoryClass();
            }
        } catch (Exception unused) {
            i10 = 256;
        }
        double d11 = 1024;
        return (int) (d10 * i10 * d11 * d11);
    }

    public static final void d(@NotNull Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }

    public static final double e(@NotNull Context context) {
        try {
            Object systemService = ContextCompat.getSystemService(context, ActivityManager.class);
            Intrinsics.checkNotNull(systemService);
            if (!((ActivityManager) systemService).isLowRamDevice()) {
                return 0.2d;
            }
            return 0.15d;
        } catch (Exception unused) {
            return 0.2d;
        }
    }

    @NotNull
    public static final Bitmap.Config f() {
        return f65449b;
    }

    @NotNull
    public static final a0.c g(@NotNull a.InterfaceC0763a interfaceC0763a) {
        if (interfaceC0763a instanceof RealInterceptorChain) {
            return ((RealInterceptorChain) interfaceC0763a).d();
        }
        return a0.c.f50b;
    }

    @Nullable
    public static final String h(@NotNull Uri uri) {
        return (String) CollectionsKt.firstOrNull(uri.getPathSegments());
    }

    public static final int i(@NotNull Drawable drawable) {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            bitmapDrawable = (BitmapDrawable) drawable;
        } else {
            bitmapDrawable = null;
        }
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            return bitmap.getHeight();
        }
        return drawable.getIntrinsicHeight();
    }

    @Nullable
    public static final String j(@NotNull MimeTypeMap mimeTypeMap, @Nullable String str) {
        if (str == null || StringsKt.t0(str)) {
            return null;
        }
        return mimeTypeMap.getMimeTypeFromExtension(StringsKt.i1(StringsKt.k1(StringsKt.s1(StringsKt.s1(str, '#', null, 2, null), '?', null, 2, null), '/', null, 2, null), '.', ""));
    }

    public static final int k(@NotNull Configuration configuration) {
        return configuration.uiMode & 48;
    }

    @NotNull
    public static final ViewTargetRequestManager l(@NotNull View view) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        Object tag = view.getTag(b0.a.f2158a);
        ViewTargetRequestManager viewTargetRequestManager = null;
        if (tag instanceof ViewTargetRequestManager) {
            onAttachStateChangeListener = (ViewTargetRequestManager) tag;
        } else {
            onAttachStateChangeListener = null;
        }
        if (onAttachStateChangeListener == null) {
            synchronized (view) {
                try {
                    Object tag2 = view.getTag(b0.a.f2158a);
                    if (tag2 instanceof ViewTargetRequestManager) {
                        viewTargetRequestManager = (ViewTargetRequestManager) tag2;
                    }
                    if (viewTargetRequestManager != null) {
                        onAttachStateChangeListener = viewTargetRequestManager;
                    } else {
                        onAttachStateChangeListener = new ViewTargetRequestManager(view);
                        view.addOnAttachStateChangeListener(onAttachStateChangeListener);
                        view.setTag(b0.a.f2158a, onAttachStateChangeListener);
                    }
                } finally {
                }
            }
        }
        return onAttachStateChangeListener;
    }

    @NotNull
    public static final File m(@NotNull Context context) {
        File cacheDir = context.getCacheDir();
        cacheDir.mkdirs();
        return cacheDir;
    }

    @NotNull
    public static final Scale n(@NotNull ImageView imageView) {
        int i10;
        ImageView.ScaleType scaleType = imageView.getScaleType();
        if (scaleType == null) {
            i10 = -1;
        } else {
            i10 = a.$EnumSwitchMapping$1[scaleType.ordinal()];
        }
        if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
            return Scale.FILL;
        }
        return Scale.FIT;
    }

    @NotNull
    public static final Bitmap.Config[] o() {
        return f65448a;
    }

    public static final int p(@NotNull Drawable drawable) {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            bitmapDrawable = (BitmapDrawable) drawable;
        } else {
            bitmapDrawable = null;
        }
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            return bitmap.getWidth();
        }
        return drawable.getIntrinsicWidth();
    }

    public static final boolean q(@NotNull Uri uri) {
        if (Intrinsics.areEqual(uri.getScheme(), "file") && Intrinsics.areEqual(h(uri), "android_asset")) {
            return true;
        }
        return false;
    }

    public static final boolean r() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    public static final boolean s(int i10) {
        if (i10 != Integer.MIN_VALUE && i10 != Integer.MAX_VALUE) {
            return false;
        }
        return true;
    }

    public static final boolean t(@NotNull a.InterfaceC0763a interfaceC0763a) {
        if ((interfaceC0763a instanceof RealInterceptorChain) && ((RealInterceptorChain) interfaceC0763a).e()) {
            return true;
        }
        return false;
    }

    public static final boolean u(@NotNull Drawable drawable) {
        if (!(drawable instanceof VectorDrawable) && !(drawable instanceof VectorDrawableCompat)) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final m0.k v(@Nullable m0.k kVar) {
        if (kVar == null) {
            return m0.k.f62421c;
        }
        return kVar;
    }

    @NotNull
    public static final m0.n w(@Nullable m0.n nVar) {
        if (nVar == null) {
            return m0.n.f62437c;
        }
        return nVar;
    }

    @NotNull
    public static final Headers x(@Nullable Headers headers) {
        if (headers == null) {
            return f65450c;
        }
        return headers;
    }

    public static final int y(@NotNull String str, int i10) {
        Long v10 = StringsKt.v(str);
        if (v10 != null) {
            long longValue = v10.longValue();
            if (longValue > SieveCacheKt.NodeLinkMask) {
                return Integer.MAX_VALUE;
            }
            if (longValue < 0) {
                return 0;
            }
            return (int) longValue;
        }
        return i10;
    }

    public static final int z(@NotNull n0.c cVar, @NotNull Scale scale) {
        if (cVar instanceof c.a) {
            return ((c.a) cVar).f62716a;
        }
        int i10 = a.$EnumSwitchMapping$2[scale.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return Integer.MAX_VALUE;
            }
            throw new NoWhenBranchMatchedException();
        }
        return Integer.MIN_VALUE;
    }
}
