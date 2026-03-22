package com.mbridge.msdk.click;

import android.net.Uri;
import android.text.TextUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.ss.ttvideoengine.model.VideoThumbInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* compiled from: SocketSpider.java */
/* loaded from: classes4.dex */
public class n {

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicInteger f26043d = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.setting.g f26044a;

    /* renamed from: b  reason: collision with root package name */
    private String f26045b;

    /* renamed from: c  reason: collision with root package name */
    private int f26046c = 9377;

    public n() {
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f26044a = d10;
        if (d10 == null) {
            this.f26044a = com.mbridge.msdk.setting.h.b().a();
        }
    }

    private JSONObject b(String str, CampaignEx campaignEx, boolean z10, boolean z11) {
        JSONObject jSONObject = new JSONObject();
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String host = parse.getHost();
                String path = parse.getPath();
                String encodedQuery = parse.getEncodedQuery();
                this.f26045b = host;
                jSONObject.put(VideoThumbInfo.KEY_URI, "https://" + host + path);
                jSONObject.put("data", encodedQuery);
            }
        } catch (Throwable th2) {
            p0.b("SocketSpider", th2.getMessage());
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (!z10 && !z11) {
                jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, l0.i());
            }
            if (campaignEx != null) {
                if (z10 && campaignEx.getcUA() == 1) {
                    jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, l0.i());
                }
                if (z11 && campaignEx.getImpUA() == 1) {
                    jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, l0.i());
                }
            } else {
                jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, l0.i());
            }
            jSONObject2.put("Accept-Encoding", "gzip");
            if (this.f26044a.I0() && !TextUtils.isEmpty(str)) {
                jSONObject2.put("referer", str);
            }
            jSONObject.put("header", jSONObject2);
        } catch (Throwable th3) {
            p0.b("SocketSpider", th3.getMessage());
        }
        return jSONObject;
    }

    public com.mbridge.msdk.click.entity.a a(String str, CampaignEx campaignEx, boolean z10, boolean z11) {
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        aVar.f26005g = str;
        if (TextUtils.isEmpty(str)) {
            aVar.f26006h = "request url can not null.";
            return aVar;
        }
        String replace = str.replace(" ", "%20");
        JSONObject b10 = b(replace, campaignEx, z10, z11);
        if (b10.length() == 0) {
            aVar.f26006h = "request content generation failed.";
            return aVar;
        } else if (TextUtils.isEmpty(b10.optString(VideoThumbInfo.KEY_URI))) {
            aVar.f26006h = "request url parse error.";
            return aVar;
        } else {
            if (campaignEx != null) {
                int trackingTcpPort = campaignEx.getTrackingTcpPort();
                if (trackingTcpPort == 0) {
                    trackingTcpPort = 9377;
                }
                this.f26046c = trackingTcpPort;
            }
            if (TextUtils.isEmpty(this.f26045b)) {
                aVar.f26006h = "request url parse error.";
                return aVar;
            }
            return a(replace, b10.toString());
        }
    }

    private com.mbridge.msdk.click.entity.a a(String str, String str2) {
        OutputStream outputStream;
        Socket socket;
        OutputStream outputStream2;
        int length;
        InputStream inputStream;
        int i10;
        boolean z10;
        boolean z11;
        byte[] bArr;
        String str3;
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        Socket socket2 = null;
        try {
            socket = new Socket(this.f26045b, this.f26046c);
            try {
                socket.setSoTimeout(15000);
                outputStream2 = socket.getOutputStream();
                ByteBuffer wrap = ByteBuffer.wrap(new byte[8]);
                ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                wrap.order(byteOrder);
                wrap.put((byte) 2);
                wrap.put((byte) 3);
                wrap.putShort((short) f26043d.getAndIncrement());
                if (TextUtils.isEmpty(str2)) {
                    wrap.putInt(0);
                    outputStream2.write(wrap.array());
                    length = 0;
                } else {
                    byte[] a10 = a(str2);
                    length = a10.length;
                    wrap.putInt(length);
                    outputStream2.write(wrap.array());
                    outputStream2.write(a10);
                }
                outputStream2.flush();
                p0.a("SocketSpider", "Socket Request : header : " + Arrays.toString(wrap.array()) + " length : " + length);
                inputStream = socket.getInputStream();
                byte[] bArr2 = new byte[8];
                inputStream.read(bArr2, 0, 8);
                ByteBuffer wrap2 = ByteBuffer.wrap(bArr2);
                wrap2.order(byteOrder);
                i10 = wrap2.getInt(4);
                byte b10 = bArr2[1];
                z10 = b10 == 3;
                z11 = b10 == 2;
                p0.b("SocketSpider", "Socket Response : header : " + Arrays.toString(bArr2) + " length : " + i10 + " isGzip : " + z10);
                bArr = new byte[i10];
                new DataInputStream(socket.getInputStream()).readFully(bArr);
                if (!z10 && i10 > 2 && ((bArr[0] << 8) | (bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) == 8075) {
                    z10 = true;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
                socket2 = socket;
                try {
                    p0.a("SocketSpider", "Socket exception: " + th.getMessage());
                    aVar.f26006h = th.getMessage();
                    if (socket2 != null) {
                        try {
                            socket2.close();
                            if (outputStream != null) {
                                outputStream.close();
                            }
                        } catch (Exception e10) {
                            p0.b("SocketSpider", e10.getMessage());
                        }
                    }
                    return aVar;
                } catch (Throwable th3) {
                    if (socket2 != null) {
                        try {
                            socket2.close();
                            if (outputStream != null) {
                                outputStream.close();
                            }
                        } catch (Exception e11) {
                            p0.b("SocketSpider", e11.getMessage());
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
        }
        if (z11 && i10 == 0) {
            aVar.f26004f = 200;
            aVar.f26005g = str;
            aVar.f26003e = 0;
            try {
                socket.close();
                outputStream2.close();
            } catch (Exception e12) {
                p0.b("SocketSpider", e12.getMessage());
            }
            return aVar;
        } else if (i10 < 1) {
            aVar.f26004f = 200;
            aVar.f26005g = str;
            aVar.f26003e = 0;
            try {
                socket.close();
                outputStream2.close();
            } catch (Exception e13) {
                p0.b("SocketSpider", e13.getMessage());
            }
            return aVar;
        } else {
            if (z10) {
                str3 = a(bArr);
            } else {
                str3 = new String(bArr);
            }
            if (!TextUtils.isEmpty(str3)) {
                aVar.f26004f = 200;
                aVar.f26005g = str;
                aVar.f26003e = 0;
                try {
                    JSONObject optJSONObject = new JSONObject(str3).optJSONObject("data");
                    if (optJSONObject != null) {
                        String optString = optJSONObject.optString("location");
                        if (!TextUtils.isEmpty(optString)) {
                            aVar.f26004f = 302;
                            aVar.f25999a = optString;
                        }
                    }
                } catch (Throwable th5) {
                    p0.b("SocketSpider", th5.getMessage());
                }
                try {
                    socket.close();
                    outputStream2.close();
                } catch (Exception e14) {
                    p0.b("SocketSpider", e14.getMessage());
                }
                return aVar;
            }
            inputStream.close();
            try {
                socket.close();
                outputStream2.close();
            } catch (Exception e15) {
                p0.b("SocketSpider", e15.getMessage());
            }
            return aVar;
        }
    }

    public byte[] a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = gZIPInputStream.read(bArr2, 0, 1024);
            if (read > 0) {
                byteArrayOutputStream.write(bArr2, 0, read);
            } else {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
        }
    }
}
