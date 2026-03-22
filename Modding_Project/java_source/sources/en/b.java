package en;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import io.bidmachine.media3.common.ParserException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
/* compiled from: BitmapUtil.java */
/* loaded from: classes8.dex */
public final class b {
    public static Bitmap a(byte[] bArr, int i10, @Nullable BitmapFactory.Options options, int i11) throws IOException {
        if (i11 != -1) {
            if (options == null) {
                options = new BitmapFactory.Options();
            }
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, i10, options);
            options.inJustDecodeBounds = false;
            options.inSampleSize = 1;
            for (int max = Math.max(options.outWidth, options.outHeight); max > i11; max /= 2) {
                options.inSampleSize *= 2;
            }
        }
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, i10, options);
        if (options != null) {
            options.inSampleSize = 1;
        }
        if (decodeByteArray != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                ExifInterface exifInterface = new ExifInterface(byteArrayInputStream);
                byteArrayInputStream.close();
                int rotationDegrees = exifInterface.getRotationDegrees();
                if (rotationDegrees != 0) {
                    Matrix matrix = new Matrix();
                    matrix.postRotate(rotationDegrees);
                    return Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, false);
                }
                return decodeByteArray;
            } catch (Throwable th2) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        throw ParserException.b("Could not decode image data", new IllegalStateException());
    }
}
