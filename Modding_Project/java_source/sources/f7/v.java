package f7;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private static final i f51663a = new i("PhoneskyVerificationUtils");

    public static boolean a(Context context) {
        try {
            if (!context.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled) {
                f51663a.d("Play Store package is disabled.", new Object[0]);
            } else {
                try {
                    Signature[] signatureArr = context.getPackageManager().getPackageInfo("com.android.vending", 64).signatures;
                    if (signatureArr != null && (r0 = signatureArr.length) != 0) {
                        ArrayList arrayList = new ArrayList();
                        for (Signature signature : signatureArr) {
                            String a10 = u.a(signature.toByteArray());
                            arrayList.add(a10);
                            if (!"8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M".equals(a10)) {
                                String str = Build.TAGS;
                                if ((str.contains("dev-keys") || str.contains("test-keys")) && "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA".equals(a10)) {
                                    return true;
                                }
                            } else {
                                return true;
                            }
                        }
                        i iVar = f51663a;
                        StringBuilder sb2 = new StringBuilder();
                        Iterator it = arrayList.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb2.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                }
                                sb2.append((CharSequence) ", ");
                            }
                        }
                        iVar.d(String.format("Play Store package certs are not valid. Found these sha256 certs: [%s].", sb2.toString()), new Object[0]);
                    } else {
                        f51663a.d("Play Store package is not signed -- possibly self-built package. Could not verify.", new Object[0]);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    f51663a.d("Play Store package is not found.", new Object[0]);
                }
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            f51663a.d("Play Store package is not found.", new Object[0]);
        }
        return false;
    }
}
