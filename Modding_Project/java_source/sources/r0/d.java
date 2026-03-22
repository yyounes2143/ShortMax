package r0;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import androidx.annotation.DrawableRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: Contexts.kt */
@Metadata
/* loaded from: classes2.dex */
public final class d {
    @NotNull
    public static final Drawable a(@NotNull Context context, @DrawableRes int i10) {
        Drawable drawable = AppCompatResources.getDrawable(context, i10);
        if (drawable != null) {
            return drawable;
        }
        throw new IllegalStateException(("Invalid resource ID: " + i10).toString());
    }

    @NotNull
    public static final Drawable b(@NotNull Resources resources, @DrawableRes int i10, @Nullable Resources.Theme theme) {
        Drawable drawable = ResourcesCompat.getDrawable(resources, i10, theme);
        if (drawable != null) {
            return drawable;
        }
        throw new IllegalStateException(("Invalid resource ID: " + i10).toString());
    }

    @Nullable
    public static final Lifecycle c(@Nullable Context context) {
        while (!(context instanceof LifecycleOwner)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return ((LifecycleOwner) context).getLifecycle();
    }

    @NotNull
    public static final Drawable d(@NotNull Context context, @NotNull Resources resources, @XmlRes int i10) {
        XmlResourceParser xml = resources.getXml(i10);
        int next = xml.next();
        while (next != 2 && next != 1) {
            next = xml.next();
        }
        if (next == 2) {
            return b(resources, i10, context.getTheme());
        }
        throw new XmlPullParserException("No start tag found.");
    }

    public static final boolean e(@NotNull Context context, @NotNull String str) {
        if (ContextCompat.checkSelfPermission(context, str) == 0) {
            return true;
        }
        return false;
    }
}
