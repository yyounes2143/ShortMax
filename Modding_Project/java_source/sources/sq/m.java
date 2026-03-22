package sq;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes8.dex */
public class m {
    @NonNull
    public static Handler a() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return new Handler(myLooper);
    }

    @NonNull
    public static Date b(int i10) {
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(6, -i10);
        return calendar.getTime();
    }

    @Nullable
    public static byte[] c(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @Nullable
    public static Integer d(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public static long e(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                outputStream.write(bArr, 0, read);
                j10 += read;
            } else {
                return j10;
            }
        }
    }
}
