package qa;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes5.dex */
public class m {
    private static String a(Context context, String str, String str2) {
        int identifier;
        if (TextUtils.isEmpty(str2) || (identifier = context.getResources().getIdentifier(str2, TypedValues.Custom.S_STRING, str)) == 0) {
            return null;
        }
        try {
            return context.getResources().getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    public static String b(Context context, String str, String str2, String str3) {
        try {
            byte[] c10 = c(str3.getBytes("utf-8"));
            return a(context, str, str2 + a.c(c10));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e10) {
            Log.e("ResourcesUtils", "getResources exception:" + e10.getMessage());
            return null;
        }
    }

    public static byte[] c(byte[] bArr) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance("SHA-256").digest(bArr);
    }
}
