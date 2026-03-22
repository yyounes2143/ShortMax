package g4;

import android.graphics.ColorSpace;
import java.io.IOException;
import java.io.OutputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.k;
/* compiled from: ImageTranscoder.kt */
@Metadata
/* loaded from: classes3.dex */
public interface c {
    boolean a(@NotNull com.facebook.imageformat.c cVar);

    boolean b(@NotNull k kVar, @Nullable s3.g gVar, @Nullable s3.f fVar);

    @NotNull
    b c(@NotNull k kVar, @NotNull OutputStream outputStream, @Nullable s3.g gVar, @Nullable s3.f fVar, @Nullable com.facebook.imageformat.c cVar, @Nullable Integer num, @Nullable ColorSpace colorSpace) throws IOException;

    @NotNull
    String getIdentifier();
}
