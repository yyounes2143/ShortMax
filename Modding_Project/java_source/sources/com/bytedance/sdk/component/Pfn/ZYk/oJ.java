package com.bytedance.sdk.component.Pfn.ZYk;

import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import com.bytedance.sdk.component.Pfn.Pfn;
import com.bytedance.sdk.component.utils.kkU;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class oJ implements com.bytedance.sdk.component.Pfn.ex<tB> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7 */
    @Override // com.bytedance.sdk.component.Pfn.ex
    /* renamed from: ZYk */
    public tB<byte[]> oJ(Pfn pfn) {
        Closeable closeable;
        InputStream inputStream;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        String message;
        Closeable closeable2;
        HttpURLConnection httpURLConnection;
        InputStream inputStream2 = null;
        r1 = null;
        Map<String, String> map = null;
        int i10 = 0;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(pfn.oJ()).openConnection();
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                httpURLConnection.connect();
                inputStream = httpURLConnection.getInputStream();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                byte[] bArr2 = new byte[1024];
                byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    try {
                        int read = inputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    } catch (MalformedURLException e10) {
                        e = e10;
                        bArr = null;
                    } catch (IOException e11) {
                        e = e11;
                        bArr = null;
                    }
                }
                i10 = 200;
                bArr = byteArrayOutputStream.toByteArray();
                try {
                    if (pfn.ZYk()) {
                        map = oJ(httpURLConnection);
                    }
                    kkU.oJ(inputStream);
                    kkU.oJ(byteArrayOutputStream);
                    message = "success";
                } catch (MalformedURLException e12) {
                    e = e12;
                    Log.w("InternalHttpClient", "MalformedURLException:" + e.getMessage());
                    message = e.getMessage();
                    closeable2 = byteArrayOutputStream;
                    kkU.oJ(inputStream);
                    kkU.oJ(closeable2);
                    return new tB<>(i10, bArr, message, map);
                } catch (IOException e13) {
                    e = e13;
                    Log.w("InternalHttpClient", "IOException:" + e.getMessage());
                    message = e.getMessage();
                    closeable2 = byteArrayOutputStream;
                    kkU.oJ(inputStream);
                    kkU.oJ(closeable2);
                    return new tB<>(i10, bArr, message, map);
                }
            } catch (MalformedURLException e14) {
                e = e14;
                bArr = null;
                byteArrayOutputStream = bArr;
                Log.w("InternalHttpClient", "MalformedURLException:" + e.getMessage());
                message = e.getMessage();
                closeable2 = byteArrayOutputStream;
                kkU.oJ(inputStream);
                kkU.oJ(closeable2);
                return new tB<>(i10, bArr, message, map);
            } catch (IOException e15) {
                e = e15;
                bArr = null;
                byteArrayOutputStream = bArr;
                Log.w("InternalHttpClient", "IOException:" + e.getMessage());
                message = e.getMessage();
                closeable2 = byteArrayOutputStream;
                kkU.oJ(inputStream);
                kkU.oJ(closeable2);
                return new tB<>(i10, bArr, message, map);
            } catch (Throwable th3) {
                th = th3;
                closeable = null;
                inputStream2 = inputStream;
                kkU.oJ(inputStream2);
                kkU.oJ(closeable);
                throw th;
            }
        } catch (MalformedURLException e16) {
            e = e16;
            inputStream = null;
            bArr = null;
        } catch (IOException e17) {
            e = e17;
            inputStream = null;
            bArr = null;
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            kkU.oJ(inputStream2);
            kkU.oJ(closeable);
            throw th;
        }
        return new tB<>(i10, bArr, message, map);
    }

    private Map<String, String> oJ(HttpURLConnection httpURLConnection) {
        HashMap hashMap = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list != null && list.size() > 0) {
                hashMap.put(str, list.get(0));
            }
        }
        return hashMap;
    }
}
