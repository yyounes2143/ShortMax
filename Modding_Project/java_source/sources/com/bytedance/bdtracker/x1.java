package com.bytedance.bdtracker;

import android.content.Context;
import com.adjust.sdk.Constants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttm.player.MediaFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class x1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12519e;

    public x1(Context context) {
        super(true, true);
        this.f12519e = context;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Locale";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        r1.a(jSONObject, MediaFormat.KEY_LANGUAGE, this.f12519e.getResources().getConfiguration().locale.getLanguage());
        int rawOffset = TimeZone.getDefault().getRawOffset() / Constants.ONE_HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            rawOffset = 12;
        }
        jSONObject.put("timezone", rawOffset);
        r1.a(jSONObject, TtmlNode.TAG_REGION, Locale.getDefault().getCountry());
        TimeZone timeZone = Calendar.getInstance().getTimeZone();
        r1.a(jSONObject, "tz_name", timeZone.getID());
        jSONObject.put("tz_offset", timeZone.getOffset(System.currentTimeMillis()) / 1000);
        return true;
    }
}
