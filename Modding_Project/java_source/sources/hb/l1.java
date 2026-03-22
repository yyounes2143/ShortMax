package hb;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.LinkedHashMap;
/* loaded from: classes5.dex */
public class l1 {

    /* renamed from: a  reason: collision with root package name */
    private String f52725a;

    /* renamed from: b  reason: collision with root package name */
    public i0 f52726b;

    public l1(String str) {
        this.f52725a = str;
        this.f52726b = new i0(str);
        z0.e().c(this.f52725a, this.f52726b);
    }

    private y0 e(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return null;
                    }
                    return this.f52726b.a();
                }
                return this.f52726b.g();
            }
            return this.f52726b.d();
        }
        return this.f52726b.f();
    }

    private boolean h(int i10) {
        String str;
        if (i10 == 2) {
            if ("_default_config_tag".equals(this.f52725a)) {
                return true;
            }
            str = "verifyURL(): type: preins. Only default config can report Pre-install data.";
        } else {
            y0 e10 = e(i10);
            if (e10 != null && !TextUtils.isEmpty(e10.x())) {
                return true;
            }
            str = "verifyURL(): URL check failed. type: " + i10;
        }
        f1.l("hmsSdk", str);
        return false;
    }

    public void a(int i10) {
        f1.j("hmsSdk", "onReport. TAG: " + this.f52725a + ", TYPE: " + i10);
        s.a().d(this.f52725a, i10);
    }

    public void b(int i10, String str, LinkedHashMap<String, String> linkedHashMap) {
        f1.j("hmsSdk", "onEvent. TAG: " + this.f52725a + ", TYPE: " + i10 + ", eventId : " + str);
        if (!n.b(str) && h(i10)) {
            if (!n.e(linkedHashMap)) {
                f1.l("hmsSdk", "onEvent() parameter mapValue will be cleared.TAG: " + this.f52725a + ", TYPE: " + i10);
                linkedHashMap = null;
            }
            s.a().e(this.f52725a, i10, str, linkedHashMap);
            return;
        }
        f1.l("hmsSdk", "onEvent() parameters check fail. Nothing will be recorded.TAG: " + this.f52725a + ", TYPE: " + i10);
    }

    public void c(Context context, String str, String str2) {
        f1.j("hmsSdk", "onEvent(context). TAG: " + this.f52725a + ", eventId : " + str);
        if (context == null) {
            f1.l("hmsSdk", "context is null in onevent ");
        } else if (!n.b(str) && h(0)) {
            if (!n.c(AppMeasurementSdk.ConditionalUserProperty.VALUE, str2, 65536)) {
                f1.l("hmsSdk", "onEvent() parameter VALUE is overlong, content will be cleared.TAG: " + this.f52725a);
                str2 = "";
            }
            s.a().f(this.f52725a, context, str, str2);
        } else {
            f1.l("hmsSdk", "onEvent() parameters check fail. Nothing will be recorded.TAG: " + this.f52725a);
        }
    }

    public void d(y0 y0Var) {
        f1.h("hmsSdk", "HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : " + this.f52725a);
        if (y0Var == null) {
            f1.l("hmsSdk", "HiAnalyticsInstanceImpl.setMaintConf(): config for maint is null!");
            this.f52726b.c(null);
            return;
        }
        this.f52726b.c(y0Var);
    }

    public void f(int i10, String str, LinkedHashMap<String, String> linkedHashMap) {
        f1.j("hmsSdk", "onStreamEvent. TAG: " + this.f52725a + ", TYPE: " + i10 + ", eventId : " + str);
        if (!n.b(str) && h(i10)) {
            if (!n.e(linkedHashMap)) {
                f1.l("hmsSdk", "onStreamEvent() parameter mapValue will be cleared.TAG: " + this.f52725a + ", TYPE: " + i10);
                linkedHashMap = null;
            }
            s.a().h(this.f52725a, i10, str, linkedHashMap);
            return;
        }
        f1.l("hmsSdk", "onStreamEvent() parameters check fail. Nothing will be recorded.TAG: " + this.f52725a + ", TYPE: " + i10);
    }

    public void g(y0 y0Var) {
        f1.h("hmsSdk", "HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: " + this.f52725a);
        if (y0Var == null) {
            this.f52726b.e(null);
            f1.l("hmsSdk", "HiAnalyticsInstanceImpl.setOperConf(): config for oper is null!");
            return;
        }
        this.f52726b.e(y0Var);
    }
}
