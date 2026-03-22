package com.adjust.sdk.sig;

import android.content.Context;
import android.util.Log;
import com.adjust.sdk.AdjustConfig;
import com.inmobi.commons.core.configs.AdConfig;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.security.InvalidKeyException;
import java.security.UnrecoverableKeyException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f4387a = false;

    public static void a(Set set, Map map, Map map2) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (map.containsKey(str)) {
                map2.put(str, (String) map.get(str));
            }
        }
    }

    public static void a(Context context, c cVar, a aVar, Map map, String str, String str2) {
        byte[] bArr;
        if (f4387a) {
            Log.e("SignerInstance", "sign: library received error. It has locked down");
        } else if (map == null || map.size() == 0 || str == null || str2 == null) {
            Log.e("SignerInstance", "sign: One or more parameters are null");
        } else {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
            boolean equals = AdjustConfig.ENVIRONMENT_SANDBOX.equals(map.get("environment"));
            if (equals) {
                Log.v("SignerInstance", "Signing all the parameters begin: " + simpleDateFormat.format(new Date(System.currentTimeMillis())));
            }
            map.put("activity_kind", str);
            map.put("client_sdk", str2);
            int i10 = 2;
            while (true) {
                if (i10 <= 0) {
                    bArr = null;
                    break;
                }
                try {
                    cVar.b(context);
                    bArr = cVar.a(context, map.toString().getBytes("UTF-8"));
                    break;
                } catch (b e10) {
                    Log.e("SignerInstance", "sign: Api is less than JellyBean-4-18");
                    f4387a = true;
                    map.remove("activity_kind");
                    map.remove("client_sdk");
                    throw e10;
                } catch (InvalidKeyException e11) {
                    e = e11;
                } catch (UnrecoverableKeyException e12) {
                    e = e12;
                } catch (Exception e13) {
                    Log.e("SignerInstance", "sign: Received an Exception: " + e13.getMessage(), e13);
                    map.remove("activity_kind");
                    map.remove("client_sdk");
                    throw e13;
                }
                Log.e("SignerInstance", "sign: Received a retriable exception: " + e.getMessage(), e);
                Log.e("SignerInstance", "sign: Attempting retry #" + i10);
                i10 += -1;
                cVar.a(context);
            }
            if (i10 == 0) {
                f4387a = true;
                map.remove("activity_kind");
                map.remove("client_sdk");
                return;
            }
            if (equals) {
                Log.v("SignerInstance", "Calling native begin: " + simpleDateFormat.format(new Date(System.currentTimeMillis())));
            }
            byte[] b10 = ((NativeLibHelper) aVar).b(context, map, bArr, cVar.f4386a);
            if (equals) {
                Log.v("SignerInstance", "Calling native end  : " + simpleDateFormat.format(new Date(System.currentTimeMillis())));
            }
            if (b10 == null) {
                Log.e("SignerInstance", "sign: Returned an null signature. Exiting...");
                map.remove("activity_kind");
                map.remove("client_sdk");
                return;
            }
            int length = b10.length;
            char[] cArr = e.f4388a;
            char[] cArr2 = new char[length * 2];
            for (int i11 = 0; i11 < length; i11++) {
                byte b11 = b10[i11];
                int i12 = b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                int i13 = i11 * 2;
                char[] cArr3 = e.f4388a;
                cArr2[i13] = cArr3[i12 >>> 4];
                cArr2[i13 + 1] = cArr3[b11 & 15];
            }
            map.put(InAppPurchaseMetaData.KEY_SIGNATURE, new String(cArr2));
            map.remove("activity_kind");
            map.remove("client_sdk");
            if (equals) {
                Log.v("SignerInstance", "Signing all the parameters end  : " + simpleDateFormat.format(new Date(System.currentTimeMillis())));
            }
        }
    }
}
