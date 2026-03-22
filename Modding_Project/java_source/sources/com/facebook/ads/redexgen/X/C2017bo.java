package com.facebook.ads.redexgen.X;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.bo  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2017bo extends WebChromeClient {
    public static byte[] A01;
    public static String[] A02 = {"hD342XNQVEXChvJ41FuJYkzzL30E7V8C", "VFqqxEswv4BXF4BUDT4NnG4IAUyY785", "G3ZSvK9EmqC1e5u7Ivg7hdOkIQzdfa68", "vFWJ81dDNXk", "PGv8G8TosU31EXJAVb0WhvumqcSTUHDE", "JPUBUdUfGKDjW9Qe8mrAO5frWlzvQ1oz", "qcwfoFOZSGXVTY97XWLRaEh5jd9GG5ia", "FIykCHI4yyfel4YrSgGCK0Zn6vKmeZ"};
    public final /* synthetic */ C2022bt A00;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 54);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{64, 69, 66, 73, 98, 89, 65, 78, 73, 94, 39, 47, 57, 57, 43, 45, 47, 118, 106, 112, 119, 102, 96, 76, 97};
    }

    static {
        A01();
    }

    public C2017bo(C2022bt c2022bt) {
        this.A00 = c2022bt;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        C1752Ua c1752Ua;
        C2009bg c2009bg;
        C2111dL c2111dL;
        if (consoleMessage.messageLevel() == ConsoleMessage.MessageLevel.ERROR) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(A00(10, 7, 124), consoleMessage.message());
                jSONObject.put(A00(0, 10, 26), consoleMessage.lineNumber());
                jSONObject.put(A00(17, 8, 51), consoleMessage.sourceId());
            } catch (JSONException unused) {
            }
            String jSONObject2 = jSONObject.toString();
            c1752Ua = this.A00.A0D;
            c1752Ua.A04(UZ.A0N, null);
            c2009bg = this.A00.A0E;
            c2009bg.A04(AbstractC1722Sv.A14, jSONObject2);
            c2111dL = this.A00.A0B;
            c2111dL.A0F().A61(jSONObject2);
        }
        boolean onConsoleMessage = super.onConsoleMessage(consoleMessage);
        if (A02[5].charAt(17) != '8') {
            A02[3] = "bhT1kVUsfNz";
            return onConsoleMessage;
        }
        throw new RuntimeException();
    }
}
