package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Bf {

    /* renamed from: a  reason: collision with root package name */
    public final int f23521a;

    /* renamed from: b  reason: collision with root package name */
    public final int f23522b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23523c;

    /* renamed from: d  reason: collision with root package name */
    public final int f23524d;

    public Bf(int i10, int i11, int i12, int i13) {
        this.f23521a = i10;
        this.f23522b = i11;
        this.f23523c = i12;
        this.f23524d = i13;
    }

    public final JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TtmlNode.LEFT, B2.a(this.f23521a));
            jSONObject.put("top", B2.a(this.f23522b));
            jSONObject.put(TtmlNode.RIGHT, B2.a(this.f23523c));
            jSONObject.put("bottom", B2.a(this.f23524d));
            return jSONObject;
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            return new JSONObject();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Bf)) {
            return false;
        }
        Bf bf2 = (Bf) obj;
        if (this.f23521a == bf2.f23521a && this.f23522b == bf2.f23522b && this.f23523c == bf2.f23523c && this.f23524d == bf2.f23524d) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = Integer.hashCode(this.f23522b);
        int hashCode2 = Integer.hashCode(this.f23523c);
        return Integer.hashCode(this.f23524d) + ((hashCode2 + ((hashCode + (Integer.hashCode(this.f23521a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Insets(left=" + this.f23521a + ", top=" + this.f23522b + ", right=" + this.f23523c + ", bottom=" + this.f23524d + ')';
    }
}
