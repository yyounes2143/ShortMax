package com.bytedance.sdk.component.adexpress.ex;

import android.net.Uri;
import android.text.TextUtils;
/* loaded from: classes3.dex */
public class jFA {

    /* loaded from: classes3.dex */
    public enum oJ {
        HTML("text/html"),
        CSS("text/css"),
        JS("application/x-javascript"),
        IMAGE("image/*");
        
        private String Pfn;

        oJ(String str) {
            this.Pfn = str;
        }

        public String oJ() {
            return this.Pfn;
        }
    }

    public static boolean ZYk(String str) {
        Uri parse;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null) {
            return false;
        }
        String path = parse.getPath();
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        return path.endsWith(".gif");
    }

    public static oJ oJ(String str) {
        oJ oJVar = oJ.IMAGE;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                if (path != null) {
                    if (path.endsWith(".css")) {
                        oJVar = oJ.CSS;
                    } else if (path.endsWith(".js")) {
                        oJVar = oJ.JS;
                    } else if (!path.endsWith(".jpg") && !path.endsWith(".gif") && !path.endsWith(".png") && !path.endsWith(".jpeg") && !path.endsWith(".webp") && !path.endsWith(".bmp") && !path.endsWith(".ico") && path.endsWith(".html")) {
                        oJVar = oJ.HTML;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return oJVar;
    }
}
