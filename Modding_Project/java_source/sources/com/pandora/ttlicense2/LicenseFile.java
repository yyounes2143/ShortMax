package com.pandora.ttlicense2;

import android.text.TextUtils;
import android.util.Base64;
import com.pandora.ttlicense2.utils.IOUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public final class LicenseFile {
    private final String backupUrl;
    private final String content;
    private final long fileVersion;

    /* renamed from: id  reason: collision with root package name */
    private final String f36668id;
    private final String mainUrl;
    private final String signature;

    private LicenseFile(String str, long j10, String str2, String str3, String str4, String str5) {
        this.f36668id = str;
        this.fileVersion = j10;
        this.signature = str2;
        this.content = str3;
        this.mainUrl = str4;
        this.backupUrl = str5;
    }

    public static LicenseFile parse(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("Id");
        String string = jSONObject.getString("Signature");
        String string2 = jSONObject.getString("Content");
        return new LicenseFile(optString, parseFileVersion(string2), string, string2, jSONObject.getString("MainURL"), jSONObject.getString("BackupURL"));
    }

    private static long parseFileVersion(String str) {
        byte[] decode;
        if (!TextUtils.isEmpty(str) && (decode = Base64.decode(str, 0)) != null) {
            try {
                String optString = new JSONObject(new String(decode)).optString("FileVersion");
                if (!TextUtils.isEmpty(optString)) {
                    return IOUtils.parseLong(optString);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return -1L;
    }

    public String cacheKey() {
        if (!TextUtils.isEmpty(this.mainUrl)) {
            return this.mainUrl;
        }
        if (!TextUtils.isEmpty(this.backupUrl)) {
            return this.backupUrl;
        }
        if (!TextUtils.isEmpty(this.f36668id)) {
            return this.f36668id;
        }
        return "";
    }

    public String getBackupUrl() {
        return this.backupUrl;
    }

    public String getContent() {
        return this.content;
    }

    public long getFileVersion() {
        return this.fileVersion;
    }

    public String getId() {
        return this.f36668id;
    }

    public String getMainUrl() {
        return this.mainUrl;
    }

    public String getSignature() {
        return this.signature;
    }

    public boolean isUpdateAble() {
        if (TextUtils.isEmpty(getMainUrl()) && TextUtils.isEmpty(getBackupUrl())) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "LicenseFile{id='" + this.f36668id + "', fileVersion=" + this.fileVersion + ", mainUrl='" + this.mainUrl + "', backupUrl='" + this.backupUrl + "'}";
    }
}
