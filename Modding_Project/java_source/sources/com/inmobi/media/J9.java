package com.inmobi.media;

import com.huawei.hms.framework.common.ContainerUtils;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public abstract class J9 {
    public static final boolean a(C3196uc c3196uc) {
        String str;
        Intrinsics.checkNotNullParameter(c3196uc, "<this>");
        HashMap hashMap = c3196uc.f25335c;
        return (hashMap == null || (str = (String) hashMap.get("Content-Encoding")) == null || !StringsKt.b0(str, "gzip", false, 2, null)) ? false : true;
    }

    public static final String a(String url, Map map) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (map == null) {
            return url;
        }
        T9.a(map);
        String a10 = T9.a(ContainerUtils.FIELD_DELIMITER, map);
        StringBuilder sb2 = new StringBuilder(url);
        int length = a10.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) a10.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        if (a10.subSequence(i10, length + 1).toString().length() > 0) {
            if (!StringsKt.b0(url, "?", false, 2, null)) {
                sb2.append("?");
            }
            if (!StringsKt.F(url, ContainerUtils.FIELD_DELIMITER, false, 2, null) && !StringsKt.F(url, "?", false, 2, null)) {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
            sb2.append(a10);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public static final String a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length != 0) {
                try {
                } catch (UnsupportedEncodingException | Exception unused) {
                    return "";
                }
            }
            return new String(bArr, Charsets.UTF_8);
        }
        return "";
    }
}
