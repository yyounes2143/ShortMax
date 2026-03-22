package fk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.log.Logger;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GlobalContext.kt */
@Metadata
@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes7.dex */
public final class u {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final u f51776a = new u();

    /* renamed from: b  reason: collision with root package name */
    public static Context f51777b;

    private u() {
    }

    public static /* synthetic */ void j(u uVar, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        uVar.g(i10, i11);
    }

    public static /* synthetic */ void k(u uVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 1;
        }
        uVar.i(str, i10);
    }

    public final int a(int i10) {
        return ContextCompat.getColor(b(), i10);
    }

    @NotNull
    public final Context b() {
        Context context = f51777b;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("context");
        return null;
    }

    @NotNull
    public final Resources c() {
        Resources resources = b().getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        return resources;
    }

    @NotNull
    public final String d(int i10) {
        return e(i10, null);
    }

    @NotNull
    public final String e(int i10, @NotNull Object... formatArgs) {
        IDActivity iDActivity;
        String string;
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        try {
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                iDActivity = d10.get();
            } else {
                iDActivity = null;
            }
            if (iDActivity == null || (string = iDActivity.getString(i10, Arrays.copyOf(formatArgs, formatArgs.length))) == null) {
                String string2 = b().getString(i10, formatArgs);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                return string2;
            }
            return string;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("GlobalContext", "getString(" + i10 + ") failed -> " + e10.getMessage());
            return "";
        }
    }

    public final void f(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        f51777b = context;
    }

    public final void g(int i10, int i11) {
        i(d(i10), i11);
    }

    public final void h(int i10, int i11, @NotNull Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        i(e(i11, Arrays.copyOf(formatArgs, formatArgs.length)), i10);
    }

    public final void i(@Nullable String str, int i10) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    Toast.makeText(b(), str, i10).show();
                }
            } catch (Exception e10) {
                Logger logger = Logger.f41511a;
                logger.e("GlobalContext", "toast exception -> " + e10.getMessage());
            }
        }
    }
}
