package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;
import androidx.core.content.res.ResourcesCompat;
import gt.e;
import gt.q0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AndroidFontLoader.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidFontLoader_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final android.graphics.Typeface load(ResourceFont resourceFont, Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return ResourceFontHelper.INSTANCE.load(context, resourceFont);
        }
        android.graphics.Typeface font = ResourcesCompat.getFont(context, resourceFont.getResId());
        Intrinsics.checkNotNull(font);
        Intrinsics.checkNotNullExpressionValue(font, "{\n        ResourcesCompa…t(context, resId)!!\n    }");
        return font;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object loadAsync(ResourceFont resourceFont, Context context, rs.c<? super android.graphics.Typeface> cVar) {
        return e.g(q0.b(), new AndroidFontLoader_androidKt$loadAsync$2(resourceFont, context, null), cVar);
    }
}
