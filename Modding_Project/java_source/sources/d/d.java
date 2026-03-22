package d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public abstract class d {
    public static long a(g.a elapsedTime) {
        Intrinsics.checkNotNullParameter(elapsedTime, "elapsedTime");
        try {
            int i10 = (elapsedTime.f52133b > 0L ? 1 : (elapsedTime.f52133b == 0L ? 0 : -1));
            if (i10 != 0) {
                return -1L;
            }
            if (i10 == 0) {
                long currentTimeMillis = System.currentTimeMillis();
                elapsedTime.f52133b = currentTimeMillis;
                long j10 = elapsedTime.f52132a;
                if (j10 == 0 || currentTimeMillis == 0) {
                    return 0L;
                }
                return currentTimeMillis - j10;
            }
            throw new IllegalAccessException("end() has been called before");
        } catch (Exception e10) {
            ga.a aVar = ga.a.f52235a;
            aVar.c("AdUITools", "getCostTime -> " + e10.getMessage());
            return -1L;
        }
    }

    public static void b(Context context, ImageView imageView, Drawable drawable, Drawable drawable2) {
        Drawable drawable3;
        boolean z10;
        boolean z11;
        Intrinsics.checkNotNullParameter(context, "context");
        if (drawable == null) {
            drawable3 = drawable2;
        } else {
            drawable3 = drawable;
        }
        try {
            ga.a aVar = ga.a.f52235a;
            StringBuilder sb2 = new StringBuilder("showBlurImage -> imageViewExist=");
            boolean z12 = false;
            if (imageView != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            sb2.append(z10);
            sb2.append(",mainDrawableExist=");
            if (drawable != null) {
                z11 = true;
            } else {
                z11 = false;
            }
            sb2.append(z11);
            sb2.append(",iconDrawableExist=");
            if (drawable2 != null) {
                z12 = true;
            }
            sb2.append(z12);
            sb2.append(",url=");
            aVar.d("showBlurImage", sb2.toString());
            Intrinsics.checkNotNull(drawable3, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            Bitmap copy = ((BitmapDrawable) drawable3).getBitmap().copy(Bitmap.Config.ARGB_8888, true);
            RenderScript create = RenderScript.create(context);
            Allocation createFromBitmap = Allocation.createFromBitmap(create, copy);
            Allocation createTyped = Allocation.createTyped(create, createFromBitmap.getType());
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, createFromBitmap.getElement());
            create2.setRadius(25.0f);
            create2.setInput(createFromBitmap);
            create2.forEach(createTyped);
            createTyped.copyTo(copy);
            if (imageView != null) {
                imageView.setImageBitmap(copy);
            }
            createFromBitmap.destroy();
            createTyped.destroy();
            create2.destroy();
            create.destroy();
        } catch (Exception e10) {
            ga.a.f52235a.c("showBlurImage", e10.getMessage());
        }
    }

    public static void c(FrameLayout view) {
        Intrinsics.checkNotNullParameter(view, "view");
        try {
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            } else {
                view.getLayoutParams().width = -1;
                view.getLayoutParams().height = -1;
                view.setLayoutParams(view.getLayoutParams());
            }
        } catch (Exception e10) {
            ga.a aVar = ga.a.f52235a;
            aVar.c("AdUITools", "modifyViewToMatchParent Exception -> " + e10.getMessage());
        }
    }
}
