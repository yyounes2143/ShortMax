package com.pgl.ssdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.sdk.AppLovinEventTypes;
import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes6.dex */
public class l0 {

    /* renamed from: a  reason: collision with root package name */
    private static volatile l0 f36782a;

    /* renamed from: b  reason: collision with root package name */
    private Context f36783b;

    /* renamed from: c  reason: collision with root package name */
    private List<Integer> f36784c = new ArrayList();

    private l0(Context context) {
        this.f36783b = null;
        this.f36783b = context;
    }

    public static l0 a(Context context) {
        if (f36782a == null) {
            synchronized (l0.class) {
                try {
                    if (f36782a == null) {
                        f36782a = new l0(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f36782a;
    }

    public int b() {
        Intent registerReceiver = this.f36783b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return 0;
        }
        return registerReceiver.getIntExtra("plugged", 0);
    }

    public int c() {
        Intent registerReceiver = this.f36783b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return 0;
        }
        return Math.round(((registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, 0) / registerReceiver.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, 0)) * 100.0f) * 10.0f) / 10;
    }

    public synchronized String d() {
        if (this.f36784c.size() <= 0) {
            return "-1";
        }
        List<Integer> list = this.f36784c;
        return String.valueOf(list.get(list.size() - 1).intValue() % 10000);
    }

    public synchronized String e() {
        return new JSONArray((Collection) this.f36784c).toString();
    }

    @SuppressLint({"DefaultLocale"})
    public int f() {
        int c10;
        int i10 = 0;
        try {
            synchronized (this) {
                i10 = b();
                c10 = c();
            }
            return (i10 * 10000) + c10;
        } catch (Exception unused) {
            return i10 * 10000;
        }
    }

    public void a() {
        int f10 = f();
        if (f10 == -1) {
            return;
        }
        this.f36784c.add(Integer.valueOf(f10));
        try {
            int size = this.f36784c.size();
            if (size > 20) {
                ArrayList arrayList = new ArrayList(this.f36784c.subList(size - 10, size));
                this.f36784c.clear();
                this.f36784c = arrayList;
            }
        } catch (Throwable unused) {
        }
    }
}
