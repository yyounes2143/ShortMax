package t5;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: ExtractorUtil.java */
/* loaded from: classes4.dex */
public final class n {
    public static void a(boolean z10, @Nullable String str) throws ParserException {
        if (z10) {
            return;
        }
        throw ParserException.b(str, null);
    }

    public static boolean b(l lVar, byte[] bArr, int i10, int i11, boolean z10) throws IOException {
        try {
            return lVar.peekFully(bArr, i10, i11, z10);
        } catch (EOFException e10) {
            if (z10) {
                return false;
            }
            throw e10;
        }
    }

    public static int c(l lVar, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int a10 = lVar.a(bArr, i10 + i12, i11 - i12);
            if (a10 == -1) {
                break;
            }
            i12 += a10;
        }
        return i12;
    }

    public static boolean d(l lVar, byte[] bArr, int i10, int i11) throws IOException {
        try {
            lVar.readFully(bArr, i10, i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(l lVar, int i10) throws IOException {
        try {
            lVar.skipFully(i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
