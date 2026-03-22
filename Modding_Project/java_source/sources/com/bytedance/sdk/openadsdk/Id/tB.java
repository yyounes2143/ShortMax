package com.bytedance.sdk.openadsdk.Id;

import android.text.TextUtils;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import com.adjust.sdk.Constants;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private ZYk ZYk;
    private oJ ex;
    private ex tB;
    private final String oJ = "StrategyCenter";
    private int Pfn = 0;

    /* renamed from: ba  reason: collision with root package name */
    private Runnable f12828ba = new Runnable() { // from class: com.bytedance.sdk.openadsdk.Id.tB.2
        @Override // java.lang.Runnable
        public void run() {
            tB.this.ZYk();
        }
    };

    public tB(ex exVar) {
        this.ZYk = null;
        Pfn pfn = new Pfn(exVar);
        this.tB = pfn;
        String tB = pfn.tB();
        if (!TextUtils.isEmpty(tB) && !tB.startsWith("pag")) {
            tB = "pag_".concat(tB);
        }
        this.ZYk = new ZYk(this.tB.ZYk(), tB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk() {
        ex exVar = this.tB;
        if (exVar == null || exVar.Pfn() == null || this.tB.ba() == null) {
            return;
        }
        this.tB.oJ().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Id.tB.1
            @Override // java.lang.Runnable
            public void run() {
                String message;
                OutputStream outputStream;
                tB.this.Pfn++;
                try {
                    if (tB.this.ex != null) {
                        tB.this.ex.oJ();
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(tB.this.tB.Pfn()).openConnection();
                    if (tB.this.tB.cFZ() != null && tB.this.tB.cFZ().size() > 0) {
                        for (Map.Entry<String, String> entry : tB.this.tB.cFZ().entrySet()) {
                            httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                        }
                    }
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                    httpURLConnection.setRequestProperty(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json");
                    try {
                        outputStream = httpURLConnection.getOutputStream();
                        try {
                            outputStream.write(tB.this.tB.ba().toString().getBytes());
                            outputStream.close();
                            int responseCode = httpURLConnection.getResponseCode();
                            Log.i("StrategyCenter", "executing strategy fetch");
                            if (responseCode == 200) {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                                StringBuffer stringBuffer = new StringBuffer();
                                while (true) {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    stringBuffer.append(readLine);
                                }
                                bufferedReader.close();
                                JSONObject oJ = tB.this.tB.oJ(new JSONObject(stringBuffer.toString()));
                                tB.this.ZYk.oJ();
                                tB.this.ZYk.oJ(oJ);
                                if (tB.this.ex != null) {
                                    tB.this.ex.ZYk();
                                }
                            } else if (tB.this.ex != null) {
                                tB.this.ex.oJ(responseCode, httpURLConnection.getResponseMessage());
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        outputStream = null;
                    }
                } catch (Throwable th4) {
                    if (th4.getMessage() == null) {
                        message = "error ";
                    } else {
                        message = th4.getMessage();
                    }
                    Log.e("StrategyCenter", message);
                    if (tB.this.ex != null) {
                        tB.this.ex.oJ(-1, th4.getMessage());
                    }
                }
                tB.this.ZYk.oJ("local_last_update_time", System.currentTimeMillis());
                tB.this.oJ();
            }
        });
    }

    public void oJ(oJ oJVar) {
        this.ex = oJVar;
    }

    public void oJ() {
        if (this.tB != null) {
            ZYk zYk = this.ZYk;
            int i10 = Constants.ONE_HOUR;
            int oJ = zYk.oJ("req_interval", Constants.ONE_HOUR);
            long j10 = 0;
            long ZYk = this.ZYk.ZYk("local_last_update_time", 0L);
            if (oJ >= 600000 && oJ <= 86400000) {
                i10 = oJ;
            }
            long currentTimeMillis = System.currentTimeMillis() - ZYk;
            Log.i("StrategyCenter", "before  realInterval=".concat(String.valueOf(currentTimeMillis)));
            if (currentTimeMillis >= 0) {
                long j11 = i10;
                if (currentTimeMillis <= j11) {
                    j10 = j11 - currentTimeMillis;
                }
            }
            Log.i("StrategyCenter", "after  realInterval=".concat(String.valueOf(j10)));
            this.tB.ex().removeCallbacks(this.f12828ba);
            if (this.Pfn > 24) {
                return;
            }
            this.tB.ex().postDelayed(this.f12828ba, j10);
        }
    }

    public int oJ(String str, int i10) {
        ZYk zYk = this.ZYk;
        return zYk == null ? i10 : zYk.oJ(str, i10);
    }

    public String oJ(String str, String str2) {
        ZYk zYk = this.ZYk;
        return zYk == null ? str2 : zYk.oJ(str, str2);
    }

    public boolean oJ(String str, boolean z10) {
        ZYk zYk = this.ZYk;
        return zYk == null ? z10 : zYk.oJ(str, z10);
    }
}
