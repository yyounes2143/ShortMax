package com.bytedance.sdk.component.ZYk.oJ.oJ.oJ;

import com.bytedance.sdk.component.ZYk.oJ.awB;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
/* loaded from: classes3.dex */
public class jFA extends awB {
    InputStream ZYk;
    HttpURLConnection oJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jFA(HttpURLConnection httpURLConnection) throws IOException {
        this.oJ = httpURLConnection;
        this.ZYk = new cFZ(httpURLConnection.getInputStream(), httpURLConnection);
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.awB
    public com.bytedance.sdk.component.ZYk.oJ.jFA Pfn() {
        if (this.oJ.getContentType() != null) {
            return com.bytedance.sdk.component.ZYk.oJ.jFA.oJ(this.oJ.getContentType());
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.awB
    public String ZYk() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.ZYk));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    stringBuffer.append(readLine + "\n");
                } else {
                    String stringBuffer2 = stringBuffer.toString();
                    close();
                    return stringBuffer2;
                }
            }
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.awB, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.ZYk.close();
            this.oJ.disconnect();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.awB
    public byte[] ex() {
        try {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = this.ZYk.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.awB
    public long oJ() {
        try {
            return this.oJ.getContentLength();
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.awB
    public InputStream tB() {
        return this.ZYk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public jFA(HttpURLConnection httpURLConnection, InputStream inputStream) {
        this.oJ = httpURLConnection;
        this.ZYk = new cFZ(inputStream, httpURLConnection);
    }
}
