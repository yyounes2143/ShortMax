package op;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.core.g;
import java.io.InputStream;
import java.lang.ref.WeakReference;
/* compiled from: ImageHelper.java */
/* loaded from: classes8.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageHelper.java */
    /* renamed from: op.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0889a implements c {
        C0889a() {
        }

        @Override // op.a.c
        public void a(@NonNull ImageView imageView, @NonNull Drawable drawable) {
            imageView.setImageDrawable(drawable);
        }

        @Override // op.a.c
        public void onError(@NonNull String str) {
            io.bidmachine.core.a.d(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageHelper.java */
    /* loaded from: classes8.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f64339a;

        /* renamed from: b  reason: collision with root package name */
        private final Context f64340b;

        /* renamed from: c  reason: collision with root package name */
        private final WeakReference<ImageView> f64341c;

        /* renamed from: d  reason: collision with root package name */
        private final c f64342d;

        /* renamed from: e  reason: collision with root package name */
        private Drawable f64343e;

        /* compiled from: ImageHelper.java */
        /* renamed from: op.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        class RunnableC0890a implements Runnable {
            RunnableC0890a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageView imageView = (ImageView) b.this.f64341c.get();
                if (imageView != null && b.this.f64343e != null) {
                    b.this.f64342d.a(imageView, b.this.f64343e);
                } else {
                    b.this.f64342d.onError("Target ImageView or Bitmap is invalid");
                }
            }
        }

        b(@NonNull Context context, @NonNull Uri uri, @NonNull ImageView imageView, @NonNull c cVar) {
            this.f64340b = context;
            this.f64339a = uri;
            this.f64341c = new WeakReference<>(imageView);
            this.f64342d = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                InputStream openInputStream = this.f64340b.getContentResolver().openInputStream(this.f64339a);
                BitmapFactory.decodeStream(openInputStream, null, options);
                g.j(openInputStream);
                if (options.outWidth != 0 && options.outHeight != 0) {
                    int c10 = a.c(this.f64340b);
                    options.inSampleSize = a.a(options, c10, a.b(c10));
                    options.inJustDecodeBounds = false;
                    InputStream openInputStream2 = this.f64340b.getContentResolver().openInputStream(this.f64339a);
                    this.f64343e = new BitmapDrawable(this.f64340b.getResources(), BitmapFactory.decodeStream(openInputStream2, null, options));
                    g.j(openInputStream2);
                    g.Z(new RunnableC0890a());
                    return;
                }
                this.f64342d.onError("Image size is (0;0)");
            } catch (Throwable th2) {
                String message = th2.getMessage();
                c cVar = this.f64342d;
                if (message == null) {
                    message = "ImagePreparation error";
                }
                cVar.onError(message);
            }
        }
    }

    /* compiled from: ImageHelper.java */
    /* loaded from: classes8.dex */
    public interface c {
        void a(@NonNull ImageView imageView, @NonNull Drawable drawable);

        void onError(@NonNull String str);
    }

    public static int a(@NonNull BitmapFactory.Options options, int i10, int i11) {
        int i12 = options.outWidth;
        int i13 = options.outHeight;
        int i14 = 1;
        while (true) {
            if (i12 / i14 <= i10 && i13 / i14 <= i11) {
                return i14;
            }
            i14 *= 2;
        }
    }

    public static int b(int i10) {
        if (i10 > 700) {
            return 700;
        }
        return i10;
    }

    public static int c(@NonNull Context context) {
        Point D = g.D(context);
        return Math.min((int) TTVideoEngineInterface.PLAYER_OPTION_ENABLE_FAST_STOP, Math.min(D.x, D.y));
    }

    public static void d(@NonNull Context context, @NonNull ImageView imageView, @Nullable Uri uri, @Nullable Drawable drawable) {
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        } else {
            e(context, uri, imageView, new C0889a());
        }
    }

    private static void e(@NonNull Context context, @Nullable Uri uri, @Nullable ImageView imageView, @Nullable c cVar) {
        if (cVar == null) {
            return;
        }
        if (uri != null && !TextUtils.isEmpty(uri.getPath())) {
            if (imageView == null) {
                cVar.onError("Target ImageView is null");
                return;
            } else {
                op.b.a().execute(new b(context, uri, imageView, cVar));
                return;
            }
        }
        cVar.onError("ImagePath is invalid");
    }
}
