package b7;

import android.media.MediaFormat;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: MediaFormatUtil.java */
/* loaded from: classes4.dex */
public final class t {
    public static void a(MediaFormat mediaFormat, String str, @Nullable byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void b(MediaFormat mediaFormat, @Nullable c7.c cVar) {
        if (cVar != null) {
            d(mediaFormat, "color-transfer", cVar.f3225c);
            d(mediaFormat, "color-standard", cVar.f3223a);
            d(mediaFormat, "color-range", cVar.f3224b);
            a(mediaFormat, "hdr-static-info", cVar.f3226d);
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
