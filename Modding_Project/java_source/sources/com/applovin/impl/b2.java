package com.applovin.impl;

import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinExtras;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public class b2 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f7505a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7506b;

    public b2(Map map, com.applovin.impl.sdk.k kVar) {
        this.f7505a = map == null ? Collections.emptyMap() : map;
        this.f7506b = kVar;
    }

    public Drawable a() {
        Object obj = this.f7505a.get(AppLovinExtras.Keys.KEY_WATERMARK);
        if (!a(obj)) {
            this.f7506b.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f7506b.O();
                O.b("GoogleWatermarkGenerator", "Unable to render invalid watermark: " + obj);
            }
            return null;
        }
        try {
            byte[] decode = Base64.decode((String) obj, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(com.applovin.impl.sdk.k.o().getResources(), BitmapFactory.decodeByteArray(decode, 0, decode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            return bitmapDrawable;
        } catch (Throwable th2) {
            this.f7506b.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f7506b.O().a("GoogleWatermarkGenerator", "Failed to render watermark", th2);
            }
            return null;
        }
    }

    public String b() {
        return "google watermark";
    }

    public boolean c() {
        return a(this.f7505a.get(AppLovinExtras.Keys.KEY_WATERMARK));
    }

    private boolean a(Object obj) {
        return (obj instanceof String) && StringUtils.isValidString((String) obj);
    }
}
