package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import com.google.firebase.f;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class PersistedInstallation {

    /* renamed from: a  reason: collision with root package name */
    private File f21043a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final f f21044b;

    /* loaded from: classes5.dex */
    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(@NonNull f fVar) {
        this.f21044b = fVar;
    }

    private File a() {
        if (this.f21043a == null) {
            synchronized (this) {
                try {
                    if (this.f21043a == null) {
                        File filesDir = this.f21044b.l().getFilesDir();
                        this.f21043a = new File(filesDir, "PersistedInstallation." + this.f21044b.q() + ".json");
                    }
                } finally {
                }
            }
        }
        return this.f21043a;
    }

    private JSONObject c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(a());
            while (true) {
                int read = fileInputStream.read(bArr, 0, 16384);
                if (read < 0) {
                    JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                    fileInputStream.close();
                    return jSONObject;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    @NonNull
    public b b(@NonNull b bVar) {
        File createTempFile;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", bVar.d());
            jSONObject.put("Status", bVar.g().ordinal());
            jSONObject.put("AuthToken", bVar.b());
            jSONObject.put("RefreshToken", bVar.f());
            jSONObject.put("TokenCreationEpochInSecs", bVar.h());
            jSONObject.put("ExpiresInSecs", bVar.c());
            jSONObject.put("FisError", bVar.e());
            createTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f21044b.l().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
        } catch (IOException | JSONException unused) {
        }
        if (!createTempFile.renameTo(a())) {
            throw new IOException("unable to rename the tmpfile to PersistedInstallation");
        }
        return bVar;
    }

    @NonNull
    public b d() {
        JSONObject c10 = c();
        String optString = c10.optString("Fid", null);
        int optInt = c10.optInt("Status", RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String optString2 = c10.optString("AuthToken", null);
        String optString3 = c10.optString("RefreshToken", null);
        long optLong = c10.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = c10.optLong("ExpiresInSecs", 0L);
        return b.a().d(optString).g(RegistrationStatus.values()[optInt]).b(optString2).f(optString3).h(optLong).c(optLong2).e(c10.optString("FisError", null)).a();
    }
}
