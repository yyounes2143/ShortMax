package com.pandora.ttlicense2;

import android.util.Base64;
import com.pandora.ttlicense2.utils.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class License {
    private String bundleId;
    private String channel;
    private String fileVersion;

    /* renamed from: id  reason: collision with root package name */
    private String f36667id;
    Module[] modules;
    private String packageName;
    private int type;
    private int version;

    /* loaded from: classes6.dex */
    public static class Module {
        private String edition;
        private long expireBuffer;
        private long expireTime;
        private Module[] features;
        private String name;
        private long startTime;

        public Module() {
        }

        public String getEdition() {
            return this.edition;
        }

        public long getExpireBuffer() {
            return this.expireBuffer;
        }

        public long getExpireTime() {
            return this.expireTime;
        }

        public Module[] getFeatures() {
            return this.features;
        }

        public String getName() {
            return this.name;
        }

        public long getStartTime() {
            return this.startTime;
        }

        public Module(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            this.name = jSONObject.optString("Name");
            this.startTime = jSONObject.optLong("StartTime");
            this.expireTime = jSONObject.optLong("ExpireTime");
            this.expireBuffer = jSONObject.optLong("ExpireBuffer");
            this.edition = jSONObject.optString("Edition");
            JSONArray optJSONArray = jSONObject.optJSONArray("Features");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return;
            }
            this.features = new Module[optJSONArray.length()];
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                this.features[i10] = new Module((JSONObject) optJSONArray.opt(i10));
            }
        }
    }

    public License() {
    }

    public String getBundleId() {
        return this.bundleId;
    }

    public String getChannel() {
        return this.channel;
    }

    public long getFileVersion() {
        return IOUtils.parseLong(this.fileVersion);
    }

    public String getId() {
        return this.f36667id;
    }

    public Module[] getModules() {
        return this.modules;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getType() {
        return this.type;
    }

    public int getVersion() {
        return this.version;
    }

    public License(String str) {
        JSONObject jSONObject;
        if (str == null) {
            return;
        }
        byte[] decode = Base64.decode(str, 0);
        if (decode == null) {
            return;
        }
        try {
            jSONObject = new JSONObject(new String(decode));
        } catch (JSONException e10) {
            e10.printStackTrace();
            jSONObject = null;
        }
        if (jSONObject == null) {
            return;
        }
        this.f36667id = jSONObject.optString("Id");
        this.version = jSONObject.optInt("Version");
        this.channel = jSONObject.optString("Channel");
        this.type = jSONObject.optInt("Type");
        this.packageName = jSONObject.optString("PackageName");
        this.fileVersion = jSONObject.optString("FileVersion");
        JSONArray optJSONArray = jSONObject.optJSONArray("Modules");
        if (optJSONArray == null || optJSONArray.length() <= 0) {
            return;
        }
        this.modules = new Module[optJSONArray.length()];
        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
            this.modules[i10] = new Module((JSONObject) optJSONArray.opt(i10));
        }
    }
}
