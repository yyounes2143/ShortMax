package j8;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import h8.g;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
/* compiled from: CachedSettingsIo.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final File f60236a;

    public a(g gVar) {
        this.f60236a = gVar.g("com.crashlytics.settings.json");
    }

    private File a() {
        return this.f60236a;
    }

    public JSONObject b() {
        Throwable th2;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        z7.g.f().b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File a10 = a();
                if (a10.exists()) {
                    fileInputStream = new FileInputStream(a10);
                    try {
                        jSONObject = new JSONObject(CommonUtils.B(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e10) {
                        e = e10;
                        z7.g.f().e("Failed to fetch cached settings", e);
                        CommonUtils.f(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    z7.g.f().i("Settings file does not exist.");
                    jSONObject = null;
                }
                CommonUtils.f(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.f(null, "Error while closing settings cache file.");
                throw th2;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th4) {
            th2 = th4;
            CommonUtils.f(null, "Error while closing settings cache file.");
            throw th2;
        }
    }

    public void c(long j10, JSONObject jSONObject) {
        FileWriter fileWriter;
        z7.g.f().i("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            try {
                try {
                    jSONObject.put("expires_at", j10);
                    fileWriter = new FileWriter(a());
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e10) {
                e = e10;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                CommonUtils.f(fileWriter, "Failed to close settings writer.");
            } catch (Exception e11) {
                e = e11;
                fileWriter2 = fileWriter;
                z7.g.f().e("Failed to cache settings", e);
                CommonUtils.f(fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th3) {
                th = th3;
                fileWriter2 = fileWriter;
                CommonUtils.f(fileWriter2, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
