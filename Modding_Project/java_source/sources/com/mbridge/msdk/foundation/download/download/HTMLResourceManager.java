package com.mbridge.msdk.foundation.download.download;

import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.d;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.same.task.a;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.io.File;
/* loaded from: classes5.dex */
public class HTMLResourceManager {
    public static final int EXPIRE_TIME = 259200000;
    private static final String TAG = "HTMLResourceManager";
    private String mFileSaveSDDir;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class ResourceManagerHolder {
        public static HTMLResourceManager instance = new HTMLResourceManager();

        private ResourceManagerHolder() {
        }
    }

    public static HTMLResourceManager getInstance() {
        return ResourceManagerHolder.instance;
    }

    public void cleanHtmlRes() {
        try {
            if (!TextUtils.isEmpty(this.mFileSaveSDDir)) {
                DownloadTask.getInstance().runTask(new a() { // from class: com.mbridge.msdk.foundation.download.download.HTMLResourceManager.1
                    @Override // com.mbridge.msdk.foundation.same.task.a
                    public void runTask() {
                        n0.a(HTMLResourceManager.this.mFileSaveSDDir);
                    }

                    @Override // com.mbridge.msdk.foundation.same.task.a
                    public void cancelTask() {
                    }

                    @Override // com.mbridge.msdk.foundation.same.task.a
                    public void pauseTask(boolean z10) {
                    }
                });
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public String getHtmlContentFromUrl(String str) {
        try {
            String md5 = SameMD5.getMD5(b1.b(str));
            File file = new File(this.mFileSaveSDDir + DomExceptionUtils.SEPARATOR + md5 + ".html");
            if (file.exists()) {
                return n0.e(file);
            }
            return null;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
                return null;
            }
            return null;
        }
    }

    public String getHtmlPathFromUrl(String str) {
        try {
            String str2 = this.mFileSaveSDDir + DomExceptionUtils.SEPARATOR + SameMD5.getMD5(b1.b(str)) + ".html";
            File file = new File(str2);
            if (file.exists()) {
                g d10 = h.b().d(c.m().b());
                if (d10 != null && !TextUtils.isEmpty(d10.T())) {
                    d.a(str, file);
                }
                return "file:////" + str2;
            }
            return null;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
                return null;
            }
            return null;
        }
    }

    public void init() {
        this.mFileSaveSDDir = e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
    }

    public boolean saveResHtmlFile(String str, byte[] bArr) {
        try {
            p0.c(TAG, "saveResHtmlFile url:" + str);
            if (bArr != null && bArr.length > 0) {
                String str2 = this.mFileSaveSDDir + DomExceptionUtils.SEPARATOR + SameMD5.getMD5(b1.b(str)) + ".html";
                p0.c(TAG, "saveResHtmlFile folderName:" + str2);
                if (n0.a(bArr, new File(str2))) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return false;
            }
            return false;
        }
    }

    private HTMLResourceManager() {
        init();
    }
}
