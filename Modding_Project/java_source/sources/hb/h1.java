package hb;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.Pair;
import androidx.autofill.HintConstants;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes5.dex */
public class h1 extends com.huawei.hms.hatool.o {
    public static String k() {
        String str;
        String str2;
        String str3 = "";
        try {
            str2 = (String) Class.forName("com.huawei.android.os.BuildEx").getMethod("getUDID", new Class[0]).invoke(null, new Object[0]);
        } catch (AndroidRuntimeException unused) {
        } catch (ClassNotFoundException unused2) {
        } catch (IllegalAccessException unused3) {
        } catch (IllegalArgumentException unused4) {
        } catch (NoSuchMethodException unused5) {
        } catch (InvocationTargetException unused6) {
        }
        try {
            f1.h("hmsSdk", "getUDID success");
            return str2;
        } catch (AndroidRuntimeException unused7) {
            str3 = str2;
            str = "getUDID getudid failed, RuntimeException is AndroidRuntimeException";
            f1.m("hmsSdk", str);
            return str3;
        } catch (ClassNotFoundException unused8) {
            str3 = str2;
            str = "getUDID method invoke failed";
            f1.m("hmsSdk", str);
            return str3;
        } catch (IllegalAccessException unused9) {
            str3 = str2;
            str = "getUDID method invoke failed : Illegal AccessException";
            f1.m("hmsSdk", str);
            return str3;
        } catch (IllegalArgumentException unused10) {
            str3 = str2;
            str = "getUDID method invoke failed : Illegal ArgumentException";
            f1.m("hmsSdk", str);
            return str3;
        } catch (NoSuchMethodException unused11) {
            str3 = str2;
            str = "getUDID method invoke failed : NoSuchMethodException";
            f1.m("hmsSdk", str);
            return str3;
        } catch (InvocationTargetException unused12) {
            str3 = str2;
            str = "getUDID method invoke failed : InvocationTargetException";
            f1.m("hmsSdk", str);
            return str3;
        }
    }

    public static Pair<String, String> l(Context context) {
        if (h.b(context, "android.permission.READ_PHONE_STATE")) {
            f1.m("hmsSdk", "getMccAndMnc() Pair value is empty");
            return new Pair<>("", "");
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager == null) {
            return new Pair<>("", "");
        }
        if (telephonyManager.getSimState() != 5) {
            return new Pair<>("", "");
        }
        String networkOperator = telephonyManager.getNetworkOperator();
        if (!TextUtils.isEmpty(networkOperator) && !TextUtils.equals(networkOperator, "null")) {
            if (networkOperator.length() > 3) {
                return new Pair<>(networkOperator.substring(0, 3), networkOperator.substring(3));
            }
            return new Pair<>("", "");
        }
        return new Pair<>("", "");
    }
}
