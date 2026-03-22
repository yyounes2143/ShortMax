package com.bytedance.sdk.openadsdk.core.dLZ.oJ;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.io.File;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class ZYk {
    public int Pfn;
    protected final Context ZYk;

    /* renamed from: ba  reason: collision with root package name */
    public oJ f13137ba;
    protected double ex;
    public int oJ;
    protected int tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public int ZYk;
        public int oJ;
        public boolean tB;
    }

    public ZYk(Context context, int i10, int i11) {
        this.tB = 0;
        this.ex = 0.0d;
        if (i11 > 0 && i10 > 0) {
            this.ex = i10 / i11;
        }
        float so2 = cdg.so(context);
        if (so2 != 0.0f && i10 > 0) {
            this.tB = (int) (i10 / so2);
        }
        this.ZYk = context.getApplicationContext();
    }

    public abstract com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ(String str, File file, List<tB> list);

    protected void oJ(Exception exc, int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", exc.getMessage());
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
            com.bytedance.sdk.openadsdk.awB.tB.oJ().oJ("load_vast", jSONObject);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean oJ(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String oJ(String str, List<tB> list) {
        int i10 = this.oJ;
        String str2 = null;
        if (i10 >= 5) {
            return null;
        }
        this.oJ = i10 + 1;
        if (str == null) {
            return null;
        }
        try {
            com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
            tB.ZYk(str);
            com.bytedance.sdk.component.cFZ.ZYk oJ2 = tB.oJ();
            str2 = oJ2.ex();
            oJ2.oJ();
            return str2;
        } catch (Exception e10) {
            oJ(e10, 0);
            if (list.isEmpty()) {
                return str2;
            }
            tB.ZYk((cY) null, list, com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.WRAPPER_TIMEOUT, -1L, (String) null, (String) null);
            return str2;
        }
    }
}
