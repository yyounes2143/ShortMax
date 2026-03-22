package d8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.vungle.VungleConstants;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetaDataStore.java */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f50221b = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final h8.g f50222a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MetaDataStore.java */
    /* loaded from: classes5.dex */
    public class a extends JSONObject {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50223a;

        a(String str) throws JSONException {
            this.f50223a = str;
            put(VungleConstants.KEY_USER_ID, str);
        }
    }

    public g(h8.g gVar) {
        this.f50222a = gVar;
    }

    private static Map<String, String> e(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, p(jSONObject, next));
        }
        return hashMap;
    }

    private static List<j> f(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String string = jSONArray.getString(i10);
            try {
                arrayList.add(j.a(string));
            } catch (Exception e10) {
                z7.g f10 = z7.g.f();
                f10.l("Failed de-serializing rollouts state. " + string, e10);
            }
        }
        return arrayList;
    }

    @Nullable
    private String g(String str) throws JSONException {
        return p(new JSONObject(str), VungleConstants.KEY_USER_ID);
    }

    private static String h(Map<String, String> map) {
        return new JSONObject(map).toString();
    }

    private static String l(List<j> list) {
        HashMap hashMap = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                jSONArray.put(new JSONObject(j.f50249a.b(list.get(i10))));
            } catch (JSONException e10) {
                z7.g.f().l("Exception parsing rollout assignment!", e10);
            }
        }
        hashMap.put("rolloutsState", jSONArray);
        return new JSONObject(hashMap).toString();
    }

    private static void m(File file) {
        if (file.exists() && file.delete()) {
            z7.g f10 = z7.g.f();
            f10.g("Deleted corrupt file: " + file.getAbsolutePath());
        }
    }

    private static void n(File file, String str) {
        if (file.exists() && file.delete()) {
            z7.g.f().g(String.format("Deleted corrupt file: %s\nReason: %s", file.getAbsolutePath(), str));
        }
    }

    private static String o(String str) throws JSONException {
        return new a(str).toString();
    }

    private static String p(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    @NonNull
    public File a(String str) {
        return this.f50222a.q(str, "internal-keys");
    }

    @NonNull
    public File b(String str) {
        return this.f50222a.q(str, "keys");
    }

    @NonNull
    public File c(String str) {
        return this.f50222a.q(str, "rollouts-state");
    }

    @NonNull
    public File d(String str) {
        return this.f50222a.q(str, "user-data");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable] */
    public Map<String, String> i(String str, boolean z10) {
        File b10;
        Throwable th2;
        FileInputStream fileInputStream;
        Exception e10;
        if (z10) {
            b10 = a(str);
        } else {
            b10 = b(str);
        }
        if (b10.exists() && b10.length() != 0) {
            try {
                try {
                    fileInputStream = new FileInputStream(b10);
                    try {
                        Map<String, String> e11 = e(CommonUtils.B(fileInputStream));
                        CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                        return e11;
                    } catch (Exception e12) {
                        e10 = e12;
                        z7.g.f().l("Error deserializing user metadata.", e10);
                        m(b10);
                        CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                        return Collections.emptyMap();
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    CommonUtils.f(r1, "Failed to close user metadata file.");
                    throw th2;
                }
            } catch (Exception e13) {
                fileInputStream = null;
                e10 = e13;
            } catch (Throwable th4) {
                ?? r12 = 0;
                th2 = th4;
                CommonUtils.f(r12, "Failed to close user metadata file.");
                throw th2;
            }
        } else {
            n(b10, "The file has a length of zero for session: " + str);
            return Collections.emptyMap();
        }
    }

    public List<j> j(String str) {
        FileInputStream fileInputStream;
        File c10 = c(str);
        if (c10.exists() && c10.length() != 0) {
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(c10);
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                List<j> f10 = f(CommonUtils.B(fileInputStream));
                z7.g f11 = z7.g.f();
                f11.b("Loaded rollouts state:\n" + f10 + "\nfor session " + str);
                CommonUtils.f(fileInputStream, "Failed to close rollouts state file.");
                return f10;
            } catch (Exception e11) {
                e = e11;
                fileInputStream2 = fileInputStream;
                z7.g.f().l("Error deserializing rollouts state.", e);
                m(c10);
                CommonUtils.f(fileInputStream2, "Failed to close rollouts state file.");
                return Collections.emptyList();
            } catch (Throwable th3) {
                th = th3;
                fileInputStream2 = fileInputStream;
                CommonUtils.f(fileInputStream2, "Failed to close rollouts state file.");
                throw th;
            }
        }
        n(c10, "The file has a length of zero for session: " + str);
        return Collections.emptyList();
    }

    @Nullable
    public String k(String str) {
        FileInputStream fileInputStream;
        File d10 = d(str);
        FileInputStream fileInputStream2 = null;
        if (d10.exists() && d10.length() != 0) {
            try {
                fileInputStream = new FileInputStream(d10);
                try {
                    try {
                        String g10 = g(CommonUtils.B(fileInputStream));
                        z7.g.f().b("Loaded userId " + g10 + " for session " + str);
                        CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                        return g10;
                    } catch (Exception e10) {
                        e = e10;
                        z7.g.f().l("Error deserializing user metadata.", e);
                        m(d10);
                        CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream2 = fileInputStream;
                    CommonUtils.f(fileInputStream2, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                CommonUtils.f(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } else {
            z7.g.f().b("No userId set for session " + str);
            m(d10);
            return null;
        }
    }

    public void q(String str, Map<String, String> map) {
        r(str, map, false);
    }

    public void r(String str, Map<String, String> map, boolean z10) {
        File b10;
        String h10;
        BufferedWriter bufferedWriter;
        if (z10) {
            b10 = a(str);
        } else {
            b10 = b(str);
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                h10 = h(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(b10), f50221b));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            bufferedWriter.write(h10);
            bufferedWriter.flush();
            CommonUtils.f(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            z7.g.f().l("Error serializing key/value metadata.", e);
            m(b10);
            CommonUtils.f(bufferedWriter2, "Failed to close key/value metadata file.");
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            CommonUtils.f(bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public void s(String str, List<j> list) {
        Throwable th2;
        BufferedWriter bufferedWriter;
        Exception e10;
        File c10 = c(str);
        ?? isEmpty = list.isEmpty();
        if (isEmpty != 0) {
            n(c10, "Rollout state is empty for session: " + str);
            return;
        }
        try {
            try {
                String l10 = l(list);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c10), f50221b));
                try {
                    bufferedWriter.write(l10);
                    bufferedWriter.flush();
                    isEmpty = bufferedWriter;
                } catch (Exception e11) {
                    e10 = e11;
                    z7.g.f().l("Error serializing rollouts state.", e10);
                    m(c10);
                    isEmpty = bufferedWriter;
                    CommonUtils.f(isEmpty, "Failed to close rollouts state file.");
                }
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.f(isEmpty, "Failed to close rollouts state file.");
                throw th2;
            }
        } catch (Exception e12) {
            bufferedWriter = null;
            e10 = e12;
        } catch (Throwable th4) {
            isEmpty = 0;
            th2 = th4;
            CommonUtils.f(isEmpty, "Failed to close rollouts state file.");
            throw th2;
        }
        CommonUtils.f(isEmpty, "Failed to close rollouts state file.");
    }

    public void t(String str, String str2) {
        String o10;
        BufferedWriter bufferedWriter;
        File d10 = d(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                o10 = o(str2);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d10), f50221b));
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bufferedWriter.write(o10);
            bufferedWriter.flush();
            CommonUtils.f(bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            z7.g.f().l("Error serializing user metadata.", e);
            CommonUtils.f(bufferedWriter2, "Failed to close user metadata file.");
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            CommonUtils.f(bufferedWriter2, "Failed to close user metadata file.");
            throw th;
        }
    }
}
