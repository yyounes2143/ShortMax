package com.bytedance.bdtracker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class a2 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f11858e;

    /* renamed from: f  reason: collision with root package name */
    public final d f11859f;

    /* renamed from: g  reason: collision with root package name */
    public final p1 f11860g;

    public a2(d dVar, Context context, p1 p1Var) {
        super(false, false);
        this.f11859f = dVar;
        this.f11858e = context;
        this.f11860g = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Package";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        Object b10;
        ApplicationInfo applicationInfo;
        String packageName = this.f11858e.getPackageName();
        if (TextUtils.isEmpty(this.f11860g.f12304c.getZiJieCloudPkg())) {
            jSONObject.put("package", packageName);
        } else {
            this.f11859f.D.debug("has zijie pkg", new Object[0]);
            jSONObject.put("package", this.f11860g.f12304c.getZiJieCloudPkg());
            jSONObject.put("real_package_name", packageName);
        }
        try {
            int a10 = u4.a(this.f11858e);
            if (!TextUtils.isEmpty(this.f11860g.f12304c.getVersion())) {
                b10 = this.f11860g.f12304c.getVersion();
            } else {
                b10 = u4.b(this.f11858e);
            }
            jSONObject.put("app_version", b10);
            jSONObject.put("app_version_minor", !TextUtils.isEmpty(this.f11860g.f12304c.getVersionMinor()) ? this.f11860g.f12304c.getVersionMinor() : "");
            if (this.f11860g.f12304c.getVersionCode() != 0) {
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, this.f11860g.f12304c.getVersionCode());
            } else {
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, a10);
            }
            if (this.f11860g.f12304c.getUpdateVersionCode() != 0) {
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, this.f11860g.f12304c.getUpdateVersionCode());
            } else {
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, a10);
            }
            if (this.f11860g.f12304c.getManifestVersionCode() != 0) {
                jSONObject.put("manifest_version_code", this.f11860g.f12304c.getManifestVersionCode());
            } else {
                jSONObject.put("manifest_version_code", a10);
            }
            if (!TextUtils.isEmpty(this.f11860g.f12304c.getAppName())) {
                jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, this.f11860g.f12304c.getAppName());
            }
            if (!TextUtils.isEmpty(this.f11860g.f12304c.getTweakedChannel())) {
                jSONObject.put("tweaked_channel", this.f11860g.f12304c.getTweakedChannel());
            }
            PackageInfo a11 = u4.a(this.f11858e, packageName, 0);
            if (a11 == null || (applicationInfo = a11.applicationInfo) == null) {
                return true;
            }
            int i10 = applicationInfo.labelRes;
            if (i10 > 0) {
                try {
                    jSONObject.put("display_name", this.f11858e.getString(i10));
                    return true;
                } catch (Throwable unused) {
                    return true;
                }
            }
            return true;
        } catch (Throwable th2) {
            this.f11859f.D.error("Load package info failed.", th2, new Object[0]);
            return false;
        }
    }
}
