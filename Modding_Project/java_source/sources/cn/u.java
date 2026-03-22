package cn;

import android.media.MediaFormat;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: MediaFormatUtil.java */
/* loaded from: classes8.dex */
public final class u {
    public static void a(MediaFormat mediaFormat, String str, @Nullable byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void b(MediaFormat mediaFormat, @Nullable zm.g gVar) {
        if (gVar != null) {
            d(mediaFormat, "color-transfer", gVar.f71944c);
            d(mediaFormat, "color-standard", gVar.f71942a);
            d(mediaFormat, "color-range", gVar.f71943b);
            a(mediaFormat, "hdr-static-info", gVar.f71945d);
        }
    }

    public static void c(MediaFormat mediaFormat, String str, float f10) {
        if (f10 != -1.0f) {
            mediaFormat.setFloat(str, f10);
        }
    }

    public static void d(MediaFormat mediaFormat, String str, int i10) {
        if (i10 != -1) {
            mediaFormat.setInteger(str, i10);
        }
    }

    public static void e(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            mediaFormat.setByteBuffer("csd-" + i10, ByteBuffer.wrap(list.get(i10)));
        }
    }
}
