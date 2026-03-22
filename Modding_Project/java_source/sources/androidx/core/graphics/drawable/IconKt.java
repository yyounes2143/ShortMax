package androidx.core.graphics.drawable;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.net.Uri;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Icon.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes.dex */
public final class IconKt {
    @RequiresApi(26)
    @NotNull
    public static final Icon toAdaptiveIcon(@NotNull Bitmap bitmap) {
        Icon createWithAdaptiveBitmap;
        createWithAdaptiveBitmap = Icon.createWithAdaptiveBitmap(bitmap);
        return createWithAdaptiveBitmap;
    }

    @RequiresApi(26)
    @NotNull
    public static final Icon toIcon(@NotNull Bitmap bitmap) {
        return Icon.createWithBitmap(bitmap);
    }

    @RequiresApi(26)
    @NotNull
    public static final Icon toIcon(@NotNull Uri uri) {
        return Icon.createWithContentUri(uri);
    }

    @RequiresApi(26)
    @NotNull
    public static final Icon toIcon(@NotNull byte[] bArr) {
        return Icon.createWithData(bArr, 0, bArr.length);
    }
}
