package hb;

import android.content.Context;
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    y0 f52688a;

    /* renamed from: b  reason: collision with root package name */
    y0 f52689b;

    /* renamed from: c  reason: collision with root package name */
    Context f52690c;

    /* renamed from: d  reason: collision with root package name */
    String f52691d;

    public g(Context context) {
        if (context != null) {
            this.f52690c = context.getApplicationContext();
        }
        this.f52688a = new y0();
        this.f52689b = new y0();
    }

    public g a(int i10, String str) {
        y0 y0Var;
        f1.h("hmsSdk", "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : " + i10);
        if (!t0.d(str)) {
            str = "";
        }
        if (i10 != 0) {
            if (i10 != 1) {
                f1.m("hmsSdk", "Builder.setCollectURL(int type,String collectURL): invalid type!");
                return this;
            }
            y0Var = this.f52689b;
        } else {
            y0Var = this.f52688a;
        }
        y0Var.i(str);
        return this;
    }

    public g b(String str) {
        f1.h("hmsSdk", "Builder.setAppID is execute");
        this.f52691d = str;
        return this;
    }

    @Deprecated
    public g c(boolean z10) {
        f1.h("hmsSdk", "Builder.setEnableImei(boolean isReportAndroidImei) is execute.");
        this.f52688a.z().b(z10);
        this.f52689b.z().b(z10);
        return this;
    }

    public void d() {
        if (this.f52690c == null) {
            f1.e("hmsSdk", "analyticsConf create(): context is null,create failed!");
            return;
        }
        f1.h("hmsSdk", "Builder.create() is execute.");
        l1 l1Var = new l1("_hms_config_tag");
        l1Var.g(new y0(this.f52688a));
        l1Var.d(new y0(this.f52689b));
        m0.a().b(this.f52690c);
        s.a().c(this.f52690c);
        x0.d().a(l1Var);
        m0.a().c(this.f52691d);
    }

    @Deprecated
    public g e(boolean z10) {
        f1.h("hmsSdk", "Builder.setEnableSN(boolean isReportSN) is execute.");
        this.f52688a.z().d(z10);
        this.f52689b.z().d(z10);
        return this;
    }

    @Deprecated
    public g f(boolean z10) {
        f1.h("hmsSdk", "Builder.setEnableUDID(boolean isReportUDID) is execute.");
        this.f52688a.z().f(z10);
        this.f52689b.z().f(z10);
        return this;
    }
}
