package com.huawei.hms.update.ui;

import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public class UpdateBean implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private boolean f22345a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22346b;

    /* renamed from: c  reason: collision with root package name */
    private String f22347c;

    /* renamed from: d  reason: collision with root package name */
    private int f22348d;

    /* renamed from: e  reason: collision with root package name */
    private String f22349e;

    /* renamed from: f  reason: collision with root package name */
    private String f22350f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList f22351g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f22352h = true;

    public String getClientAppId() {
        return (String) b(this.f22349e);
    }

    public String getClientAppName() {
        return (String) b(this.f22350f);
    }

    public String getClientPackageName() {
        return (String) b(this.f22347c);
    }

    public int getClientVersionCode() {
        return ((Integer) b(Integer.valueOf(this.f22348d))).intValue();
    }

    public boolean getResolutionInstallHMS() {
        return this.f22346b;
    }

    public ArrayList getTypeList() {
        return (ArrayList) b(this.f22351g);
    }

    public boolean isHmsOrApkUpgrade() {
        return ((Boolean) b(Boolean.valueOf(this.f22345a))).booleanValue();
    }

    public boolean isNeedConfirm() {
        return ((Boolean) b(Boolean.valueOf(this.f22352h))).booleanValue();
    }

    public void setClientAppId(String str) {
        this.f22349e = str;
    }

    public void setClientAppName(String str) {
        this.f22350f = str;
    }

    public void setClientPackageName(String str) {
        this.f22347c = str;
    }

    public void setClientVersionCode(int i10) {
        this.f22348d = i10;
    }

    public void setHmsOrApkUpgrade(boolean z10) {
        this.f22345a = z10;
    }

    public void setNeedConfirm(boolean z10) {
        this.f22352h = z10;
    }

    public void setResolutionInstallHMS(boolean z10) {
        this.f22346b = z10;
    }

    public void setTypeList(ArrayList arrayList) {
        this.f22351g = arrayList;
    }

    private static <T> T b(T t10) {
        return t10;
    }
}
