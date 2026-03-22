package hb;

import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class c1 {
    /* JADX INFO: Access modifiers changed from: protected */
    public static p a(String str, String str2, String str3, String str4) {
        p pVar = new p();
        pVar.a(str);
        pVar.b(v0.k());
        pVar.e(str2);
        pVar.c(str4);
        StringBuffer stringBuffer = new StringBuffer("hmshi");
        stringBuffer.append(str3);
        stringBuffer.append("qrt");
        pVar.d(stringBuffer.toString());
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j0 b(String str, String str2) {
        j0 j0Var = new j0();
        j0Var.a(b0.a().b(str, str2));
        return j0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j1 c(String str, String str2, String str3) {
        j1 j1Var = new j1();
        j1Var.c(v0.r());
        j1Var.e(v0.t());
        j1Var.a(str3);
        j1Var.b(b0.a().e(str2, str));
        return j1Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static w d(String str, String str2) {
        f1.h("hmsSdk", "generate UploadData EventModelHandlerBase");
        l0.f().c(str, str2);
        if (TextUtils.isEmpty(l0.f().b())) {
            f1.m("hmsSdk", "event chifer is empty");
            return null;
        }
        return new w(l0.f().e());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Map<String, String> e(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("App-Id", v0.k());
        hashMap.put("App-Ver", v0.m());
        hashMap.put("Sdk-Name", "hianalytics");
        hashMap.put("Sdk-Ver", "2.2.0.314");
        hashMap.put("Device-Type", Build.MODEL);
        hashMap.put("servicetag", str);
        f1.c("hmsSdk", "sendData RequestId : %s", str2);
        hashMap.put("Request-Id", str2);
        return hashMap;
    }
}
