package androidx.compose.ui.text.font;

import android.os.ParcelFileDescriptor;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFont.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
final class AndroidFileDescriptorHelper {
    @NotNull
    public static final AndroidFileDescriptorHelper INSTANCE = new AndroidFileDescriptorHelper();

    private AndroidFileDescriptorHelper() {
    }

    @DoNotInline
    @RequiresApi(26)
    @NotNull
    public final android.graphics.Typeface create(@NotNull ParcelFileDescriptor fileDescriptor) {
        android.graphics.Typeface build;
        Intrinsics.checkNotNullParameter(fileDescriptor, "fileDescriptor");
        c.a();
        build = b.a(fileDescriptor.getFileDescriptor()).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(fileDescriptor.fileDescriptor).build()");
        return build;
    }
}
