package com.bytedance.sdk.component.ZYk.oJ.oJ.oJ;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.PiB;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.bytedance.sdk.component.ZYk.oJ.so;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class ZYk implements com.bytedance.sdk.component.ZYk.oJ.ZYk {
    private static List<Object> ex;
    com.bytedance.sdk.component.ZYk.oJ.ex ZYk;
    BTZ oJ;
    private AtomicBoolean tB = new AtomicBoolean(false);

    static {
        try {
            ex = new ArrayList();
            Class<?> cls = Class.forName("com.android.okhttp.Protocol");
            Enum valueOf = Enum.valueOf(cls, "HTTP_1_1");
            if (valueOf != null) {
                ex.add(valueOf);
            }
            Enum valueOf2 = Enum.valueOf(cls, "HTTP_2");
            if (valueOf2 != null) {
                ex.add(valueOf2);
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZYk(BTZ btz, com.bytedance.sdk.component.ZYk.oJ.ex exVar) {
        this.oJ = btz;
        this.ZYk = exVar;
    }

    private boolean Pfn() {
        if (this.oJ.ex() == null) {
            return false;
        }
        return this.oJ.ex().containsKey(CommonGatewayClient.HEADER_CONTENT_TYPE);
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk
    public WcQ ZYk() throws IOException {
        List<com.bytedance.sdk.component.ZYk.oJ.so> list;
        com.bytedance.sdk.component.tB.oJ.oJ oJVar;
        BTZ btz = this.oJ;
        if (btz != null && (oJVar = btz.ZYk) != null) {
            if (oJVar.WcQ() == 0) {
                this.oJ.ZYk.awB();
            }
            this.oJ.ZYk.oJ();
        }
        this.ZYk.tB().remove(this);
        this.ZYk.ex().add(this);
        com.bytedance.sdk.component.ZYk.oJ.ex exVar = this.ZYk;
        if ((exVar instanceof ba) && (exVar.tB().size() + this.ZYk.ex().size() > this.ZYk.oJ() || this.tB.get())) {
            this.ZYk.ex().remove(this);
            return new so(so.oJ, "Maximum number of requests exceeded", this.oJ);
        }
        try {
            dLZ dlz = this.oJ.oJ;
            if (dlz != null && (list = dlz.oJ) != null && list.size() > 0) {
                ArrayList arrayList = new ArrayList(this.oJ.oJ.oJ);
                arrayList.add(new com.bytedance.sdk.component.ZYk.oJ.so() { // from class: com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.ZYk.1
                    @Override // com.bytedance.sdk.component.ZYk.oJ.so
                    public WcQ oJ(so.oJ oJVar2) throws IOException {
                        return ZYk.this.oJ(oJVar2.oJ());
                    }
                });
                return ((com.bytedance.sdk.component.ZYk.oJ.so) arrayList.get(0)).oJ(new tB(arrayList, this.oJ));
            }
            return oJ(this.oJ);
        } catch (Throwable th2) {
            throw new IOException(th2.getMessage());
        }
    }

    /* renamed from: ex */
    public com.bytedance.sdk.component.ZYk.oJ.ZYk clone() {
        return new ZYk(this.oJ, this.ZYk);
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk
    public BTZ oJ() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk
    public void tB() {
        this.tB.set(true);
    }

    private boolean oJ(PiB piB) {
        BTZ btz;
        byte[] bArr;
        return piB != null && (btz = this.oJ) != null && ShareTarget.METHOD_POST.equalsIgnoreCase(btz.tB()) && piB.f12605ba == PiB.oJ.BYTE_ARRAY_TYPE && (bArr = piB.Pfn) != null && bArr.length > 0;
    }

    public WcQ oJ(BTZ btz) throws IOException {
        return oJ(btz, com.bytedance.sdk.component.cFZ.oJ.Pfn());
    }

    public WcQ oJ(BTZ btz, boolean z10) throws IOException {
        HttpURLConnection httpURLConnection;
        IOException e10;
        String oJ;
        int i10 = so.oJ;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(btz.ZYk().oJ().toString()).openConnection();
                if (z10) {
                    try {
                        if (!"setting".equals(btz.ba()) && !"gecko".equals(btz.ba()) && !"load_ug_t".equals(btz.ba())) {
                            oJ(httpURLConnection);
                        }
                    } catch (IOException e11) {
                        e10 = e11;
                        if (i10 == -1 && z10) {
                            WcQ oJ2 = oJ(btz, false);
                            this.ZYk.ex().remove(this);
                            return oJ2;
                        }
                        oJ = oJ(httpURLConnection, e10);
                        this.ZYk.ex().remove(this);
                        return new so(i10, oJ, btz);
                    } catch (Exception e12) {
                        e = e12;
                        httpURLConnection2 = httpURLConnection;
                        oJ = oJ(httpURLConnection2, e);
                        this.ZYk.ex().remove(this);
                        return new so(i10, oJ, btz);
                    }
                }
                if (btz.ex() != null && btz.ex().size() > 0) {
                    for (Map.Entry<String, List<String>> entry : btz.ex().entrySet()) {
                        String key = entry.getKey();
                        for (String str : entry.getValue()) {
                            if ("_disable_retry".equals(key) && "1".equals(str)) {
                                ZYk(httpURLConnection);
                            } else {
                                httpURLConnection.addRequestProperty(key, str);
                            }
                        }
                    }
                }
                dLZ dlz = btz.oJ;
                if (dlz != null) {
                    TimeUnit timeUnit = dlz.tB;
                    if (timeUnit != null) {
                        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(dlz.ZYk));
                    }
                    dLZ dlz2 = btz.oJ;
                    if (dlz2.tB != null) {
                        httpURLConnection.setReadTimeout((int) dlz2.Pfn.toMillis(dlz2.ex));
                    }
                }
                if (btz.so() == null) {
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                } else {
                    if (!Pfn() && btz.so().tB != null) {
                        httpURLConnection.addRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, btz.so().tB.oJ());
                    }
                    httpURLConnection.setRequestMethod(btz.tB());
                    if (ShareTarget.METHOD_POST.equalsIgnoreCase(btz.tB())) {
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        if (oJ(btz.so())) {
                            outputStream.write(btz.so().Pfn);
                        } else if (ZYk(btz.so())) {
                            outputStream.write(btz.so().ex.getBytes());
                        }
                        outputStream.flush();
                        outputStream.close();
                    }
                }
                com.bytedance.sdk.component.tB.oJ.oJ oJVar = btz.ZYk;
                if (oJVar != null) {
                    oJVar.ZYk();
                }
                httpURLConnection.connect();
                com.bytedance.sdk.component.tB.oJ.oJ oJVar2 = btz.ZYk;
                if (oJVar2 != null) {
                    oJVar2.tB();
                }
                i10 = httpURLConnection.getResponseCode();
                com.bytedance.sdk.component.tB.oJ.oJ oJVar3 = btz.ZYk;
                if (oJVar3 != null) {
                    oJVar3.Pfn();
                }
            } catch (Throwable th2) {
                this.ZYk.ex().remove(this);
                throw th2;
            }
        } catch (IOException e13) {
            httpURLConnection = null;
            e10 = e13;
        } catch (Exception e14) {
            e = e14;
        }
        if (this.tB.get()) {
            httpURLConnection.disconnect();
            this.ZYk.ex().remove(this);
            oJ = "internal error";
            return new so(i10, oJ, btz);
        }
        so soVar = new so(httpURLConnection, btz);
        this.ZYk.ex().remove(this);
        return soVar;
    }

    private boolean ZYk(PiB piB) {
        BTZ btz;
        return (piB == null || (btz = this.oJ) == null || !ShareTarget.METHOD_POST.equalsIgnoreCase(btz.tB()) || piB.f12605ba != PiB.oJ.STRING_TYPE || TextUtils.isEmpty(piB.ex)) ? false : true;
    }

    private static void ZYk(HttpURLConnection httpURLConnection) {
        try {
            Field declaredField = httpURLConnection.getClass().getDeclaredField("delegate");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(httpURLConnection);
            Field declaredField2 = obj.getClass().getDeclaredField("client");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            obj2.getClass().getDeclaredMethod("setRetryOnConnectionFailure", Boolean.TYPE).invoke(obj2, Boolean.FALSE);
        } catch (Exception unused) {
        }
    }

    private static String oJ(HttpURLConnection httpURLConnection, Exception exc) {
        try {
            return httpURLConnection.getErrorStream().toString();
        } catch (Throwable unused) {
            return exc.getMessage();
        }
    }

    private static void oJ(HttpURLConnection httpURLConnection) {
        try {
            Field declaredField = httpURLConnection.getClass().getDeclaredField("delegate");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(httpURLConnection);
            Field declaredField2 = obj.getClass().getDeclaredField("client");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            if (ex.size() == 2) {
                obj2.getClass().getDeclaredMethod("setProtocols", List.class).invoke(obj2, ex);
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // com.bytedance.sdk.component.ZYk.oJ.ZYk
    public void oJ(final com.bytedance.sdk.component.ZYk.oJ.tB tBVar) {
        com.bytedance.sdk.component.tB.oJ.oJ oJVar;
        BTZ btz = this.oJ;
        if (btz != null && (oJVar = btz.ZYk) != null) {
            oJVar.awB();
        }
        this.ZYk.ZYk().submit(new com.bytedance.sdk.component.so.tB.ZYk(this.oJ.cFZ(), this.oJ.ba()) { // from class: com.bytedance.sdk.component.ZYk.oJ.oJ.oJ.ZYk.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WcQ ZYk = ZYk.this.ZYk();
                    if (ZYk == null) {
                        tBVar.oJ(ZYk.this, new IOException("response is null"));
                    } else {
                        tBVar.oJ(ZYk.this, ZYk);
                    }
                } catch (IOException e10) {
                    tBVar.oJ(ZYk.this, e10);
                }
            }
        });
    }
}
