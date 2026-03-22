package com.apm.insight.k;

import androidx.browser.trusted.sharing.ShareTarget;
import com.apm.insight.CustomRequestHeader;
import com.apm.insight.MonitorCrash;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: MultipartUtility.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f7037a;

    /* renamed from: b  reason: collision with root package name */
    private HttpURLConnection f7038b;

    /* renamed from: c  reason: collision with root package name */
    private String f7039c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7040d;

    /* renamed from: e  reason: collision with root package name */
    private f f7041e;

    /* renamed from: f  reason: collision with root package name */
    private k f7042f;

    public i(String str, String str2, boolean z10) throws IOException {
        this.f7039c = str2;
        this.f7040d = z10;
        String str3 = "AAA" + System.currentTimeMillis() + "AAA";
        this.f7037a = str3;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        this.f7038b = httpURLConnection;
        httpURLConnection.setUseCaches(false);
        this.f7038b.setDoOutput(true);
        this.f7038b.setDoInput(true);
        this.f7038b.setRequestMethod(ShareTarget.METHOD_POST);
        CustomRequestHeader customRequestHeader = MonitorCrash.mCustomRequestHeader;
        if (customRequestHeader != null) {
            customRequestHeader.addRequestHeader(this.f7038b);
        }
        this.f7038b.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "multipart/form-data; boundary=" + str3);
        if (z10) {
            this.f7038b.setRequestProperty("Content-Encoding", "gzip");
            this.f7042f = new k(this.f7038b.getOutputStream());
            return;
        }
        this.f7041e = new f(this.f7038b.getOutputStream());
    }

    public final void a(String str, String str2) {
        b(str, str2);
    }

    public final void b(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f7037a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"\r\nContent-Type: text/plain; charset=");
        sb2.append(this.f7039c);
        sb2.append("\r\n\r\n");
        try {
            if (this.f7040d) {
                this.f7042f.write(sb2.toString().getBytes());
            } else {
                this.f7041e.write(sb2.toString().getBytes());
            }
        } catch (IOException unused) {
        }
        byte[] bytes = str2.getBytes();
        try {
            if (this.f7040d) {
                this.f7042f.write(bytes);
                this.f7042f.write("\r\n".getBytes());
                return;
            }
            this.f7041e.write(bytes);
            this.f7041e.write("\r\n".getBytes());
        } catch (IOException unused2) {
        }
    }

    public final void a(String str, File... fileArr) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f7037a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"; filename=\"");
        sb2.append(str);
        sb2.append("\"\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f7040d) {
            this.f7042f.write(sb2.toString().getBytes());
        } else {
            this.f7041e.write(sb2.toString().getBytes());
        }
        if (this.f7040d) {
            com.apm.insight.l.f.a(this.f7042f, fileArr);
        } else {
            com.apm.insight.l.f.a(this.f7041e, fileArr);
        }
        if (this.f7040d) {
            this.f7042f.write("\r\n".getBytes());
            return;
        }
        this.f7041e.write("\r\n".getBytes());
        this.f7041e.flush();
    }

    public final void a(String str, File file, Map<String, String> map) throws IOException {
        String name = file.getName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--");
        sb2.append(this.f7037a);
        sb2.append("\r\nContent-Disposition: form-data; name=\"");
        sb2.append(str);
        sb2.append("\"; filename=\"");
        sb2.append(name);
        sb2.append("\"");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb2.append("; ");
            sb2.append(entry.getKey());
            sb2.append("=\"");
            sb2.append(entry.getValue());
            sb2.append("\"");
        }
        sb2.append("\r\nContent-Transfer-Encoding: binary\r\n\r\n");
        if (this.f7040d) {
            this.f7042f.write(sb2.toString().getBytes());
        } else {
            this.f7041e.write(sb2.toString().getBytes());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[8192];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read == -1) {
                break;
            } else if (this.f7040d) {
                this.f7042f.write(bArr, 0, read);
            } else {
                this.f7041e.write(bArr, 0, read);
            }
        }
        fileInputStream.close();
        if (this.f7040d) {
            this.f7042f.write("\r\n".getBytes());
            return;
        }
        this.f7041e.write("\r\n".getBytes());
        this.f7041e.flush();
    }

    public final String a() throws IOException {
        ArrayList<String> arrayList = new ArrayList();
        byte[] bytes = ("\r\n--" + this.f7037a + "--\r\n").getBytes();
        if (this.f7040d) {
            this.f7042f.write(bytes);
            this.f7042f.b();
            this.f7042f.a();
        } else {
            this.f7041e.write(bytes);
            this.f7041e.flush();
            this.f7041e.a();
        }
        int responseCode = this.f7038b.getResponseCode();
        if (responseCode == 200) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f7038b.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                arrayList.add(readLine);
            }
            bufferedReader.close();
            this.f7038b.disconnect();
            StringBuilder sb2 = new StringBuilder();
            for (String str : arrayList) {
                sb2.append(str);
            }
            return sb2.toString();
        }
        throw new IOException("Server returned non-OK status: ".concat(String.valueOf(responseCode)));
    }
}
