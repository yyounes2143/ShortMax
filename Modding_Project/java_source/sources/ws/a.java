package ws;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: IOStreams.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    public static final long a(@NotNull InputStream inputStream, @NotNull OutputStream out, int i10) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        byte[] bArr = new byte[i10];
        int read = inputStream.read(bArr);
        long j10 = 0;
        while (read >= 0) {
            out.write(bArr, 0, read);
            j10 += read;
            read = inputStream.read(bArr);
        }
        return j10;
    }

    public static /* synthetic */ long b(InputStream inputStream, OutputStream outputStream, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        return a(inputStream, outputStream, i10);
    }

    @NotNull
    public static final byte[] c(@NotNull InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(8192, inputStream.available()));
        b(inputStream, byteArrayOutputStream, 0, 2, null);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }
}
