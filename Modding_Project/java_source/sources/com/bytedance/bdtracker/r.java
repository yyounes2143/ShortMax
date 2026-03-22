package com.bytedance.bdtracker;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.util.Base64;
import androidx.webkit.ProxyConfig;
import java.nio.charset.Charset;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final r f12354a = new r();

    @Nullable
    public final JSONObject a(@Nullable Context context) {
        Object systemService;
        if (context != null) {
            try {
                systemService = context.getSystemService("clipboard");
            } catch (Throwable unused) {
            }
        } else {
            systemService = null;
        }
        if (systemService != null) {
            ClipboardManager clipboardManager = (ClipboardManager) systemService;
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            if (primaryClip != null) {
                ClipData.Item itemAt = primaryClip.getItemAt(0);
                Intrinsics.checkExpressionValueIsNotNull(itemAt, "clipData.getItemAt(0)");
                String obj = itemAt.getText().toString();
                if (StringsKt.V(obj, "datatracer:", false, 2, null)) {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText("", ""));
                    if (obj != null) {
                        String substring = obj.substring(11);
                        Intrinsics.checkExpressionValueIsNotNull(substring, "(this as java.lang.String).substring(startIndex)");
                        Charset charset = Charsets.UTF_8;
                        if (substring != null) {
                            byte[] bytes = substring.getBytes(charset);
                            Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
                            byte[] data = Base64.decode(bytes, 2);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("?");
                            Intrinsics.checkExpressionValueIsNotNull(data, "data");
                            sb2.append(new String(data, charset));
                            return a(Uri.parse(sb2.toString()));
                        }
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
            }
            return null;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
    }

    @Nullable
    public final JSONObject a(@Nullable Uri uri) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (uri != null) {
                String scheme = uri.getScheme();
                if (Intrinsics.areEqual(scheme, ProxyConfig.MATCH_HTTP) || Intrinsics.areEqual(scheme, "https")) {
                    jSONObject.put("tr_token", uri.getLastPathSegment());
                }
                for (String str : uri.getQueryParameterNames()) {
                    jSONObject.put(str, uri.getQueryParameter(str));
                }
                return jSONObject;
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }
}
